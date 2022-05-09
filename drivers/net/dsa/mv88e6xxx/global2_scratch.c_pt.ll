; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/global2_scratch.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/global2_scratch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mv88e6xxx_gpio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv88e6xxx_irq = type { i16, %struct.irq_chip, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i16, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mv88e6xxx_port = type { ptr, i32, %struct.mv88e6xxx_vlan, [2 x i64], i64, i64, i64, i64, i64, i32, i8, i8, i8, i32, [64 x i8], ptr }
%struct.mv88e6xxx_vlan = type { i16, i8 }

@mv88e6352_gpio_ops = dso_local constant { %struct.mv88e6xxx_gpio_ops, [40 x i8] } { %struct.mv88e6xxx_gpio_ops { ptr @mv88e6352_g2_scratch_gpio_get_data, ptr @mv88e6352_g2_scratch_gpio_set_data, ptr @mv88e6352_g2_scratch_gpio_get_dir, ptr @mv88e6352_g2_scratch_gpio_set_dir, ptr @mv88e6352_g2_scratch_gpio_get_pctl, ptr @mv88e6352_g2_scratch_gpio_set_pctl }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"mv88e6352_gpio_ops\00", align 1
@___asan_gen_.2 = private constant [47 x i8] c"../drivers/net/dsa/mv88e6xxx/global2_scratch.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 233, i32 33 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mv88e6352_gpio_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_gpio_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_scratch_gpio_get_data(ptr noundef %chip, i32 noundef %pin) #0 align 64 {
entry:
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #3
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value.i.i, align 2, !annotation !11
  %1 = trunc i32 %pin to i16
  %2 = shl i16 %1, 5
  %3 = add i16 %2, 25600
  %conv.i.i = and i16 %3, -256
  %call.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge

entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_get_bit.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge

if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_get_bit.exit

mv88e6xxx_g2_scratch_get_bit.exit:                ; preds = %if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge, %entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge ], [ %call.i.i, %entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #3
  %and.i = and i32 %pin, 7
  %6 = and i16 %5, 255
  %conv2.i = zext i16 %6 to i32
  %7 = lshr i32 %conv2.i, %and.i
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mv88e6xxx_g2_scratch_get_bit.exit
  %retval.0 = phi i32 [ %8, %if.end ], [ %retval.0.i.ph.i, %mv88e6xxx_g2_scratch_get_bit.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_scratch_gpio_set_data(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %pin, 7
  %shl = shl nuw nsw i32 1, %and
  %div20 = lshr i32 %pin, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %arrayidx6 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 32, i32 %div20
  %0 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx6, align 1
  %2 = trunc i32 %shl to i8
  %3 = xor i8 %2, -1
  %conv9 = and i8 %1, %3
  %conv3 = or i8 %1, %2
  %conv9.sink = select i1 %tobool.not, i8 %conv9, i8 %conv3
  store i8 %conv9.sink, ptr %arrayidx6, align 1
  %add = shl i32 %div20, 8
  %shl.i = add i32 %add, 25600
  %conv.i = zext i8 %conv9.sink to i32
  %conv2.i = or i32 %shl.i, %conv.i
  %4 = trunc i32 %conv2.i to i16
  %conv4.i = or i16 %4, -32768
  %call.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv4.i) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_scratch_gpio_get_dir(ptr noundef %chip, i32 noundef %pin) #0 align 64 {
entry:
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #3
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value.i.i, align 2, !annotation !11
  %1 = trunc i32 %pin to i16
  %2 = shl i16 %1, 5
  %3 = add i16 %2, 25088
  %conv.i.i = and i16 %3, -256
  %call.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge

entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_get_bit.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge

if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_get_bit.exit

mv88e6xxx_g2_scratch_get_bit.exit:                ; preds = %if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge, %entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.end.i.i.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge ], [ %call.i.i, %entry.mv88e6xxx_g2_scratch_get_bit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #3
  %and.i = and i32 %pin, 7
  %6 = and i16 %5, 255
  %conv2.i = zext i16 %6 to i32
  %7 = lshr i32 %conv2.i, %and.i
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mv88e6xxx_g2_scratch_get_bit.exit
  %retval.0 = phi i32 [ %8, %if.end ], [ %retval.0.i.ph.i, %mv88e6xxx_g2_scratch_get_bit.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_scratch_gpio_set_dir(ptr noundef %chip, i32 noundef %pin, i1 noundef zeroext %input) #0 align 64 {
entry:
  %value.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div1.i = lshr i32 %pin, 3
  %add.i = add nuw nsw i32 %div1.i, 98
  %and.i = and i32 %pin, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i) #3
  %0 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value.i.i, align 2, !annotation !11
  %reg.tr.i.i = trunc i32 %add.i to i16
  %conv.i.i = shl i16 %reg.tr.i.i, 8
  %call.i.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge

entry.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge

if.end.i.i.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread.i

mv88e6xxx_g2_scratch_read.exit.thread.i:          ; preds = %if.end.i.i.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge, %entry.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.end.i.i.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge ], [ %call.i.i, %entry.mv88e6xxx_g2_scratch_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #3
  br label %mv88e6xxx_g2_scratch_set_bit.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %value.i.i, align 2
  %conv6.i.i = trunc i16 %2 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i) #3
  %3 = trunc i32 %shl.i to i8
  %4 = xor i8 %3, -1
  %conv9.i = and i8 %conv6.i.i, %4
  %conv5.i = or i8 %conv6.i.i, %3
  %storemerge.i = select i1 %input, i8 %conv5.i, i8 %conv9.i
  %shl.i.i = shl i32 %add.i, 8
  %conv.i2.i = zext i8 %storemerge.i to i32
  %conv2.i.i = or i32 %shl.i.i, %conv.i2.i
  %5 = trunc i32 %conv2.i.i to i16
  %conv4.i.i = or i16 %5, -32768
  %call.i3.i = call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv4.i.i) #3
  br label %mv88e6xxx_g2_scratch_set_bit.exit

mv88e6xxx_g2_scratch_set_bit.exit:                ; preds = %if.end.i, %mv88e6xxx_g2_scratch_read.exit.thread.i
  %retval.0.i = phi i32 [ %call.i3.i, %if.end.i ], [ %retval.0.i.ph.i, %mv88e6xxx_g2_scratch_read.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_scratch_gpio_get_pctl(ptr noundef %chip, i32 noundef %pin, ptr nocapture noundef writeonly %func) #0 align 64 {
entry:
  %value.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #3
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value.i, align 2, !annotation !11
  %1 = trunc i32 %pin to i16
  %2 = shl i16 %1, 7
  %3 = add i16 %2, 26624
  %conv.i = and i16 %3, -256
  %call.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge

entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge

if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread

mv88e6xxx_g2_scratch_read.exit.thread:            ; preds = %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge, %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge ], [ %call.i, %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %value.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #3
  %and = shl i32 %pin, 2
  %6 = and i32 %and, 4
  %shl = shl nuw nsw i32 7, %6
  %7 = and i16 %5, 255
  %conv2 = zext i16 %7 to i32
  %and4 = and i32 %shl, %conv2
  %shr = lshr i32 %and4, %6
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mv88e6xxx_g2_scratch_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i.ph, %mv88e6xxx_g2_scratch_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_g2_scratch_gpio_set_pctl(ptr noundef %chip, i32 noundef %pin, i32 noundef %func) #0 align 64 {
entry:
  %value.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %div20 = lshr i32 %pin, 1
  %add = add nuw i32 %div20, 104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #3
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value.i, align 2, !annotation !11
  %reg.tr.i = trunc i32 %add to i16
  %conv.i = shl i16 %reg.tr.i, 8
  %call.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge

entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge

if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread

mv88e6xxx_g2_scratch_read.exit.thread:            ; preds = %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge, %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge ], [ %call.i, %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %value.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #3
  %and = shl i32 %pin, 2
  %3 = and i32 %and, 4
  %shl = shl nuw nsw i32 7, %3
  %conv2 = zext i16 %2 to i32
  %neg = xor i32 %shl, -1
  %and4 = and i32 %conv2, %neg
  %and6 = and i32 %shl, %func
  %shl7 = shl nuw nsw i32 %and6, %3
  %or = or i32 %and4, %shl7
  %shl.i = shl i32 %add, 8
  %conv.i21 = and i32 %or, 255
  %conv2.i = or i32 %conv.i21, %shl.i
  %4 = trunc i32 %conv2.i to i16
  %conv4.i = or i16 %4, -32768
  %call.i22 = call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv4.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mv88e6xxx_g2_scratch_read.exit.thread
  %retval.0 = phi i32 [ %call.i22, %if.end ], [ %retval.0.i.ph, %mv88e6xxx_g2_scratch_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g2_scratch_gpio_set_smi(ptr noundef %chip, i1 noundef zeroext %external) local_unnamed_addr #0 align 64 {
entry:
  %value.i64 = alloca i16, align 2
  %value.i54 = alloca i16, align 2
  %value.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #3
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value.i, align 2, !annotation !11
  %call.i = tail call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext 29184) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge

entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge

if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit.thread

mv88e6xxx_g2_scratch_read.exit.thread:            ; preds = %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge, %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.end.i.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge ], [ %call.i, %entry.mv88e6xxx_g2_scratch_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %1 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %value.i, align 2
  %conv6.i = trunc i16 %2 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #3
  %3 = and i8 %conv6.i, 3
  %.off = add nsw i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i54) #3
  %4 = ptrtoint ptr %value.i54 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %value.i54, align 2, !annotation !11
  %call.i55 = call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext 28928) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i59, label %if.end8.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge

if.end8.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit63.thread

if.end.i59:                                       ; preds = %if.end8
  %call1.i57 = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i54) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool2.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool2.not.i58, label %if.end12, label %if.end.i59.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge

if.end.i59.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit63.thread

mv88e6xxx_g2_scratch_read.exit63.thread:          ; preds = %if.end.i59.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge, %if.end8.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge
  %retval.0.i62.ph = phi i32 [ %call1.i57, %if.end.i59.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge ], [ %call.i55, %if.end8.mv88e6xxx_g2_scratch_read.exit63.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i54) #3
  br label %cleanup

if.end12:                                         ; preds = %if.end.i59
  %5 = ptrtoint ptr %value.i54 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %value.i54, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i54) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i64) #3
  %7 = ptrtoint ptr %value.i64 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %value.i64, align 2, !annotation !11
  %call.i65 = call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext 512) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %if.end.i69, label %if.end12.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge

if.end12.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit73.thread

if.end.i69:                                       ; preds = %if.end12
  %call1.i67 = call i32 @mv88e6xxx_g2_read(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %value.i64) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool2.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool2.not.i68, label %if.end21, label %if.end.i69.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge

if.end.i69.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge: ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_g2_scratch_read.exit73.thread

mv88e6xxx_g2_scratch_read.exit73.thread:          ; preds = %if.end.i69.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge, %if.end12.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge
  %retval.0.i72.ph = phi i32 [ %call1.i67, %if.end.i69.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge ], [ %call.i65, %if.end12.mv88e6xxx_g2_scratch_read.exit73.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i64) #3
  br label %cleanup

if.end21:                                         ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %value.i64 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %value.i64, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i64) #3
  %10 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool15.not = icmp eq i16 %10, 0
  %spec.select = xor i1 %tobool15.not, %external
  %11 = and i16 %9, 127
  %storemerge = select i1 %spec.select, i16 -32128, i16 -32256
  %conv4.i = or i16 %storemerge, %11
  %call.i74 = call i32 @mv88e6xxx_g2_write(ptr noundef %chip, i32 noundef 26, i16 noundef zeroext %conv4.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %mv88e6xxx_g2_scratch_read.exit73.thread, %mv88e6xxx_g2_scratch_read.exit63.thread, %if.end.cleanup_crit_edge, %mv88e6xxx_g2_scratch_read.exit.thread
  %retval.0 = phi i32 [ %call.i74, %if.end21 ], [ -16, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %mv88e6xxx_g2_scratch_read.exit.thread ], [ %retval.0.i62.ph, %mv88e6xxx_g2_scratch_read.exit63.thread ], [ %retval.0.i72.ph, %mv88e6xxx_g2_scratch_read.exit73.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @mv88e6352_gpio_ops, !1, !"mv88e6352_gpio_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/global2_scratch.c", i32 233, i32 33}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
