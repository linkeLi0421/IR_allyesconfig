; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-disp.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-disp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.115, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.115 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_set_motion_threshold(ptr noundef %solo_dev, i8 noundef zeroext %ch, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ch to i32
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %0 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %mul3 = shl nuw nsw i32 %conv, 14
  %add = add nuw nsw i32 %mul3, 16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 128) #8
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %for.cond.preheader.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.cond.preheader.i:                             ; preds = %if.end
  %3 = tail call i16 @llvm.bswap.i16(i16 %val) #5
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %type.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  br label %for.body3.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.028.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %call7.i.i, i32 %i.028.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.cond1.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %i.130.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %add12.i, %for.body3.i.for.body3.i_crit_edge ]
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i = icmp eq i32 %6, 0
  %add.i = select i1 %cmp4.i, i32 6815744, i32 8912896
  %add5.i = add nuw nsw i32 %add, %i.130.i
  %add6.i = add nuw i32 %add5.i, %add.i
  %call7.i = tail call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef %add6.i, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %add12.i = add nuw nsw i32 %i.130.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8064, i32 %i.130.i)
  %cmp2.i = icmp ult i32 %i.130.i, 8064
  %or.cond = select i1 %tobool8.not.i, i1 %cmp2.i, i1 false
  br i1 %or.cond, label %for.body3.i.for.body3.i_crit_edge, label %for.end13.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.end13.i:                                      ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %return

