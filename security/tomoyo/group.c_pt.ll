; ModuleID = '/llk/IR_all_yes/security/tomoyo/group.c_pt.bc'
source_filename = "../security/tomoyo/group.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tomoyo_path_group = type { %struct.tomoyo_acl_head, ptr }
%struct.tomoyo_acl_head = type <{ %struct.list_head, i8 }>
%struct.tomoyo_number_group = type { %struct.tomoyo_acl_head, %struct.tomoyo_number_union }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }
%struct.tomoyo_address_group = type { %struct.tomoyo_acl_head, %struct.tomoyo_ipaddr_union }
%struct.tomoyo_ipaddr_union = type { [2 x %struct.in6_addr], ptr, i8 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.tomoyo_group = type { %struct.tomoyo_shared_acl_head, ptr, %struct.list_head }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_acl_param = type { ptr, ptr, ptr, i8 }

@tomoyo_path_matches_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"security/tomoyo/group.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tomoyo_number_matches_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_address_matches_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [27 x i8] c"../security/tomoyo/group.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 136, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_group(ptr noundef %param, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_path_group, align 4
  %e15 = alloca %struct.tomoyo_number_group, align 4
  %e28 = alloca %struct.tomoyo_address_group, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tomoyo_get_group(ptr noundef %param, i8 noundef zeroext %type) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

if.end:                                           ; preds = %entry
  %member_list = getelementptr inbounds %struct.tomoyo_group, ptr %call, i32 0, i32 2
  %list = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %member_list, ptr %list, align 4
  %1 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %if.else27 [
    i8 0, label %if.then2
    i8 1, label %if.then14
  ]

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %e) #8
  %2 = call ptr @memset(ptr %e, i32 0, i32 12)
  %call3 = tail call ptr @tomoyo_read_token(ptr noundef %param) #8
  %call4 = tail call ptr @tomoyo_get_name(ptr noundef %call3) #8
  %member_name = getelementptr inbounds %struct.tomoyo_path_group, ptr %e, i32 0, i32 1
  %3 = ptrtoint ptr %member_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %member_name, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then2.cleanup_crit_edge, label %if.end8

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  %call9 = call i32 @tomoyo_update_policy(ptr noundef nonnull %e, i32 noundef 16, ptr noundef %param, ptr noundef nonnull @tomoyo_same_path_group) #8
  %4 = ptrtoint ptr %member_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %member_name, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.then.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %users.i = getelementptr i8, ptr %5, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #8
  %6 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #8, !srcloc !17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end8.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %error.0 = phi i32 [ -12, %if.then2.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call9, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %e) #8
  br label %tomoyo_put_group.exit

if.then14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %e15) #8
  %7 = call ptr @memset(ptr %e15, i32 0, i32 28)
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %11)
  %cmp17 = icmp eq i8 %11, 64
  br i1 %cmp17, label %if.then14.cleanup24_crit_edge, label %lor.lhs.false

if.then14.cleanup24_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

lor.lhs.false:                                    ; preds = %if.then14
  %number = getelementptr inbounds %struct.tomoyo_number_group, ptr %e15, i32 0, i32 1
  %call19 = call zeroext i1 @tomoyo_parse_number_union(ptr noundef %param, ptr noundef %number) #8
  br i1 %call19, label %if.end21, label %lor.lhs.false.cleanup24_crit_edge

lor.lhs.false.cleanup24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 @tomoyo_update_policy(ptr noundef nonnull %e15, i32 noundef 28, ptr noundef %param, ptr noundef nonnull @tomoyo_same_number_group) #8
  br label %cleanup24

cleanup24:                                        ; preds = %if.end21, %lor.lhs.false.cleanup24_crit_edge, %if.then14.cleanup24_crit_edge
  %error.1 = phi i32 [ %call23, %if.end21 ], [ -22, %lor.lhs.false.cleanup24_crit_edge ], [ -22, %if.then14.cleanup24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %e15) #8
  br label %tomoyo_put_group.exit

if.else27:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %e28) #8
  %12 = call ptr @memset(ptr %e28, i32 0, i32 52)
  %13 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %cmp32 = icmp eq i8 %16, 64
  br i1 %cmp32, label %if.else27.cleanup40_crit_edge, label %lor.lhs.false34

if.else27.cleanup40_crit_edge:                    ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

lor.lhs.false34:                                  ; preds = %if.else27
  %address = getelementptr inbounds %struct.tomoyo_address_group, ptr %e28, i32 0, i32 1
  %call35 = call zeroext i1 @tomoyo_parse_ipaddr_union(ptr noundef %param, ptr noundef %address) #8
  br i1 %call35, label %if.end37, label %lor.lhs.false34.cleanup40_crit_edge

lor.lhs.false34.cleanup40_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

