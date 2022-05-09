; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tidss/tidss_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/tidss/tidss_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tidss_crtc = type { %struct.drm_crtc, i32, ptr, %struct.completion }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tidss_device = type { %struct.drm_device, ptr, ptr, ptr, i32, [4 x ptr], i32, [4 x ptr], i32, %struct.spinlock, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@tidss_irq_preinstall.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&tidss->wait_lock\00", [46 x i8] zeroinitializer }, align 32
@tidss_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tidss_irq_handler = private unnamed_addr constant [18 x i8] c"tidss_irq_handler\00", align 1
@tidss_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.tidss_irq_handler, ptr @.str.3, i32 82, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OCP error\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/tidss/tidss_irq.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tidss_irq_handler._entry_ptr = internal global ptr @tidss_irq_handler._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 100, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [37 x i8] c"../drivers/gpu/drm/tidss/tidss_irq.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 82, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @tidss_irq_handler._entry, ptr @tidss_irq_handler._entry_ptr, ptr @tidss_irq_preinstall.__key, ptr @.str, ptr @tidss_irq_handler._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_irq_preinstall.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tidss_irq_enable_vblank(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %hw_videoport4 = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %hw_videoport4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_videoport4, align 8
  %wait_lock = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 9
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #4
  %mul = shl i32 %3, 2
  %add10 = add i32 %mul, 5
  %shl = shl nuw i32 1, %add10
  %add13 = add i32 %mul, 6
  %shl14 = shl nuw i32 1, %add13
  %irq_mask = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %or = or i32 %shl14, %5
  %or15 = or i32 %or, %shl
  store i32 %or15, ptr %irq_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %6 = ptrtoint ptr %wait_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %tidss_irq_update.exit, !prof !22

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/tidss/tidss_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #4, !srcloc !23
  unreachable

tidss_irq_update.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dispc.i = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dispc.i, align 4
  tail call void @dispc_set_irqenable(ptr noundef %9, i32 noundef %or15) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call7) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tidss_irq_disable_vblank(ptr nocapture noundef readonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %hw_videoport4 = getelementptr inbounds %struct.tidss_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %hw_videoport4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_videoport4, align 8
  %wait_lock = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 9
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #4
  %mul = shl i32 %3, 2
  %add10 = add i32 %mul, 5
  %shl = shl nuw i32 1, %add10
  %add13 = add i32 %mul, 6
  %shl14 = shl nuw i32 1, %add13
  %or = or i32 %shl, %shl14
  %neg = xor i32 %or, -1
  %irq_mask = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %irq_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %6 = ptrtoint ptr %wait_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %tidss_irq_update.exit, !prof !22

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/tidss/tidss_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #4, !srcloc !23
  unreachable

tidss_irq_update.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dispc.i = getelementptr inbounds %struct.tidss_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dispc.i, align 4
  tail call void @dispc_set_irqenable(ptr noundef %9, i32 noundef %and) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tidss_irq_resume(ptr noundef %tidss) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wait_lock = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %0 = ptrtoint ptr %wait_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %wait_lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %tidss_irq_update.exit, !prof !22

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/tidss/tidss_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #4, !srcloc !23
  unreachable

tidss_irq_update.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dispc.i = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 3
  %2 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.tidss_device, ptr %tidss, i32 0, i32 10
  %4 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_mask.i, align 4
  tail call void @dispc_set_irqenable(ptr noundef %3, i32 noundef %5) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tidss_irq_install(ptr noundef %ddev, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %wait_lock.i = getelementptr inbounds %struct.tidss_device, ptr %ddev, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %wait_lock.i, ptr noundef nonnull @.str, ptr noundef nonnull @tidss_irq_preinstall.__key, i16 noundef signext 3) #4
  %call1.i = tail call i32 @tidss_runtime_get(ptr noundef %ddev) #4
  %dispc.i = getelementptr inbounds %struct.tidss_device, ptr %ddev, i32 0, i32 3
  %0 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dispc.i, align 4
  tail call void @dispc_set_irqenable(ptr noundef %1, i32 noundef 0) #4
  %2 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dispc.i, align 4
  %call3.i = tail call i32 @dispc_read_and_clear_irqstatus(ptr noundef %3) #4
  tail call void @tidss_runtime_put(ptr noundef %ddev) #4
  %driver = getelementptr inbounds %struct.drm_device, ptr %ddev, i32 0, i32 4
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @tidss_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %7, ptr noundef %ddev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call.i8 = tail call i32 @tidss_runtime_get(ptr noundef %ddev) #4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock.i) #4
  %irq_mask.i = getelementptr inbounds %struct.tidss_device, ptr %ddev, i32 0, i32 10
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %irq_mask.i, align 4
  %num_crtcs.i = getelementptr inbounds %struct.tidss_device, ptr %ddev, i32 0, i32 4
  %9 = ptrtoint ptr %num_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_crtcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp734.not.i = icmp eq i32 %10, 0
  br i1 %cmp734.not.i, label %if.end2.for.end.i_crit_edge, label %if.end2.for.body.i_crit_edge

if.end2.for.body.i_crit_edge:                     ; preds = %if.end2
  br label %for.body.i

if.end2.for.end.i_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end2.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tidss_device, ptr %ddev, i32 0, i32 5, i32 %i.035.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %hw_videoport.i = getelementptr inbounds %struct.tidss_crtc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %hw_videoport.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_videoport.i, align 8
  %mul.i = shl i32 %14, 2
  %add12.i = add i32 %mul.i, 7
  %shl.i = shl nuw i32 1, %add12.i
  %15 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_mask.i, align 4
  %or.i = or i32 %shl.i, %16
  store i32 %or.i, ptr %irq_mask.i, align 4
  %17 = load i32, ptr %hw_videoport.i, align 8
  %mul15.i = shl i32 %17, 2
  %add16.i = add i32 %mul15.i, 4
  %shl18.i = shl nuw i32 1, %add16.i
  %or20.i = or i32 %shl18.i, %or.i
  store i32 %or20.i, ptr %irq_mask.i, align 4
  %inc.i = add nuw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end2.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  %18 = ptrtoint ptr %wait_lock.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload.i.i.i = load volatile i32, ptr %wait_lock.i, align 4
  %19 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i, ptr %agg.tmp.sroa.0.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 16
  %conv.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i)
  br i1 %cmp.i.i.not.i.i, label %do.body4.i.i, label %tidss_irq_postinstall.exit, !prof !22