return:                                           ; preds = %for.end13.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call7.i, %for.end13.i ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_set_motion_block(ptr noundef %solo_dev, i8 noundef zeroext %ch, ptr nocapture noundef readonly %thresholds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ch to i32
  %mul1 = shl nuw nsw i32 %conv, 14
  %add = add nuw nsw i32 %mul1, 16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.end.for.cond5.preheader_crit_edge, %for.cond.preheader
  %ret.041 = phi i32 [ 0, %for.cond.preheader ], [ %or, %for.end.for.cond5.preheader_crit_edge ]
  %y.040 = phi i32 [ 0, %for.cond.preheader ], [ %inc21, %for.end.for.cond5.preheader_crit_edge ]
  %mul9 = mul nuw nsw i32 %y.040, 45
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.cond5.preheader
  %x.039 = phi i32 [ 0, %for.cond5.preheader ], [ %inc, %for.body8.for.body8_crit_edge ]
  %add10 = add nuw nsw i32 %x.039, %mul9
  %arrayidx = getelementptr i16, ptr %thresholds, i32 %add10
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %arrayidx11 = getelementptr i16, ptr %call7.i.i, i32 %x.039
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %arrayidx11, align 2
  %inc = add nuw nsw i32 %x.039, 1
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %for.end, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.end:                                          ; preds = %for.body8
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12 = icmp eq i32 %6, 0
  %add15 = select i1 %cmp12, i32 6815744, i32 8912896
  %mul17 = shl i32 %y.040, 7
  %add16 = add nuw nsw i32 %add, %mul17
  %add18 = add i32 %add16, %add15
  %call19 = tail call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i, i32 noundef %add18, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  %or = or i32 %call19, %ret.041
  %inc21 = add nuw nsw i32 %y.040, 1
  %exitcond42.not = icmp eq i32 %inc21, 45
  br i1 %exitcond42.not, label %for.end22, label %for.end.for.cond5.preheader_crit_edge

for.end.for.cond5.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.end22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %for.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_dma(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_disp_init(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  %val.i97.i = alloca i16, align 2
  %val.i14.i.i = alloca i16, align 2
  %val.i10.i.i = alloca i16, align 2
  %val.i6.i.i = alloca i16, align 2
  %val.i.i.i = alloca i16, align 2
  %val.i93.i = alloca i16, align 2
  %val.i89.i = alloca i16, align 2
  %val.i85.i = alloca i16, align 2
  %val.i81.i = alloca i16, align 2
  %val.i77.i = alloca i16, align 2
  %val.i73.i = alloca i16, align 2
  %val.i69.i = alloca i16, align 2
  %val.i65.i = alloca i16, align 2
  %val.i61.i = alloca i16, align 2
  %val.i57.i = alloca i16, align 2
  %val.i53.i = alloca i16, align 2
  %val.i.i32 = alloca i16, align 2
  %val.i62.i16 = alloca i16, align 2
  %val.i58.i17 = alloca i16, align 2
  %val.i54.i18 = alloca i16, align 2
  %val.i.i19 = alloca i16, align 2
  %val.i106.i = alloca i16, align 2
  %val.i102.i = alloca i16, align 2
  %val.i98.i = alloca i16, align 2
  %val.i94.i = alloca i16, align 2
  %val.i90.i = alloca i16, align 2
  %val.i86.i = alloca i16, align 2
  %val.i82.i = alloca i16, align 2
  %val.i78.i = alloca i16, align 2
  %val.i74.i = alloca i16, align 2
  %val.i70.i = alloca i16, align 2
  %val.i66.i = alloca i16, align 2
  %val.i62.i = alloca i16, align 2
  %val.i58.i = alloca i16, align 2
  %val.i54.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 38
  %0 = ptrtoint ptr %video_hsize to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 704, ptr %video_hsize, align 4
  %video_type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 37
  %1 = ptrtoint ptr %video_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %video_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %spec.select = select i1 %cmp, i16 240, i16 288
  %spec.select51 = select i1 %cmp, i8 30, i8 25
  %3 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 39
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %spec.select, ptr %3, align 2
  %5 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select51, ptr %5, align 8
  %vin_hstart.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 42
  %7 = ptrtoint ptr %vin_hstart.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8, ptr %vin_hstart.i, align 4
  %vin_vstart.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 43
  %8 = ptrtoint ptr %vin_vstart.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %vin_vstart.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #5
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %val.i.i, align 2, !annotation !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %10 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -57344) #5, !srcloc !11
  %12 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef 6, ptr noundef nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  %14 = ptrtoint ptr %vin_hstart.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vin_hstart.i, align 4
  %conv.i = zext i16 %15 to i32
  %shl.i = shl i32 %conv.i, 21
  %16 = ptrtoint ptr %vin_vstart.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vin_vstart.i, align 2
  %conv3.i = zext i16 %17 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 11
  %or.i = or i32 %shl4.i, %shl.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %3, align 2
  %conv7.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv7.i, %conv3.i
  %or9.i = or i32 %or.i, %add.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i54.i) #5
  %20 = ptrtoint ptr %val.i54.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %val.i54.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %21 = call i32 @llvm.bswap.i32(i32 %or9.i) #5
  %22 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %23, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %21) #5, !srcloc !11
  %24 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %solo_dev, align 8
  %call.i57.i = call i32 @pci_read_config_word(ptr noundef %25, i32 noundef 6, ptr noundef nonnull %val.i54.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i54.i) #5
  %vout_hstart.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 40
  %26 = ptrtoint ptr %vout_hstart.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vout_hstart.i, align 8
  %conv10.i = zext i16 %27 to i32
  %shl11.i = shl i32 %conv10.i, 21
  %vout_vstart.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 41
  %28 = ptrtoint ptr %vout_vstart.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vout_vstart.i, align 2
  %conv12.i = zext i16 %29 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 11
  %or14.i = or i32 %shl13.i, %shl11.i
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %3, align 2
  %conv18.i = zext i16 %31 to i32
  %add19.i = add nuw nsw i32 %conv18.i, %conv12.i
  %or21.i = or i32 %or14.i, %add19.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i58.i) #5
  %32 = ptrtoint ptr %val.i58.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %val.i58.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %33 = call i32 @llvm.bswap.i32(i32 %or21.i) #5
  %34 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %35, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %33) #5, !srcloc !11
  %36 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %solo_dev, align 8
  %call.i61.i = call i32 @pci_read_config_word(ptr noundef %37, i32 noundef 6, ptr noundef nonnull %val.i58.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i58.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i62.i) #5
  %38 = ptrtoint ptr %val.i62.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %val.i62.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %40, i32 292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 786432) #5, !srcloc !11
  %41 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %solo_dev, align 8
  %call.i65.i = call i32 @pci_read_config_word(ptr noundef %42, i32 noundef 6, ptr noundef nonnull %val.i62.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i62.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i66.i) #5
  %43 = ptrtoint ptr %val.i66.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %val.i66.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %45, i32 272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 0) #5, !srcloc !11
  %46 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %solo_dev, align 8
  %call.i69.i = call i32 @pci_read_config_word(ptr noundef %47, i32 noundef 6, ptr noundef nonnull %val.i66.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i66.i) #5
  %type.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i = icmp eq i32 %49, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i70.i) #5
  %50 = ptrtoint ptr %val.i70.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %val.i70.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %52, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 0) #5, !srcloc !11
  %53 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %solo_dev, align 8
  %call.i73.i = call i32 @pci_read_config_word(ptr noundef %54, i32 noundef 6, ptr noundef nonnull %val.i70.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i70.i) #5
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i74.i) #5
  %55 = ptrtoint ptr %val.i74.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %val.i74.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %57, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 4) #5, !srcloc !11
  %58 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %solo_dev, align 8
  %call.i77.i = call i32 @pci_read_config_word(ptr noundef %59, i32 noundef 6, ptr noundef nonnull %val.i74.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i74.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i78.i) #5
  %60 = ptrtoint ptr %val.i78.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -1, ptr %val.i78.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %62, i32 280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 33554432) #5, !srcloc !11
  %63 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %solo_dev, align 8
  %call.i81.i = call i32 @pci_read_config_word(ptr noundef %64, i32 noundef 6, ptr noundef nonnull %val.i78.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i78.i) #5
  %65 = ptrtoint ptr %video_type to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %video_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp23.i = icmp eq i32 %66, 0
  br i1 %cmp23.i, label %if.then25.i, label %if.else26.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i82.i) #5
  %67 = ptrtoint ptr %val.i82.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %val.i82.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %69, i32 304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 33554432) #5, !srcloc !11
  %70 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %solo_dev, align 8
  %call.i85.i = call i32 @pci_read_config_word(ptr noundef %71, i32 noundef 6, ptr noundef nonnull %val.i82.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i82.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i86.i) #5
  %72 = ptrtoint ptr %val.i86.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %val.i86.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %74, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88.i, i32 -157272832) #5, !srcloc !11
  %75 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %solo_dev, align 8
  %call.i89.i = call i32 @pci_read_config_word(ptr noundef %76, i32 noundef 6, ptr noundef nonnull %val.i86.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i86.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i90.i) #5
  %77 = ptrtoint ptr %val.i90.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %val.i90.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %79, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 -197132288) #5, !srcloc !11
  %80 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %solo_dev, align 8
  %call.i93.i = call i32 @pci_read_config_word(ptr noundef %81, i32 noundef 6, ptr noundef nonnull %val.i90.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i90.i) #5
  br label %solo_vin_config.exit

if.else26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i94.i) #5
  %82 = ptrtoint ptr %val.i94.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -1, ptr %val.i94.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %84, i32 304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i, i32 50331648) #5, !srcloc !11
  %85 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %solo_dev, align 8
  %call.i97.i = call i32 @pci_read_config_word(ptr noundef %86, i32 noundef 6, ptr noundef nonnull %val.i94.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i94.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i98.i) #5
  %87 = ptrtoint ptr %val.i98.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %val.i98.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i100.i = getelementptr i8, ptr %89, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 637613568) #5, !srcloc !11
  %90 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %solo_dev, align 8
  %call.i101.i = call i32 @pci_read_config_word(ptr noundef %91, i32 noundef 6, ptr noundef nonnull %val.i98.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i98.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i102.i) #5
  %92 = ptrtoint ptr %val.i102.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %val.i102.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %94, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 608239616) #5, !srcloc !11
  %95 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %solo_dev, align 8
  %call.i105.i = call i32 @pci_read_config_word(ptr noundef %96, i32 noundef 6, ptr noundef nonnull %val.i102.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i102.i) #5
  br label %solo_vin_config.exit

