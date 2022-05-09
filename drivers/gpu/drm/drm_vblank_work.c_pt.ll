; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_vblank_work.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_vblank_work.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_vblank_work_schedule\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_vblank_work_schedule\09\09\09\09"
module asm "\09.long\09__crc_drm_vblank_work_schedule\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_schedule\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_vblank_work_cancel_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_vblank_work_cancel_sync\09\09\09\09"
module asm "\09.long\09__crc_drm_vblank_work_cancel_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_cancel_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_cancel_sync\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_cancel_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_vblank_work_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_vblank_work_flush\09\09\09\09"
module asm "\09.long\09__crc_drm_vblank_work_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_flush\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_vblank_work_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_vblank_work_init\09\09\09\09"
module asm "\09.long\09__crc_drm_vblank_work_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vblank_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vblank_work_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vblank_work_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }

@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"crtc %d vblank %llu already passed (current %llu)\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_drm_vblank_work_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_schedule to i32), ptr @__kstrtab_drm_vblank_work_schedule, ptr @__kstrtabns_drm_vblank_work_schedule }, section "___ksymtab+drm_vblank_work_schedule", align 4
@__kstrtab_drm_vblank_work_cancel_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_cancel_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_cancel_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_cancel_sync to i32), ptr @__kstrtab_drm_vblank_work_cancel_sync, ptr @__kstrtabns_drm_vblank_work_cancel_sync }, section "___ksymtab+drm_vblank_work_cancel_sync", align 4
@__kstrtab_drm_vblank_work_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_flush to i32), ptr @__kstrtab_drm_vblank_work_flush, ptr @__kstrtabns_drm_vblank_work_flush }, section "___ksymtab+drm_vblank_work_flush", align 4
@__kstrtab_drm_vblank_work_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vblank_work_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vblank_work_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vblank_work_init to i32), ptr @__kstrtab_drm_vblank_work_init, ptr @__kstrtabns_drm_vblank_work_init }, section "___ksymtab+drm_vblank_work_init", align 4
@drm_vblank_worker_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&vblank->work_wait_queue\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"card%d-crtc%d\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 141, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 254, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [37 x i8] c"../drivers/gpu/drm/drm_vblank_work.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 255, i32 36 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_drm_vblank_work_cancel_sync, ptr @__ksymtab_drm_vblank_work_flush, ptr @__ksymtab_drm_vblank_work_init, ptr @__ksymtab_drm_vblank_work_schedule, ptr @.str, ptr @drm_vblank_worker_init.__key, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_vblank_worker_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_handle_vblank_works(ptr noundef %vblank) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count1, i32 noundef 8) #4
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %count1) #4
  %0 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vblank, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %event_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %event_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body6, label %do.end11, !prof !24

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_vblank_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

do.end11:                                         ; preds = %entry
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 16
  %4 = ptrtoint ptr %pending_work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_work, align 4
  %cmp.not53 = icmp eq ptr %5, %pending_work
  br i1 %cmp.not53, label %do.end11.if.end35_crit_edge, label %for.body.lr.ph

do.end11.if.end35_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

for.body.lr.ph:                                   ; preds = %do.end11
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 10
  %worker = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 15
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %.pn.in55.ph = phi ptr [ %.pn58, %for.inc.thread.for.body.outer_crit_edge ], [ %5, %for.body.lr.ph ]
  %wake.0.off054.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %.pn.in55 = phi ptr [ %.pn58, %for.inc.for.body_crit_edge ], [ %.pn.in55.ph, %for.body.outer ]
  %6 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn58 = load ptr, ptr %.pn.in55, align 4
  %count21 = getelementptr i8, ptr %.pn.in55, i32 -12
  %7 = ptrtoint ptr %count21 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %count21, align 8
  %sub.i = sub i64 %call.i, %8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388609, i64 %sub.i)
  %cmp.i = icmp ult i64 %sub.i, 8388609
  br i1 %cmp.i, label %if.end24, label %for.inc