if.end37:                                         ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = call i32 @tomoyo_update_policy(ptr noundef nonnull %e28, i32 noundef 52, ptr noundef %param, ptr noundef nonnull @tomoyo_same_address_group) #8
  br label %cleanup40

cleanup40:                                        ; preds = %if.end37, %lor.lhs.false34.cleanup40_crit_edge, %if.else27.cleanup40_crit_edge
  %error.2 = phi i32 [ %call39, %if.end37 ], [ -22, %lor.lhs.false34.cleanup40_crit_edge ], [ -22, %if.else27.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %e28) #8
  br label %tomoyo_put_group.exit

tomoyo_put_group.exit:                            ; preds = %cleanup40, %cleanup24, %cleanup
  %error.3 = phi i32 [ %error.0, %cleanup ], [ %error.1, %cleanup24 ], [ %error.2, %cleanup40 ]
  %users.i63 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %call, i32 0, i32 1
  %call.i.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i63, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %users.i63, i32 1, i32 3, i32 1) #8
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i63, ptr %users.i63, i32 1, ptr elementtype(i32) %users.i63) #8, !srcloc !17
  br label %cleanup45

cleanup45:                                        ; preds = %tomoyo_put_group.exit, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ %error.3, %tomoyo_put_group.exit ], [ -12, %entry.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_group(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_read_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_update_policy(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_path_group(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %member_name = getelementptr inbounds %struct.tomoyo_path_group, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %member_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %member_name, align 4
  %member_name4 = getelementptr inbounds %struct.tomoyo_path_group, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %member_name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %member_name4, align 4
  %cmp = icmp eq ptr %1, %3
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_number_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_number_group(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.tomoyo_number_group, ptr %a, i32 0, i32 1
  %number4 = getelementptr inbounds %struct.tomoyo_number_group, ptr %b, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %number, ptr noundef dereferenceable(16) %number4, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_parse_ipaddr_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_address_group(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %address = getelementptr inbounds %struct.tomoyo_address_group, ptr %a, i32 0, i32 1
  %address4 = getelementptr inbounds %struct.tomoyo_address_group, ptr %b, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %address, ptr noundef dereferenceable(32) %address4, i32 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.tomoyo_same_ipaddr_union.exit_crit_edge

entry.tomoyo_same_ipaddr_union.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_same_ipaddr_union.exit

land.lhs.true.i:                                  ; preds = %entry
  %group.i = getelementptr inbounds %struct.tomoyo_address_group, ptr %a, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group.i, align 4
  %group3.i = getelementptr inbounds %struct.tomoyo_address_group, ptr %b, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %group3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group3.i, align 4
  %cmp.i = icmp eq ptr %1, %3
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.tomoyo_same_ipaddr_union.exit_crit_edge

land.lhs.true.i.tomoyo_same_ipaddr_union.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tomoyo_same_ipaddr_union.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %is_ipv6.i = getelementptr inbounds %struct.tomoyo_address_group, ptr %a, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_ipv6.i, align 4, !range !18
  %is_ipv65.i = getelementptr inbounds %struct.tomoyo_address_group, ptr %b, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %is_ipv65.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_ipv65.i, align 4, !range !18
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp8.i = icmp eq i8 %5, %7
  br label %tomoyo_same_ipaddr_union.exit

tomoyo_same_ipaddr_union.exit:                    ; preds = %land.rhs.i, %land.lhs.true.i.tomoyo_same_ipaddr_union.exit_crit_edge, %entry.tomoyo_same_ipaddr_union.exit_crit_edge
  %8 = phi i1 [ false, %land.lhs.true.i.tomoyo_same_ipaddr_union.exit_crit_edge ], [ false, %entry.tomoyo_same_ipaddr_union.exit_crit_edge ], [ %cmp8.i, %land.rhs.i ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_path_matches_group(ptr noundef %pathname, ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %srcu_read_lock_held.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b36 = load i1, ptr @tomoyo_path_matches_group.__warned, align 1
  br i1 %.b36, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tomoyo_path_matches_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %member_list = getelementptr inbounds %struct.tomoyo_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %member_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %member.039 = load volatile ptr, ptr %member_list, align 4
  %cmp.not40 = icmp eq ptr %member.039, %member_list
  br i1 %cmp.not40, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %member.041 = phi ptr [ %member.0, %for.inc.for.body_crit_edge ], [ %member.039, %do.end.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_head, ptr %member.041, i32 0, i32 1
  %1 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool14.not = icmp eq i8 %2, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %member_name = getelementptr inbounds %struct.tomoyo_path_group, ptr %member.041, i32 0, i32 1
  %3 = ptrtoint ptr %member_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %member_name, align 4
  %call17 = tail call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef %pathname, ptr noundef %4) #8
  br i1 %call17, label %if.end19, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %member_name.le = getelementptr inbounds %struct.tomoyo_path_group, ptr %member.041, i32 0, i32 1
  %5 = ptrtoint ptr %member_name.le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %member_name.le, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %member.041 to i32
  call void @__asan_load4_noabort(i32 %7)
  %member.0 = load volatile ptr, ptr %member.041, align 4
  %cmp.not = icmp eq ptr %member.0, %member_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end19, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.end19 ], [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_path_matches_pattern(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_number_matches_group(i32 noundef %min, i32 noundef %max, ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %srcu_read_lock_held.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b40 = load i1, ptr @tomoyo_number_matches_group.__warned, align 1
  br i1 %.b40, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tomoyo_number_matches_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %member_list = getelementptr inbounds %struct.tomoyo_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %member_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %member.043 = load volatile ptr, ptr %member_list, align 4
  %cmp.not44 = icmp eq ptr %member.043, %member_list
  br i1 %cmp.not44, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %member.045 = phi ptr [ %member.0, %for.inc.for.body_crit_edge ], [ %member.043, %do.end.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_head, ptr %member.045, i32 0, i32 1
  %1 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool14.not = icmp eq i8 %2, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.tomoyo_number_group, ptr %member.045, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %min)
  %cmp17 = icmp ult i32 %4, %min
  br i1 %cmp17, label %if.end16.for.inc_crit_edge, label %lor.lhs.false

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end16
  %number = getelementptr inbounds %struct.tomoyo_number_group, ptr %member.045, i32 0, i32 1
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %max)
  %cmp21 = icmp ugt i32 %6, %max
  br i1 %cmp21, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %member.045 to i32
  call void @__asan_load4_noabort(i32 %7)
  %member.0 = load volatile ptr, ptr %member.045, align 4
  %cmp.not = icmp eq ptr %member.0, %member_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %do.end.for.end_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ true, %lor.lhs.false.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_address_matches_group(i1 noundef zeroext %is_ipv6, ptr nocapture noundef readonly %address, ptr noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %srcu_read_lock_held.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call2 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b63 = load i1, ptr @tomoyo_address_matches_group.__warned, align 1
  br i1 %.b63, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tomoyo_address_matches_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 197, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %member_list = getelementptr inbounds %struct.tomoyo_group, ptr %group, i32 0, i32 2
  %0 = ptrtoint ptr %member_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %member.066 = load volatile ptr, ptr %member_list, align 4
  %cmp.not67 = icmp eq ptr %member.066, %member_list
  br i1 %cmp.not67, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %1 = zext i1 %is_ipv6 to i8
  %conv30 = select i1 %is_ipv6, i32 16, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %member.068 = phi ptr [ %member.066, %for.body.lr.ph ], [ %member.0, %for.inc.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_head, ptr %member.068, i32 0, i32 1
  %2 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool16.not = icmp eq i8 %3, 0
  br i1 %tobool16.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %is_ipv620 = getelementptr inbounds %struct.tomoyo_address_group, ptr %member.068, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %is_ipv620 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_ipv620, align 4, !range !18
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %1)
  %cmp25.not = icmp eq i8 %5, %1
  br i1 %cmp25.not, label %if.end28, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end28:                                         ; preds = %if.end18
  %address19 = getelementptr inbounds %struct.tomoyo_address_group, ptr %member.068, i32 0, i32 1
  %call31 = tail call i32 @memcmp(ptr noundef dereferenceable(4) %address19, ptr noundef dereferenceable(4) %address, i32 noundef %conv30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, 0
  br i1 %cmp32, label %if.end28.for.inc_crit_edge, label %lor.lhs.false

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end28
  %arrayidx36 = getelementptr %struct.tomoyo_address_group, ptr %member.068, i32 0, i32 1, i32 0, i32 1
  %call38 = tail call i32 @memcmp(ptr noundef dereferenceable(4) %address, ptr noundef dereferenceable(4) %arrayidx36, i32 noundef %conv30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp sgt i32 %call38, 0
  br i1 %cmp39, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %if.end18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %member.068 to i32
  call void @__asan_load4_noabort(i32 %6)
  %member.0 = load volatile ptr, ptr %member.068, align 4
  %cmp.not = icmp eq ptr %member.0, %member_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %do.end.for.end_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ true, %lor.lhs.false.for.end_crit_edge ], [ false, %for.inc.for.end_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../security/tomoyo/group.c", i32 136, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/tomoyo/group.c", i32 165, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/tomoyo/group.c", i32 196, i32 2}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2148586963, i64 2148586989, i64 2148587018, i64 2148587052, i64 2148587083, i64 2148587106}
!18 = !{i8 0, i8 2}
