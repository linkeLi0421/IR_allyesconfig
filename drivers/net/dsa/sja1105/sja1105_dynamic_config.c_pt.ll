; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_dynamic_config.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_dynamic_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sja1105_dynamic_table_ops = type { ptr, ptr, i32, i32, i64, i8 }
%struct.sja1105_vl_lookup_entry = type { i64, i64, %union.anon.172, i32 }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type { i64, i64, i64, i64, i64 }
%struct.sja1105_dyn_cmd = type { i8, i64, i64, i64, i64, i64 }
%struct.sja1105_l2_lookup_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.175 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i64, i64, i64, i64, i64, i64 }
%struct.sja1105_mac_config_entry = type { [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_l2_lookup_params_entry = type { [11 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_general_params_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_cbs_entry = type { i64, i64, i64, i64, i64, i64 }
%struct.sja1105_mgmt_entry = type { i64, i64, i64, i64, i64, i64 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }

@sja1105et_dyn_ops = dso_local constant { [23 x %struct.sja1105_dynamic_table_ops], [160 x i8] } { [23 x %struct.sja1105_dynamic_table_ops] [%struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105et_vl_lookup_entry_packing, ptr @sja1105et_vl_lookup_cmd_packing, i32 1024, i32 4, i64 53, i8 2 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105et_dyn_l2_lookup_entry_packing, ptr @sja1105et_l2_lookup_cmd_packing, i32 1024, i32 16, i64 32, i8 7 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105_vlan_lookup_entry_packing, ptr @sja1105_vlan_lookup_cmd_packing, i32 4096, i32 16, i64 39, i8 6 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105_l2_forwarding_entry_packing, ptr @sja1105_l2_forwarding_cmd_packing, i32 13, i32 12, i64 36, i8 2 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105et_mac_config_entry_packing, ptr @sja1105et_mac_config_cmd_packing, i32 5, i32 8, i64 54, i8 2 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105et_l2_lookup_params_entry_packing, ptr @sja1105et_l2_lookup_params_cmd_packing, i32 1, i32 4, i64 56, i8 2 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105et_general_params_entry_packing, ptr @sja1105et_general_params_cmd_packing, i32 1, i32 4, i64 52, i8 2 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105_retagging_entry_packing, ptr @sja1105_retagging_cmd_packing, i32 32, i32 12, i64 49, i8 6 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105et_cbs_entry_packing, ptr @sja1105et_cbs_cmd_packing, i32 10, i32 20, i64 44, i8 2 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105et_mgmt_route_entry_packing, ptr @sja1105et_mgmt_route_cmd_packing, i32 5, i32 16, i64 32, i8 19 }], [160 x i8] zeroinitializer }, align 32
@sja1105pqrs_dyn_ops = dso_local constant { [23 x %struct.sja1105_dynamic_table_ops], [160 x i8] } { [23 x %struct.sja1105_dynamic_table_ops] [%struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105_vl_lookup_entry_packing, ptr @sja1105pqrs_vl_lookup_cmd_packing, i32 1024, i32 16, i64 71, i8 3 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_dyn_l2_lookup_entry_packing, ptr @sja1105pqrs_l2_lookup_cmd_packing, i32 1024, i32 24, i64 36, i8 15 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105_vlan_lookup_entry_packing, ptr @sja1105_vlan_lookup_cmd_packing, i32 4096, i32 16, i64 45, i8 7 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105_l2_forwarding_entry_packing, ptr @sja1105_l2_forwarding_cmd_packing, i32 13, i32 12, i64 42, i8 2 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_mac_config_entry_packing, ptr @sja1105pqrs_mac_config_cmd_packing, i32 5, i32 36, i64 75, i8 3 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_l2_lookup_params_entry_packing, ptr @sja1105pqrs_l2_lookup_params_cmd_packing, i32 1, i32 20, i64 84, i8 3 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_avb_params_entry_packing, ptr @sja1105pqrs_avb_params_cmd_packing, i32 1, i32 20, i64 32771, i8 3 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_general_params_entry_packing, ptr @sja1105pqrs_general_params_cmd_packing, i32 1, i32 48, i64 59, i8 3 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105_retagging_entry_packing, ptr @sja1105_retagging_cmd_packing, i32 32, i32 12, i64 56, i8 7 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_cbs_entry_packing, ptr @sja1105pqrs_cbs_cmd_packing, i32 16, i32 24, i64 50, i8 2 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_mgmt_route_entry_packing, ptr @sja1105pqrs_mgmt_route_cmd_packing, i32 5, i32 24, i64 36, i8 31 }], [160 x i8] zeroinitializer }, align 32
@sja1110_dyn_ops = dso_local constant { [23 x %struct.sja1105_dynamic_table_ops], [160 x i8] } { [23 x %struct.sja1105_dynamic_table_ops] [%struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1110_vl_lookup_entry_packing, ptr @sja1110_vl_lookup_cmd_packing, i32 4096, i32 16, i64 73, i8 19 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_vl_policing_entry_packing, ptr @sja1110_vl_policing_cmd_packing, i32 4096, i32 12, i64 196, i8 19 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1110_dyn_l2_lookup_entry_packing, ptr @sja1110_l2_lookup_cmd_packing, i32 1024, i32 28, i64 35, i8 15 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_l2_policing_entry_packing, ptr @sja1110_l2_policing_cmd_packing, i32 110, i32 12, i64 191, i8 19 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_vlan_lookup_entry_packing, ptr @sja1110_vlan_lookup_cmd_packing, i32 4096, i32 16, i64 45, i8 7 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_l2_forwarding_entry_packing, ptr @sja1110_l2_forwarding_cmd_packing, i32 19, i32 12, i64 42, i8 19 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_mac_config_entry_packing, ptr @sja1110_mac_config_cmd_packing, i32 11, i32 36, i64 77, i8 19 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops { ptr @sja1110_l2_lookup_params_entry_packing, ptr @sja1110_l2_lookup_params_cmd_packing, i32 1, i32 32, i64 86, i8 19 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_l2_forwarding_params_entry_packing, ptr @sja1110_dummy_cmd_packing, i32 1, i32 12, i64 32768, i8 17 }, %struct.sja1105_dynamic_table_ops { ptr @sja1105pqrs_avb_params_entry_packing, ptr @sja1105pqrs_avb_params_cmd_packing, i32 1, i32 20, i64 32771, i8 19 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_general_params_entry_packing, ptr @sja1110_general_params_cmd_packing, i32 1, i32 60, i64 58, i8 19 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_retagging_entry_packing, ptr @sja1110_retagging_cmd_packing, i32 32, i32 12, i64 55, i8 7 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_cbs_entry_packing, ptr @sja1110_cbs_cmd_packing, i32 80, i32 24, i64 49, i8 19 }, %struct.sja1105_dynamic_table_ops { ptr @sja1110_xmii_params_entry_packing, ptr @sja1110_dummy_cmd_packing, i32 1, i32 8, i64 15, i8 17 }, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer, %struct.sja1105_dynamic_table_ops zeroinitializer], [160 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/dsa/sja1105/sja1105_dynamic_config.c\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"sja1105et_dyn_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 882, i32 40 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"sja1105pqrs_dyn_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 966, i32 40 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"sja1110_dyn_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1058, i32 40 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [52 x i8] c"../drivers/net/dsa/sja1105/sja1105_dynamic_config.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1216, i32 9 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @sja1105et_dyn_ops, ptr @sja1105pqrs_dyn_ops, ptr @sja1110_dyn_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105et_dyn_ops to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105pqrs_dyn_ops to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110_dyn_ops to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_vl_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %0, i32 noundef 21, i32 noundef 17, i32 noundef 4, i32 noundef %op) #5
  %ingrmirr = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %ingrmirr, i32 noundef 16, i32 noundef 16, i32 noundef 4, i32 noundef %op) #5
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105et_vl_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %rdwrset, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index, i32 noundef 9, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_dyn_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 12
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 11
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %lockeds, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #5
  %call = tail call i32 @sja1105et_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105et_l2_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 12
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valident, i32 noundef 27, i32 noundef 27, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index, i32 noundef 29, i32 noundef 20, i32 noundef 12, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_vlan_lookup_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_vlan_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr1 = getelementptr i8, ptr %buf, i32 12
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr1, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr1, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr1, ptr noundef %valident, i32 noundef 27, i32 noundef 27, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index, i32 noundef 38, i32 noundef 27, i32 noundef 8, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_l2_forwarding_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_l2_forwarding_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 4, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_mac_config_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %speed = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %speed, i32 noundef 30, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %drpdtag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 13
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %drpdtag, i32 noundef 23, i32 noundef 23, i32 noundef 4, i32 noundef %op) #5
  %drpuntag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 14
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %drpuntag, i32 noundef 22, i32 noundef 22, i32 noundef 4, i32 noundef %op) #5
  %retag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 15
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %retag, i32 noundef 21, i32 noundef 21, i32 noundef 4, i32 noundef %op) #5
  %dyn_learn = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 16
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %dyn_learn, i32 noundef 20, i32 noundef 20, i32 noundef 4, i32 noundef %op) #5
  %egress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 17
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %egress, i32 noundef 19, i32 noundef 19, i32 noundef 4, i32 noundef %op) #5
  %ingress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 18
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %ingress, i32 noundef 18, i32 noundef 18, i32 noundef 4, i32 noundef %op) #5
  %ing_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 10
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %ing_mirr, i32 noundef 17, i32 noundef 17, i32 noundef 4, i32 noundef %op) #5
  %egr_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 11
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %egr_mirr, i32 noundef 16, i32 noundef 16, i32 noundef 4, i32 noundef %op) #5
  %vlanprio = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 8
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %vlanprio, i32 noundef 14, i32 noundef 12, i32 noundef 4, i32 noundef %op) #5
  %vlanid = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 9
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %vlanid, i32 noundef 11, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  %tp_delin = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %tp_delin, i32 noundef 31, i32 noundef 16, i32 noundef 4, i32 noundef %op) #5
  %tp_delout = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %tp_delout, i32 noundef 15, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105et_mac_config_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 26, i32 noundef 24, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_l2_lookup_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %poly = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 8
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %poly, i32 noundef 7, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105et_l2_lookup_params_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_general_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mirr_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 14
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %mirr_port, i32 noundef 2, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105et_general_params_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_retagging_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105_retagging_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valident, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 5, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_cbs_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 16
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %entry_ptr, i32 noundef 5, i32 noundef 3, i32 noundef 4, i32 noundef %op) #5
  %prio = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %prio, i32 noundef 2, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  %add.ptr2 = getelementptr i32, ptr %buf, i32 3
  %credit_lo = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr2, ptr noundef %credit_lo, i32 noundef 31, i32 noundef 0, i32 noundef 16, i32 noundef %op) #5
  %add.ptr3 = getelementptr i32, ptr %buf, i32 2
  %credit_hi = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr3, ptr noundef %credit_hi, i32 noundef 31, i32 noundef 0, i32 noundef 16, i32 noundef %op) #5
  %add.ptr4 = getelementptr i32, ptr %buf, i32 1
  %send_slope = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr4, ptr noundef %send_slope, i32 noundef 31, i32 noundef 0, i32 noundef 16, i32 noundef %op) #5
  %idle_slope = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %idle_slope, i32 noundef 31, i32 noundef 0, i32 noundef 16, i32 noundef %op) #5
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105et_cbs_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 16
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 19, i32 noundef 16, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_mgmt_route_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 85, i32 noundef 85, i32 noundef 12, i32 noundef %op) #5
  %takets = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %takets, i32 noundef 84, i32 noundef 84, i32 noundef 12, i32 noundef %op) #5
  %macaddr = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %macaddr, i32 noundef 83, i32 noundef 36, i32 noundef 12, i32 noundef %op) #5
  %destports = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 35, i32 noundef 31, i32 noundef 12, i32 noundef %op) #5
  %enfport = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %enfport, i32 noundef 30, i32 noundef 30, i32 noundef 12, i32 noundef %op) #5
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105et_mgmt_route_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  %mgmtroute = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mgmtroute) #5
  %0 = ptrtoint ptr %mgmtroute to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %mgmtroute, align 8
  %add.ptr.i = getelementptr i8, ptr %buf, i32 12
  %valid.i = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr.i, ptr noundef %valid.i, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset.i = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr.i, ptr noundef %rdwrset.i, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors.i = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr.i, ptr noundef %errors.i, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %valident.i = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr.i, ptr noundef %valident.i, i32 noundef 27, i32 noundef 27, i32 noundef 4, i32 noundef %op) #5
  %index.i = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index.i, i32 noundef 29, i32 noundef 20, i32 noundef 12, i32 noundef %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp = icmp eq i32 %op, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @sja1105_pack(ptr noundef %add.ptr.i, ptr noundef nonnull %mgmtroute, i32 noundef 26, i32 noundef 26, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mgmtroute) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_vl_lookup_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_vl_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 12
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 9, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105pqrs_dyn_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 20
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 11
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %lockeds, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #5
  %call = tail call i32 @sja1105pqrs_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_l2_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sja1105pqrs_common_l2_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op, i32 noundef 20)
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index, i32 noundef 15, i32 noundef 6, i32 noundef 20, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_mac_config_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_mac_config_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 32
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 2, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_l2_lookup_params_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_l2_lookup_params_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 16
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_avb_params_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_avb_params_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 16
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_general_params_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_general_params_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 44
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105pqrs_cbs_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 159, i32 noundef 157, i32 noundef 20, i32 noundef %op) #5
  %prio = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %prio, i32 noundef 156, i32 noundef 154, i32 noundef 20, i32 noundef %op) #5
  %credit_lo = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %credit_lo, i32 noundef 153, i32 noundef 122, i32 noundef 20, i32 noundef %op) #5
  %credit_hi = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %credit_hi, i32 noundef 121, i32 noundef 90, i32 noundef 20, i32 noundef %op) #5
  %send_slope = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %send_slope, i32 noundef 89, i32 noundef 58, i32 noundef 20, i32 noundef %op) #5
  %idle_slope = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %idle_slope, i32 noundef 57, i32 noundef 26, i32 noundef 20, i32 noundef %op) #5
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_cbs_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 20
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 3, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105pqrs_mgmt_route_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 71, i32 noundef 71, i32 noundef 20, i32 noundef %op) #5
  %takets = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %takets, i32 noundef 70, i32 noundef 70, i32 noundef 20, i32 noundef %op) #5
  %macaddr = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %macaddr, i32 noundef 69, i32 noundef 22, i32 noundef 20, i32 noundef %op) #5
  %destports = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 21, i32 noundef 17, i32 noundef 20, i32 noundef %op) #5
  %enfport = getelementptr inbounds %struct.sja1105_mgmt_entry, ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %enfport, i32 noundef 16, i32 noundef 16, i32 noundef 20, i32 noundef %op) #5
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1105pqrs_mgmt_route_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  %mgmtroute = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mgmtroute) #5
  %0 = ptrtoint ptr %mgmtroute to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %mgmtroute, align 8
  tail call fastcc void @sja1105pqrs_common_l2_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op, i32 noundef 20) #5
  %index.i = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index.i, i32 noundef 15, i32 noundef 6, i32 noundef 20, i32 noundef %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp = icmp eq i32 %op, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %buf, i32 20
  call void @sja1105_pack(ptr noundef %add.ptr, ptr noundef nonnull %mgmtroute, i32 noundef 26, i32 noundef 26, i32 noundef 4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mgmtroute) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_vl_lookup_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_vl_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 20
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 11, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_vl_policing_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_vl_policing_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 12
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 11, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_dyn_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 24
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 11
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %lockeds, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #5
  %call = tail call i32 @sja1110_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_l2_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sja1105pqrs_common_l2_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op, i32 noundef 24)
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index, i32 noundef 10, i32 noundef 1, i32 noundef 24, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_l2_policing_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_l2_policing_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 6, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_vlan_lookup_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_vlan_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  %type_entry = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %type_entry) #5
  %0 = ptrtoint ptr %type_entry to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %type_entry, align 8
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %index, i32 noundef 38, i32 noundef 27, i32 noundef 12, i32 noundef %op) #5
  %1 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %entry.if.end6_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %if.then2
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %valident to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %valident, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @sja1105_packing(ptr noundef %buf, ptr noundef nonnull %type_entry, i32 noundef 40, i32 noundef 39, i32 noundef 12, i32 noundef 0) #5
  br label %if.end6

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @sja1105_packing(ptr noundef %buf, ptr noundef nonnull %type_entry, i32 noundef 40, i32 noundef 39, i32 noundef 12, i32 noundef 1) #5
  %4 = ptrtoint ptr %type_entry to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %type_entry, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool3 = icmp ne i64 %5, 0
  %6 = zext i1 %tobool3 to i64
  %valident5 = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %valident5 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %valident5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %type_entry) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_l2_forwarding_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_l2_forwarding_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 4, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_mac_config_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_mac_config_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 32
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 3, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_l2_lookup_params_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_l2_lookup_params_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 28
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_l2_forwarding_params_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sja1110_dummy_cmd_packing(ptr nocapture noundef %buf, ptr nocapture noundef %cmd, i32 noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_general_params_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_general_params_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 56
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_retagging_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_retagging_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 8
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valident, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 4, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_cbs_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  %entry_type = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %entry_type) #5
  %0 = ptrtoint ptr %entry_type to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1, ptr %entry_type, align 8
  call void @sja1105_packing(ptr noundef %buf, ptr noundef nonnull %entry_type, i32 noundef 159, i32 noundef 159, i32 noundef 20, i32 noundef %op) #5
  %credit_lo = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 3
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %credit_lo, i32 noundef 151, i32 noundef 120, i32 noundef 20, i32 noundef %op) #5
  %credit_hi = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 2
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %credit_hi, i32 noundef 119, i32 noundef 88, i32 noundef 20, i32 noundef %op) #5
  %send_slope = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 4
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %send_slope, i32 noundef 87, i32 noundef 56, i32 noundef 20, i32 noundef %op) #5
  %idle_slope = getelementptr inbounds %struct.sja1105_cbs_entry, ptr %entry_ptr, i32 0, i32 5
  call void @sja1105_packing(ptr noundef %buf, ptr noundef %idle_slope, i32 noundef 55, i32 noundef 24, i32 noundef 20, i32 noundef %op) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %entry_type) #5
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sja1110_cbs_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 20
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %index = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %index, i32 noundef 7, i32 noundef 0, i32 noundef 4, i32 noundef %op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_xmii_params_entry_packing(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_dynamic_config_read(ptr noundef %priv, i32 noundef %blk_idx, i32 noundef %index, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.sja1105_dyn_cmd, align 8
  %packed_buf = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %packed_buf) #5
  %1 = call ptr @memset(ptr %packed_buf, i32 0, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %blk_idx)
  %cmp = icmp sgt i32 %blk_idx, 22
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dyn_ops = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dyn_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dyn_ops, align 4
  %arrayidx = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %index)
  %cmp2 = icmp sgt i32 %index, -1
  br i1 %cmp2, label %land.lhs.true, label %land.lhs.true7