if.end24:                                         ; preds = %for.body
  %work.057.le = getelementptr i8, ptr %.pn.in55, i32 -36
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in55) #4
  br i1 %call.i.i50, label %if.end.i.i, label %if.end24.for.inc.thread_crit_edge

if.end24.for.inc.thread_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.thread

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in55, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %cmp.not = icmp eq ptr %.pn58, %pending_work
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.thread:                                   ; preds = %if.end.i.i, %if.end24.for.inc.thread_crit_edge
  %15 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %.pn.in55, ptr %.pn.in55, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.pn.in55, ptr %prev.i3.i, align 4
  %17 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vblank, align 8
  %19 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe, align 8
  tail call void @drm_vblank_put(ptr noundef %18, i32 noundef %20) #4
  %21 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %worker, align 8
  %call27 = tail call zeroext i1 @kthread_queue_work(ptr noundef %22, ptr noundef %work.057.le) #4
  %cmp.not60 = icmp eq ptr %.pn58, %pending_work
  br i1 %cmp.not60, label %for.inc.thread.if.then34_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.outer

for.inc.thread.if.then34_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

for.end:                                          ; preds = %for.inc
  br i1 %wake.0.off054.ph, label %for.end.if.then34_crit_edge, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

for.end.if.then34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

if.then34:                                        ; preds = %for.end.if.then34_crit_edge, %for.inc.thread.if.then34_crit_edge
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.end.if.end35_crit_edge, %do.end11.if.end35_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vblank_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_vblank_cancel_pending_works(ptr noundef %vblank) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vblank, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %2 = ptrtoint ptr %event_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %event_lock, align 4
  %3 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end9, !prof !24

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_vblank_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 74, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

do.end9:                                          ; preds = %entry
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 16
  %4 = ptrtoint ptr %pending_work to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_work, align 4
  %cmp.not34 = icmp eq ptr %5, %pending_work
  br i1 %cmp.not34, label %do.end9.for.end_crit_edge, label %for.body.lr.ph

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end9
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn, %list_del_init.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %6, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %prev.i3.i, align 4
  %16 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vblank, align 8
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pipe, align 8
  tail call void @drm_vblank_put(ptr noundef %17, i32 noundef %19) #4
  %cmp.not = icmp eq ptr %.pn, %pending_work
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %do.end9.for.end_crit_edge
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_vblank_work_schedule(ptr noundef %work, i64 noundef %count, i1 noundef zeroext %nextonmiss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank1 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %vblank1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vblank1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #4
  %cancelling = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 3
  %4 = ptrtoint ptr %cancelling to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cancelling, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end:                                           ; preds = %entry
  %vbl_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %vbl_lock) #4
  %inmodeset7 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %inmodeset7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inmodeset7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock(ptr noundef %vbl_lock) #4
  br i1 %tobool8.not, label %if.end13, label %if.end.out.thread_crit_edge

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end13:                                         ; preds = %if.end
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %node, align 4
  %cmp.i.not = icmp eq ptr %9, %node
  br i1 %cmp.i.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe, align 8
  %call17 = tail call i32 @drm_vblank_get(ptr noundef %3, i32 noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then16.out.thread_crit_edge, label %if.then16.if.end28_crit_edge

if.then16.if.end28_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then16.out.thread_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.else:                                          ; preds = %if.end13
  %count22 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 2
  %12 = ptrtoint ptr %count22 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %count22, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %count)
  %cmp23 = icmp eq i64 %13, %count
  br i1 %cmp23, label %if.else.out.thread_crit_edge, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.else.out.thread_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then16.if.end28_crit_edge
  %count29 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 2
  %14 = ptrtoint ptr %count29 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %count, ptr %count29, align 8
  %pipe30 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %pipe30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe30, align 8
  %call31 = tail call i64 @drm_vblank_count(ptr noundef %3, i32 noundef %16) #4
  %sub.i = sub i64 %call31, %count
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388609, i64 %sub.i)
  %cmp.i91 = icmp ult i64 %sub.i, 8388609
  br i1 %cmp.i91, label %if.then35, label %if.end28.if.else51_crit_edge

