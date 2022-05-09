; ModuleID = '/llk/IR_all_yes/drivers/media/pci/pt3/pt3_dma.c_pt.bc'
source_filename = "../drivers/media/pci/pt3/pt3_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pt3_adapter = type { %struct.dvb_adapter, i32, %struct.dvb_demux, %struct.dmxdev, ptr, ptr, ptr, ptr, i32, i8, i8, [16 x %struct.dma_data_buffer], i32, i32, i32, i32, [4 x %struct.xfer_desc_buffer], i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dma_data_buffer = type { i32, ptr }
%struct.xfer_desc_buffer = type { i32, ptr }
%struct.pt3_board = type { ptr, [2 x ptr], %struct.mutex, i32, i32, i32, %struct.i2c_adapter, ptr, [4 x ptr] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.xfer_desc = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pt3_stop_dma(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %adap_idx = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 1
  %2 = ptrtoint ptr %adap_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adap_idx, align 8
  %idx.off.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx.off.i)
  %switch.i = icmp ult i32 %idx.off.i, 2
  %sub.i = sub i32 3, %3
  %spec.select.i = select i1 %switch.i, i32 %sub.i, i32 %3
  %mul.i = mul i32 %spec.select.i, 24
  %add.i = add i32 %mul.i, 64
  %regs = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add.i
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 %add.i
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 33554432) #5, !srcloc !12
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 %add.i
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 50) #5
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr9.1 = getelementptr i8, ptr %15, i32 %add.i
  %add.ptr10.1 = getelementptr i8, ptr %add.ptr9.1, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.1) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not.1 = icmp eq i32 %17, 0
  br i1 %tobool13.not.1, label %if.end15.cleanup_crit_edge, label %if.end15.1

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.1:                                       ; preds = %if.end15
  tail call void @msleep(i32 noundef 50) #5
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr9.2 = getelementptr i8, ptr %19, i32 %add.i
  %add.ptr10.2 = getelementptr i8, ptr %add.ptr9.2, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.2) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool13.not.2 = icmp eq i32 %21, 0
  br i1 %tobool13.not.2, label %if.end15.1.cleanup_crit_edge, label %if.end15.2

if.end15.1.cleanup_crit_edge:                     ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.2:                                       ; preds = %if.end15.1
  tail call void @msleep(i32 noundef 50) #5
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr9.3 = getelementptr i8, ptr %23, i32 %add.i
  %add.ptr10.3 = getelementptr i8, ptr %add.ptr9.3, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.3) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not.3 = icmp eq i32 %25, 0
  br i1 %tobool13.not.3, label %if.end15.2.cleanup_crit_edge, label %if.end15.3

if.end15.2.cleanup_crit_edge:                     ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.3:                                       ; preds = %if.end15.2
  tail call void @msleep(i32 noundef 50) #5
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr9.4 = getelementptr i8, ptr %27, i32 %add.i
  %add.ptr10.4 = getelementptr i8, ptr %add.ptr9.4, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.4) #5, !srcloc !9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !10
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not.4 = icmp eq i32 %29, 0
  br i1 %tobool13.not.4, label %if.end15.3.cleanup_crit_edge, label %if.end15.4