solo_vin_config.exit:                             ; preds = %if.else26.i, %if.then25.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i106.i) #5
  %97 = ptrtoint ptr %val.i106.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1, ptr %val.i106.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %99, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 -536739584) #5, !srcloc !11
  %100 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %solo_dev, align 8
  %call.i109.i = call i32 @pci_read_config_word(ptr noundef %101, i32 noundef 6, ptr noundef nonnull %val.i106.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i106.i) #5
  %nr_chans.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %102 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nr_chans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp67.i = icmp sgt i32 %103, 0
  br i1 %cmp67.i, label %solo_vin_config.exit.for.body.i_crit_edge, label %solo_vin_config.exit.solo_motion_config.exit_crit_edge

solo_vin_config.exit.solo_motion_config.exit_crit_edge: ; preds = %solo_vin_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_motion_config.exit

solo_vin_config.exit.for.body.i_crit_edge:        ; preds = %solo_vin_config.exit
  br label %for.body.i

for.body.i:                                       ; preds = %solo_set_motion_threshold.exit.i.for.body.i_crit_edge, %solo_vin_config.exit.for.body.i_crit_edge
  %i.068.i = phi i32 [ %inc.i, %solo_set_motion_threshold.exit.i.for.body.i_crit_edge ], [ 0, %solo_vin_config.exit.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.068.i, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3264, i32 noundef 128) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.solo_dma_vin_region.exit.i_crit_edge, label %for.body.i.preheader.i

for.body.i.solo_dma_vin_region.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_dma_vin_region.exit.i

for.body.i.preheader.i:                           ; preds = %for.body.i
  %105 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 128)
  %106 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp4.i.i = icmp eq i32 %107, 0
  %add.i.i = select i1 %cmp4.i.i, i32 6815744, i32 8912896
  %add6.i.i = add i32 %mul.i, %add.i.i
  %call7.i.i = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %for.body3.i.i.1, label %for.body.i.preheader.i.for.end13.i.i_crit_edge

for.body.i.preheader.i.for.end13.i.i_crit_edge:   ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13.i.i

for.body3.i.i.1:                                  ; preds = %for.body.i.preheader.i
  %108 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp4.i.i.1 = icmp eq i32 %109, 0
  %add.i.i.1 = select i1 %cmp4.i.i.1, i32 6815744, i32 8912896
  %add5.i.i.1 = or i32 %mul.i, 128
  %add6.i.i.1 = add i32 %add5.i.i.1, %add.i.i.1
  %call7.i.i.1 = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i.1, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.1)
  %tobool8.not.i.i.1 = icmp eq i32 %call7.i.i.1, 0
  br i1 %tobool8.not.i.i.1, label %for.body3.i.i.2, label %for.body3.i.i.1.for.end13.i.i_crit_edge

for.body3.i.i.1.for.end13.i.i_crit_edge:          ; preds = %for.body3.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13.i.i

for.body3.i.i.2:                                  ; preds = %for.body3.i.i.1
  %110 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp4.i.i.2 = icmp eq i32 %111, 0
  %add.i.i.2 = select i1 %cmp4.i.i.2, i32 6815744, i32 8912896
  %add5.i.i.2 = or i32 %mul.i, 256
  %add6.i.i.2 = add i32 %add5.i.i.2, %add.i.i.2
  %call7.i.i.2 = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i.2, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.2)
  %tobool8.not.i.i.2 = icmp eq i32 %call7.i.i.2, 0
  br i1 %tobool8.not.i.i.2, label %for.body3.i.i.3, label %for.body3.i.i.2.for.end13.i.i_crit_edge

for.body3.i.i.2.for.end13.i.i_crit_edge:          ; preds = %for.body3.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13.i.i

for.body3.i.i.3:                                  ; preds = %for.body3.i.i.2
  %112 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp4.i.i.3 = icmp eq i32 %113, 0
  %add.i.i.3 = select i1 %cmp4.i.i.3, i32 6815744, i32 8912896
  %add5.i.i.3 = or i32 %mul.i, 384
  %add6.i.i.3 = add i32 %add5.i.i.3, %add.i.i.3
  %call7.i.i.3 = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i.3, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.3)
  %tobool8.not.i.i.3 = icmp eq i32 %call7.i.i.3, 0
  br i1 %tobool8.not.i.i.3, label %for.body3.i.i.4, label %for.body3.i.i.3.for.end13.i.i_crit_edge

for.body3.i.i.3.for.end13.i.i_crit_edge:          ; preds = %for.body3.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13.i.i

for.body3.i.i.4:                                  ; preds = %for.body3.i.i.3
  %114 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp4.i.i.4 = icmp eq i32 %115, 0
  %add.i.i.4 = select i1 %cmp4.i.i.4, i32 6815744, i32 8912896
  %add5.i.i.4 = or i32 %mul.i, 512
  %add6.i.i.4 = add i32 %add5.i.i.4, %add.i.i.4
  %call7.i.i.4 = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i.4, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.4)
  %tobool8.not.i.i.4 = icmp eq i32 %call7.i.i.4, 0
  br i1 %tobool8.not.i.i.4, label %for.body3.i.i.5, label %for.body3.i.i.4.for.end13.i.i_crit_edge

for.body3.i.i.4.for.end13.i.i_crit_edge:          ; preds = %for.body3.i.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13.i.i

for.body3.i.i.5:                                  ; preds = %for.body3.i.i.4
  %116 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp4.i.i.5 = icmp eq i32 %117, 0
  %add.i.i.5 = select i1 %cmp4.i.i.5, i32 6815744, i32 8912896
  %add5.i.i.5 = or i32 %mul.i, 640
  %add6.i.i.5 = add i32 %add5.i.i.5, %add.i.i.5
  %call7.i.i.5 = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i.5, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.5)
  %tobool8.not.i.i.5 = icmp eq i32 %call7.i.i.5, 0
  br i1 %tobool8.not.i.i.5, label %for.body3.i.i.6, label %for.body3.i.i.5.for.end13.i.i_crit_edge

