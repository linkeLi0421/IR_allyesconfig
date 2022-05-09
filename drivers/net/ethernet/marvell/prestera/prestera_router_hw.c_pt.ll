; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/prestera/prestera_router_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/prestera/prestera_router_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.prestera_switch = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, ptr, [6 x i8], %struct.list_head, %struct.rwlock_t, i32, i32, i32, i8, ptr, ptr, ptr, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.prestera_router = type { ptr, %struct.list_head, %struct.list_head, %struct.notifier_block, %struct.notifier_block }
%struct.prestera_iface = type { i32, %struct.anon.121, i32, i16, i16, i16 }
%struct.anon.121 = type { i32, i32 }
%struct.prestera_rif_entry = type { %struct.prestera_rif_entry_key, ptr, [6 x i8], i16, %struct.list_head }
%struct.prestera_rif_entry_key = type { %struct.prestera_iface }
%struct.prestera_vr = type { %struct.list_head, %struct.refcount_struct, i32, i16, [2 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/ethernet/marvell/prestera/prestera_router_hw.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported iface type\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 34, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [62 x i8] c"../drivers/net/ethernet/marvell/prestera/prestera_router_hw.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 132, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prestera_router_hw_init(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 15
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %vr_list = getelementptr inbounds %struct.prestera_router, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vr_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %vr_list, ptr %vr_list, align 4
  %prev.i = getelementptr inbounds %struct.prestera_router, ptr %1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vr_list, ptr %prev.i, align 4
  %4 = load ptr, ptr %router, align 4
  %rif_entry_list = getelementptr inbounds %struct.prestera_router, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %rif_entry_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %rif_entry_list, ptr %rif_entry_list, align 4
  %prev.i3 = getelementptr inbounds %struct.prestera_router, ptr %4, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rif_entry_list, ptr %prev.i3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_router_hw_fini(ptr nocapture noundef readonly %sw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 15
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %vr_list = getelementptr inbounds %struct.prestera_router, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %vr_list, align 4
  %cmp.i.not = icmp eq ptr %3, %vr_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !13

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %router, align 4
  %rif_entry_list = getelementptr inbounds %struct.prestera_router, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rif_entry_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rif_entry_list, align 4
  %cmp.i59.not = icmp eq ptr %7, %rif_entry_list
  br i1 %cmp.i59.not, label %if.end.if.end48_crit_edge, label %do.end42, !prof !13

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #7
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end.if.end48_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_rif_entry_find(ptr nocapture noundef readonly %sw, ptr nocapture noundef readonly %k) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %__prestera_rif_entry_key_copy.exit [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge21
    i32 3, label %entry.if.end_crit_edge22
  ]

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

__prestera_rif_entry_key_copy.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge21, %entry.if.end_crit_edge22
  %router = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 15
  %3 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %router, align 4
  %rif_entry_list = getelementptr inbounds %struct.prestera_router, ptr %4, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %rif_entry_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %rif_entry_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %rif_entry.0 = getelementptr i8, ptr %.pn, i32 -36
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(24) %k, ptr noundef dereferenceable(24) %rif_entry.0, i32 24) #10
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %__prestera_rif_entry_key_copy.exit
  %retval.0 = phi ptr [ null, %__prestera_rif_entry_key_copy.exit ], [ null, %for.cond.cleanup_crit_edge ], [ %rif_entry.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prestera_rif_entry_destroy(ptr noundef %sw, ptr noundef %e) local_unnamed_addr #1 align 64 {
entry:
  %iface = alloca %struct.prestera_iface, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iface) #7
  %router_node = getelementptr inbounds %struct.prestera_rif_entry, ptr %e, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %router_node) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.prestera_rif_entry, ptr %e, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %router_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %router_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %router_node, align 4
  %prev.i = getelementptr inbounds %struct.prestera_rif_entry, ptr %e, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %8 = call ptr @memcpy(ptr %iface, ptr %e, i32 24)
  %vr = getelementptr inbounds %struct.prestera_rif_entry, ptr %e, i32 0, i32 1
  %9 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vr, align 4
  %hw_vr_id = getelementptr inbounds %struct.prestera_vr, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %hw_vr_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hw_vr_id, align 4
  %vr_id = getelementptr inbounds %struct.prestera_iface, ptr %iface, i32 0, i32 3
  %13 = ptrtoint ptr %vr_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vr_id, align 4
  %hw_id = getelementptr inbounds %struct.prestera_rif_entry, ptr %e, i32 0, i32 3
  %14 = ptrtoint ptr %hw_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_id, align 2
  %call = call i32 @prestera_hw_rif_delete(ptr noundef %sw, i16 noundef zeroext %15, ptr noundef nonnull %iface) #7
  %16 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vr, align 4
  call fastcc void @prestera_vr_put(ptr noundef %sw, ptr noundef %17)
  call void @kfree(ptr noundef %e) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iface) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_rif_delete(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prestera_vr_put(ptr noundef %sw, ptr noundef %vr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.prestera_vr, ptr %vr, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !15
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !13

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vr) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.__prestera_vr_destroy.exit_crit_edge

if.then.__prestera_vr_destroy.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %__prestera_vr_destroy.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %vr, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vr, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %__prestera_vr_destroy.exit

__prestera_vr_destroy.exit:                       ; preds = %if.end.i.i.i, %if.then.__prestera_vr_destroy.exit_crit_edge
  %7 = ptrtoint ptr %vr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %vr, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vr, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %hw_vr_id.i = getelementptr inbounds %struct.prestera_vr, ptr %vr, i32 0, i32 3
  %9 = ptrtoint ptr %hw_vr_id.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_vr_id.i, align 4
  %call.i = tail call i32 @prestera_hw_vr_delete(ptr noundef %sw, i16 noundef zeroext %10) #7
  tail call void @kfree(ptr noundef %vr) #7
  br label %if.end

if.end:                                           ; preds = %__prestera_vr_destroy.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prestera_rif_entry_create(ptr noundef %sw, ptr nocapture noundef readonly %k, i32 noundef %tb_id, ptr nocapture noundef readonly %addr) local_unnamed_addr #1 align 64 {
entry:
  %iface = alloca %struct.prestera_iface, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iface) #7
  %0 = call ptr @memset(ptr %iface, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 44) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %call7.i.i, i32 0, i32 24)
  %3 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %k, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %4, label %__prestera_rif_entry_key_copy.exit [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb10.i
    i32 3, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev_port.i = getelementptr inbounds %struct.prestera_iface, ptr %k, i32 0, i32 1
  %6 = ptrtoint ptr %dev_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_port.i, align 4
  %dev_port3.i = getelementptr inbounds %struct.prestera_iface, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev_port3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dev_port3.i, align 4
  %port_num.i = getelementptr inbounds %struct.prestera_iface, ptr %k, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_num.i, align 4
  %port_num9.i = getelementptr inbounds %struct.prestera_iface, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %port_num9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %port_num9.i, align 8
  br label %if.end4

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lag_id.i = getelementptr inbounds %struct.prestera_iface, ptr %k, i32 0, i32 4
  %12 = ptrtoint ptr %lag_id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %lag_id.i, align 2
  %lag_id13.i = getelementptr inbounds %struct.prestera_iface, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %lag_id13.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %lag_id13.i, align 2
  br label %if.end4

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_id.i = getelementptr inbounds %struct.prestera_iface, ptr %k, i32 0, i32 5
  %15 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_id.i, align 4
  %vlan_id17.i = getelementptr inbounds %struct.prestera_iface, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %vlan_id17.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vlan_id17.i, align 4
  br label %if.end4

__prestera_rif_entry_key_copy.exit:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %err_key_copy

if.end4:                                          ; preds = %sw.bb14.i, %sw.bb10.i, %sw.bb.i
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %4, ptr %call7.i.i, align 8
  %router.i.i = getelementptr inbounds %struct.prestera_switch, ptr %sw, i32 0, i32 15
  %19 = ptrtoint ptr %router.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %router.i.i, align 4
  %vr_list.i.i = getelementptr inbounds %struct.prestera_router, ptr %20, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end4
  %vr.0.in.i.i = phi ptr [ %vr_list.i.i, %if.end4 ], [ %vr.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %21 = ptrtoint ptr %vr.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %vr.0.i.i = load ptr, ptr %vr.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %vr.0.i.i, %vr_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.else.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.else.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %tb_id3.i.i = getelementptr inbounds %struct.prestera_vr, ptr %vr.0.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %tb_id3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tb_id3.i.i, align 4
  %cmp4.i.i = icmp eq i32 %23, %tb_id
  br i1 %cmp4.i.i, label %__prestera_vr_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

__prestera_vr_find.exit.i:                        ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %vr.0.i.i, null
  br i1 %tobool.not.i, label %__prestera_vr_find.exit.i.if.else.i_crit_edge, label %if.then.i

__prestera_vr_find.exit.i.if.else.i_crit_edge:    ; preds = %__prestera_vr_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %__prestera_vr_find.exit.i
  %refcount.i = getelementptr inbounds %struct.prestera_vr, ptr %vr.0.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !17
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !18

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %25 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.prestera_vr_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !13

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.prestera_vr_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prestera_vr_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #7
  br label %prestera_vr_get.exit

if.else.i:                                        ; preds = %__prestera_vr_find.exit.i.if.else.i_crit_edge, %for.cond.i.i.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %prestera_vr_get.exit.thread, label %if.end.i.i

prestera_vr_get.exit.thread:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %vr42 = getelementptr inbounds %struct.prestera_rif_entry, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %vr42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -12 to ptr), ptr %vr42, align 8
  br label %err_key_copy

if.end.i.i:                                       ; preds = %if.else.i
  %tb_id1.i.i = getelementptr inbounds %struct.prestera_vr, ptr %call7.i.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %tb_id1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tb_id, ptr %tb_id1.i.i, align 4
  %hw_vr_id.i.i = getelementptr inbounds %struct.prestera_vr, ptr %call7.i.i.i.i, i32 0, i32 3
  %call2.i.i = tail call i32 @prestera_hw_vr_create(ptr noundef %sw, ptr noundef %hw_vr_id.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %err_hw_create.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %29 = ptrtoint ptr %router.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %router.i.i, align 4
  %vr_list.i2.i = getelementptr inbounds %struct.prestera_router, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %vr_list.i2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vr_list.i2.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %vr_list.i2.i, ptr noundef %32) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end5.i.i.__prestera_vr_create.exit.i_crit_edge

if.end5.i.i.__prestera_vr_create.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__prestera_vr_create.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %vr_list.i2.i, ptr %prev3.i.i.i.i, align 4
  %36 = ptrtoint ptr %vr_list.i2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i.i.i, ptr %vr_list.i2.i, align 4
  br label %__prestera_vr_create.exit.i

err_hw_create.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %phi.cast.i.i = inttoptr i32 %call2.i.i to ptr
  br label %__prestera_vr_create.exit.i

__prestera_vr_create.exit.i:                      ; preds = %err_hw_create.i.i, %if.end.i.i.i.i, %if.end5.i.i.__prestera_vr_create.exit.i_crit_edge
  %retval.0.i3.i = phi ptr [ %call7.i.i.i.i, %if.end5.i.i.__prestera_vr_create.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ], [ %phi.cast.i.i, %err_hw_create.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__prestera_vr_create.exit.i.prestera_vr_get.exit_crit_edge, label %if.end.i

__prestera_vr_create.exit.i.prestera_vr_get.exit_crit_edge: ; preds = %__prestera_vr_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %prestera_vr_get.exit

if.end.i:                                         ; preds = %__prestera_vr_create.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %refcount5.i = getelementptr inbounds %struct.prestera_vr, ptr %retval.0.i3.i, i32 0, i32 1
  %call.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount5.i, i32 noundef 4) #7
  %37 = ptrtoint ptr %refcount5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 1, ptr %refcount5.i, align 4
  br label %prestera_vr_get.exit

prestera_vr_get.exit:                             ; preds = %if.end.i, %__prestera_vr_create.exit.i.prestera_vr_get.exit_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.prestera_vr_get.exit_crit_edge
  %retval.0.i37 = phi ptr [ %retval.0.i3.i, %if.end.i ], [ %vr.0.i.i, %if.else.i.i.i.i.prestera_vr_get.exit_crit_edge ], [ %vr.0.i.i, %if.end15.sink.split.i.i.i.i ], [ %retval.0.i3.i, %__prestera_vr_create.exit.i.prestera_vr_get.exit_crit_edge ]
  %vr = getelementptr inbounds %struct.prestera_rif_entry, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %vr to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i37, ptr %vr, align 8
  %cmp.i = icmp ugt ptr %retval.0.i37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %prestera_vr_get.exit.err_key_copy_crit_edge, label %if.end9

prestera_vr_get.exit.err_key_copy_crit_edge:      ; preds = %prestera_vr_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_key_copy

if.end9:                                          ; preds = %prestera_vr_get.exit
  %addr10 = getelementptr inbounds %struct.prestera_rif_entry, ptr %call7.i.i, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %addr10, ptr %addr, i32 6)
  %40 = call ptr @memcpy(ptr %iface, ptr %call7.i.i, i32 24)
  %hw_vr_id = getelementptr inbounds %struct.prestera_vr, ptr %retval.0.i37, i32 0, i32 3
  %41 = ptrtoint ptr %hw_vr_id to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hw_vr_id, align 4
  %vr_id = getelementptr inbounds %struct.prestera_iface, ptr %iface, i32 0, i32 3
  %43 = ptrtoint ptr %vr_id to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %vr_id, align 4
  %hw_id = getelementptr inbounds %struct.prestera_rif_entry, ptr %call7.i.i, i32 0, i32 3
  %call15 = call i32 @prestera_hw_rif_create(ptr noundef %sw, ptr noundef nonnull %iface, ptr noundef %addr10, ptr noundef %hw_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %err_hw_create

if.end18:                                         ; preds = %if.end9
  %router_node = getelementptr inbounds %struct.prestera_rif_entry, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %router.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %router.i.i, align 4
  %rif_entry_list = getelementptr inbounds %struct.prestera_router, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %rif_entry_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rif_entry_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %router_node, ptr noundef %rif_entry_list, ptr noundef %47) #7
  br i1 %call.i.i, label %if.end.i.i38, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i38:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %router_node, ptr %prev1.i.i, align 4
  %49 = ptrtoint ptr %router_node to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %router_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.prestera_rif_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rif_entry_list, ptr %prev3.i.i, align 8
  %51 = ptrtoint ptr %rif_entry_list to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %router_node, ptr %rif_entry_list, align 4
  br label %cleanup

err_hw_create:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %vr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vr, align 8
  call fastcc void @prestera_vr_put(ptr noundef %sw, ptr noundef %53)
  br label %err_key_copy

err_key_copy:                                     ; preds = %err_hw_create, %prestera_vr_get.exit.err_key_copy_crit_edge, %prestera_vr_get.exit.thread, %__prestera_rif_entry_key_copy.exit
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_key_copy, %if.end.i.i38, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %err_key_copy ], [ %call7.i.i, %if.end18.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iface) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_rif_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vr_delete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prestera_hw_vr_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_router_hw.c", i32 34, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/marvell/prestera/prestera_router_hw.c", i32 132, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2148309914}
!15 = !{i64 2148224378, i64 2148224410, i64 2148224439, i64 2148224473, i64 2148224504, i64 2148224527}
!16 = !{i64 2150889420}
!17 = !{i64 2148221913, i64 2148221945, i64 2148221974, i64 2148222008, i64 2148222039, i64 2148222062}
!18 = !{!"branch_weights", i32 1, i32 2000}
