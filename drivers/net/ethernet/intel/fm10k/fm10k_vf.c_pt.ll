; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_vf.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_vf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fm10k_tlv_attr = type { i32, i32, i16 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_info = type { i32, ptr, ptr, ptr }
%struct.fm10k_msg_data = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.fm10k_hw_stats = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, [128 x %struct.fm10k_hw_stats_q] }
%struct.fm10k_hw_stat = type { i64, i32, i32 }
%struct.fm10k_hw_stats_q = type { %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat, %struct.fm10k_hw_stat }

@fm10k_mac_vlan_msg_attr = dso_local constant { [6 x %struct.fm10k_tlv_attr], [56 x i8] } { [6 x %struct.fm10k_tlv_attr] [%struct.fm10k_tlv_attr { i32 0, i32 3, i16 4 }, %struct.fm10k_tlv_attr { i32 1, i32 2, i16 0 }, %struct.fm10k_tlv_attr { i32 2, i32 1, i16 6 }, %struct.fm10k_tlv_attr { i32 3, i32 1, i16 6 }, %struct.fm10k_tlv_attr { i32 4, i32 1, i16 6 }, %struct.fm10k_tlv_attr { i32 -1, i32 0, i16 0 }], [56 x i8] zeroinitializer }, align 32
@fm10k_lport_state_msg_attr = dso_local constant { [4 x %struct.fm10k_tlv_attr], [48 x i8] } { [4 x %struct.fm10k_tlv_attr] [%struct.fm10k_tlv_attr { i32 0, i32 2, i16 0 }, %struct.fm10k_tlv_attr { i32 1, i32 3, i16 1 }, %struct.fm10k_tlv_attr { i32 2, i32 2, i16 0 }, %struct.fm10k_tlv_attr { i32 -1, i32 0, i16 0 }], [48 x i8] zeroinitializer }, align 32
@mac_ops_vf = internal constant { %struct.fm10k_mac_ops, [52 x i8] } { %struct.fm10k_mac_ops { ptr @fm10k_reset_hw_vf, ptr @fm10k_init_hw_vf, ptr @fm10k_start_hw_generic, ptr @fm10k_stop_hw_vf, ptr @fm10k_get_bus_info_generic, ptr @fm10k_get_host_state_generic, ptr null, ptr @fm10k_update_vlan_vf, ptr @fm10k_read_mac_addr_vf, ptr @fm10k_update_uc_addr_vf, ptr @fm10k_update_mc_addr_vf, ptr @fm10k_update_xcast_mode_vf, ptr @fm10k_update_int_moderator_vf, ptr @fm10k_update_lport_state_vf, ptr @fm10k_update_hw_stats_vf, ptr @fm10k_rebind_hw_stats_vf, ptr @fm10k_configure_dglort_map_vf, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@fm10k_vf_info = dso_local constant { %struct.fm10k_info, [16 x i8] } { %struct.fm10k_info { i32 2, ptr @fm10k_get_invariants_vf, ptr @mac_ops_vf, ptr null }, [16 x i8] zeroinitializer }, align 32
@fm10k_msg_data_vf = internal constant { [4 x %struct.fm10k_msg_data], [48 x i8] } { [4 x %struct.fm10k_msg_data] [%struct.fm10k_msg_data { i32 0, ptr @fm10k_tlv_msg_test_attr, ptr @fm10k_tlv_msg_test }, %struct.fm10k_msg_data { i32 2, ptr @fm10k_mac_vlan_msg_attr, ptr @fm10k_msg_mac_vlan_vf }, %struct.fm10k_msg_data { i32 3, ptr @fm10k_lport_state_msg_attr, ptr @fm10k_msg_lport_state_vf }, %struct.fm10k_msg_data { i32 -1, ptr null, ptr @fm10k_tlv_msg_error }], [48 x i8] zeroinitializer }, align 32
@fm10k_tlv_msg_test_attr = external dso_local constant [0 x %struct.fm10k_tlv_attr], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@___asan_gen_.2 = private unnamed_addr constant [24 x i8] c"fm10k_mac_vlan_msg_attr\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 148, i32 29 }
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"fm10k_lport_state_msg_attr\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 362, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"mac_ops_vf\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 502, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"fm10k_vf_info\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 528, i32 25 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"fm10k_msg_data_vf\00", align 1
@___asan_gen_.15 = private constant [47 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_vf.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 495, i32 36 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @fm10k_mac_vlan_msg_attr, ptr @fm10k_lport_state_msg_attr, ptr @mac_ops_vf, ptr @fm10k_vf_info, ptr @fm10k_msg_data_vf], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_mac_vlan_msg_attr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_lport_state_msg_attr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_ops_vf to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_vf_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_msg_data_vf to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_msg_mac_vlan_vf(ptr nocapture noundef writeonly %hw, ptr nocapture noundef readonly %results, ptr nocapture readnone %mbx) #0 align 64 {
entry:
  %perm_addr = alloca [6 x i8], align 4
  %vid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %perm_addr) #6
  %0 = call ptr @memset(ptr %perm_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid) #6
  %1 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %vid, align 2, !annotation !19
  %arrayidx = getelementptr ptr, ptr %results, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef %3, ptr noundef nonnull %perm_addr, ptr noundef nonnull %vid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds [6 x i8], ptr %perm_addr, i32 0, i32 4
  %perm_addr1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %perm_addr, align 4
  %7 = ptrtoint ptr %perm_addr1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %perm_addr1, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %4, align 4
  %add.ptr1.i = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 2
  %11 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid, align 2
  %13 = and i16 %12, 4095
  %default_vid = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %default_vid to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %default_vid, align 4
  %vlan_override = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 7
  %.lobit = lshr i16 %12, 15
  %15 = trunc i16 %.lobit to i8
  %16 = ptrtoint ptr %vlan_override to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %vlan_override, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %perm_addr) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_get_mac_vlan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm10k_msg_lport_state_vf(ptr nocapture noundef writeonly %hw, ptr nocapture noundef readonly %results, ptr nocapture readnone %mbx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %results, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %cond = select i1 %tobool.not, i32 65535, i32 -65536
  %dglort_map = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %dglort_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %dglort_map, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_get_invariants_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_get_invariants_generic(ptr noundef %hw) #6
  %mbx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  %call1 = tail call i32 @fm10k_pfvf_mbx_init(ptr noundef %hw, ptr noundef %mbx, ptr noundef nonnull @fm10k_msg_data_vf, i8 noundef zeroext 0) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_get_invariants_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_pfvf_mbx_init(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_test(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_error(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_reset_hw_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_stop_hw_vf(ptr noundef %hw)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 -4, label %if.then
    i32 0, label %entry.do.body_crit_edge
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reset_while_pending = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 12
  %1 = ptrtoint ptr %reset_while_pending to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %reset_while_pending, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %reset_while_pending, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 8
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %do.body.if.end13_crit_edge, label %do.body10, !prof !20

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 134217728) #6, !srcloc !22
  br label %if.end13

if.end13:                                         ; preds = %do.body10, %do.body.if.end13_crit_edge
  %call16 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 32212200) #6
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %hw, align 8
  %tobool24.not = icmp eq ptr %7, null
  br i1 %tobool24.not, label %if.end13.if.end38_crit_edge, label %do.body34, !prof !20

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.body34:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 0) #6, !srcloc !22
  br label %if.end38

if.end38:                                         ; preds = %do.body34, %if.end13.if.end38_crit_edge
  %call41 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 0) #6
  %and = and i32 %call41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  %. = select i1 %tobool42.not, i32 0, i32 -7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_init_hw_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32780) #6
  %call1 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32775) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %tobool.not = icmp eq i32 %call1, -1
  br i1 %tobool.not, label %entry.reset_max_queues_crit_edge, label %lor.lhs.false