for.body3.i.i.5.for.end13.i.i_crit_edge:          ; preds = %for.body3.i.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13.i.i

for.body3.i.i.6:                                  ; preds = %for.body3.i.i.5
  %118 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp4.i.i.6 = icmp eq i32 %119, 0
  %add.i.i.6 = select i1 %cmp4.i.i.6, i32 6815744, i32 8912896
  %add5.i.i.6 = or i32 %mul.i, 768
  %add6.i.i.6 = add i32 %add5.i.i.6, %add.i.i.6
  %call7.i.i.6 = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i.6, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.6)
  %tobool8.not.i.i.6 = icmp eq i32 %call7.i.i.6, 0
  br i1 %tobool8.not.i.i.6, label %for.body3.i.i.7, label %for.body3.i.i.6.for.end13.i.i_crit_edge

for.body3.i.i.6.for.end13.i.i_crit_edge:          ; preds = %for.body3.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13.i.i

for.body3.i.i.7:                                  ; preds = %for.body3.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp4.i.i.7 = icmp eq i32 %121, 0
  %add.i.i.7 = select i1 %cmp4.i.i.7, i32 6815744, i32 8912896
  %add5.i.i.7 = or i32 %mul.i, 896
  %add6.i.i.7 = add i32 %add5.i.i.7, %add.i.i.7
  %call7.i.i.7 = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef %add6.i.i.7, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  br label %for.end13.i.i

for.end13.i.i:                                    ; preds = %for.body3.i.i.7, %for.body3.i.i.6.for.end13.i.i_crit_edge, %for.body3.i.i.5.for.end13.i.i_crit_edge, %for.body3.i.i.4.for.end13.i.i_crit_edge, %for.body3.i.i.3.for.end13.i.i_crit_edge, %for.body3.i.i.2.for.end13.i.i_crit_edge, %for.body3.i.i.1.for.end13.i.i_crit_edge, %for.body.i.preheader.i.for.end13.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %solo_dma_vin_region.exit.i

solo_dma_vin_region.exit.i:                       ; preds = %for.end13.i.i, %for.body.i.solo_dma_vin_region.exit.i_crit_edge
  %mul2.i = shl i32 %i.068.i, 14
  %add3.i = add i32 %mul2.i, 24576
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %122 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i26.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %122, i32 noundef 3264, i32 noundef 128) #8
  %tobool.not.i27.i = icmp eq ptr %call7.i.i26.i, null
  br i1 %tobool.not.i27.i, label %solo_dma_vin_region.exit.i.solo_dma_vin_region.exit50.i_crit_edge, label %for.body.i35.preheader.i

solo_dma_vin_region.exit.i.solo_dma_vin_region.exit50.i_crit_edge: ; preds = %solo_dma_vin_region.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_dma_vin_region.exit50.i

for.body.i35.preheader.i:                         ; preds = %solo_dma_vin_region.exit.i
  %123 = call ptr @memset(ptr %call7.i.i26.i, i32 0, i32 128)
  br label %for.body3.i46.i

for.body3.i46.i:                                  ; preds = %for.body3.i46.i.for.body3.i46.i_crit_edge, %for.body.i35.preheader.i
  %i.130.i39.i = phi i32 [ %add12.i36.i, %for.body3.i46.i.for.body3.i46.i_crit_edge ], [ 0, %for.body.i35.preheader.i ]
  %124 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp4.i40.i = icmp eq i32 %125, 0
  %add.i41.i = select i1 %cmp4.i40.i, i32 6815744, i32 8912896
  %add5.i42.i = add nuw nsw i32 %add3.i, %i.130.i39.i
  %add6.i43.i = add i32 %add5.i42.i, %add.i41.i
  %call7.i44.i = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i26.i, i32 noundef %add6.i43.i, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i44.i)
  %tobool8.not.i45.i = icmp eq i32 %call7.i44.i, 0
  %add12.i36.i = add nuw nsw i32 %i.130.i39.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8064, i32 %i.130.i39.i)
  %cmp2.i37.i = icmp ult i32 %i.130.i39.i, 8064
  %or.cond66.i = select i1 %tobool8.not.i45.i, i1 %cmp2.i37.i, i1 false
  br i1 %or.cond66.i, label %for.body3.i46.i.for.body3.i46.i_crit_edge, label %for.end13.i48.i

for.body3.i46.i.for.body3.i46.i_crit_edge:        ; preds = %for.body3.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i46.i

for.end13.i48.i:                                  ; preds = %for.body3.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i26.i) #5
  br label %solo_dma_vin_region.exit50.i

solo_dma_vin_region.exit50.i:                     ; preds = %for.end13.i48.i, %solo_dma_vin_region.exit.i.solo_dma_vin_region.exit50.i_crit_edge
  %conv.i.i = and i32 %i.068.i, 255
  %126 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nr_chans.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %conv.i.i)
  %cmp.i.i = icmp slt i32 %127, %conv.i.i
  br i1 %cmp.i.i, label %solo_dma_vin_region.exit50.i.solo_set_motion_threshold.exit.i_crit_edge, label %if.end.i.i

solo_dma_vin_region.exit50.i.solo_set_motion_threshold.exit.i_crit_edge: ; preds = %solo_dma_vin_region.exit50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_set_motion_threshold.exit.i

if.end.i.i:                                       ; preds = %solo_dma_vin_region.exit50.i
  %mul3.i.i = shl nuw nsw i32 %conv.i.i, 14
  %add.i51.i = add nuw nsw i32 %mul3.i.i, 16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %128 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 3264, i32 noundef 128) #8
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.solo_set_motion_threshold.exit.i_crit_edge, label %if.end.i.i.for.body.i.i.i_crit_edge

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