if.end15.3.cleanup_crit_edge:                     ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.4:                                       ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 50) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15.4, %if.end15.3.cleanup_crit_edge, %if.end15.2.cleanup_crit_edge, %if.end15.1.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end15.1.cleanup_crit_edge ], [ 0, %if.end15.2.cleanup_crit_edge ], [ 0, %if.end15.3.cleanup_crit_edge ], [ -5, %if.end15.4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pt3_start_dma(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %adap_idx = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 1
  %2 = ptrtoint ptr %adap_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adap_idx, align 8
  %idx.off.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx.off.i)
  %switch.i = icmp ult i32 %idx.off.i, 2
  %sub.i = sub i32 3, %3
  %spec.select.i = select i1 %switch.i, i32 %sub.i, i32 %3
  %mul.i = mul i32 %spec.select.i, 24
  %add.i = add i32 %mul.i, 64
  %regs = getelementptr inbounds %struct.pt3_board, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add.i
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 33554432) #5, !srcloc !12
  %desc_buf = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 16
  %6 = ptrtoint ptr %desc_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_buf, align 8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #5, !srcloc !12
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 %add.i
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #5, !srcloc !12
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %14, i32 %add.i
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 16777216) #5, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pt3_proc_dma(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_idx = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %buf_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_idx, align 8
  %buf_ofs = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 13
  %2 = ptrtoint ptr %buf_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_ofs, align 4
  %data = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %1, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx1 = getelementptr i8, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %7)
  %cmp = icmp eq i8 %7, 116
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %num_bufs.i = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 14
  %num_discard = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 15
  %demux27 = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %while.cond.preheader
  %idx.0 = phi i32 [ %idx.1, %if.end29 ], [ %1, %while.cond.preheader ]
  %ofs.0 = phi i32 [ %ofs.1, %if.end29 ], [ %3, %while.cond.preheader ]
  %add.i = add i32 %ofs.0, 24064
  call void @__sanitizer_cov_trace_const_cmp4(i32 192511, i32 %add.i)
  %cmp.i = icmp sgt i32 %add.i, 192511
  br i1 %cmp.i, label %if.then.i, label %while.cond.next_unit.exit_crit_edge

while.cond.next_unit.exit_crit_edge:              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %next_unit.exit

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %ofs.0, -168448
  %inc.i = add i32 %idx.0, 1
  %8 = ptrtoint ptr %num_bufs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_bufs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %cmp1.i = icmp eq i32 %inc.i, %9
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %inc.i
  br label %next_unit.exit

next_unit.exit:                                   ; preds = %if.then.i, %while.cond.next_unit.exit_crit_edge
  %idx.1 = phi i32 [ %spec.store.select.i, %if.then.i ], [ %idx.0, %while.cond.next_unit.exit_crit_edge ]
  %ofs.1 = phi i32 [ %sub.i, %if.then.i ], [ %add.i, %while.cond.next_unit.exit_crit_edge ]
  %data.i = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %idx.1, i32 1
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %11, i32 %ofs.1
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 116, i8 %13)
  %cmp4.not = icmp eq i8 %13, 116
  br i1 %cmp4.not, label %next_unit.exit.cleanup_crit_edge, label %while.body

next_unit.exit.cleanup_crit_edge:                 ; preds = %next_unit.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %next_unit.exit
  %14 = ptrtoint ptr %buf_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf_idx, align 8
  %data9 = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %15, i32 1
  %16 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data9, align 4
  %18 = ptrtoint ptr %buf_ofs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_ofs, align 4
  %arrayidx11 = getelementptr i8, ptr %17, i32 %19
  %20 = ptrtoint ptr %num_discard to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_discard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12 = icmp sgt i32 %21, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add nsw i32 %21, -1
  %22 = ptrtoint ptr %num_discard to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dec, ptr %num_discard, align 4
  br label %if.end29

if.else:                                          ; preds = %while.body
  %add = add i32 %19, 24064
  call void @__sanitizer_cov_trace_const_cmp4(i32 192512, i32 %add)
  %cmp17 = icmp sgt i32 %add, 192512
  br i1 %cmp17, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nsw i32 192512, %19
  %div = sdiv i32 %sub, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux27, ptr noundef %arrayidx11, i32 noundef %div) #5
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %div25 = sdiv i32 %ofs.1, 188
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux27, ptr noundef %24, i32 noundef %div25) #5
  br label %if.end29

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dvb_dmx_swfilter_packets(ptr noundef %demux27, ptr noundef %arrayidx11, i32 noundef 128) #5
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then19, %if.then14
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 116, ptr %arrayidx11, align 1
  %26 = ptrtoint ptr %buf_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %idx.1, ptr %buf_idx, align 8
  %27 = ptrtoint ptr %buf_ofs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ofs.1, ptr %buf_ofs, align 4
  br label %while.cond