land.lhs.true:                                    ; preds = %if.end
  %max_entry_count = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 2
  %6 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entry_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %index)
  %cmp3.not = icmp ugt i32 %7, %index
  br i1 %cmp3.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true7:                                   ; preds = %if.end
  %access = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 5
  %8 = ptrtoint ptr %access to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %access, align 8
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end9_crit_edge

land.lhs.true7.if.end9_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true7.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge
  %access10 = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 5
  %11 = ptrtoint ptr %access10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %access10, align 8
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %packed_size = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 3
  %14 = ptrtoint ptr %packed_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %packed_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %15)
  %cmp16 = icmp ugt i32 %15, 60
  br i1 %cmp16, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %cmd_packing = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 1
  %16 = ptrtoint ptr %cmd_packing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_packing, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %valid to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 1, ptr %valid, align 8
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %rdwrset to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %rdwrset, align 8
  %narrow = select i1 %cmp2, i32 %index, i32 0
  %spec.select = zext i32 %narrow to i64
  %not.cmp2 = xor i1 %cmp2, true
  %spec.select104 = zext i1 %not.cmp2 to i8
  %22 = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %spec.select, ptr %22, align 8
  %24 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select104, ptr %cmd, align 8
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  %25 = ptrtoint ptr %valident to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 1, ptr %valident, align 8
  %26 = ptrtoint ptr %cmd_packing to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_packing, align 4
  call void %27(ptr noundef nonnull %packed_buf, ptr noundef nonnull %cmd, i32 noundef 0) #5
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cmd, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool36.not = icmp eq i8 %29, 0
  br i1 %tobool36.not, label %if.end25.if.end40_crit_edge, label %if.then37

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then37:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 8
  %call = call i32 %31(ptr noundef nonnull %packed_buf, ptr noundef %entry1, i32 noundef 0) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end25.if.end40_crit_edge
  %dynamic_config_lock = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %dynamic_config_lock, i32 noundef 0) #5
  %addr = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 4
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %addr, align 8
  %34 = ptrtoint ptr %packed_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %packed_size, align 4
  %call43 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %33, ptr noundef nonnull %packed_buf, i32 noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %dynamic_config_lock) #5
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %call49 = call fastcc i32 @sja1105_dynamic_config_wait_complete(ptr noundef %priv, ptr noundef nonnull %cmd, ptr noundef %arrayidx)
  call void @mutex_unlock(ptr noundef %dynamic_config_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp51 = icmp slt i32 %call49, 0
  br i1 %cmp51, label %if.end48.cleanup_crit_edge, label %if.end54

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.end48
  %36 = ptrtoint ptr %valident to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %valident, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool56.not = icmp eq i64 %37, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

land.lhs.true57:                                  ; preds = %if.end54
  %38 = ptrtoint ptr %access10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %access10, align 8
  %40 = and i8 %39, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool61.not = icmp eq i8 %40, 0
  br i1 %tobool61.not, label %land.lhs.true57.cleanup_crit_edge, label %land.lhs.true57.if.end63_crit_edge

land.lhs.true57.if.end63_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

land.lhs.true57.cleanup_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true57.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  %tobool64.not = icmp eq ptr %entry1, null
  br i1 %tobool64.not, label %if.end63.cleanup_crit_edge, label %if.then65

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 8
  %call68 = call i32 %42(ptr noundef nonnull %packed_buf, ptr noundef nonnull %entry1, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end63.cleanup_crit_edge, %land.lhs.true57.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.then46, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.then46 ], [ -34, %entry.cleanup_crit_edge ], [ -34, %land.lhs.true.cleanup_crit_edge ], [ -95, %land.lhs.true7.cleanup_crit_edge ], [ -95, %if.end9.cleanup_crit_edge ], [ -34, %if.end15.cleanup_crit_edge ], [ -95, %if.end19.cleanup_crit_edge ], [ -95, %if.end22.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ -2, %land.lhs.true57.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %packed_buf) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_buf(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_dynamic_config_wait_complete(ptr noundef %priv, ptr noundef %cmd, ptr nocapture noundef readonly %ops) unnamed_addr #0 align 64 {
entry:
  %packed_buf.i31 = alloca [60 x i8], align 1
  %packed_buf.i = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1220) #5
  %addr.i = getelementptr inbounds %struct.sja1105_dynamic_table_ops, ptr %ops, i32 0, i32 4
  %packed_size.i = getelementptr inbounds %struct.sja1105_dynamic_table_ops, ptr %ops, i32 0, i32 3
  %cmd_packing.i = getelementptr inbounds %struct.sja1105_dynamic_table_ops, ptr %ops, i32 0, i32 1
  %valid.i = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.then19, %entry
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %packed_buf.i) #5
  %0 = call ptr @memset(ptr %packed_buf.i, i32 0, i32 60)
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %addr.i, align 8
  %3 = ptrtoint ptr %packed_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %packed_size.i, align 4
  %call.i = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 0, i64 noundef %2, ptr noundef nonnull %packed_buf.i, i32 noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sja1105_dynamic_config_poll_valid.exit