if.end.i.i.solo_set_motion_threshold.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_set_motion_threshold.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %i.028.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i16, ptr %call7.i.i.i.i, i32 %i.028.i.i.i
  %129 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 3, ptr %arrayidx.i.i.i, align 2
  %inc.i.i.i = add nuw nsw i32 %i.028.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.body3.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.body.i.i.i.for.body3.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  br label %for.body3.i.i.i

for.body3.i.i.i:                                  ; preds = %for.body3.i.i.i.for.body3.i.i.i_crit_edge, %for.body.i.i.i.for.body3.i.i.i_crit_edge
  %i.130.i.i.i = phi i32 [ %add12.i.i.i, %for.body3.i.i.i.for.body3.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.for.body3.i.i.i_crit_edge ]
  %130 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp4.i.i.i = icmp eq i32 %131, 0
  %add.i.i.i = select i1 %cmp4.i.i.i, i32 6815744, i32 8912896
  %add5.i.i.i = add nuw nsw i32 %add.i51.i, %i.130.i.i.i
  %add6.i.i.i = add nuw nsw i32 %add5.i.i.i, %add.i.i.i
  %call7.i.i52.i = call i32 @solo_p2m_dma(ptr noundef %solo_dev, i32 noundef 1, ptr noundef nonnull %call7.i.i.i.i, i32 noundef %add6.i.i.i, i32 noundef 128, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i52.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i52.i, 0
  %add12.i.i.i = add nuw nsw i32 %i.130.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 8064, i32 %i.130.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %i.130.i.i.i, 8064
  %or.cond.i.i = select i1 %tobool8.not.i.i.i, i1 %cmp2.i.i.i, i1 false
  br i1 %or.cond.i.i, label %for.body3.i.i.i.for.body3.i.i.i_crit_edge, label %for.end13.i.i.i

for.body3.i.i.i.for.body3.i.i.i_crit_edge:        ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i.i.i

for.end13.i.i.i:                                  ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #5
  br label %solo_set_motion_threshold.exit.i

solo_set_motion_threshold.exit.i:                 ; preds = %for.end13.i.i.i, %if.end.i.i.solo_set_motion_threshold.exit.i_crit_edge, %solo_dma_vin_region.exit50.i.solo_set_motion_threshold.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %132 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nr_chans.i, align 8
  %cmp.i20 = icmp slt i32 %inc.i, %133
  br i1 %cmp.i20, label %solo_set_motion_threshold.exit.i.for.body.i_crit_edge, label %solo_set_motion_threshold.exit.i.solo_motion_config.exit_crit_edge

solo_set_motion_threshold.exit.i.solo_motion_config.exit_crit_edge: ; preds = %solo_set_motion_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %solo_motion_config.exit

solo_set_motion_threshold.exit.i.for.body.i_crit_edge: ; preds = %solo_set_motion_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

solo_motion_config.exit:                          ; preds = %solo_set_motion_threshold.exit.i.solo_motion_config.exit_crit_edge, %solo_vin_config.exit.solo_motion_config.exit_crit_edge
  %134 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp6.i = icmp eq i32 %135, 0
  %add9.i = select i1 %cmp6.i, i32 1744830464, i32 -2013265920
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i19) #5
  %136 = ptrtoint ptr %val.i.i19 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -1, ptr %val.i.i19, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %137 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %138, i32 608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %add9.i) #5, !srcloc !11
  %139 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %solo_dev, align 8
  %call.i.i24 = call i32 @pci_read_config_word(ptr noundef %140, i32 noundef 6, ptr noundef nonnull %val.i.i19) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i19) #5
  %141 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %video_hsize, align 4
  %143 = lshr i16 %142, 4
  %div.i = zext i16 %143 to i32
  %shl.i25 = shl nuw nsw i32 %div.i, 16
  %or12.i = or i32 %shl.i25, 50331658
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i54.i18) #5
  %144 = ptrtoint ptr %val.i54.i18 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %val.i54.i18, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %145 = call i32 @llvm.bswap.i32(i32 %or12.i) #5
  %146 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i56.i26 = getelementptr i8, ptr %147, i32 612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i26, i32 %145) #5, !srcloc !11
  %148 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %solo_dev, align 8
  %call.i57.i27 = call i32 @pci_read_config_word(ptr noundef %149, i32 noundef 6, ptr noundef nonnull %val.i54.i18) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i54.i18) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i58.i17) #5
  %150 = ptrtoint ptr %val.i58.i17 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 -1, ptr %val.i58.i17, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i60.i28 = getelementptr i8, ptr %152, i32 624
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i28, i32 0) #5, !srcloc !11
  %153 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %solo_dev, align 8
  %call.i61.i29 = call i32 @pci_read_config_word(ptr noundef %154, i32 noundef 6, ptr noundef nonnull %val.i58.i17) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i58.i17) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i62.i16) #5
  %155 = ptrtoint ptr %val.i62.i16 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 -1, ptr %val.i62.i16, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i64.i30 = getelementptr i8, ptr %157, i32 628
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i30, i32 0) #5, !srcloc !11
  %158 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %solo_dev, align 8
  %call.i65.i31 = call i32 @pci_read_config_word(ptr noundef %159, i32 noundef 6, ptr noundef nonnull %val.i62.i16) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i62.i16) #5
  %160 = ptrtoint ptr %vout_hstart.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 6, ptr %vout_hstart.i, align 8
  %161 = ptrtoint ptr %vout_vstart.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 8, ptr %vout_vstart.i, align 2
  %162 = ptrtoint ptr %video_type to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %video_type, align 8
  %or1.i = or i32 %163, 196608
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i32) #5
  %164 = ptrtoint ptr %val.i.i32 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 -1, ptr %val.i.i32, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %165 = call i32 @llvm.bswap.i32(i32 %or1.i) #5
  %166 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %167, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %165) #5, !srcloc !11
  %168 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %solo_dev, align 8
  %call.i.i38 = call i32 @pci_read_config_word(ptr noundef %169, i32 noundef 6, ptr noundef nonnull %val.i.i32) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i32) #5
  %170 = ptrtoint ptr %vout_hstart.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %vout_hstart.i, align 8
  %conv.i39 = zext i16 %171 to i32
  %shl.i40 = shl nuw nsw i32 %conv.i39, 11
  %172 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %video_hsize, align 4
  %conv8.i = zext i16 %173 to i32
  %add.i42 = add nuw nsw i32 %conv8.i, %conv.i39
  %or10.i = or i32 %add.i42, %shl.i40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i53.i) #5
  %174 = ptrtoint ptr %val.i53.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -1, ptr %val.i53.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %175 = call i32 @llvm.bswap.i32(i32 %or10.i) #5
  %176 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %177, i32 772
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %175) #5, !srcloc !11
  %178 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %solo_dev, align 8
  %call.i56.i = call i32 @pci_read_config_word(ptr noundef %179, i32 noundef 6, ptr noundef nonnull %val.i53.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i53.i) #5
  %180 = ptrtoint ptr %vout_vstart.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %vout_vstart.i, align 2
  %conv12.i43 = zext i16 %181 to i32
  %shl13.i44 = shl nuw nsw i32 %conv12.i43, 11
  %182 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %3, align 2
  %conv16.i = zext i16 %183 to i32
  %add17.i = add nuw nsw i32 %conv16.i, %conv12.i43
  %or19.i = or i32 %add17.i, %shl13.i44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i57.i) #5
  %184 = ptrtoint ptr %val.i57.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 -1, ptr %val.i57.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %185 = call i32 @llvm.bswap.i32(i32 %or19.i) #5
  %186 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %187, i32 776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %185) #5, !srcloc !11
  %188 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %solo_dev, align 8
  %call.i60.i = call i32 @pci_read_config_word(ptr noundef %189, i32 noundef 6, ptr noundef nonnull %val.i57.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i57.i) #5
  %190 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %video_hsize, align 4
  %conv21.i = zext i16 %191 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 11
  %192 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %3, align 2
  %conv24.i = zext i16 %193 to i32
  %or26.i = or i32 %shl22.i, %conv24.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i61.i) #5
  %194 = ptrtoint ptr %val.i61.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -1, ptr %val.i61.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %195 = call i32 @llvm.bswap.i32(i32 %or26.i) #5
  %196 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %197, i32 780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %195) #5, !srcloc !11
  %198 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %solo_dev, align 8
  %call.i64.i = call i32 @pci_read_config_word(ptr noundef %199, i32 noundef 6, ptr noundef nonnull %val.i61.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i61.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i65.i) #5
  %200 = ptrtoint ptr %val.i65.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 -1, ptr %val.i65.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %201 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %202, i32 816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 -2002745184) #5, !srcloc !11
  %203 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %solo_dev, align 8
  %call.i68.i = call i32 @pci_read_config_word(ptr noundef %204, i32 noundef 6, ptr noundef nonnull %val.i65.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i65.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i69.i) #5
  %205 = ptrtoint ptr %val.i69.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -1, ptr %val.i69.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %207, i32 820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 -1894740208) #5, !srcloc !11
  %208 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %solo_dev, align 8
  %call.i72.i = call i32 @pci_read_config_word(ptr noundef %209, i32 noundef 6, ptr noundef nonnull %val.i69.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i69.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i73.i) #5
  %210 = ptrtoint ptr %val.i73.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 -1, ptr %val.i73.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %211 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %212, i32 800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 -2146402288) #5, !srcloc !11
  %213 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %solo_dev, align 8
  %call.i76.i = call i32 @pci_read_config_word(ptr noundef %214, i32 noundef 6, ptr noundef nonnull %val.i73.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i73.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i77.i) #5
  %215 = ptrtoint ptr %val.i77.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 -1, ptr %val.i77.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %216 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %217, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 16777216) #5, !srcloc !11
  %218 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %solo_dev, align 8
  %call.i80.i = call i32 @pci_read_config_word(ptr noundef %219, i32 noundef 6, ptr noundef nonnull %val.i77.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i77.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i81.i) #5
  %220 = ptrtoint ptr %val.i81.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 -1, ptr %val.i81.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %221 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %222, i32 576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 0) #5, !srcloc !11
  %223 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %solo_dev, align 8
  %call.i84.i = call i32 @pci_read_config_word(ptr noundef %224, i32 noundef 6, ptr noundef nonnull %val.i81.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i81.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i85.i) #5
  %225 = ptrtoint ptr %val.i85.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 -1, ptr %val.i85.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %226 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %227, i32 792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i, i32 0) #5, !srcloc !11
  %228 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %solo_dev, align 8
  %call.i88.i = call i32 @pci_read_config_word(ptr noundef %229, i32 noundef 6, ptr noundef nonnull %val.i85.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i85.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i89.i) #5
  %230 = ptrtoint ptr %val.i89.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 -1, ptr %val.i89.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %231 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %232, i32 796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 0) #5, !srcloc !11
  %233 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %solo_dev, align 8
  %call.i92.i = call i32 @pci_read_config_word(ptr noundef %234, i32 noundef 6, ptr noundef nonnull %val.i89.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i89.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i93.i) #5
  %235 = ptrtoint ptr %val.i93.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 -1, ptr %val.i93.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %236 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %237, i32 784
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 136) #5, !srcloc !11
  %238 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %solo_dev, align 8
  %call.i96.i = call i32 @pci_read_config_word(ptr noundef %239, i32 noundef 6, ptr noundef nonnull %val.i93.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i93.i) #5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %solo_motion_config.exit
  %i.018.i.i = phi i32 [ 0, %solo_motion_config.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.018.i.i, 2
  %add.i.i46 = add nuw nsw i32 %mul.i.i, 912
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #5
  %240 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %241 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %242, i32 %add.i.i46
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !11
  %243 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %244, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #5
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20
  br i1 %exitcond.not.i.i, label %solo_vout_config.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

solo_vout_config.exit:                            ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i6.i.i) #5
  %245 = ptrtoint ptr %val.i6.i.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 -1, ptr %val.i6.i.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %246 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %247, i32 896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #5, !srcloc !11
  %248 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %solo_dev, align 8
  %call.i9.i.i = call i32 @pci_read_config_word(ptr noundef %249, i32 noundef 6, ptr noundef nonnull %val.i6.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i6.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i10.i.i) #5
  %250 = ptrtoint ptr %val.i10.i.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 -1, ptr %val.i10.i.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %251 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %252, i32 900
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 -2146402176) #5, !srcloc !11
  %253 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %solo_dev, align 8
  %call.i13.i.i = call i32 @pci_read_config_word(ptr noundef %254, i32 noundef 6, ptr noundef nonnull %val.i10.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i10.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i14.i.i) #5
  %255 = ptrtoint ptr %val.i14.i.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 -1, ptr %val.i14.i.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %256 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %257, i32 904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 -2132803584) #5, !srcloc !11
  %258 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %solo_dev, align 8
  %call.i17.i.i = call i32 @pci_read_config_word(ptr noundef %259, i32 noundef 6, ptr noundef nonnull %val.i14.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i14.i.i) #5
  %260 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %nr_chans.i, align 8
  %notmask.i = shl nsw i32 -1, %261
  %sub.i = xor i32 %notmask.i, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i97.i) #5
  %262 = ptrtoint ptr %val.i97.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 -1, ptr %val.i97.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %263 = call i32 @llvm.bswap.i32(i32 %sub.i) #5
  %264 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %265, i32 268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %263) #5, !srcloc !11
  %266 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %solo_dev, align 8
  %call.i100.i = call i32 @pci_read_config_word(ptr noundef %267, i32 noundef 6, ptr noundef nonnull %val.i97.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i97.i) #5
  %268 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %nr_chans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %cmp348 = icmp sgt i32 %269, 0
  br i1 %cmp348, label %solo_vout_config.exit.for.body_crit_edge, label %solo_vout_config.exit.for.end_crit_edge