entry.reset_max_queues_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_max_queues

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 16390) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, -1
  br i1 %tobool5.not, label %lor.lhs.false.reset_max_queues_crit_edge, label %for.cond.preheader

lor.lhs.false.reset_max_queues_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_max_queues

for.cond.preheader:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool6.not.not = icmp eq i32 %call, -1
  br i1 %tobool6.not.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %i.071 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %indvars.iv, 6
  %add = add nuw nsw i32 %mul, 32780
  %call9 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %call)
  %cmp13 = icmp eq i32 %call9, %call
  %or.cond70 = select i1 %tobool11.not, i1 true, i1 %cmp13
  br i1 %or.cond70, label %for.end.loopexit.split.loop.exit79, label %if.end16

if.end16:                                         ; preds = %for.body
  %add19 = add nuw nsw i32 %mul, 32775
  %call20 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, -1
  br i1 %tobool22.not, label %for.end.loopexit.split.loop.exit75, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %if.end16
  %add26 = add nuw nsw i32 %mul, 16390
  %call27 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, -1
  br i1 %tobool29.not, label %for.end.loopexit.split.loop.exit77, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false23
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i16 %i.071, 1
  %cmp = icmp ult i32 %indvars.iv, 15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit.split.loop.exit75:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %0 = trunc i32 %indvars.iv to i16
  br label %for.end