if.end.i:                                         ; preds = %for.cond
  %5 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %6 = ptrtoint ptr %cmd_packing.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_packing.i, align 4
  call void %7(ptr noundef nonnull %packed_buf.i, ptr noundef %cmd, i32 noundef 1) #5
  %8 = ptrtoint ptr %valid.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %valid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool2.not.i = icmp eq i64 %9, 0
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %packed_buf.i) #5
  br i1 %tobool2.not.i, label %if.end.i.for.end.thread_crit_edge, label %if.end.i.land.lhs.true_crit_edge

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end.i.for.end.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

sja1105_dynamic_config_poll_valid.exit:           ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %packed_buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, -11
  br i1 %cmp9.not, label %sja1105_dynamic_config_poll_valid.exit.land.lhs.true_crit_edge, label %sja1105_dynamic_config_poll_valid.exit.for.end_crit_edge

sja1105_dynamic_config_poll_valid.exit.for.end_crit_edge: ; preds = %sja1105_dynamic_config_poll_valid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

sja1105_dynamic_config_poll_valid.exit.land.lhs.true_crit_edge: ; preds = %sja1105_dynamic_config_poll_valid.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sja1105_dynamic_config_poll_valid.exit.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge
  %call12 = call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then19

if.then15:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %packed_buf.i31) #5
  %10 = call ptr @memset(ptr %packed_buf.i31, i32 0, i32 60)
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %addr.i, align 8
  %13 = ptrtoint ptr %packed_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %packed_size.i, align 4
  %call.i34 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 0, i64 noundef %12, ptr noundef nonnull %packed_buf.i31, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i40, label %if.then15.sja1105_dynamic_config_poll_valid.exit42_crit_edge