solo_vout_config.exit.for.end_crit_edge:          ; preds = %solo_vout_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

solo_vout_config.exit.for.body_crit_edge:         ; preds = %solo_vout_config.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %solo_vout_config.exit.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %solo_vout_config.exit.for.body_crit_edge ]
  %mul = shl i32 %i.049, 2
  %add = add i32 %mul, 512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %270 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 -1, ptr %val.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %271 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %272, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !11
  %273 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %274, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  %inc = add nuw nsw i32 %i.049, 1
  %275 = ptrtoint ptr %nr_chans.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %nr_chans.i, align 8
  %cmp3 = icmp slt i32 %inc, %276
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %solo_vout_config.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_disp_exit(ptr noundef readonly %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i103 = alloca i16, align 2
  %val.i99 = alloca i16, align 2
  %val.i95 = alloca i16, align 2
  %val.i91 = alloca i16, align 2
  %val.i87 = alloca i16, align 2
  %val.i83 = alloca i16, align 2
  %val.i79 = alloca i16, align 2
  %val.i75 = alloca i16, align 2
  %val.i71 = alloca i16, align 2
  %val.i67 = alloca i16, align 2
  %val.i63 = alloca i16, align 2
  %val.i59 = alloca i16, align 2
  %val.i55 = alloca i16, align 2
  %val.i51 = alloca i16, align 2
  %val.i47 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !11
  %3 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %val.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i47) #5
  %5 = ptrtoint ptr %val.i47 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val.i47, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %7, i32 792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #5, !srcloc !11
  %8 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %solo_dev, align 8
  %call.i50 = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef 6, ptr noundef nonnull %val.i47) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i47) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i51) #5
  %10 = ptrtoint ptr %val.i51 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i51, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %12, i32 796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 0) #5, !srcloc !11
  %13 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %solo_dev, align 8
  %call.i54 = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i51) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i51) #5
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %15 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp107 = icmp sgt i32 %16, 0
  br i1 %cmp107, label %entry.for.body_crit_edge, label %entry.for.cond5.preheader_crit_edge

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i67) #5
  %17 = ptrtoint ptr %val.i67 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val.i67, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %19, i32 832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 0) #5, !srcloc !11
  %20 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %solo_dev, align 8
  %call.i70 = call i32 @pci_read_config_word(ptr noundef %21, i32 noundef 6, ptr noundef nonnull %val.i67) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i67) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i67) #5
  %22 = ptrtoint ptr %val.i67 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %val.i67, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i69.1 = getelementptr i8, ptr %24, i32 836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.1, i32 0) #5, !srcloc !11
  %25 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %solo_dev, align 8
  %call.i70.1 = call i32 @pci_read_config_word(ptr noundef %26, i32 noundef 6, ptr noundef nonnull %val.i67) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i67) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i67) #5
  %27 = ptrtoint ptr %val.i67 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %val.i67, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i69.2 = getelementptr i8, ptr %29, i32 840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.2, i32 0) #5, !srcloc !11
  %30 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %solo_dev, align 8
  %call.i70.2 = call i32 @pci_read_config_word(ptr noundef %31, i32 noundef 6, ptr noundef nonnull %val.i67) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i67) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i67) #5
  %32 = ptrtoint ptr %val.i67 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %val.i67, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i69.3 = getelementptr i8, ptr %34, i32 844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.3, i32 0) #5, !srcloc !11
  %35 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %solo_dev, align 8
  %call.i70.3 = call i32 @pci_read_config_word(ptr noundef %36, i32 noundef 6, ptr noundef nonnull %val.i67) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i67) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i67) #5
  %37 = ptrtoint ptr %val.i67 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %val.i67, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i69.4 = getelementptr i8, ptr %39, i32 848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.4, i32 0) #5, !srcloc !11
  %40 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %solo_dev, align 8
  %call.i70.4 = call i32 @pci_read_config_word(ptr noundef %41, i32 noundef 6, ptr noundef nonnull %val.i67) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i67) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i71) #5
  %42 = ptrtoint ptr %val.i71 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %val.i71, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %44, i32 852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 0) #5, !srcloc !11
  %45 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %solo_dev, align 8
  %call.i74 = call i32 @pci_read_config_word(ptr noundef %46, i32 noundef 6, ptr noundef nonnull %val.i71) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i71) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i71) #5
  %47 = ptrtoint ptr %val.i71 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %val.i71, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i73.1 = getelementptr i8, ptr %49, i32 856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.1, i32 0) #5, !srcloc !11
  %50 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %solo_dev, align 8
  %call.i74.1 = call i32 @pci_read_config_word(ptr noundef %51, i32 noundef 6, ptr noundef nonnull %val.i71) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i71) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i71) #5
  %52 = ptrtoint ptr %val.i71 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %val.i71, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i73.2 = getelementptr i8, ptr %54, i32 860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.2, i32 0) #5, !srcloc !11
  %55 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %solo_dev, align 8
  %call.i74.2 = call i32 @pci_read_config_word(ptr noundef %56, i32 noundef 6, ptr noundef nonnull %val.i71) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i71) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i71) #5
  %57 = ptrtoint ptr %val.i71 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -1, ptr %val.i71, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i73.3 = getelementptr i8, ptr %59, i32 864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.3, i32 0) #5, !srcloc !11
  %60 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %solo_dev, align 8
  %call.i74.3 = call i32 @pci_read_config_word(ptr noundef %61, i32 noundef 6, ptr noundef nonnull %val.i71) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i71) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i71) #5
  %62 = ptrtoint ptr %val.i71 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %val.i71, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i73.4 = getelementptr i8, ptr %64, i32 868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.4, i32 0) #5, !srcloc !11
  %65 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %solo_dev, align 8
  %call.i74.4 = call i32 @pci_read_config_word(ptr noundef %66, i32 noundef 6, ptr noundef nonnull %val.i71) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i71) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i75) #5
  %67 = ptrtoint ptr %val.i75 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %val.i75, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %69, i32 824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 0) #5, !srcloc !11
  %70 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %solo_dev, align 8
  %call.i78 = call i32 @pci_read_config_word(ptr noundef %71, i32 noundef 6, ptr noundef nonnull %val.i75) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i75) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i79) #5
  %72 = ptrtoint ptr %val.i79 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %val.i79, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %74, i32 828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 0) #5, !srcloc !11
  %75 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %solo_dev, align 8
  %call.i82 = call i32 @pci_read_config_word(ptr noundef %76, i32 noundef 6, ptr noundef nonnull %val.i79) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i79) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i83) #5
  %77 = ptrtoint ptr %val.i83 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %val.i83, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %79, i32 872
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 0) #5, !srcloc !11
  %80 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %solo_dev, align 8
  %call.i86 = call i32 @pci_read_config_word(ptr noundef %81, i32 noundef 6, ptr noundef nonnull %val.i83) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i83) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i87) #5
  %82 = ptrtoint ptr %val.i87 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -1, ptr %val.i87, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %84, i32 876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 0) #5, !srcloc !11
  %85 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %solo_dev, align 8
  %call.i90 = call i32 @pci_read_config_word(ptr noundef %86, i32 noundef 6, ptr noundef nonnull %val.i87) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i87) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i91) #5
  %87 = ptrtoint ptr %val.i91 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %val.i91, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %89, i32 880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 0) #5, !srcloc !11
  %90 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %solo_dev, align 8
  %call.i94 = call i32 @pci_read_config_word(ptr noundef %91, i32 noundef 6, ptr noundef nonnull %val.i91) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i91) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i95) #5
  %92 = ptrtoint ptr %val.i95 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %val.i95, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %94, i32 884
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 0) #5, !srcloc !11
  %95 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %solo_dev, align 8
  %call.i98 = call i32 @pci_read_config_word(ptr noundef %96, i32 noundef 6, ptr noundef nonnull %val.i95) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i95) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i99) #5
  %97 = ptrtoint ptr %val.i99 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1, ptr %val.i99, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %99, i32 888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 0) #5, !srcloc !11
  %100 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %solo_dev, align 8
  %call.i102 = call i32 @pci_read_config_word(ptr noundef %101, i32 noundef 6, ptr noundef nonnull %val.i99) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i99) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i103) #5
  %102 = ptrtoint ptr %val.i103 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -1, ptr %val.i103, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %104, i32 892
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 0) #5, !srcloc !11
  %105 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %solo_dev, align 8
  %call.i106 = call i32 @pci_read_config_word(ptr noundef %106, i32 noundef 6, ptr noundef nonnull %val.i103) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i103) #5
  ret void

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0108 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.0108, 2
  %add = add i32 %mul, 384
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i55) #5
  %107 = ptrtoint ptr %val.i55 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %val.i55, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %109, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 0) #5, !srcloc !11
  %110 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %solo_dev, align 8
  %call.i58 = call i32 @pci_read_config_word(ptr noundef %111, i32 noundef 6, ptr noundef nonnull %val.i55) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i55) #5
  %add2 = add i32 %mul, 448
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i59) #5
  %112 = ptrtoint ptr %val.i59 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %val.i59, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %114, i32 %add2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #5, !srcloc !11
  %115 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %solo_dev, align 8
  %call.i62 = call i32 @pci_read_config_word(ptr noundef %116, i32 noundef 6, ptr noundef nonnull %val.i59) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i59) #5
  %add4 = add i32 %mul, 512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i63) #5
  %117 = ptrtoint ptr %val.i63 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %val.i63, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %119, i32 %add4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #5, !srcloc !11
  %120 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %solo_dev, align 8
  %call.i66 = call i32 @pci_read_config_word(ptr noundef %121, i32 noundef 6, ptr noundef nonnull %val.i63) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i63) #5
  %inc = add nuw nsw i32 %i.0108, 1
  %122 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nr_chans, align 8
  %cmp = icmp slt i32 %inc, %123
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond5.preheader_crit_edge

for.body.for.cond5.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

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
!10 = !{i64 2156783678}
!11 = !{i64 5981995}