cleanup:                                          ; preds = %next_unit.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pt3_init_dmabuf(ptr nocapture noundef %adap) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bufs = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 14
  %0 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %data = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %p.018 = phi ptr [ %p.1, %if.end.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %ofs.017 = phi i32 [ %ofs.1, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %idx.016 = phi i32 [ %idx.1, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %arrayidx1 = getelementptr i8, ptr %p.018, i32 %ofs.017
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 116, ptr %arrayidx1, align 1
  %add = add i32 %ofs.017, 24064
  call void @__sanitizer_cov_trace_const_cmp4(i32 192511, i32 %add)
  %cmp2 = icmp sgt i32 %add, 192511
  br i1 %cmp2, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %ofs.017, -168448
  %inc = add nsw i32 %idx.016, 1
  %data5 = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %inc, i32 1
  %5 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %idx.1 = phi i32 [ %inc, %if.then ], [ %idx.016, %while.body.if.end_crit_edge ]
  %ofs.1 = phi i32 [ %sub, %if.then ], [ %add, %while.body.if.end_crit_edge ]
  %p.1 = phi ptr [ %6, %if.then ], [ %p.018, %while.body.if.end_crit_edge ]
  %7 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_bufs, align 8
  %cmp = icmp slt i32 %idx.1, %8
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %buf_idx = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 12
  %9 = ptrtoint ptr %buf_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %buf_idx, align 8
  %buf_ofs = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 13
  %10 = ptrtoint ptr %buf_ofs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buf_ofs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pt3_free_dmabuf(ptr nocapture noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %num_bufs = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 14
  %2 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp33 = icmp sgt i32 %3, 0
  br i1 %cmp33, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %arrayidx = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %i.034
  %data = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %i.034, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 192512, ptr noundef %7, i32 noundef %9, i32 noundef 0) #5
  %inc = add nuw nsw i32 %i.034, 1
  %10 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_bufs, align 8
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %num_bufs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %num_bufs, align 8
  %num_desc_bufs = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 17
  %13 = ptrtoint ptr %num_desc_bufs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_desc_bufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp535 = icmp sgt i32 %14, 0
  br i1 %cmp535, label %for.end.for.body6_crit_edge, label %for.end.for.end15_crit_edge

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end15

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %i.136 = phi i32 [ %inc14, %for.body6.for.body6_crit_edge ], [ 0, %for.end.for.body6_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %arrayidx9 = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 16, i32 %i.136
  %descs = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 16, i32 %i.136, i32 1
  %17 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %descs, align 4
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx9, align 8
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef 4096, ptr noundef %18, i32 noundef %20, i32 noundef 0) #5
  %inc14 = add nuw nsw i32 %i.136, 1
  %21 = ptrtoint ptr %num_desc_bufs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_desc_bufs, align 8
  %cmp5 = icmp slt i32 %inc14, %22
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end15_crit_edge

for.body6.for.end15_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end15

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.end15:                                        ; preds = %for.body6.for.end15_crit_edge, %for.end.for.end15_crit_edge
  %23 = ptrtoint ptr %num_desc_bufs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %num_desc_bufs, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pt3_alloc_dmabuf(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  %desc_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc_addr) #5
  %0 = ptrtoint ptr %desc_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc_addr, align 4, !annotation !13
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %adap, i32 0, i32 5
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %num_bufs = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 14
  %3 = ptrtoint ptr %num_bufs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_bufs, align 8
  %num_desc_bufs1 = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 17
  %4 = ptrtoint ptr %num_desc_bufs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_desc_bufs1, align 8
  %num_bufs2 = getelementptr inbounds %struct.pt3_board, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %num_bufs2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_bufs2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp141 = icmp sgt i32 %6, 0
  br i1 %cmp141, label %entry.for.body_crit_edge, label %for.endthread-pre-split

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0142 = phi i32 [ %inc7, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %arrayidx = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %i.0142
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 192512, ptr noundef %arrayidx, i32 noundef 3264, i32 noundef 0) #5
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %for.body.failed_crit_edge, label %if.end

for.body.failed_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %failed

if.end:                                           ; preds = %for.body
  %data = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %i.0142, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %data, align 4
  %10 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_bufs, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %num_bufs, align 8
  %inc7 = add nuw nsw i32 %i.0142, 1
  %12 = ptrtoint ptr %num_bufs2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_bufs2, align 8
  %cmp = icmp slt i32 %inc7, %13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.endthread-pre-split:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %num_bufs, align 8
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end.for.end_crit_edge
  %15 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %inc, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.i = icmp sgt i32 %15, 0
  br i1 %cmp15.i, label %while.body.preheader.i, label %for.end.pt3_init_dmabuf.exit_crit_edge

for.end.pt3_init_dmabuf.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pt3_init_dmabuf.exit

while.body.preheader.i:                           ; preds = %for.end
  %data.i = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.preheader.i
  %p.018.i = phi ptr [ %p.1.i, %if.end.i.while.body.i_crit_edge ], [ %17, %while.body.preheader.i ]
  %ofs.017.i = phi i32 [ %ofs.1.i, %if.end.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %idx.016.i = phi i32 [ %idx.1.i, %if.end.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %arrayidx1.i = getelementptr i8, ptr %p.018.i, i32 %ofs.017.i
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 116, ptr %arrayidx1.i, align 1
  %add.i = add i32 %ofs.017.i, 24064
  call void @__sanitizer_cov_trace_const_cmp4(i32 192511, i32 %add.i)
  %cmp2.i = icmp sgt i32 %add.i, 192511
  br i1 %cmp2.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %ofs.017.i, -168448
  %inc.i = add nsw i32 %idx.016.i, 1
  %data5.i = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %inc.i, i32 1
  %19 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data5.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %idx.1.i = phi i32 [ %inc.i, %if.then.i ], [ %idx.016.i, %while.body.i.if.end.i_crit_edge ]
  %ofs.1.i = phi i32 [ %sub.i, %if.then.i ], [ %add.i, %while.body.i.if.end.i_crit_edge ]
  %p.1.i = phi ptr [ %20, %if.then.i ], [ %p.018.i, %while.body.i.if.end.i_crit_edge ]
  %21 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_bufs, align 8
  %cmp.i = icmp slt i32 %idx.1.i, %22
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.pt3_init_dmabuf.exit_crit_edge

if.end.i.pt3_init_dmabuf.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pt3_init_dmabuf.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

pt3_init_dmabuf.exit:                             ; preds = %if.end.i.pt3_init_dmabuf.exit_crit_edge, %for.end.pt3_init_dmabuf.exit_crit_edge
  %buf_idx.i = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 12
  %23 = ptrtoint ptr %buf_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %buf_idx.i, align 8
  %buf_ofs.i = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 13
  %24 = ptrtoint ptr %buf_ofs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %buf_ofs.i, align 4
  %25 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_bufs, align 8
  %mul = mul i32 %26, 47
  %sub = add i32 %mul, 203
  call void @__sanitizer_cov_trace_const_cmp4(i32 204, i32 %sub)
  %27 = icmp ult i32 %sub, 204
  br i1 %27, label %pt3_init_dmabuf.exit.cleanup_crit_edge, label %for.body11.preheader

pt3_init_dmabuf.exit.cleanup_crit_edge:           ; preds = %pt3_init_dmabuf.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.preheader:                             ; preds = %pt3_init_dmabuf.exit
  %div = udiv i32 %sub, 204
  br label %for.body11

for.body11:                                       ; preds = %for.inc74.for.body11_crit_edge, %for.body11.preheader
  %ofs.0150 = phi i32 [ %ofs.2, %for.inc74.for.body11_crit_edge ], [ 0, %for.body11.preheader ]
  %idx.0149 = phi i32 [ %idx.2, %for.inc74.for.body11_crit_edge ], [ 0, %for.body11.preheader ]
  %i.1147 = phi i32 [ %inc75, %for.inc74.for.body11_crit_edge ], [ 0, %for.body11.preheader ]
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call.i133 = call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef 4096, ptr noundef nonnull %desc_addr, i32 noundef 3264, i32 noundef 0) #5
  %cmp15 = icmp eq ptr %call.i133, null
  br i1 %cmp15, label %for.body11.failed_crit_edge, label %if.end17

for.body11.failed_crit_edge:                      ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %failed

if.end17:                                         ; preds = %for.body11
  %30 = ptrtoint ptr %num_desc_bufs1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_desc_bufs1, align 8
  %inc19 = add i32 %31, 1
  store i32 %inc19, ptr %num_desc_bufs1, align 8
  %arrayidx20 = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 16, i32 %i.1147
  %descs = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 16, i32 %i.1147, i32 1
  %32 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i133, ptr %descs, align 4
  %33 = ptrtoint ptr %desc_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %desc_addr, align 4
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1147)
  %cmp24.not = icmp eq i32 %i.1147, 0
  br i1 %cmp24.not, label %if.end17.for.body35.preheader_crit_edge, label %if.then25

if.end17.for.body35.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35.preheader

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %sub27 = add nsw i32 %i.1147, -1
  %descs29 = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 16, i32 %sub27, i32 1
  %36 = ptrtoint ptr %descs29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %descs29, align 4
  %next_l = getelementptr %struct.xfer_desc, ptr %37, i32 203, i32 3
  %38 = ptrtoint ptr %next_l to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %34, ptr %next_l, align 4
  %next_h = getelementptr %struct.xfer_desc, ptr %37, i32 203, i32 4
  %39 = ptrtoint ptr %next_h to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %next_h, align 4
  br label %for.body35.preheader

for.body35.preheader:                             ; preds = %if.then25, %if.end17.for.body35.preheader_crit_edge
  br label %for.body35

for.body35:                                       ; preds = %for.inc71.for.body35_crit_edge, %for.body35.preheader
  %ofs.1145 = phi i32 [ %ofs.2, %for.inc71.for.body35_crit_edge ], [ %ofs.0150, %for.body35.preheader ]
  %idx.1144 = phi i32 [ %idx.2, %for.inc71.for.body35_crit_edge ], [ %idx.0149, %for.body35.preheader ]
  %j.0143 = phi i32 [ %inc72, %for.inc71.for.body35_crit_edge ], [ 0, %for.body35.preheader ]
  %arrayidx37 = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %idx.1144
  %40 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx37, align 8
  %add39 = add i32 %41, %ofs.1145
  %42 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %descs, align 4
  %arrayidx43 = getelementptr %struct.xfer_desc, ptr %43, i32 %j.0143
  %44 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add39, ptr %arrayidx43, align 4
  %addr_h = getelementptr %struct.xfer_desc, ptr %43, i32 %j.0143, i32 1
  %45 = ptrtoint ptr %addr_h to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %addr_h, align 4
  %size = getelementptr %struct.xfer_desc, ptr %43, i32 %j.0143, i32 2
  %46 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4096, ptr %size, align 4
  %47 = ptrtoint ptr %desc_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %desc_addr, align 4
  %add47 = add i32 %48, 20
  store i32 %add47, ptr %desc_addr, align 4
  %next_l49 = getelementptr %struct.xfer_desc, ptr %43, i32 %j.0143, i32 3
  %49 = ptrtoint ptr %next_l49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add47, ptr %next_l49, align 4
  %next_h52 = getelementptr %struct.xfer_desc, ptr %43, i32 %j.0143, i32 4
  %50 = ptrtoint ptr %next_h52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %next_h52, align 4
  %add53 = add i32 %ofs.1145, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 192511, i32 %add53)
  %cmp54 = icmp sgt i32 %add53, 192511
  br i1 %cmp54, label %if.then55, label %for.body35.for.inc71_crit_edge

for.body35.for.inc71_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

if.then55:                                        ; preds = %for.body35
  %sub56 = add nsw i32 %ofs.1145, -188416
  %inc57 = add i32 %idx.1144, 1
  %51 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_bufs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc57, i32 %52)
  %cmp59.not = icmp slt i32 %inc57, %52
  br i1 %cmp59.not, label %if.then55.for.inc71_crit_edge, label %if.then60

if.then55.for.inc71_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

if.then60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  %desc_buf.le = getelementptr inbounds %struct.pt3_adapter, ptr %adap, i32 0, i32 16
  %53 = ptrtoint ptr %desc_buf.le to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %desc_buf.le, align 8
  %55 = ptrtoint ptr %next_l49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %next_l49, align 4
  %56 = ptrtoint ptr %next_h52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %next_h52, align 4
  br label %cleanup

for.inc71:                                        ; preds = %if.then55.for.inc71_crit_edge, %for.body35.for.inc71_crit_edge
  %idx.2 = phi i32 [ %inc57, %if.then55.for.inc71_crit_edge ], [ %idx.1144, %for.body35.for.inc71_crit_edge ]
  %ofs.2 = phi i32 [ %sub56, %if.then55.for.inc71_crit_edge ], [ %add53, %for.body35.for.inc71_crit_edge ]
  %inc72 = add nuw nsw i32 %j.0143, 1
  %exitcond.not = icmp eq i32 %inc72, 204
  br i1 %exitcond.not, label %for.inc74, label %for.inc71.for.body35_crit_edge

for.inc71.for.body35_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35

for.inc74:                                        ; preds = %for.inc71
  %inc75 = add nuw nsw i32 %i.1147, 1
  %exitcond154.not = icmp eq i32 %inc75, %div
  br i1 %exitcond154.not, label %for.inc74.cleanup_crit_edge, label %for.inc74.for.body11_crit_edge

for.inc74.for.body11_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.inc74.cleanup_crit_edge:                      ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

failed:                                           ; preds = %for.body11.failed_crit_edge, %for.body.failed_crit_edge
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 8
  %59 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_bufs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp33.i = icmp sgt i32 %60, 0
  br i1 %cmp33.i, label %failed.for.body.i_crit_edge, label %failed.for.end.i_crit_edge

failed.for.end.i_crit_edge:                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

failed.for.body.i_crit_edge:                      ; preds = %failed
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %failed.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i136, %for.body.i.for.body.i_crit_edge ], [ 0, %failed.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %arrayidx.i = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %i.034.i
  %data.i135 = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 11, i32 %i.034.i, i32 1
  %63 = ptrtoint ptr %data.i135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i135, align 4
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 8
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 192512, ptr noundef %64, i32 noundef %66, i32 noundef 0) #5
  %inc.i136 = add nuw nsw i32 %i.034.i, 1
  %67 = ptrtoint ptr %num_bufs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_bufs, align 8
  %cmp.i137 = icmp slt i32 %inc.i136, %68
  br i1 %cmp.i137, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %failed.for.end.i_crit_edge
  %69 = ptrtoint ptr %num_bufs to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %num_bufs, align 8
  %70 = ptrtoint ptr %num_desc_bufs1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_desc_bufs1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp535.i = icmp sgt i32 %71, 0
  br i1 %cmp535.i, label %for.end.i.for.body6.i_crit_edge, label %for.end.i.pt3_free_dmabuf.exit_crit_edge

