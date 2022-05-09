; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-eeprom.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.96, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.96 = type { ptr }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_eeprom_ewen(ptr nocapture noundef readonly %solo_dev, i32 noundef %w_en) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i28 = alloca i16, align 2
  %val.i.i21 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w_en)
  %tobool.not = icmp eq i32 %w_en, 0
  %or = select i1 %tobool.not, i32 256, i32 319
  tail call fastcc void @solo_eeprom_cmd(ptr noundef %solo_dev, i32 noundef %or)
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %retval1.035 = phi i32 [ 0, %entry ], [ %phi.bo, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #3
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %1 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1946157056) #3, !srcloc !11
  %3 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %val.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 21474800) #3
  %6 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %7, i32 96
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #3, !srcloc !12
  %9 = lshr i32 %8, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  %and.i = and i32 %9, 1
  %or2 = or i32 %and.i, %retval1.035
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i21) #3
  %10 = ptrtoint ptr %val.i.i21 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i.i21, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %12, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 -2013265920) #3, !srcloc !11
  %13 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %solo_dev, align 8
  %call.i.i24 = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i.i21) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i21) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 21474800) #3
  %16 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %17, i32 96
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #3, !srcloc !12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  %inc = add nuw nsw i32 %i.036, 1
  %19 = shl i32 %or2, 2
  %20 = lshr i32 %18, 23
  %21 = and i32 %20, 2
  %phi.bo = or i32 %21, %19
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i28) #3
  %22 = ptrtoint ptr %val.i.i28 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %val.i.i28, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %23 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %24, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 -134217729) #3, !srcloc !11
  %25 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %solo_dev, align 8
  %call.i.i31 = call i32 @pci_read_config_word(ptr noundef %26, i32 noundef 6, ptr noundef nonnull %val.i.i28) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i28) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 21474800) #3
  %28 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %29, i32 96
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #3, !srcloc !12
  %31 = lshr i32 %30, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  %and.i34 = and i32 %31, 1
  %or8 = or i32 %and.i34, %phi.bo
  ret i32 %or8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_eeprom_cmd(ptr nocapture noundef readonly %solo_dev, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  %val.i.i21 = alloca i16, align 2
  %val.i.i17 = alloca i16, align 2
  %val.i.i13 = alloca i16, align 2
  %val.i.i9 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #3
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i.i, align 2, !annotation !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %1 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2147483648) #3, !srcloc !11
  %3 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %val.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 21474800) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i9) #3
  %6 = ptrtoint ptr %val.i.i9 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i.i9, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %8, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 -2013265920) #3, !srcloc !11
  %9 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %solo_dev, align 8
  %call.i.i12 = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %val.i.i9) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i9) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 21474800) #3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 10, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.025
  %and = and i32 %shl, %cmd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 33554432
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i13) #3
  %12 = ptrtoint ptr %val.i.i13 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %val.i.i13, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %13 = or i32 %cond, -2013265920
  %14 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %15, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %13) #3, !srcloc !11
  %16 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %solo_dev, align 8
  %call.i.i16 = call i32 @pci_read_config_word(ptr noundef %17, i32 noundef 6, ptr noundef nonnull %val.i.i13) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i13) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 21474800) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i17) #3
  %19 = ptrtoint ptr %val.i.i17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %val.i.i17, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %20 = or i32 %cond, -1946157056
  %21 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %22, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %20) #3, !srcloc !11
  %23 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %solo_dev, align 8
  %call.i.i20 = call i32 @pci_read_config_word(ptr noundef %24, i32 noundef 6, ptr noundef nonnull %val.i.i17) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i17) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 21474800) #3
  %dec = add nsw i32 %i.025, -1
  %cmp.not = icmp eq i32 %i.025, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i21) #3
  %26 = ptrtoint ptr %val.i.i21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %val.i.i21, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %27 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %28, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 -2013265920) #3, !srcloc !11
  %29 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %solo_dev, align 8
  %call.i.i24 = call i32 @pci_read_config_word(ptr noundef %30, i32 noundef 6, ptr noundef nonnull %val.i.i21) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i21) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 21474800) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @solo_eeprom_read(ptr nocapture noundef readonly %solo_dev, i32 noundef %loc) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i16 = alloca i16, align 2
  %val.i.i12 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %loc, 384
  tail call fastcc void @solo_eeprom_cmd(ptr noundef %solo_dev, i32 noundef %or)
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %retval1.020 = phi i32 [ 0, %entry ], [ %or2, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #3
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %1 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1946157056) #3, !srcloc !11
  %3 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %val.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 21474800) #3
  %conv = shl nsw i32 %retval1.020, 1
  %shl = and i32 %conv, 131070
  %6 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %7, i32 96
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #3, !srcloc !12
  %9 = lshr i32 %8, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  %and.i = and i32 %9, 1
  %or2 = or i32 %and.i, %shl
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i12) #3
  %10 = ptrtoint ptr %val.i.i12 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i.i12, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %11 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %12, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14, i32 -2013265920) #3, !srcloc !11
  %13 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %solo_dev, align 8
  %call.i.i15 = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i.i12) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i12) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 21474800) #3
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv3.le = trunc i32 %or2 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i16) #3
  %16 = ptrtoint ptr %val.i.i16 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %val.i.i16, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %17 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %18, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 -134217729) #3, !srcloc !11
  %19 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %solo_dev, align 8
  %call.i.i19 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val.i.i16) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i16) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 21474800) #3
  ret i16 %conv3.le
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_eeprom_write(ptr nocapture noundef readonly %solo_dev, i32 noundef %loc, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i42 = alloca i16, align 2
  %val.i.i36 = alloca i16, align 2
  %val.i.i32 = alloca i16, align 2
  %val.i.i28 = alloca i16, align 2
  %val.i.i24 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %loc, 320
  tail call fastcc void @solo_eeprom_cmd(ptr noundef %solo_dev, i32 noundef %or)
  %conv = zext i16 %data to i32
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 15, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %shr = lshr i32 %conv, %i.046
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #3
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i.i, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %1 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2013265920) #3, !srcloc !11
  %3 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef 6, ptr noundef nonnull %val.i.i) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 21474800) #3
  %and = shl i32 %shr, 25
  %shl = and i32 %and, 33554432
  %or3 = or i32 %shl, -1946157056
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i24) #3
  %6 = ptrtoint ptr %val.i.i24 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val.i.i24, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %8, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26, i32 %or3) #3, !srcloc !11
  %9 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %solo_dev, align 8
  %call.i.i27 = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %val.i.i24) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i24) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 21474800) #3
  %dec = add nsw i32 %i.046, -1
  %cmp.not = icmp eq i32 %i.046, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i28) #3
  %12 = ptrtoint ptr %val.i.i28 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %val.i.i28, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %14, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 -2013265920) #3, !srcloc !11
  %15 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %solo_dev, align 8
  %call.i.i31 = call i32 @pci_read_config_word(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %val.i.i28) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i28) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 21474800) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i32) #3
  %18 = ptrtoint ptr %val.i.i32 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %val.i.i32, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %19 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %20, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 -134217729) #3, !srcloc !11
  %21 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %solo_dev, align 8
  %call.i.i35 = call i32 @pci_read_config_word(ptr noundef %22, i32 noundef 6, ptr noundef nonnull %val.i.i32) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i32) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 21474800) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i36) #3
  %24 = ptrtoint ptr %val.i.i36 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %val.i.i36, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %25 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %26, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 -2013265920) #3, !srcloc !11
  %27 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %solo_dev, align 8
  %call.i.i39 = call i32 @pci_read_config_word(ptr noundef %28, i32 noundef 6, ptr noundef nonnull %val.i.i36) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i36) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 21474800) #3
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.end
  %i.147 = phi i32 [ 0, %for.end ], [ %inc, %for.body7.for.body7_crit_edge ]
  %30 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %31, i32 96
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #3, !srcloc !12
  %33 = lshr i32 %32, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  %and.i = and i32 %33, 1
  %inc = add nuw nsw i32 %i.147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.147)
  %cmp5 = icmp ult i32 %i.147, 9999
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp5, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body7.for.body7_crit_edge, label %for.end9

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body7

for.end9:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i42) #3
  %34 = ptrtoint ptr %val.i.i42 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %val.i.i42, align 2, !annotation !9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !10
  call void @arm_heavy_mb() #3
  %35 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %36, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44, i32 -134217729) #3, !srcloc !11
  %37 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %solo_dev, align 8
  %call.i.i45 = call i32 @pci_read_config_word(ptr noundef %38, i32 noundef 6, ptr noundef nonnull %val.i.i42) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i42) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 21474800) #3
  %40 = xor i32 %and.i, 1
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!10 = !{i64 2156751450}
!11 = !{i64 4998833}
!12 = !{i64 4999251}
!13 = !{i64 2156751059}
