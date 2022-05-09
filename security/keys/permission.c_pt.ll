; ModuleID = '/llk/IR_all_yes/security/keys/permission.c_pt.bc'
source_filename = "../security/keys/permission.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+key_task_permission\22, \22a\22\09"
module asm "\09.weak\09__crc_key_task_permission\09\09\09\09"
module asm "\09.long\09__crc_key_task_permission\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_task_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22key_task_permission\22\09\09\09\09\09"
module asm "__kstrtabns_key_task_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+key_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_key_validate\09\09\09\09"
module asm "\09.long\09__crc_key_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_key_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22key_validate\22\09\09\09\09\09"
module asm "__kstrtabns_key_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.61, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.62, %union.anon.67, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.61 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.63, ptr, ptr, ptr }
%union.anon.63 = type { i32 }
%union.anon.67 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.69 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/keys/permission.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_key_task_permission = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_task_permission = external dso_local constant [0 x i8], align 1
@__ksymtab_key_task_permission = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_task_permission to i32), ptr @__kstrtab_key_task_permission, ptr @__kstrtabns_key_task_permission }, section "___ksymtab+key_task_permission", align 4
@__kstrtab_key_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_key_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_key_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @key_validate to i32), ptr @__kstrtab_key_validate, ptr @__kstrtabns_key_validate }, section "___ksymtab+key_validate", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../security/keys/permission.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 35, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_key_task_permission, ptr @__ksymtab_key_validate, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_task_permission(ptr noundef %key_ref, ptr noundef %cred, i32 noundef %need_perm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %need_perm to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %need_perm, label %do.end [
    i32 7, label %entry.lsm_crit_edge
    i32 8, label %entry.lsm_crit_edge86
    i32 9, label %entry.lsm_crit_edge87
    i32 10, label %entry.lsm_crit_edge88
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb16
    i32 3, label %sw.bb17
    i32 4, label %sw.bb18
    i32 5, label %sw.bb19
    i32 6, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

entry.lsm_crit_edge88:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %lsm

entry.lsm_crit_edge87:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %lsm

entry.lsm_crit_edge86:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %lsm

entry.lsm_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %lsm

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 32, %sw.bb20 ], [ 16, %sw.bb19 ], [ 8, %sw.bb18 ], [ 4, %sw.bb17 ], [ 2, %sw.bb16 ], [ %need_perm, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %key_ref to i32
  %and.i = and i32 %1, -2
  %2 = inttoptr i32 %and.i to ptr
  %uid = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 9
  %fsuid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 10
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack = load i32, ptr %uid, align 8
  %4 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack78 = load i32, ptr %fsuid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack78)
  %cmp.i = icmp eq i32 %.unpack, %.unpack78
  br i1 %cmp.i, label %if.then23, label %if.end24

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #4
  %perm = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 11
  %5 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %perm, align 8
  %shr = lshr i32 %6, 16
  br label %use_these_perms

if.end24:                                         ; preds = %sw.epilog
  %gid = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 10
  %7 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack79 = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack79)
  %cmp.i83.not = icmp eq i32 %.unpack79, -1
  br i1 %cmp.i83.not, label %if.end24.if.end46_crit_edge, label %land.lhs.true

if.end24.if.end46_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end24
  %perm27 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 11
  %8 = ptrtoint ptr %perm27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %perm27, align 8
  %and = and i32 %9, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end46_crit_edge, label %if.then29

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end46

if.then29:                                        ; preds = %land.lhs.true
  %fsgid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 11
  %10 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack81 = load i32, ptr %fsgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack79, i32 %.unpack81)
  %cmp.i84 = icmp eq i32 %.unpack79, %.unpack81
  br i1 %cmp.i84, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #4
  %shr36 = lshr i32 %9, 8
  br label %use_these_perms

if.end37:                                         ; preds = %if.then29
  %group_info = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 27
  %11 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %group_info, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack79, 0
  %call40 = tail call i32 @groups_search(ptr noundef %12, [1 x i32] %13) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end37.if.end46_crit_edge, label %if.then42

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end46

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #4
  %14 = ptrtoint ptr %perm27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %perm27, align 8
  %shr44 = lshr i32 %15, 8
  br label %use_these_perms

if.end46:                                         ; preds = %if.end37.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end24.if.end46_crit_edge
  %perm47 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 11
  %16 = ptrtoint ptr %perm47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %perm47, align 8
  br label %use_these_perms

use_these_perms:                                  ; preds = %if.end46, %if.then42, %if.then34, %if.then23
  %kperm.0 = phi i32 [ %shr, %if.then23 ], [ %shr36, %if.then34 ], [ %shr44, %if.then42 ], [ %17, %if.end46 ]
  %and.i85 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.i.not = icmp eq i32 %and.i85, 0
  br i1 %tobool.i.not, label %use_these_perms.if.end52_crit_edge, label %if.then49

use_these_perms.if.end52_crit_edge:               ; preds = %use_these_perms
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end52

if.then49:                                        ; preds = %use_these_perms
  call void @__sanitizer_cov_trace_pc() #4
  %perm50 = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 11
  %18 = ptrtoint ptr %perm50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %perm50, align 8
  %shr51 = lshr i32 %19, 24
  %or = or i32 %shr51, %kperm.0
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %use_these_perms.if.end52_crit_edge
  %kperm.1 = phi i32 [ %or, %if.then49 ], [ %kperm.0, %use_these_perms.if.end52_crit_edge ]
  %and53 = and i32 %kperm.1, %mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and53, i32 %mask.0)
  %cmp.not = icmp eq i32 %and53, %mask.0
  br i1 %cmp.not, label %if.end52.lsm_crit_edge, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end52.lsm_crit_edge:                           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #4
  br label %lsm

lsm:                                              ; preds = %if.end52.lsm_crit_edge, %entry.lsm_crit_edge, %entry.lsm_crit_edge86, %entry.lsm_crit_edge87, %entry.lsm_crit_edge88
  %call56 = tail call i32 @security_key_permission(ptr noundef %key_ref, ptr noundef %cred, i32 noundef %need_perm) #2
  br label %cleanup

cleanup:                                          ; preds = %lsm, %if.end52.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -13, %do.end ], [ %call56, %lsm ], [ -13, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @groups_search(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_key_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @key_validate(ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 15
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1, align 4
  %2 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load volatile i64, ptr %2, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and6 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool10.not = icmp eq i64 %4, 0
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  %call = tail call i64 @ktime_get_real_seconds() #2
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %4)
  %cmp.not = icmp slt i64 %call, %4
  br i1 %cmp.not, label %if.then11.if.end14_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.end14:                                         ; preds = %if.then11.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -126, %entry.cleanup_crit_edge ], [ -128, %if.end.cleanup_crit_edge ], [ -127, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/permission.c", i32 35, i32 3}
!2 = !{ptr @__ksymtab_key_task_permission, !3, !"__ksymtab_key_task_permission", i1 false, i1 false}
!3 = !{!"../security/keys/permission.c", i32 92, i32 1}
!4 = !{ptr @__ksymtab_key_validate, !5, !"__ksymtab_key_validate", i1 false, i1 false}
!5 = !{!"../security/keys/permission.c", i32 123, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