if.end28.if.else51_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else51

if.then35:                                        ; preds = %if.end28
  %tobool36.not = icmp eq ptr %3, null
  br i1 %tobool36.not, label %if.then35.if.end39_crit_edge, label %cond.true

if.then35.if.end39_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

cond.true:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #6
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev37, align 4
  br label %if.end39

if.end39:                                         ; preds = %cond.true, %if.then35.if.end39_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ null, %if.then35.if.end39_crit_edge ]
  %19 = ptrtoint ptr %pipe30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe30, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %20, i64 noundef %count, i64 noundef %call31) #4
  br i1 %nextonmiss, label %if.end39.if.else51_crit_edge, label %if.then43

if.end39.if.else51_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else51

if.then43:                                        ; preds = %if.end39
  %21 = ptrtoint ptr %pipe30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pipe30, align 8
  tail call void @drm_vblank_put(ptr noundef %3, i32 noundef %22) #4
  %worker = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %worker, align 8
  %call45 = tail call zeroext i1 @kthread_queue_work(ptr noundef %24, ptr noundef %work) #4
  %conv46 = zext i1 %call45 to i32
  br i1 %cmp.i.not, label %if.then43.out.thread_crit_edge, label %if.then48

if.then43.out.thread_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.then48:                                        ; preds = %if.then43
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then48.if.then59_crit_edge

if.then48.if.then59_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then59

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %if.then59

if.else51:                                        ; preds = %if.end39.if.else51_crit_edge, %if.end28.if.else51_crit_edge
  br i1 %cmp.i.not, label %if.then53, label %if.else51.out.thread_crit_edge

if.else51.out.thread_crit_edge:                   ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.then53:                                        ; preds = %if.else51
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i92 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %32, ptr noundef %pending_work) #4
  br i1 %call.i.i92, label %if.end.i.i93, label %if.then53.out.thread_crit_edge

if.then53.out.thread_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end.i.i93:                                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %node, ptr %prev.i, align 4
  %34 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pending_work, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %node, ptr %32, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end.i.i93, %if.then53.out.thread_crit_edge, %if.else51.out.thread_crit_edge, %if.then43.out.thread_crit_edge, %if.else.out.thread_crit_edge, %if.then16.out.thread_crit_edge, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.0.ph = phi i32 [ 1, %if.end.i.i93 ], [ 1, %if.then53.out.thread_crit_edge ], [ 1, %if.else51.out.thread_crit_edge ], [ 0, %if.else.out.thread_crit_edge ], [ %conv46, %if.then43.out.thread_crit_edge ], [ %call17, %if.then16.out.thread_crit_edge ], [ 0, %if.end.out.thread_crit_edge ], [ 0, %entry.out.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call4) #4
  br label %if.end60

