; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/nark.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/nark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.85, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.90, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.90 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.rx_registers = type { %struct.rx_mu_registers, [2 x i32], %struct.rx_inbound }
%struct.rx_mu_registers = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_inbound = type { [8 x i32] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_nark_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_ioremap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 8
  %0 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @aac_nark_ioremap, ptr %adapter_ioremap, align 4
  %adapter_comm = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 15
  %1 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @aac_rx_select_comm, ptr %adapter_comm, align 4
  %call = tail call i32 @_aac_rx_init(ptr noundef %dev) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_nark_ioremap(ptr nocapture noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %1) #2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %regs, align 8
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  tail call void @iounmap(ptr noundef %4) #2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %base, align 8
  br label %return

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %7, i32 0, i32 47, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %base_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %base_start to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %base_start, align 8
  %resource4 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 47
  %11 = ptrtoint ptr %resource4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resource4, align 8
  %call = tail call ptr @ioremap(i32 noundef %12, i32 noundef 80) #2
  %regs13 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %13 = ptrtoint ptr %regs13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %regs13, align 8
  %base14 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %14 = ptrtoint ptr %base14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %base14, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end18

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end18:                                         ; preds = %if.end
  %15 = ptrtoint ptr %base_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_start, align 8
  %call20 = tail call ptr @ioremap(i32 noundef %16, i32 noundef %size) #2
  %17 = ptrtoint ptr %base14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call20, ptr %base14, align 8
  %cmp23 = icmp eq ptr %call20, null
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #4
  %18 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs13, align 8
  tail call void @iounmap(ptr noundef %19) #2
  %20 = ptrtoint ptr %regs13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %regs13, align 8
  br label %return

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #4
  %IndexRegs = getelementptr inbounds %struct.rx_registers, ptr %call20, i32 0, i32 2
  %IndexRegs30 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %21 = ptrtoint ptr %IndexRegs30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %IndexRegs, ptr %IndexRegs30, align 8
  br label %return

return:                                           ; preds = %if.end28, %if.then25, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then25 ], [ 0, %if.end28 ], [ 0, %if.then ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_rx_select_comm(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_aac_rx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