do.body4.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/tidss/tidss_irq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #4, !srcloc !23
  unreachable

tidss_irq_postinstall.exit:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %dispc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dispc.i, align 4
  %22 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_mask.i, align 4
  tail call void @dispc_set_irqenable(ptr noundef %21, i32 noundef %23) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock.i, i32 noundef %call4.i) #4
  tail call void @tidss_runtime_put(ptr noundef %ddev) #4
  br label %cleanup

cleanup:                                          ; preds = %tidss_irq_postinstall.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tidss_irq_postinstall.exit ], [ -107, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tidss_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dispc, align 4
  %call = tail call i32 @dispc_read_and_clear_irqstatus(ptr noundef %1) #4
  %num_crtcs = getelementptr inbounds %struct.tidss_device, ptr %arg, i32 0, i32 4
  %2 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %call to i64
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %id.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end25.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tidss_device, ptr %arg, i32 0, i32 5, i32 %id.053
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %hw_videoport4 = getelementptr inbounds %struct.tidss_crtc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw_videoport4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_videoport4, align 8
  %mul = shl i32 %7, 2
  %add = add i32 %mul, 4
  %add5 = add i32 %mul, 5
  %shl = shl nuw i32 1, %add5
  %add8 = add i32 %mul, 6
  %shl9 = shl nuw i32 1, %add8
  %or = or i32 %shl, %shl9
  %and = and i32 %or, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @tidss_crtc_vblank_irq(ptr noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %shl13 = shl nuw i32 1, %add
  %and14 = and i32 %shl13, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @tidss_crtc_framedone_irq(ptr noundef %5) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  %add20 = add i32 %mul, 7
  %shl21 = shl nuw i32 1, %add20
  %and22 = and i32 %shl21, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end17.if.end25_crit_edge, label %if.then24

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @tidss_crtc_error_irq(ptr noundef %5, i64 noundef %conv) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end17.if.end25_crit_edge
  %inc = add nuw i32 %id.053, 1
  %8 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtcs, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %entry.for.end_crit_edge
  %and26 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %for.end.if.end36_crit_edge, label %do.body

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.body:                                          ; preds = %for.end
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @tidss_irq_handler._rs, ptr noundef nonnull @__func__.tidss_irq_handler) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body.if.end36_crit_edge, label %do.end

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.tidss_device, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end, %do.body.if.end36_crit_edge, %for.end.if.end36_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tidss_irq_uninstall(ptr noundef %ddev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tidss_runtime_get(ptr noundef %ddev) #4
  %dispc = getelementptr inbounds %struct.tidss_device, ptr %ddev, i32 0, i32 3
  %0 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dispc, align 4
  tail call void @dispc_set_irqenable(ptr noundef %1, i32 noundef 0) #4
  tail call void @tidss_runtime_put(ptr noundef %ddev) #4
  %irq = getelementptr inbounds %struct.tidss_device, ptr %ddev, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %ddev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tidss_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_set_irqenable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dispc_read_and_clear_irqstatus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_crtc_vblank_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_crtc_framedone_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tidss_crtc_error_irq(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @tidss_irq_preinstall.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tidss/tidss_irq.c", i32 100, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/tidss/tidss_irq.c", i32 82, i32 3}
!5 = !{ptr @tidss_irq_handler._rs, !4, !"_rs", i1 false, i1 false}
!6 = !{ptr @__func__.tidss_irq_handler, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tidss_irq_handler._entry, !4, !"_entry", i1 false, i1 false}
!12 = !{ptr @tidss_irq_handler._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2156429285, i64 2156429782, i64 2156429322, i64 2156429378, i64 2156429412, i64 2156429436, i64 2156429477, i64 2156429498, i64 2156429526, i64 2156429560}