if.then59:                                        ; preds = %if.end.i.i, %if.then48.if.then59_crit_edge
  %37 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call4) #4
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %out.thread
  %ret.098 = phi i32 [ %ret.0.ph, %out.thread ], [ %conv46, %if.then59 ]
  ret i32 %ret.098
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_vblank_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_vblank_work_cancel_sync(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank1 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %vblank1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vblank1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %node, align 4
  %cmp.i = icmp ne ptr %5, %node
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %node, ptr %prev.i3.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe, align 8
  tail call void @drm_vblank_put(ptr noundef %15, i32 noundef %17) #4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %cancelling = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 3
  %18 = ptrtoint ptr %cancelling to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cancelling, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %cancelling, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #4
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %work_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  %call6 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %work) #4
  %spec.select = select i1 %call6, i1 true, i1 %cmp.i
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %20 = ptrtoint ptr %cancelling to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cancelling, align 8
  %dec = add i32 %21, -1
  store i32 %dec, ptr %cancelling, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #4
  ret i1 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_vblank_work_flush(ptr noundef %work) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank1 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %vblank1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vblank1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %node = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %node, align 4
  %cmp.i.not = icmp eq ptr %5, %node
  br i1 %cmp.i.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %1, i32 0, i32 17
  %call325 = call i32 @prepare_to_wait_event(ptr noundef %work_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %node, align 4
  %cmp.i21.not26 = icmp eq ptr %8, %node
  br i1 %cmp.i21.not26, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #4
  call void @schedule() #4
  call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %call3 = call i32 @prepare_to_wait_event(ptr noundef %work_wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %node, align 4
  %cmp.i21.not = icmp eq ptr %10, %node
  br i1 %cmp.i21.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %work_wait_queue, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %do.end

do.end:                                           ; preds = %for.end, %entry.do.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock) #4
  call void @kthread_flush_work(ptr noundef %work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_vblank_work_init(ptr noundef %work, ptr nocapture noundef readonly %crtc, ptr noundef %func) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %work, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %work, ptr %work, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %work, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %work, ptr %prev.i, align 4
  %func3 = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 1
  %4 = ptrtoint ptr %func3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %func, ptr %func3, align 8
  %node4 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4
  %5 = ptrtoint ptr %node4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %node4, ptr %node4, align 4
  %prev.i11 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %node4, ptr %prev.i11, align 4
  %7 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc, align 8
  %vblank = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vblank, align 4
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  %arrayidx = getelementptr %struct.drm_vblank_crtc, ptr %10, i32 %12
  %vblank5 = getelementptr inbounds %struct.drm_vblank_work, ptr %work, i32 0, i32 1
  %13 = ptrtoint ptr %vblank5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %vblank5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_vblank_worker_init(ptr noundef %vblank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_work = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 16
  %0 = ptrtoint ptr %pending_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %pending_work, ptr %pending_work, align 4
  %prev.i = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pending_work, ptr %prev.i, align 4
  %work_wait_queue = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %work_wait_queue, ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_vblank_worker_init.__key) #4
  %2 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vblank, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %pipe = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 10
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe, align 8
  %call = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %7, i32 noundef %9) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %worker3 = getelementptr inbounds %struct.drm_vblank_crtc, ptr %vblank, i32 0, i32 15
  %11 = ptrtoint ptr %worker3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %worker3, align 8
  %task = getelementptr inbounds %struct.kthread_worker, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 4
  tail call void @sched_set_fifo(ptr noundef %13) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_vblank_work.c", i32 141, i32 3}
!2 = !{ptr @__ksymtab_drm_vblank_work_schedule, !3, !"__ksymtab_drm_vblank_work_schedule", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_vblank_work.c", i32 165, i32 1}
!4 = !{ptr @__ksymtab_drm_vblank_work_cancel_sync, !5, !"__ksymtab_drm_vblank_work_cancel_sync", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_vblank_work.c", i32 209, i32 1}
!6 = !{ptr @__ksymtab_drm_vblank_work_flush, !7, !"__ksymtab_drm_vblank_work_flush", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_vblank_work.c", i32 230, i32 1}
!8 = !{ptr @__ksymtab_drm_vblank_work_init, !9, !"__ksymtab_drm_vblank_work_init", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_vblank_work.c", i32 247, i32 1}
!10 = !{ptr @drm_vblank_worker_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_vblank_work.c", i32 254, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_vblank_work.c", i32 255, i32 36}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2156485530, i64 2156486027, i64 2156485567, i64 2156485623, i64 2156485657, i64 2156485681, i64 2156485722, i64 2156485743, i64 2156485771, i64 2156485805}
!26 = !{i64 2156492542, i64 2156493039, i64 2156492579, i64 2156492635, i64 2156492669, i64 2156492693, i64 2156492734, i64 2156492755, i64 2156492783, i64 2156492817}