for.end.loopexit.split.loop.exit77:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #8
  %1 = trunc i32 %indvars.iv to i16
  br label %for.end

for.end.loopexit.split.loop.exit79:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = trunc i32 %indvars.iv to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit79, %for.end.loopexit.split.loop.exit77, %for.end.loopexit.split.loop.exit75, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i16 [ 1, %for.cond.preheader.for.end_crit_edge ], [ %0, %for.end.loopexit.split.loop.exit75 ], [ %1, %for.end.loopexit.split.loop.exit77 ], [ %2, %for.end.loopexit.split.loop.exit79 ], [ %inc, %for.inc.for.end_crit_edge ]
  %call32 = tail call i32 @fm10k_disable_queues_generic(ptr noundef %hw, i16 noundef zeroext %i.0.lcssa) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %for.end.reset_max_queues_crit_edge

for.end.reset_max_queues_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %reset_max_queues

if.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %3 = ptrtoint ptr %max_queues to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %i.0.lcssa, ptr %max_queues, align 8
  %call36 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32775) #6
  %and = lshr i32 %call36, 16
  %4 = trunc i32 %and to i16
  %conv37 = and i16 %4, 4095
  %default_vid = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %default_vid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv37, ptr %default_vid, align 4
  %call39 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32770) #6
  %and40 = lshr i32 %call39, 9
  %6 = trunc i32 %and40 to i8
  %conv42 = and i8 %6, 7
  %itr_scale = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 11
  %7 = ptrtoint ptr %itr_scale to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv42, ptr %itr_scale, align 4
  br label %cleanup

reset_max_queues:                                 ; preds = %for.end.reset_max_queues_crit_edge, %lor.lhs.false.reset_max_queues_crit_edge, %entry.reset_max_queues_crit_edge
  %err.0 = phi i32 [ %call32, %for.end.reset_max_queues_crit_edge ], [ -3, %lor.lhs.false.reset_max_queues_crit_edge ], [ -3, %entry.reset_max_queues_crit_edge ]
  %max_queues45 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %max_queues45 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %max_queues45, align 8
  br label %cleanup

