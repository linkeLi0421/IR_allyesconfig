; ModuleID = '/llk/IR_all_yes/net/can/j1939/bus.c_pt.bc'
source_filename = "../net/can/j1939/bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.j1939_ecu = type { %struct.list_head, i64, i8, %struct.hrtimer, %struct.kref, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.j1939_priv = type { %struct.list_head, %struct.rwlock_t, ptr, [256 x %struct.j1939_addr_ent], %struct.kref, %struct.list_head, %struct.spinlock, i32, %struct.spinlock, %struct.list_head, %struct.kref, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.j1939_addr_ent = type { ptr, i32 }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/can/j1939/bus.c\00", [44 x i8] zeroinitializer }, align 32
@j1939_local_ecu_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Trying to map already mapped ECU, addr: 0x%02x, name: 0x%016llx. Skip it.\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 77, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [23 x i8] c"../net/can/j1939/bus.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 61, i32 27 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_ecu_put(ptr noundef %ecu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !16
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !17
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !18

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  %priv1.i.i = getelementptr %struct.j1939_ecu, ptr %ecu, i32 0, i32 5
  %1 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ecu) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.__j1939_ecu_release.exit.i_crit_edge

if.then.i.__j1939_ecu_release.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__j1939_ecu_release.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr %struct.j1939_ecu, ptr %ecu, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i.i, align 4
  %5 = ptrtoint ptr %ecu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ecu, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__j1939_ecu_release.exit.i

