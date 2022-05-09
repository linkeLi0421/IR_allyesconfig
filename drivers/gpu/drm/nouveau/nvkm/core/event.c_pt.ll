; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/event.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/event.c\00", [54 x i8] zeroinitializer }, align 32
@nvkm_event_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&event->refs_lock\00", [46 x i8] zeroinitializer }, align 32
@nvkm_event_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&event->list_lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 58, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 96, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [45 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/event.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 97, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @nvkm_event_init.__key, ptr @.str.1, ptr @nvkm_event_init.__key.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_event_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_event_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_event_put(ptr noundef %event, i32 noundef %types, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %refs_lock = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %refs_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %refs_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %while.cond.preheader, !prof !17

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %types)
  %tobool8.not28 = icmp eq i32 %types, 0
  br i1 %tobool8.not28, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %refs = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 6
  %types_nr = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 1
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 28, 0\0A.popsection", ""() #5, !srcloc !18
  unreachable

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %types.addr.029 = phi i32 [ %types, %while.body.lr.ph ], [ %and, %if.end17.while.body_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %types.addr.029, i1 true) #5, !range !19
  %shl = shl nuw i32 1, %2
  %neg = xor i32 %shl, -1
  %and = and i32 %types.addr.029, %neg
  %3 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %refs, align 4
  %5 = ptrtoint ptr %types_nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %types_nr, align 4
  %mul = mul i32 %6, %index
  %add = add i32 %mul, %2
  %arrayidx = getelementptr i32, ptr %4, i32 %add
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then10, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then10:                                        ; preds = %while.body
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event, align 4
  %fini = getelementptr inbounds %struct.nvkm_event_func, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fini, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.then10.if.end17_crit_edge, label %if.then12

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef %event, i32 noundef %shl, i32 noundef %index) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then10.if.end17_crit_edge, %while.body.if.end17_crit_edge
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_event_get(ptr noundef %event, i32 noundef %types, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %refs_lock = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %refs_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %refs_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %while.cond.preheader, !prof !17

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %types)
  %tobool8.not28 = icmp eq i32 %types, 0
  br i1 %tobool8.not28, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %refs = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 6
  %types_nr = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 1
  br label %while.body

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/event.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #5, !srcloc !20
  unreachable

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %types.addr.029 = phi i32 [ %types, %while.body.lr.ph ], [ %and, %if.end17.while.body_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %types.addr.029, i1 true) #5, !range !19
  %shl = shl nuw i32 1, %2
  %neg = xor i32 %shl, -1
  %and = and i32 %types.addr.029, %neg
  %3 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %refs, align 4
  %5 = ptrtoint ptr %types_nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %types_nr, align 4
  %mul = mul i32 %6, %index
  %add = add i32 %mul, %2
  %arrayidx = getelementptr i32, ptr %4, i32 %add
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then10, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then10:                                        ; preds = %while.body
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event, align 4
  %init = getelementptr inbounds %struct.nvkm_event_func, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.then10.if.end17_crit_edge, label %if.then12

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef %event, i32 noundef %shl, i32 noundef %index) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then10.if.end17_crit_edge, %while.body.if.end17_crit_edge
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_event_send(ptr noundef %event, i32 noundef %types, i32 noundef %index, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 6
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %refs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index_nr = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 2
  %2 = ptrtoint ptr %index_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp.not = icmp sgt i32 %3, %index
  br i1 %cmp.not, label %do.body24, label %do.end, !prof !21

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

do.body24:                                        ; preds = %lor.lhs.false
  %list_lock = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 4
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #5
  %list = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 5
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn73 = load ptr, ptr %list, align 4
  %cmp34.not75 = icmp eq ptr %.pn73, %list
  br i1 %cmp34.not75, label %do.body24.for.end_crit_edge, label %do.body24.for.body_crit_edge

do.body24.for.body_crit_edge:                     ; preds = %do.body24
  br label %for.body

do.body24.for.end_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body24.for.body_crit_edge
  %.pn76 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn73, %do.body24.for.body_crit_edge ]
  %notify.077 = getelementptr i8, ptr %.pn76, i32 -4
  %index38 = getelementptr i8, ptr %.pn76, i32 24
  %5 = ptrtoint ptr %index38 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %index)
  %cmp39 = icmp eq i32 %6, %index
  br i1 %cmp39, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %types41 = getelementptr i8, ptr %.pn76, i32 20
  %7 = ptrtoint ptr %types41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %types41, align 4
  %and = and i32 %8, %types
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %land.lhs.true.for.inc_crit_edge, label %if.then43

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then43:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event, align 4
  %send = getelementptr inbounds %struct.nvkm_event_func, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send, align 4
  %tobool44.not = icmp eq ptr %12, null
  br i1 %tobool44.not, label %if.end48, label %if.then45

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef %data, i32 noundef %size, ptr noundef %notify.077) #5
  br label %for.inc

if.end48:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_notify_send(ptr noundef %notify.077, ptr noundef %data, i32 noundef %size) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.then45, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn76 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn76, align 4
  %cmp34.not = icmp eq ptr %.pn, %list
  br i1 %cmp34.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body24.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call27) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_event_fini(ptr nocapture noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 6
  %0 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %refs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %refs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_event_init(ptr noundef %func, i32 noundef %types_nr, i32 noundef %index_nr, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %index_nr, i32 %types_nr) #5
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.if.end8.i.i_crit_edge, label %if.end.i

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #5
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i = select i1 %4, i32 -1, i32 %5
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i, %entry.if.end8.i.i_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.if.end8.i.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #8
  %refs = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 6
  %6 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %refs, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.return_crit_edge, label %if.end

if.end8.i.i.return_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %func, ptr %event, align 4
  %types_nr4 = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 1
  %8 = ptrtoint ptr %types_nr4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %types_nr, ptr %types_nr4, align 4
  %index_nr5 = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 2
  %9 = ptrtoint ptr %index_nr5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %index_nr, ptr %index_nr5, align 4
  %refs_lock = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %refs_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvkm_event_init.__key, i16 noundef signext 3) #5
  %list_lock = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_event_init.__key.2, i16 noundef signext 3) #5
  %list = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 5
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_event, ptr %event, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  br label %return

return:                                           ; preds = %if.end, %if.end8.i.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.end8.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/event.c", i32 58, i32 22}
!2 = !{ptr @nvkm_event_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/event.c", i32 96, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nvkm_event_init.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/event.c", i32 97, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2156183514, i64 2156184019, i64 2156183551, i64 2156183607, i64 2156183641, i64 2156183665, i64 2156183706, i64 2156183727, i64 2156183755, i64 2156183789}
!19 = !{i32 0, i32 33}
!20 = !{i64 2156185454, i64 2156185959, i64 2156185491, i64 2156185547, i64 2156185581, i64 2156185605, i64 2156185646, i64 2156185667, i64 2156185695, i64 2156185729}
!21 = !{!"branch_weights", i32 2000, i32 1}