cleanup:                                          ; preds = %reset_max_queues, %if.end35
  %retval.0 = phi i32 [ %err.0, %reset_max_queues ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_start_hw_generic(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_stop_hw_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %perm_addr1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3
  %call = tail call i32 @fm10k_stop_hw_generic(ptr noundef %hw) #6
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 -4, label %entry.if.end_crit_edge192
  ]

entry.if.end_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge192
  %1 = ptrtoint ptr %perm_addr1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %perm_addr1, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %or.i.i = or i32 %2, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end22_crit_edge, label %if.then3

is_valid_ether_addr.exit.if.end22_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then3:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 %conv, 24
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 1
  %conv5 = zext i8 %9 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or = or i32 %shl6, %shl
  %arrayidx7 = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or10 = or i32 %or, %shl9
  %12 = ptrtoint ptr %perm_addr1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %perm_addr1, align 1
  %conv12 = zext i8 %13 to i32
  %shl13 = shl nuw nsw i32 %conv12, 16
  %arrayidx15 = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %shl17 = shl nuw nsw i32 %conv16, 8
  %arrayidx19 = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %or14 = or i32 %shl13, %shl17
  %or18 = or i32 %or14, %conv20
  %or21 = or i32 %or18, -16777216
  br label %if.end22

if.end22:                                         ; preds = %if.then3, %is_valid_ether_addr.exit.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %bah.0 = phi i32 [ %or21, %if.then3 ], [ 0, %is_valid_ether_addr.exit.if.end22_crit_edge ], [ 0, %if.end.if.end22_crit_edge ]
  %bal.0 = phi i32 [ %or10, %if.then3 ], [ 0, %is_valid_ether_addr.exit.if.end22_crit_edge ], [ 0, %if.end.if.end22_crit_edge ]
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %max_queues, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp29189.not = icmp eq i16 %19, 0
  br i1 %cmp29189.not, label %if.end22.cleanup_crit_edge, label %do.body.lr.ph

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.lr.ph:                                    ; preds = %if.end22
  %itr_scale = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 11
  %20 = ptrtoint ptr %itr_scale to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %itr_scale, align 4
  %conv24 = zext i8 %21 to i32
  %shl25 = shl nuw nsw i32 %conv24, 9
  %22 = tail call i32 @llvm.bswap.i32(i32 %bal.0)
  %23 = tail call i32 @llvm.bswap.i32(i32 %bah.0)
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl25)
  br label %do.body

do.body:                                          ; preds = %if.end151.do.body_crit_edge, %do.body.lr.ph
  %indvars.iv = phi i32 [ 0, %do.body.lr.ph ], [ %indvars.iv.next, %if.end151.do.body_crit_edge ]
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hw, align 8
  %tobool33.not = icmp eq ptr %26, null
  br i1 %tobool33.not, label %do.body.if.end43_crit_edge, label %do.body38, !prof !20

do.body.if.end43_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.body38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %mul = shl nuw nsw i32 %indvars.iv, 6
  %add = add nuw nsw i32 %mul, 32768
  %arrayidx42 = getelementptr i32, ptr %26, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx42, i32 %22) #6, !srcloc !22
  br label %if.end43

if.end43:                                         ; preds = %do.body38, %do.body.if.end43_crit_edge
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %hw, align 8
  %tobool53.not = icmp eq ptr %28, null
  br i1 %tobool53.not, label %if.end43.if.end70_crit_edge, label %do.body63, !prof !20

if.end43.if.end70_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.body63:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %mul67 = shl nuw nsw i32 %indvars.iv, 6
  %add68 = add nuw nsw i32 %mul67, 32769
  %arrayidx69 = getelementptr i32, ptr %28, i32 %add68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx69, i32 %23) #6, !srcloc !22
  br label %if.end70

if.end70:                                         ; preds = %do.body63, %if.end43.if.end70_crit_edge
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %hw, align 8
  %tobool80.not = icmp eq ptr %30, null
  br i1 %tobool80.not, label %if.end70.if.end97_crit_edge, label %do.body90, !prof !20

if.end70.if.end97_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.body90:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %mul94 = shl nuw nsw i32 %indvars.iv, 6
  %add95 = add nuw nsw i32 %mul94, 16384
  %arrayidx96 = getelementptr i32, ptr %30, i32 %add95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx96, i32 %22) #6, !srcloc !22
  br label %if.end97

