; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/igbvf/vf.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/igbvf/vf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.e1000_hw = type { ptr, ptr, ptr, i32, %struct.e1000_mac_info, %struct.e1000_mbx_info, %struct.spinlock, %union.anon.2, i16, i16, i16, i16, i8 }
%struct.e1000_mac_info = type { %struct.e1000_mac_operations, [6 x i8], [6 x i8], i32, i16, i16, i8 }
%struct.e1000_mac_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_info = type { %struct.e1000_mbx_operations, %struct.e1000_mbx_stats, i32, i32, i16 }
%struct.e1000_mbx_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.e1000_mbx_stats = type { i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { %struct.e1000_dev_spec_vf }
%struct.e1000_dev_spec_vf = type { i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @e1000_init_function_pointers_vf(ptr nocapture noundef writeonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mac = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @e1000_init_mac_params_vf, ptr %mac, align 4
  %mbx = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5
  %1 = ptrtoint ptr %mbx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @e1000_init_mbx_params_vf, ptr %mbx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @e1000_init_mac_params_vf(ptr nocapture noundef writeonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mta_reg_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 4
  %0 = ptrtoint ptr %mta_reg_count to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 128, ptr %mta_reg_count, align 4
  %rar_entry_count = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 5
  %1 = ptrtoint ptr %rar_entry_count to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %rar_entry_count, align 2
  %reset_hw = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 7
  %2 = ptrtoint ptr %reset_hw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @e1000_reset_hw_vf, ptr %reset_hw, align 4
  %init_hw = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 8
  %3 = ptrtoint ptr %init_hw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @e1000_init_hw_vf, ptr %init_hw, align 4
  %check_for_link = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %check_for_link to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @e1000_check_for_link_vf, ptr %check_for_link, align 4
  %get_link_up_info = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 4
  %5 = ptrtoint ptr %get_link_up_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @e1000_get_link_up_info_vf, ptr %get_link_up_info, align 4
  %update_mc_addr_list = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 5
  %6 = ptrtoint ptr %update_mc_addr_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @e1000_update_mc_addr_list_vf, ptr %update_mc_addr_list, align 4
  %rar_set = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 12
  %7 = ptrtoint ptr %rar_set to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @e1000_rar_set_vf, ptr %rar_set, align 4
  %read_mac_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 13
  %8 = ptrtoint ptr %read_mac_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @e1000_read_mac_addr_vf, ptr %read_mac_addr, align 4
  %set_uc_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 6
  %9 = ptrtoint ptr %set_uc_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @e1000_set_uc_addr_vf, ptr %set_uc_addr, align 4
  %set_vfta = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 0, i32 14
  %10 = ptrtoint ptr %set_vfta to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @e1000_set_vfta_vf, ptr %set_vfta, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @e1000_init_mbx_params_vf(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @e1000_rlpml_set_vf(ptr noundef %hw, i16 noundef zeroext %max_size) local_unnamed_addr #2 align 64 {
entry:
  %msgbuf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msgbuf) #6
  %0 = getelementptr inbounds [2 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %msgbuf, align 4
  %conv = zext i16 %max_size to i32
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %0, align 4
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %3 = ptrtoint ptr %write_posted to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write_posted, align 4
  %call = call i32 %4(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %5 = ptrtoint ptr %read_posted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_posted, align 4
  %call5 = call i32 %6(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msgbuf) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_reset_hw_vf(ptr noundef %hw) #2 align 64 {
entry:
  %msgbuf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgbuf) #6
  %0 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !9
  %2 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !9
  %hw_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %7 = or i32 %6, 4
  %8 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !13
  %check_for_rst = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 7
  %10 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %check_for_rst, align 4
  %call539 = tail call i32 %11(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call539)
  %tobool.not40.not = icmp eq i32 %call539, 0
  br i1 %tobool.not40.not, label %entry.while.body_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.041 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 200, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.041, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #6
  %13 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %check_for_rst, align 4
  %call5 = tail call i32 %14(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp ne i32 %call5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool6.not, label %while.end.if.end26_crit_edge, label %while.end.if.then_crit_edge

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then:                                          ; preds = %while.end.if.then_crit_edge, %entry.if.then_crit_edge
  %timeout8 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %timeout8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2000, ptr %timeout8, align 4
  %16 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %msgbuf, align 4
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %17 = ptrtoint ptr %write_posted to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_posted, align 4
  %call11 = call i32 %18(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #6
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %29 = ptrtoint ptr %read_posted to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read_posted, align 4
  %call19 = call i32 %30(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %if.then
  %31 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msgbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %32)
  %cmp = icmp eq i32 %32, -2147483647
  br i1 %cmp, label %if.then23, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %perm_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2
  %33 = call ptr @memcpy(ptr %perm_addr, ptr %0, i32 6)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then21.if.end26_crit_edge, %if.then.if.end26_crit_edge, %while.end.if.end26_crit_edge
  %ret_val.0 = phi i32 [ %call19, %if.then.if.end26_crit_edge ], [ 0, %if.then23 ], [ -5, %while.end.if.end26_crit_edge ], [ -5, %if.then21.if.end26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgbuf) #6
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_init_hw_vf(ptr noundef %hw) #2 align 64 {
entry:
  %msgbuf.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgbuf.i) #6
  %0 = getelementptr inbounds [3 x i32], ptr %msgbuf.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msgbuf.i, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %3 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %msgbuf.i, align 4
  %4 = call ptr @memcpy(ptr %0, ptr %addr, i32 6)
  %write_posted.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %write_posted.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_posted.i, align 4
  %call.i = call i32 %6(ptr noundef %hw, ptr noundef nonnull %msgbuf.i, i16 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.e1000_rar_set_vf.exit_crit_edge

entry.e1000_rar_set_vf.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_rar_set_vf.exit

if.end.i:                                         ; preds = %entry
  %read_posted.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %7 = ptrtoint ptr %read_posted.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_posted.i, align 4
  %call6.i = call i32 %8(ptr noundef %hw, ptr noundef nonnull %msgbuf.i, i16 noundef zeroext 3) #6
  %9 = ptrtoint ptr %msgbuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msgbuf.i, align 4
  %and.i = and i32 %10, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741826, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1073741826
  %or.cond.i = select i1 %tobool8.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then10.i, label %if.end.i.e1000_rar_set_vf.exit_crit_edge

if.end.i.e1000_rar_set_vf.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %e1000_rar_set_vf.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %perm_addr.i.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2
  %11 = call ptr @memcpy(ptr %addr, ptr %perm_addr.i.i, i32 6)
  br label %e1000_rar_set_vf.exit

e1000_rar_set_vf.exit:                            ; preds = %if.then10.i, %if.end.i.e1000_rar_set_vf.exit_crit_edge, %entry.e1000_rar_set_vf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgbuf.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_check_for_link_vf(ptr noundef %hw) #2 align 64 {
entry:
  %in_msg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_msg) #6
  %0 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %in_msg, align 4
  %check_for_rst = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 7
  %1 = ptrtoint ptr %check_for_rst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %check_for_rst, align 4
  %call = tail call i32 %2(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %get_link_status = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %get_link_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %get_link_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %get_link_status4 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %get_link_status4, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %if.end
  %hw_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !15
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end7.out_crit_edge, label %if.end12

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %if.end7
  %read = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 4
  %call14 = call i32 %13(ptr noundef %hw, ptr noundef nonnull %in_msg, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end17:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in_msg, align 4
  %and18 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %spec.select = select i1 %tobool22.not, i32 0, i32 -5
  br label %out

if.end25:                                         ; preds = %if.end17
  %timeout26 = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %timeout26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeout26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not = icmp eq i32 %17, 0
  br i1 %tobool27.not, label %if.end25.out_crit_edge, label %if.end29

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %get_link_status4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %get_link_status4, align 4
  br label %out

out:                                              ; preds = %if.end29, %if.end25.out_crit_edge, %if.then20, %if.end12.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %ret_val.0 = phi i32 [ 0, %if.end12.out_crit_edge ], [ 0, %if.end29 ], [ 0, %if.end7.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ %spec.select, %if.then20 ], [ -5, %if.end25.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_msg) #6
  ret i32 %ret_val.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_get_link_up_info_vf(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !10
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !16
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %.17 = select i1 %tobool3.not, i16 10, i16 100
  %.sink = select i1 %tobool.not, i16 %.17, i16 1000
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink, ptr %speed, align 2
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %. = select i1 %tobool8.not, i16 1, i16 2
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %., ptr %duplex, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_update_mc_addr_list_vf(ptr noundef %hw, ptr nocapture noundef readonly %mc_addr_list, i32 noundef %mc_addr_count, i32 noundef %rar_used_count, i32 noundef %rar_count) #2 align 64 {
entry:
  %msgbuf = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msgbuf) #6
  %0 = getelementptr inbounds i8, ptr %msgbuf, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %arrayidx = getelementptr inbounds [16 x i32], ptr %msgbuf, i32 0, i32 1
  %2 = tail call i32 @llvm.umin.i32(i32 %mc_addr_count, i32 30)
  %shl = shl nuw nsw i32 %2, 16
  %or = or i32 %shl, 3
  %3 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %msgbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp419.not = icmp eq i32 %2, 0
  br i1 %cmp419.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mta_reg_count.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %mta_reg_count.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mta_reg_count.i, align 4
  %conv.i = zext i16 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %sub.i = add nsw i32 %mul.i, -1
  br label %for.body

for.body:                                         ; preds = %e1000_hash_mc_addr_vf.exit.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %e1000_hash_mc_addr_vf.exit.for.body_crit_edge ]
  %mc_addr_list.addr.020 = phi ptr [ %mc_addr_list, %for.body.lr.ph ], [ %add.ptr, %e1000_hash_mc_addr_vf.exit.for.body_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %for.body
  %bit_shift.0.i = phi i8 [ 0, %for.body ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  %conv1.i = zext i8 %bit_shift.0.i to i32
  %shr.i = lshr i32 %sub.i, %conv1.i
  %cmp.not.i = icmp eq i32 %shr.i, 255
  %inc.i = add i8 %bit_shift.0.i, 1
  br i1 %cmp.not.i, label %e1000_hash_mc_addr_vf.exit, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

e1000_hash_mc_addr_vf.exit:                       ; preds = %while.cond.i
  %arrayidx.i = getelementptr i8, ptr %mc_addr_list.addr.020, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %7 to i32
  %sub5.i = sub nsw i32 8, %conv1.i
  %shr6.i = lshr i32 %conv3.i, %sub5.i
  %arrayidx7.i = getelementptr i8, ptr %mc_addr_list.addr.020, i32 5
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i, align 1
  %conv9.i = zext i8 %9 to i32
  %shl.i = shl i32 %conv9.i, %conv1.i
  %or.i = or i32 %shl.i, %shr6.i
  %and.i = and i32 %or.i, %sub.i
  %conv = trunc i32 %and.i to i16
  %arrayidx5 = getelementptr i16, ptr %arrayidx, i32 %i.021
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayidx5, align 2
  %add.ptr = getelementptr i8, ptr %mc_addr_list.addr.020, i32 6
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %e1000_hash_mc_addr_vf.exit.for.end_crit_edge, label %e1000_hash_mc_addr_vf.exit.for.body_crit_edge

e1000_hash_mc_addr_vf.exit.for.body_crit_edge:    ; preds = %e1000_hash_mc_addr_vf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

e1000_hash_mc_addr_vf.exit.for.end_crit_edge:     ; preds = %e1000_hash_mc_addr_vf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %e1000_hash_mc_addr_vf.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %11 = ptrtoint ptr %write_posted to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_posted, align 4
  %call6 = call i32 %12(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %13 = ptrtoint ptr %read_posted to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_posted, align 4
  %call9 = call i32 %14(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msgbuf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @e1000_rar_set_vf(ptr noundef %hw, ptr nocapture noundef readonly %addr, i32 noundef %index) #2 align 64 {
entry:
  %msgbuf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgbuf) #6
  %0 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msgbuf, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %3 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %msgbuf, align 4
  %4 = call ptr @memcpy(ptr %0, ptr %addr, i32 6)
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %write_posted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_posted, align 4
  %call = call i32 %6(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end:                                           ; preds = %entry
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %7 = ptrtoint ptr %read_posted to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_posted, align 4
  %call6 = call i32 %8(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #6
  %9 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msgbuf, align 4
  %and = and i32 %10, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741826, i32 %and)
  %cmp = icmp eq i32 %and, 1073741826
  %or.cond = select i1 %tobool8.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 1
  %perm_addr.i = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2
  %11 = call ptr @memcpy(ptr %addr.i, ptr %perm_addr.i, i32 6)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgbuf) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @e1000_read_mac_addr_vf(ptr nocapture noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 1
  %perm_addr = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 4, i32 2
  %0 = call ptr @memcpy(ptr %addr, ptr %perm_addr, i32 6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_uc_addr_vf(ptr noundef %hw, i32 noundef %sub_cmd, ptr noundef readonly %addr) #2 align 64 {
entry:
  %msgbuf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgbuf) #6
  %0 = getelementptr inbounds i8, ptr %msgbuf, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %or4 = or i32 %sub_cmd, 2
  %2 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or4, ptr %msgbuf, align 4
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds [3 x i32], ptr %msgbuf, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %3, ptr %addr, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %5 = ptrtoint ptr %write_posted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_posted, align 4
  %call = call i32 %6(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end12, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end12:                                         ; preds = %if.end
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %7 = ptrtoint ptr %read_posted to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_posted, align 4
  %call11 = call i32 %8(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool14.not = icmp eq i32 %call11, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  %9 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msgbuf, align 4
  %and = and i32 %10, -536870913
  %or19 = or i32 %sub_cmd, 1073741826
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %or19)
  %cmp = icmp eq i32 %and, %or19
  br i1 %cmp, label %if.then15.cleanup_crit_edge, label %if.then15.if.end22_crit_edge

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end12.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %ret_val.036 = phi i32 [ 0, %if.then15.if.end22_crit_edge ], [ %call11, %if.end12.if.end22_crit_edge ], [ %call, %if.end.if.end22_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then15.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret_val.036, %if.end22 ], [ -28, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgbuf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e1000_set_vfta_vf(ptr noundef %hw, i16 noundef zeroext %vid, i1 noundef zeroext %set) #2 align 64 {
entry:
  %msgbuf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msgbuf) #6
  %0 = getelementptr inbounds [2 x i32], ptr %msgbuf, i32 0, i32 1
  %1 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %msgbuf, align 4
  %conv = zext i16 %vid to i32
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %0, align 4
  br i1 %set, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65540, ptr %msgbuf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %write_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %write_posted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_posted, align 4
  %call = call i32 %5(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #6
  %read_posted = getelementptr inbounds %struct.e1000_hw, ptr %hw, i32 0, i32 5, i32 0, i32 3
  %6 = ptrtoint ptr %read_posted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_posted, align 4
  %call6 = call i32 %7(ptr noundef %hw, ptr noundef nonnull %msgbuf, i16 noundef zeroext 2) #6
  %8 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msgbuf, align 4
  %and = and i32 %9, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741828, i32 %and)
  %cmp = icmp eq i32 %and, 1073741828
  %spec.select = select i1 %cmp, i32 -5, i32 0
  %err.0 = select i1 %tobool8.not, i32 %spec.select, i32 %call6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msgbuf) #6
  ret i32 %err.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
!10 = !{i64 4996033}
!11 = !{i64 2155125088}
!12 = !{i64 2155125419}
!13 = !{i64 4995615}
!14 = !{i8 0, i8 2}
!15 = !{i64 2155132359}
!16 = !{i64 2155124472}