if.then15.sja1105_dynamic_config_poll_valid.exit42_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_dynamic_config_poll_valid.exit42

if.end.i40:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %15 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %16 = ptrtoint ptr %cmd_packing.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_packing.i, align 4
  call void %17(ptr noundef nonnull %packed_buf.i31, ptr noundef %cmd, i32 noundef 1) #5
  %18 = ptrtoint ptr %valid.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %valid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool2.not.i38 = icmp eq i64 %19, 0
  %cond.i39 = select i1 %tobool2.not.i38, i32 0, i32 -11
  br label %sja1105_dynamic_config_poll_valid.exit42

sja1105_dynamic_config_poll_valid.exit42:         ; preds = %if.end.i40, %if.then15.sja1105_dynamic_config_poll_valid.exit42_crit_edge
  %retval.0.i41 = phi i32 [ %cond.i39, %if.end.i40 ], [ %call.i34, %if.then15.sja1105_dynamic_config_poll_valid.exit42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %packed_buf.i31) #5
  br label %for.end

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %sja1105_dynamic_config_poll_valid.exit42, %sja1105_dynamic_config_poll_valid.exit.for.end_crit_edge
  %rc.0 = phi i32 [ %retval.0.i41, %sja1105_dynamic_config_poll_valid.exit42 ], [ %call.i, %sja1105_dynamic_config_poll_valid.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0)
  %cmp21.not = icmp eq i32 %rc.0, -11
  %spec.select = select i1 %cmp21.not, i32 -110, i32 0
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end.i.for.end.thread_crit_edge
  %20 = phi i32 [ %spec.select, %for.end ], [ 0, %if.end.i.for.end.thread_crit_edge ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_dynamic_config_write(ptr noundef %priv, i32 noundef %blk_idx, i32 noundef %index, ptr noundef %entry1, i1 noundef zeroext %keep) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.sja1105_dyn_cmd, align 8
  %packed_buf = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #5
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %packed_buf) #5
  %1 = call ptr @memset(ptr %packed_buf, i32 0, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %blk_idx)
  %cmp = icmp sgt i32 %blk_idx, 22
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %dyn_ops = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dyn_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dyn_ops, align 4
  %arrayidx = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx
  %max_entry_count = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 2
  %6 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entry_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %index)
  %cmp2.not = icmp ule i32 %7, %index
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp5 = icmp slt i32 %index, 0
  %or.cond88 = or i1 %cmp5, %cmp2.not
  br i1 %or.cond88, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %access = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 5
  %8 = ptrtoint ptr %access to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %access, align 8
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %keep.not = xor i1 %keep, true
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %keep.not, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %packed_size = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 3
  %10 = ptrtoint ptr %packed_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packed_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %11)
  %cmp17 = icmp ugt i32 %11, 60
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %conv22 = zext i1 %keep to i64
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  %12 = ptrtoint ptr %valident to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv22, ptr %valident, align 8
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %valid to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 1, ptr %valid, align 8
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %rdwrset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1, ptr %rdwrset, align 8
  %conv2389 = zext i32 %index to i64
  %index24 = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 5
  %15 = ptrtoint ptr %index24 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv2389, ptr %index24, align 8
  %cmd_packing = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 1
  %16 = ptrtoint ptr %cmd_packing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_packing, align 4
  %tobool25.not = icmp eq ptr %17, null
  br i1 %tobool25.not, label %if.end20.cleanup_crit_edge, label %if.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void %17(ptr noundef nonnull %packed_buf, ptr noundef nonnull %cmd, i32 noundef 0) #5
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  br i1 %keep, label %if.then33, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 %19(ptr noundef nonnull %packed_buf, ptr noundef %entry1, i32 noundef 0) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31.if.end36_crit_edge
  %dynamic_config_lock = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %dynamic_config_lock, i32 noundef 0) #5
  %addr = getelementptr %struct.sja1105_dynamic_table_ops, ptr %5, i32 %blk_idx, i32 4
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %addr, align 8
  %22 = ptrtoint ptr %packed_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %packed_size, align 4
  %call39 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 1, i64 noundef %21, ptr noundef nonnull %packed_buf, i32 noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %dynamic_config_lock) #5
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %call45 = call fastcc i32 @sja1105_dynamic_config_wait_complete(ptr noundef %priv, ptr noundef nonnull %cmd, ptr noundef %arrayidx)
  call void @mutex_unlock(ptr noundef %dynamic_config_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp47 = icmp slt i32 %call45, 0
  br i1 %cmp47, label %if.end44.cleanup_crit_edge, label %if.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %24 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %25 = ptrtoint ptr %cmd_packing to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_packing, align 4
  call void %26(ptr noundef nonnull %packed_buf, ptr noundef nonnull %cmd, i32 noundef 1) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  %27 = ptrtoint ptr %errors to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %errors, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %tobool57.not = icmp eq i64 %28, 0
  %. = select i1 %tobool57.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end44.cleanup_crit_edge, %if.then42, %if.end27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.then42 ], [ -34, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ -95, %if.end9.cleanup_crit_edge ], [ -34, %if.end16.cleanup_crit_edge ], [ -95, %if.end20.cleanup_crit_edge ], [ -95, %if.end27.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ], [ %., %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %packed_buf) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #5
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @sja1105et_fdb_hash(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 13, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %poly = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %poly to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %poly, align 8
  %.tr = trunc i64 %3 to i8
  %4 = shl i8 %.tr, 1
  %conv = or i8 %4, 1
  %conv2 = zext i16 %vid to i64
  %shl3 = shl nuw i64 %conv2, 48
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 1
  %conv.i = zext i8 %6 to i64
  %arrayidx.1.i = getelementptr i8, ptr %addr, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %8 to i64
  %9 = shl nuw nsw i64 %conv.i, 16
  %10 = shl nuw nsw i64 %conv.1.i, 8
  %shl.2.i = or i64 %10, %9
  %arrayidx.2.i = getelementptr i8, ptr %addr, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %12 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i
  %arrayidx.3.i = getelementptr i8, ptr %addr, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %14 to i64
  %arrayidx.4.i = getelementptr i8, ptr %addr, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %16 to i64
  %17 = shl nuw nsw i64 %or.2.i, 24
  %18 = shl nuw nsw i64 %conv.3.i, 16
  %19 = shl nuw nsw i64 %conv.4.i, 8
  %20 = or i64 %18, %19
  %shl.5.i = or i64 %17, %20
  %arrayidx.5.i = getelementptr i8, ptr %addr, i32 5
  %21 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %22 to i64
  %or.5.i = or i64 %shl3, %conv.5.i
  %or = or i64 %or.5.i, %shl.5.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 56, %entry ], [ %sub, %for.body.for.body_crit_edge ]
  %crc.016 = phi i8 [ 0, %entry ], [ %crc.addr.1.7.i, %for.body.for.body_crit_edge ]
  %sh_prom = zext i32 %i.017 to i64
  %shl5 = shl i64 255, %sh_prom
  %and = and i64 %shl5, %or
  %shr = lshr i64 %and, %sh_prom
  %conv7 = trunc i64 %shr to i8
  %xor20.i = xor i8 %crc.016, %conv7
  %shl.i = shl i8 %crc.016, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.i)
  %tobool.not22.i = icmp slt i8 %xor20.i, 0
  %xor621.i = select i1 %tobool.not22.i, i8 %conv, i8 0
  %crc.addr.1.i = xor i8 %xor621.i, %shl.i
  %shl12.i = shl i8 %conv7, 1
  %xor20.1.i = xor i8 %crc.addr.1.i, %shl12.i
  %shl.1.i = shl i8 %crc.addr.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.1.i)
  %tobool.not22.1.i = icmp slt i8 %xor20.1.i, 0
  %xor621.1.i = select i1 %tobool.not22.1.i, i8 %conv, i8 0
  %crc.addr.1.1.i = xor i8 %xor621.1.i, %shl.1.i
  %shl12.1.i = shl i8 %conv7, 2
  %xor20.2.i = xor i8 %crc.addr.1.1.i, %shl12.1.i
  %shl.2.i13 = shl i8 %crc.addr.1.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.2.i)
  %tobool.not22.2.i = icmp slt i8 %xor20.2.i, 0
  %xor621.2.i = select i1 %tobool.not22.2.i, i8 %conv, i8 0
  %crc.addr.1.2.i = xor i8 %xor621.2.i, %shl.2.i13
  %shl12.2.i = shl i8 %conv7, 3
  %xor20.3.i = xor i8 %crc.addr.1.2.i, %shl12.2.i
  %shl.3.i = shl i8 %crc.addr.1.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.3.i)
  %tobool.not22.3.i = icmp slt i8 %xor20.3.i, 0
  %xor621.3.i = select i1 %tobool.not22.3.i, i8 %conv, i8 0
  %crc.addr.1.3.i = xor i8 %xor621.3.i, %shl.3.i
  %shl12.3.i = shl i8 %conv7, 4
  %xor20.4.i = xor i8 %crc.addr.1.3.i, %shl12.3.i
  %shl.4.i14 = shl i8 %crc.addr.1.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.4.i)
  %tobool.not22.4.i = icmp slt i8 %xor20.4.i, 0
  %xor621.4.i = select i1 %tobool.not22.4.i, i8 %conv, i8 0
  %crc.addr.1.4.i = xor i8 %xor621.4.i, %shl.4.i14
  %shl12.4.i = shl i8 %conv7, 5
  %xor20.5.i = xor i8 %crc.addr.1.4.i, %shl12.4.i
  %shl.5.i15 = shl i8 %crc.addr.1.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.5.i)
  %tobool.not22.5.i = icmp slt i8 %xor20.5.i, 0
  %xor621.5.i = select i1 %tobool.not22.5.i, i8 %conv, i8 0
  %crc.addr.1.5.i = xor i8 %xor621.5.i, %shl.5.i15
  %shl12.5.i = shl i8 %conv7, 6
  %xor20.6.i = xor i8 %crc.addr.1.5.i, %shl12.5.i
  %shl.6.i = shl i8 %crc.addr.1.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.6.i)
  %tobool.not22.6.i = icmp slt i8 %xor20.6.i, 0
  %xor621.6.i = select i1 %tobool.not22.6.i, i8 %conv, i8 0
  %crc.addr.1.6.i = xor i8 %xor621.6.i, %shl.6.i
  %shl12.6.i = shl i8 %conv7, 7
  %xor20.7.i = xor i8 %crc.addr.1.6.i, %shl12.6.i
  %shl.7.i = shl i8 %crc.addr.1.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor20.7.i)
  %tobool.not22.7.i = icmp slt i8 %xor20.7.i, 0
  %xor621.7.i = select i1 %tobool.not22.7.i, i8 %conv, i8 0
  %crc.addr.1.7.i = xor i8 %xor621.7.i, %shl.7.i
  %sub = add nsw i32 %i.017, -8
  %cmp.not = icmp eq i32 %i.017, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret i8 %crc.addr.1.7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105et_l2_lookup_entry_packing(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_pack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_l2_lookup_entry_packing(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sja1105pqrs_common_l2_lookup_cmd_packing(ptr noundef %buf, ptr noundef %cmd, i32 noundef %op, i32 noundef %entry_size) unnamed_addr #0 align 64 {
entry:
  %hostcmd = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %entry_size
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hostcmd) #5
  %valid = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valid, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op) #5
  %rdwrset = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %rdwrset, i32 noundef 30, i32 noundef 30, i32 noundef 4, i32 noundef %op) #5
  %errors = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %errors, i32 noundef 29, i32 noundef 29, i32 noundef 4, i32 noundef %op) #5
  %valident = getelementptr inbounds %struct.sja1105_dyn_cmd, ptr %cmd, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef %valident, i32 noundef 27, i32 noundef 27, i32 noundef 4, i32 noundef %op) #5
  %0 = ptrtoint ptr %rdwrset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rdwrset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd, align 8, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %hostcmd to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %hostcmd, align 8
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hostcmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 2, ptr %hostcmd, align 8
  br label %if.end9

if.else3:                                         ; preds = %entry
  %6 = ptrtoint ptr %valident to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %valident, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool5.not = icmp eq i64 %7, 0
  br i1 %tobool5.not, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hostcmd to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 3, ptr %hostcmd, align 8
  br label %if.end9

if.else7:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %hostcmd to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 4, ptr %hostcmd, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6, %if.else, %if.then2
  call void @sja1105_packing(ptr noundef %add.ptr, ptr noundef nonnull %hostcmd, i32 noundef 25, i32 noundef 23, i32 noundef 4, i32 noundef %op) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hostcmd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_l2_lookup_entry_packing(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @sja1105et_dyn_ops, !1, !"sja1105et_dyn_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_dynamic_config.c", i32 882, i32 40}
!2 = !{ptr @sja1105pqrs_dyn_ops, !3, !"sja1105pqrs_dyn_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/sja1105/sja1105_dynamic_config.c", i32 966, i32 40}
!4 = !{ptr @sja1110_dyn_ops, !5, !"sja1110_dyn_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/sja1105/sja1105_dynamic_config.c", i32 1058, i32 40}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/sja1105/sja1105_dynamic_config.c", i32 1216, i32 9}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