if.end97:                                         ; preds = %do.body90, %if.end70.if.end97_crit_edge
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %hw, align 8
  %tobool107.not = icmp eq ptr %32, null
  br i1 %tobool107.not, label %if.end97.if.end124_crit_edge, label %do.body117, !prof !20

if.end97.if.end124_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

do.body117:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %mul121 = shl nuw nsw i32 %indvars.iv, 6
  %add122 = add nuw nsw i32 %mul121, 16385
  %arrayidx123 = getelementptr i32, ptr %32, i32 %add122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx123, i32 %23) #6, !srcloc !22
  br label %if.end124

if.end124:                                        ; preds = %do.body117, %if.end97.if.end124_crit_edge
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %hw, align 8
  %tobool134.not = icmp eq ptr %34, null
  br i1 %tobool134.not, label %if.end124.if.end151_crit_edge, label %do.body144, !prof !20

if.end124.if.end151_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

do.body144:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %mul148 = shl nuw nsw i32 %indvars.iv, 6
  %add149 = add nuw nsw i32 %mul148, 32770
  %arrayidx150 = getelementptr i32, ptr %34, i32 %add149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx150, i32 %24) #6, !srcloc !22
  br label %if.end151

if.end151:                                        ; preds = %do.body144, %if.end124.if.end151_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %35 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_queues, align 8
  %37 = zext i16 %36 to i32
  %cmp29 = icmp ult i32 %indvars.iv.next, %37
  br i1 %cmp29, label %if.end151.do.body_crit_edge, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end151.do.body_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end151.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_get_bus_info_generic(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_get_host_state_generic(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_vlan_vf(ptr noundef %hw, i32 noundef %vid, i8 noundef zeroext %vsi, i1 noundef zeroext %set) #0 align 64 {
entry:
  %msg = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vsi)
  %tobool.not = icmp eq i8 %vsi, 0
  %shl = shl i32 %vid, 16
  %or = or i32 %shl, %vid
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %or)
  %tobool2.not = icmp ult i32 %or, 268435456
  %or.cond = and i1 %tobool.not, %tobool2.not
  %0 = call ptr @memset(ptr %msg, i32 255, i32 16)
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  %or7 = or i32 %vid, 32768
  %spec.select = select i1 %set, i32 %vid, i32 %or7
  %call = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 2) #6
  %conv = zext i32 %spec.select to i64
  %call10 = call i32 @fm10k_tlv_attr_put_value(ptr noundef nonnull %msg, i16 noundef zeroext 0, i64 noundef %conv, i32 noundef 4) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %1 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enqueue_tx, align 4
  %call12 = call i32 %2(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end4 ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_read_mac_addr_vf(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32768) #6
  %shl.mask = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.mask)
  %tobool.not = icmp eq i32 %shl.mask, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef 32769) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %call7)
  %tobool9.not = icmp ugt i32 %call7, -16777217
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sh.diff = lshr i32 %call, 8
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %perm_addr.sroa.12.4.insert.ext = and i16 %tr.sh.diff, -256
  %0 = trunc i32 %call to i16
  %1 = lshr i16 %0, 8
  %perm_addr.sroa.12.5.insert.insert48 = or i16 %perm_addr.sroa.12.4.insert.ext, %1
  %shr = lshr i32 %call, 24
  %perm_addr20 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3
  %perm_addr.sroa.0.sroa.8.0.insert.ext = shl i32 %call7, 8
  %perm_addr.sroa.0.sroa.8.0.insert.shift = and i32 %perm_addr.sroa.0.sroa.8.0.insert.ext, 65280
  %perm_addr.sroa.0.sroa.8.0.insert.insert = or i32 %perm_addr.sroa.0.sroa.8.0.insert.shift, %shr
  %perm_addr.sroa.0.sroa.6.0.insert.shift = and i32 %perm_addr.sroa.0.sroa.8.0.insert.ext, 16711680
  %perm_addr.sroa.0.sroa.6.0.insert.insert = or i32 %perm_addr.sroa.0.sroa.8.0.insert.insert, %perm_addr.sroa.0.sroa.6.0.insert.shift
  %perm_addr.sroa.0.sroa.0.0.insert.ext = and i32 %perm_addr.sroa.0.sroa.8.0.insert.ext, -16777216
  %perm_addr.sroa.0.sroa.0.0.insert.insert = or i32 %perm_addr.sroa.0.sroa.6.0.insert.insert, %perm_addr.sroa.0.sroa.0.0.insert.ext
  %2 = ptrtoint ptr %perm_addr20 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %perm_addr.sroa.0.sroa.0.0.insert.insert, ptr %perm_addr20, align 4
  %add.ptr1.i = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 4
  %3 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %perm_addr.sroa.12.5.insert.insert48, ptr %add.ptr1.i, align 2
  %addr = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %perm_addr.sroa.0.sroa.0.0.insert.insert, ptr %addr, align 4
  %add.ptr1.i37 = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %5 = ptrtoint ptr %add.ptr1.i37 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %perm_addr.sroa.12.5.insert.insert48, ptr %add.ptr1.i37, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -8, %entry.cleanup_crit_edge ], [ -8, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_uc_addr_vf(ptr noundef %hw, i16 noundef zeroext %glort, ptr noundef %mac, i16 noundef zeroext %vid, i1 noundef zeroext %add, i8 noundef zeroext %flags) #0 align 64 {
entry:
  %msg = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vid)
  %cmp = icmp ugt i16 %vid, 4095
  %0 = call ptr @memset(ptr %msg, i32 255, i32 28)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %or.i.i = or i32 %2, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  %perm_addr = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %perm_addr, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i33 = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i33, label %is_valid_ether_addr.exit39, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