for.end.i.pt3_free_dmabuf.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pt3_free_dmabuf.exit

for.end.i.for.body6.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.end.i.for.body6.i_crit_edge
  %i.136.i = phi i32 [ %inc14.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.end.i.for.body6.i_crit_edge ]
  %72 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %58, align 8
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %arrayidx9.i = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 16, i32 %i.136.i
  %descs.i = getelementptr %struct.pt3_adapter, ptr %adap, i32 0, i32 16, i32 %i.136.i, i32 1
  %74 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %descs.i, align 4
  %76 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx9.i, align 8
  call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 4096, ptr noundef %75, i32 noundef %77, i32 noundef 0) #5
  %inc14.i = add nuw nsw i32 %i.136.i, 1
  %78 = ptrtoint ptr %num_desc_bufs1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_desc_bufs1, align 8
  %cmp5.i = icmp slt i32 %inc14.i, %79
  br i1 %cmp5.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.pt3_free_dmabuf.exit_crit_edge

for.body6.i.pt3_free_dmabuf.exit_crit_edge:       ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pt3_free_dmabuf.exit

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6.i

pt3_free_dmabuf.exit:                             ; preds = %for.body6.i.pt3_free_dmabuf.exit_crit_edge, %for.end.i.pt3_free_dmabuf.exit_crit_edge
  %80 = ptrtoint ptr %num_desc_bufs1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %num_desc_bufs1, align 8
  br label %cleanup

cleanup:                                          ; preds = %pt3_free_dmabuf.exit, %for.inc74.cleanup_crit_edge, %if.then60, %pt3_init_dmabuf.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %pt3_free_dmabuf.exit ], [ 0, %if.then60 ], [ 0, %pt3_init_dmabuf.exit.cleanup_crit_edge ], [ 0, %for.inc74.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc_addr) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

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
!9 = !{i64 6220196}
!10 = !{i64 2153760545}
!11 = !{i64 2153761900}
!12 = !{i64 6219778}
!13 = !{!"auto-init"}