__j1939_ecu_release.exit.i:                       ; preds = %if.end.i.i.i.i, %if.then.i.__j1939_ecu_release.exit.i_crit_edge
  %9 = ptrtoint ptr %ecu to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %ecu, align 4
  %prev.i.i.i = getelementptr %struct.j1939_ecu, ptr %ecu, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %ecu) #6
  tail call void @j1939_priv_put(ptr noundef %2) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %__j1939_ecu_release.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_ecu_unmap_locked(ptr noundef %ecu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !20

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %addr = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 2
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %4)
  %cmp.i = icmp ult i8 %4, -2
  br i1 %cmp.i, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call28 = tail call fastcc zeroext i1 @j1939_ecu_is_mapped_locked(ptr noundef %ecu)
  br i1 %call28, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 8
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.j1939_priv, ptr %1, i32 0, i32 3, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  %nusers = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 6
  %8 = ptrtoint ptr %nusers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nusers, align 8
  %nusers33 = getelementptr %struct.j1939_priv, ptr %1, i32 0, i32 3, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %nusers33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nusers33, align 4
  %sub = sub i32 %11, %9
  store i32 %sub, ptr %nusers33, align 4
  tail call void @j1939_ecu_put(ptr noundef %ecu)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @j1939_ecu_is_mapped_locked(ptr noundef readonly %ecu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.thread, label %land.rhs

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %addr31 = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 2
  %3 = ptrtoint ptr %addr31 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr31, align 8
  br label %j1939_ecu_find_by_addr_locked.exit

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !20

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  %addr = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %if.end.j1939_ecu_find_by_addr_locked.exit_crit_edge, label %land.rhs.i

if.end.j1939_ecu_find_by_addr_locked.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_find_by_addr_locked.exit

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.j1939_ecu_find_by_addr_locked.exit_crit_edge, !prof !20

land.rhs.i.j1939_ecu_find_by_addr_locked.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_find_by_addr_locked.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %j1939_ecu_find_by_addr_locked.exit

j1939_ecu_find_by_addr_locked.exit:               ; preds = %do.end.i, %land.rhs.i.j1939_ecu_find_by_addr_locked.exit_crit_edge, %if.end.j1939_ecu_find_by_addr_locked.exit_crit_edge, %if.end.thread
  %7 = phi i8 [ %4, %if.end.thread ], [ %6, %if.end.j1939_ecu_find_by_addr_locked.exit_crit_edge ], [ %6, %land.rhs.i.j1939_ecu_find_by_addr_locked.exit_crit_edge ], [ %6, %do.end.i ]
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.j1939_priv, ptr %1, i32 0, i32 3, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp26 = icmp eq ptr %9, %ecu
  ret i1 %cmp26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_ecu_unmap(ptr noundef %ecu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #6
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !20

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %addr.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 2
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %6)
  %cmp.i.i = icmp ult i8 %6, -2
  br i1 %cmp.i.i, label %if.end27.i, label %if.end.i.j1939_ecu_unmap_locked.exit_crit_edge

if.end.i.j1939_ecu_unmap_locked.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_unmap_locked.exit

if.end27.i:                                       ; preds = %if.end.i
  %call28.i = tail call fastcc zeroext i1 @j1939_ecu_is_mapped_locked(ptr noundef %ecu) #6
  br i1 %call28.i, label %if.end30.i, label %if.end27.i.j1939_ecu_unmap_locked.exit_crit_edge

if.end27.i.j1939_ecu_unmap_locked.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_unmap_locked.exit

if.end30.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr.i, align 8
  %idxprom.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.j1939_priv, ptr %3, i32 0, i32 3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.i, align 4
  %nusers.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 6
  %10 = ptrtoint ptr %nusers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nusers.i, align 8
  %nusers33.i = getelementptr %struct.j1939_priv, ptr %3, i32 0, i32 3, i32 %idxprom.i, i32 1
  %12 = ptrtoint ptr %nusers33.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nusers33.i, align 4
  %sub.i = sub i32 %13, %11
  store i32 %sub.i, ptr %nusers33.i, align 4
  tail call void @j1939_ecu_put(ptr noundef %ecu) #6
  br label %j1939_ecu_unmap_locked.exit

j1939_ecu_unmap_locked.exit:                      ; preds = %if.end30.i, %if.end27.i.j1939_ecu_unmap_locked.exit_crit_edge, %if.end.i.j1939_ecu_unmap_locked.exit_crit_edge
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %lock2 = getelementptr inbounds %struct.j1939_priv, ptr %15, i32 0, i32 1
  tail call void @_raw_write_unlock_bh(ptr noundef %lock2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_ecu_unmap_all(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %priv1.i = getelementptr inbounds %struct.j1939_ecu, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !20

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %addr.i = getelementptr inbounds %struct.j1939_ecu, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %6)
  %cmp.i.i = icmp ult i8 %6, -2
  br i1 %cmp.i.i, label %if.end27.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27.i:                                       ; preds = %if.end.i
  %call28.i = tail call fastcc zeroext i1 @j1939_ecu_is_mapped_locked(ptr noundef nonnull %1) #6
  br i1 %call28.i, label %if.end30.i, label %if.end27.i.for.inc_crit_edge

if.end27.i.for.inc_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end30.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr.i, align 8
  %idxprom.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.j1939_priv, ptr %3, i32 0, i32 3, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.i, align 4
  %nusers.i = getelementptr inbounds %struct.j1939_ecu, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %nusers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nusers.i, align 8
  %nusers33.i = getelementptr %struct.j1939_priv, ptr %3, i32 0, i32 3, i32 %idxprom.i, i32 1
  %12 = ptrtoint ptr %nusers33.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nusers33.i, align 4
  %sub.i = sub i32 %13, %11
  store i32 %sub.i, ptr %nusers33.i, align 4
  tail call void @j1939_ecu_put(ptr noundef nonnull %1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end30.i, %if.end27.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_ecu_timer_start(ptr noundef %ecu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kref.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #6, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !20

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.j1939_ecu_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.j1939_ecu_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %j1939_ecu_get.exit

j1939_ecu_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.j1939_ecu_get.exit_crit_edge
  %ac_timer = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %ac_timer, i64 noundef 250000000, i64 noundef 0, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_ecu_timer_cancel(ptr noundef %ecu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_timer = getelementptr inbounds %struct.j1939_ecu, ptr %ecu, i32 0, i32 3
  %call = tail call i32 @hrtimer_cancel(ptr noundef %ac_timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @j1939_ecu_put(ptr noundef %ecu)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_ecu_create_locked(ptr noundef %priv, i64 noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !20

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !6) #6
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %4, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.i = select i1 %tobool.not.i, i32 3520, i32 2848
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 88) #9
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %kref = getelementptr inbounds %struct.j1939_ecu, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  %6 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %kref, align 8
  %addr = getelementptr inbounds %struct.j1939_ecu, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %addr, align 8
  %name30 = getelementptr inbounds %struct.j1939_ecu, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %name30 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %name, ptr %name30, align 8
  %ac_timer = getelementptr inbounds %struct.j1939_ecu, ptr %call7.i.i, i32 0, i32 3
  tail call void @hrtimer_init(ptr noundef %ac_timer, i32 noundef 1, i32 noundef 5) #6
  %function = getelementptr inbounds %struct.j1939_ecu, ptr %call7.i.i, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @j1939_ecu_timer_handler, ptr %function, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i, align 4
  tail call void @j1939_priv_get(ptr noundef %priv) #6
  %priv32 = getelementptr inbounds %struct.j1939_ecu, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %priv32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %priv, ptr %priv32, align 4
  %prev.i47 = getelementptr inbounds %struct.list_head, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i47, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %14, ptr noundef %priv) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %prev.i47, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i, ptr %14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end29.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_ecu_timer_handler(ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hrtimer, i32 -24
  %priv1 = getelementptr i8, ptr %hrtimer, i32 52
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %1, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #6
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !20

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %addr.i = getelementptr i8, ptr %hrtimer, i32 -8
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %6)
  %cmp.i.i = icmp ult i8 %6, -2
  br i1 %cmp.i.i, label %if.end27.i, label %if.end.i.j1939_ecu_map_locked.exit_crit_edge

if.end.i.j1939_ecu_map_locked.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_map_locked.exit

if.end27.i:                                       ; preds = %if.end.i
  %idxprom.i = zext i8 %6 to i32
  %arrayidx.i = getelementptr %struct.j1939_priv, ptr %3, i32 0, i32 3, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool30.not.i = icmp eq ptr %8, null
  br i1 %tobool30.not.i, label %if.end33.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %ndev.i = getelementptr inbounds %struct.j1939_priv, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i, align 4
  %name.i = getelementptr i8, ptr %hrtimer, i32 -16
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %name.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %10, ptr noundef nonnull @.str.1, i32 noundef %idxprom.i, i64 noundef %12) #10
  br label %j1939_ecu_map_locked.exit

if.end33.i:                                       ; preds = %if.end27.i
  %kref.i.i = getelementptr i8, ptr %hrtimer, i32 48
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #6, !srcloc !21
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end33.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !20

if.end33.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end33.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.j1939_ecu_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.j1939_ecu_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end33.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end33.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #6
  br label %j1939_ecu_get.exit.i

j1939_ecu_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.j1939_ecu_get.exit.i_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx.i, align 4
  %nusers.i = getelementptr i8, ptr %hrtimer, i32 56
  %16 = ptrtoint ptr %nusers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nusers.i, align 8
  %nusers35.i = getelementptr %struct.j1939_priv, ptr %3, i32 0, i32 3, i32 %idxprom.i, i32 1
  %18 = ptrtoint ptr %nusers35.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nusers35.i, align 4
  %add.i = add i32 %19, %17
  store i32 %add.i, ptr %nusers35.i, align 4
  br label %j1939_ecu_map_locked.exit

j1939_ecu_map_locked.exit:                        ; preds = %j1939_ecu_get.exit.i, %if.then31.i, %if.end.i.j1939_ecu_map_locked.exit_crit_edge
  tail call void @j1939_ecu_put(ptr noundef %add.ptr)
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_priv_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_ecu_find_by_addr_locked(ptr noundef %priv, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !20

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %idxprom = zext i8 %addr to i32
  %arrayidx = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_ecu_get_by_addr_locked(ptr noundef %priv, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !20

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %addr)
  %cmp.i = icmp ult i8 %addr, -2
  br i1 %cmp.i, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end26.j1939_ecu_find_by_addr_locked.exit_crit_edge, label %land.rhs.i

if.end26.j1939_ecu_find_by_addr_locked.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_find_by_addr_locked.exit

land.rhs.i:                                       ; preds = %if.end26
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.j1939_ecu_find_by_addr_locked.exit_crit_edge, !prof !20

land.rhs.i.j1939_ecu_find_by_addr_locked.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %j1939_ecu_find_by_addr_locked.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %j1939_ecu_find_by_addr_locked.exit

j1939_ecu_find_by_addr_locked.exit:               ; preds = %do.end.i, %land.rhs.i.j1939_ecu_find_by_addr_locked.exit_crit_edge, %if.end26.j1939_ecu_find_by_addr_locked.exit_crit_edge
  %idxprom.i = zext i8 %addr to i32
  %arrayidx.i = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool28.not = icmp eq ptr %3, null
  br i1 %tobool28.not, label %j1939_ecu_find_by_addr_locked.exit.cleanup_crit_edge, label %if.then29

j1939_ecu_find_by_addr_locked.exit.cleanup_crit_edge: ; preds = %j1939_ecu_find_by_addr_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29:                                        ; preds = %j1939_ecu_find_by_addr_locked.exit
  %kref.i = getelementptr inbounds %struct.j1939_ecu, ptr %3, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #6, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !20

if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then29
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %j1939_ecu_find_by_addr_locked.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %j1939_ecu_find_by_addr_locked.exit.cleanup_crit_edge ], [ %3, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_ecu_get_by_addr(ptr noundef %priv, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #6
  %call = tail call ptr @j1939_ecu_get_by_addr_locked(ptr noundef %priv, i8 noundef zeroext %addr)
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_ecu_get_by_name_locked(ptr noundef %priv, i64 noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !20

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 228, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %name)
  %tobool24.not = icmp eq i64 %name, 0
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end26.for.cond.i.preheader_crit_edge, label %land.rhs.i

if.end26.for.cond.i.preheader_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.end26
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !20

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #6
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.end26.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %ecu.0.in.i = phi ptr [ %ecu.0.i, %for.body.i.for.cond.i_crit_edge ], [ %priv, %for.cond.i.preheader ]
  %2 = ptrtoint ptr %ecu.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %ecu.0.i = load ptr, ptr %ecu.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %ecu.0.i, %priv
  br i1 %cmp26.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %name29.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %name29.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %name29.i, align 8
  %cmp30.i = icmp eq i64 %4, %name
  br i1 %cmp30.i, label %j1939_ecu_find_by_name_locked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

j1939_ecu_find_by_name_locked.exit:               ; preds = %for.body.i
  %tobool28.not = icmp eq ptr %ecu.0.i, null
  br i1 %tobool28.not, label %j1939_ecu_find_by_name_locked.exit.cleanup_crit_edge, label %if.then29

j1939_ecu_find_by_name_locked.exit.cleanup_crit_edge: ; preds = %j1939_ecu_find_by_name_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29:                                        ; preds = %j1939_ecu_find_by_name_locked.exit
  %kref.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #6, !srcloc !21
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !20

if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then29
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !18

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %j1939_ecu_find_by_name_locked.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end.cleanup_crit_edge ], [ null, %j1939_ecu_find_by_name_locked.exit.cleanup_crit_edge ], [ %ecu.0.i, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %ecu.0.i, %if.end15.sink.split.i.i.i.i.i ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_ecu_get_by_name(ptr noundef %priv, i64 noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #6
  %call = tail call ptr @j1939_ecu_get_by_name_locked(ptr noundef %priv, i64 noundef %name)
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @j1939_name_to_addr(ptr noundef %priv, i64 noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %name)
  %tobool.not = icmp eq i64 %name, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.for.cond.i.preheader_crit_edge, label %land.rhs.i

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !20

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #6
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %ecu.0.in.i = phi ptr [ %ecu.0.i, %for.body.i.for.cond.i_crit_edge ], [ %priv, %for.cond.i.preheader ]
  %1 = ptrtoint ptr %ecu.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %ecu.0.i = load ptr, ptr %ecu.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %ecu.0.i, %priv
  br i1 %cmp26.not.i, label %for.cond.i.if.end5_crit_edge, label %for.body.i

for.cond.i.if.end5_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.i:                                       ; preds = %for.cond.i
  %name29.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %name29.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %name29.i, align 8
  %cmp30.i = icmp eq i64 %3, %name
  br i1 %cmp30.i, label %j1939_ecu_find_by_name_locked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

j1939_ecu_find_by_name_locked.exit:               ; preds = %for.body.i
  %tobool1.not = icmp eq ptr %ecu.0.i, null
  br i1 %tobool1.not, label %j1939_ecu_find_by_name_locked.exit.if.end5_crit_edge, label %land.lhs.true

j1939_ecu_find_by_name_locked.exit.if.end5_crit_edge: ; preds = %j1939_ecu_find_by_name_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %j1939_ecu_find_by_name_locked.exit
  %call2 = tail call fastcc zeroext i1 @j1939_ecu_is_mapped_locked(ptr noundef nonnull %ecu.0.i)
  br i1 %call2, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %addr4 = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %addr4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %j1939_ecu_find_by_name_locked.exit.if.end5_crit_edge, %for.cond.i.if.end5_crit_edge
  %addr.0 = phi i8 [ %5, %if.then3 ], [ -2, %land.lhs.true.if.end5_crit_edge ], [ -2, %j1939_ecu_find_by_name_locked.exit.if.end5_crit_edge ], [ -2, %for.cond.i.if.end5_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %addr.0, %if.end5 ], [ -1, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @j1939_local_ecu_get(ptr noundef %priv, i64 noundef %name, i8 noundef zeroext %sa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %sa)
  %cmp.i = icmp ult i8 %sa, -2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom = zext i8 %sa to i32
  %nusers = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %nusers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nusers, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nusers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %name)
  %tobool.not = icmp eq i64 %name, 0
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end2

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @j1939_ecu_get_by_name_locked(ptr noundef %priv, i64 noundef %name)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end2.if.end7_crit_edge

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call ptr @j1939_ecu_create_locked(ptr noundef %priv, i64 noundef %name)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2.if.end7_crit_edge
  %ecu.0 = phi ptr [ %call3, %if.end2.if.end7_crit_edge ], [ %call6, %if.then5 ]
  %cmp.i.i.not = icmp ugt ptr %ecu.0, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %ecu.0 to i32
  br i1 %cmp.i.i.not, label %if.end7.done_crit_edge, label %if.end11

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end11:                                         ; preds = %if.end7
  %nusers12 = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0, i32 0, i32 6
  %3 = ptrtoint ptr %nusers12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nusers12, align 8
  %inc13 = add i32 %4, 1
  store i32 %inc13, ptr %nusers12, align 8
  %call14 = tail call fastcc zeroext i1 @j1939_ecu_is_mapped_locked(ptr noundef %ecu.0)
  br i1 %call14, label %if.then15, label %if.end11.done_crit_edge

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr, align 8
  %idxprom17 = zext i8 %6 to i32
  %nusers19 = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %idxprom17, i32 1
  %7 = ptrtoint ptr %nusers19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nusers19, align 4
  %inc20 = add i32 %8, 1
  store i32 %inc20, ptr %nusers19, align 4
  br label %done

done:                                             ; preds = %if.then15, %if.end11.done_crit_edge, %if.end7.done_crit_edge, %if.end.done_crit_edge
  %err.0 = phi i32 [ %2, %if.end7.done_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end11.done_crit_edge ], [ 0, %if.end.done_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_local_ecu_put(ptr noundef %priv, i64 noundef %name, i8 noundef zeroext %sa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %sa)
  %cmp.i = icmp ult i8 %sa, -2
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom = zext i8 %sa to i32
  %nusers = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %nusers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nusers, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %nusers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %name)
  %tobool.not = icmp eq i64 %name, 0
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end2

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end2.for.cond.i.preheader_crit_edge, label %land.rhs.i

if.end2.for.cond.i.preheader_crit_edge:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.end2
  %dep_map.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !20

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #6
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.end2.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %ecu.0.in.i = phi ptr [ %ecu.0.i, %for.body.i.for.cond.i_crit_edge ], [ %priv, %for.cond.i.preheader ]
  %3 = ptrtoint ptr %ecu.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %ecu.0.i = load ptr, ptr %ecu.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %ecu.0.i, %priv
  br i1 %cmp26.not.i, label %for.cond.i.land.rhs_crit_edge, label %for.body.i

for.cond.i.land.rhs_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.body.i:                                       ; preds = %for.cond.i
  %name29.i = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %name29.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %name29.i, align 8
  %cmp30.i = icmp eq i64 %5, %name
  br i1 %cmp30.i, label %j1939_ecu_find_by_name_locked.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

j1939_ecu_find_by_name_locked.exit:               ; preds = %for.body.i
  %tobool4.not = icmp eq ptr %ecu.0.i, null
  br i1 %tobool4.not, label %j1939_ecu_find_by_name_locked.exit.land.rhs_crit_edge, label %if.end45.critedge

j1939_ecu_find_by_name_locked.exit.land.rhs_crit_edge: ; preds = %j1939_ecu_find_by_name_locked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %j1939_ecu_find_by_name_locked.exit.land.rhs_crit_edge, %for.cond.i.land.rhs_crit_edge
  %.b69 = load i1, ptr @j1939_local_ecu_put.__already_done, align 1
  br i1 %.b69, label %land.rhs.done_crit_edge, label %if.then13, !prof !18

land.rhs.done_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then13:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @j1939_local_ecu_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 321, i32 noundef 9, ptr noundef null) #6
  br label %done

if.end45.critedge:                                ; preds = %j1939_ecu_find_by_name_locked.exit
  %nusers46 = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 6
  %6 = ptrtoint ptr %nusers46 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nusers46, align 8
  %dec47 = add i32 %7, -1
  store i32 %dec47, ptr %nusers46, align 8
  %call48 = tail call fastcc zeroext i1 @j1939_ecu_is_mapped_locked(ptr noundef nonnull %ecu.0.i)
  br i1 %call48, label %if.then49, label %if.end45.critedge.if.end55_crit_edge

if.end45.critedge.if.end55_crit_edge:             ; preds = %if.end45.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then49:                                        ; preds = %if.end45.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.j1939_ecu, ptr %ecu.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr, align 8
  %idxprom51 = zext i8 %9 to i32
  %nusers53 = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 3, i32 %idxprom51, i32 1
  %10 = ptrtoint ptr %nusers53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nusers53, align 4
  %dec54 = add i32 %11, -1
  store i32 %dec54, ptr %nusers53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.end45.critedge.if.end55_crit_edge
  tail call void @j1939_ecu_put(ptr noundef nonnull %ecu.0.i)
  br label %done

done:                                             ; preds = %if.end55, %if.then13, %land.rhs.done_crit_edge, %if.end.done_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_priv_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/can/j1939/bus.c", i32 77, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/can/j1939/bus.c", i32 321, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/can/j1939/bus.c", i32 61, i32 27}
!6 = !{!"sp"}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2148654143}
!17 = !{i64 2148568583, i64 2148568615, i64 2148568644, i64 2148568678, i64 2148568709, i64 2148568732}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149659090}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2148566118, i64 2148566150, i64 2148566179, i64 2148566213, i64 2148566244, i64 2148566267}