is_valid_ether_addr.exit39:                       ; preds = %if.end4
  %add.ptr.i.i34 = getelementptr %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 3, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i34, align 2
  %conv.i.i35 = zext i16 %10 to i32
  %or.i.i36 = or i32 %7, %conv.i.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i36)
  %cmp.i.i37.not = icmp eq i32 %or.i.i36, 0
  br i1 %cmp.i.i37.not, label %is_valid_ether_addr.exit39.if.end13_crit_edge, label %land.lhs.true

is_valid_ether_addr.exit39.if.end13_crit_edge:    ; preds = %is_valid_ether_addr.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %is_valid_ether_addr.exit39
  %xor.i = xor i32 %7, %2
  %11 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i34, align 2
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i = xor i16 %14, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %is_valid_ether_addr.exit39.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %15 = or i16 %vid, -32768
  %spec.select = select i1 %add, i16 %vid, i16 %15
  %call19 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 2) #6
  %call21 = call i32 @fm10k_tlv_attr_put_mac_vlan(ptr noundef nonnull %msg, i16 noundef zeroext 2, ptr noundef %mac, i16 noundef zeroext %spec.select) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %16 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enqueue_tx, align 4
  %call23 = call i32 %17(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end13 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -2, %land.lhs.true.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_mc_addr_vf(ptr noundef %hw, i16 noundef zeroext %glort, ptr noundef %mac, i16 noundef zeroext %vid, i1 noundef zeroext %add) #0 align 64 {
entry:
  %msg = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vid)
  %cmp = icmp ugt i16 %vid, 4095
  %0 = call ptr @memset(ptr %msg, i32 255, i32 28)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = or i16 %vid, -32768
  %spec.select = select i1 %add, i16 %vid, i16 %4
  %call9 = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 2) #6
  %call11 = call i32 @fm10k_tlv_attr_put_mac_vlan(ptr noundef nonnull %msg, i16 noundef zeroext 4, ptr noundef %mac, i16 noundef zeroext %spec.select) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %5 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enqueue_tx, align 4
  %call13 = call i32 %6(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end4 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_xcast_mode_vf(ptr noundef %hw, i16 noundef zeroext %glort, i8 noundef zeroext %mode) #0 align 64 {
entry:
  %msg = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !19
  %1 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !19
  %3 = getelementptr inbounds [3 x i32], ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %mode)
  %cmp = icmp ugt i8 %mode, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  %call = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 3) #6
  %conv4 = zext i8 %mode to i64
  %call5 = call i32 @fm10k_tlv_attr_put_value(ptr noundef nonnull %msg, i16 noundef zeroext 1, i64 noundef %conv4, i32 noundef 1) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %5 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enqueue_tx, align 4
  %call7 = call i32 %6(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_update_int_moderator_vf(ptr noundef %hw) #0 align 64 {
entry:
  %msg = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !19
  %call = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 1) #6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %1 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enqueue_tx, align 4
  %call3 = call i32 %2(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_update_lport_state_vf(ptr noundef %hw, i16 noundef zeroext %glort, i16 noundef zeroext %count, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %msg = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4, !annotation !19
  %1 = getelementptr inbounds [2 x i32], ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !19
  %dglort_map = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 10
  %3 = ptrtoint ptr %dglort_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65535, ptr %dglort_map, align 8
  %call = call i32 @fm10k_tlv_msg_init(ptr noundef nonnull %msg, i16 noundef zeroext 3) #6
  br i1 %enable, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @fm10k_tlv_attr_put_bool(ptr noundef nonnull %msg, i16 noundef zeroext 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mbx1 = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6
  %enqueue_tx = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 6, i32 0, i32 5
  %4 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enqueue_tx, align 4
  %call5 = call i32 %5(ptr noundef %hw, ptr noundef %mbx1, ptr noundef nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #6
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_update_hw_stats_vf(ptr noundef %hw, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 8
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_queues, align 8
  %conv = zext i16 %1 to i32
  tail call void @fm10k_update_hw_stats_q(ptr noundef %hw, ptr noundef %q, i32 noundef 0, i32 noundef %conv) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_rebind_hw_stats_vf(ptr noundef %hw, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %q = getelementptr inbounds %struct.fm10k_hw_stats, ptr %stats, i32 0, i32 8
  %max_queues = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_queues, align 8
  %conv = zext i16 %1 to i32
  tail call void @fm10k_unbind_hw_stats_q(ptr noundef %q, i32 noundef 0, i32 noundef %conv) #6
  %2 = ptrtoint ptr %max_queues to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_queues, align 8
  %conv.i = zext i16 %3 to i32
  tail call void @fm10k_update_hw_stats_q(ptr noundef %hw, ptr noundef %q, i32 noundef 0, i32 noundef %conv.i) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fm10k_configure_dglort_map_vf(ptr nocapture noundef readnone %hw, ptr noundef readnone %dglort) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dglort, null
  %. = select i1 %tobool.not, i32 -2, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_disable_queues_generic(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_stop_hw_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_put_value(ptr noundef, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_put_mac_vlan(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_attr_put_bool(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_update_hw_stats_q(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fm10k_unbind_hw_stats_q(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @fm10k_mac_vlan_msg_attr, !1, !"fm10k_mac_vlan_msg_attr", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_vf.c", i32 148, i32 29}
!2 = !{ptr @fm10k_lport_state_msg_attr, !3, !"fm10k_lport_state_msg_attr", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_vf.c", i32 362, i32 29}
!4 = !{ptr @fm10k_vf_info, !5, !"fm10k_vf_info", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_vf.c", i32 528, i32 25}
!6 = !{ptr @fm10k_msg_data_vf, !7, !"fm10k_msg_data_vf", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_vf.c", i32 495, i32 36}
!8 = !{ptr @mac_ops_vf, !9, !"mac_ops_vf", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_vf.c", i32 502, i32 35}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2156085166}
!22 = !{i64 6083231}
!23 = !{i64 2156089327}
!24 = !{i64 2156063012}
!25 = !{i64 2156066634}
!26 = !{i64 2156074317}
!27 = !{i64 2156077939}
!28 = !{i64 2156081565}
