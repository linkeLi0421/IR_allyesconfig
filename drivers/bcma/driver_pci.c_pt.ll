; ModuleID = '/llk/IR_all_yes/drivers/bcma/driver_pci.c_pt.bc'
source_filename = "../drivers/bcma/driver_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bcma_core_pci_power_save\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_pci_power_save\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_pci_power_save\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_pci_power_save:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_pci_power_save\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_pci_power_save:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.73, %struct.anon.74, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.73 = type { i8, i8, i8, i8 }
%struct.anon.74 = type { %struct.anon.75, %struct.anon.76 }
%struct.anon.75 = type { i8, i8, i8, i8, i8 }
%struct.anon.76 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__kstrtab_bcma_core_pci_power_save = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_pci_power_save = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_pci_power_save = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_pci_power_save to i32), ptr @__kstrtab_bcma_core_pci_power_save, ptr @__kstrtabns_bcma_core_pci_power_save }, section "___ksymtab_gpl+bcma_core_pci_power_save", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_bcma_core_pci_power_save], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_pcie_read(ptr nocapture noundef readonly %pc, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 304, i32 noundef %address) #2
  %8 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i6 = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i6, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %15(ptr noundef %9, i16 noundef zeroext 304) #2
  %16 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ops.i7 = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i7, align 4
  %read32.i8 = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i8, align 4
  %call.i9 = tail call i32 %23(ptr noundef %17, i16 noundef zeroext 308) #2
  ret i32 %call.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_early_init(ptr nocapture noundef %pc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %early_setup_done = getelementptr inbounds %struct.bcma_drv_pci, ptr %pc, i32 0, i32 1
  %0 = ptrtoint ptr %early_setup_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %early_setup_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  %bf.clear = and i8 %bf.load, -33
  %1 = ptrtoint ptr %early_setup_done to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.clear, ptr %early_setup_done, align 4
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pc, align 4
  %core_index2.i = getelementptr inbounds %struct.bcma_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %core_index2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %core_index2.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %11(ptr noundef %3, i16 noundef zeroext 2048) #2
  %conv.i.i = zext i16 %call.i.i to i32
  %and.i = lshr i32 %conv.i.i, 12
  %conv7.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv7.i)
  %cmp.not.i = icmp eq i32 %and.i, %conv7.i
  br i1 %cmp.not.i, label %if.end.bcma_core_pci_fixcfg.exit_crit_edge, label %if.then.i

if.end.bcma_core_pci_fixcfg.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_core_pci_fixcfg.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %shl.i = shl nuw nsw i32 %conv7.i, 12
  %and11.i = and i32 %conv.i.i, 4095
  %12 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pc, align 4
  %conv15.i = or i32 %and11.i, %shl.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ops.i22.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i22.i, align 4
  %write16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i, align 4
  %conv.i23.i = trunc i32 %conv15.i to i16
  tail call void %19(ptr noundef %13, i16 noundef zeroext 2048, i16 noundef zeroext %conv.i23.i) #2
  br label %bcma_core_pci_fixcfg.exit

bcma_core_pci_fixcfg.exit:                        ; preds = %if.then.i, %if.end.bcma_core_pci_fixcfg.exit_crit_edge
  %20 = ptrtoint ptr %early_setup_done to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load10 = load i8, ptr %early_setup_done, align 4
  %bf.set12 = or i8 %bf.load10, -128
  store i8 %bf.set12, ptr %early_setup_done, align 4
  br label %return

return:                                           ; preds = %bcma_core_pci_fixcfg.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_init(ptr nocapture noundef %pc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_done = getelementptr inbounds %struct.bcma_drv_pci, ptr %pc, i32 0, i32 1
  %0 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %setup_done, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not.i = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end.bcma_core_pci_early_init.exit_crit_edge

if.end.bcma_core_pci_early_init.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_core_pci_early_init.exit

if.end.i:                                         ; preds = %if.end
  %bf.clear.i = and i8 %bf.load, -33
  %2 = ptrtoint ptr %setup_done to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.clear.i, ptr %setup_done, align 4
  %3 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pc, align 4
  %core_index2.i.i = getelementptr inbounds %struct.bcma_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %core_index2.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %core_index2.i.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i.i, align 4
  %read16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %12(ptr noundef %4, i16 noundef zeroext 2048) #2
  %conv.i.i.i = zext i16 %call.i.i.i to i32
  %and.i.i = lshr i32 %conv.i.i.i, 12
  %conv7.i.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %conv7.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %conv7.i.i
  br i1 %cmp.not.i.i, label %if.end.i.bcma_core_pci_fixcfg.exit.i_crit_edge, label %if.then.i.i

if.end.i.bcma_core_pci_fixcfg.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_core_pci_fixcfg.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %shl.i.i = shl nuw nsw i32 %conv7.i.i, 12
  %and11.i.i = and i32 %conv.i.i.i, 4095
  %13 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pc, align 4
  %conv15.i.i = or i32 %and11.i.i, %shl.i.i
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %ops.i22.i.i = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i22.i.i, align 4
  %write16.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write16.i.i.i, align 4
  %conv.i23.i.i = trunc i32 %conv15.i.i to i16
  tail call void %20(ptr noundef %14, i16 noundef zeroext 2048, i16 noundef zeroext %conv.i23.i.i) #2
  br label %bcma_core_pci_fixcfg.exit.i

bcma_core_pci_fixcfg.exit.i:                      ; preds = %if.then.i.i, %if.end.i.bcma_core_pci_fixcfg.exit.i_crit_edge
  %21 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load10.i = load i8, ptr %setup_done, align 4
  %bf.set12.i = or i8 %bf.load10.i, -128
  store i8 %bf.set12.i, ptr %setup_done, align 4
  br label %bcma_core_pci_early_init.exit

bcma_core_pci_early_init.exit:                    ; preds = %bcma_core_pci_fixcfg.exit.i, %if.end.bcma_core_pci_early_init.exit_crit_edge
  %22 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load1 = load i8, ptr %setup_done, align 4
  %23 = and i8 %bf.load1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not = icmp eq i8 %23, 0
  br i1 %tobool4.not, label %if.else, label %bcma_core_pci_early_init.exit.if.end6_crit_edge

bcma_core_pci_early_init.exit.if.end6_crit_edge:  ; preds = %bcma_core_pci_early_init.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.else:                                          ; preds = %bcma_core_pci_early_init.exit
  %24 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pc, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %ops.i.i.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i.i.i.i, align 4
  %write32.i.i.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %31(ptr noundef %25, i16 noundef zeroext 304, i32 noundef 516) #2
  %32 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pc, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %ops.i6.i.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ops.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i6.i.i.i.i, align 4
  %read32.i.i.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %39(ptr noundef %33, i16 noundef zeroext 304) #2
  %40 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pc, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %ops.i7.i.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i7.i.i.i.i, align 4
  %read32.i8.i.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read32.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i8.i.i.i.i, align 4
  %call.i9.i.i.i.i = tail call i32 %47(ptr noundef %41, i16 noundef zeroext 308) #2
  %and.i.i.i = and i32 %call.i9.i.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %conv.i.i = select i1 %tobool.not.i.i.i, i16 128, i16 192
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %pc, i16 noundef zeroext 31, i8 noundef zeroext 1, i16 noundef zeroext %conv.i.i) #2
  %call1.i.i = tail call fastcc zeroext i16 @bcma_pcie_mdio_read(ptr noundef %pc, i16 noundef zeroext 29, i8 noundef zeroext 1) #2
  %48 = and i16 %call1.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i.i, label %if.else.bcma_pcicore_serdes_workaround.exit.i_crit_edge, label %if.then.i.i11

if.else.bcma_pcicore_serdes_workaround.exit.i_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_pcicore_serdes_workaround.exit.i

if.then.i.i11:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %and4.i.i = and i16 %call1.i.i, -16385
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %pc, i16 noundef zeroext 29, i8 noundef zeroext 1, i16 noundef zeroext %and4.i.i) #2
  br label %bcma_pcicore_serdes_workaround.exit.i

bcma_pcicore_serdes_workaround.exit.i:            ; preds = %if.then.i.i11, %if.else.bcma_pcicore_serdes_workaround.exit.i_crit_edge
  %49 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pc, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %ops.i.i.i12 = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ops.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i.i12, align 4
  %read16.i.i.i13 = getelementptr inbounds %struct.bcma_host_ops, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %read16.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read16.i.i.i13, align 4
  %call.i.i.i14 = tail call zeroext i16 %56(ptr noundef %50, i16 noundef zeroext 2058) #2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i14)
  %tobool.not.i2.i = icmp sgt i16 %call.i.i.i14, -1
  br i1 %tobool.not.i2.i, label %if.then.i3.i, label %bcma_pcicore_serdes_workaround.exit.i.if.end6_crit_edge

bcma_pcicore_serdes_workaround.exit.i.if.end6_crit_edge: ; preds = %bcma_pcicore_serdes_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end6

if.then.i3.i:                                     ; preds = %bcma_pcicore_serdes_workaround.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %57 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pc, align 4
  %conv7.i.i15 = or i16 %call.i.i.i14, -32768
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %ops.i12.i.i = getelementptr inbounds %struct.bcma_bus, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %ops.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i12.i.i, align 4
  %write16.i.i.i16 = getelementptr inbounds %struct.bcma_host_ops, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %write16.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write16.i.i.i16, align 4
  tail call void %64(ptr noundef %58, i16 noundef zeroext 2058, i16 noundef zeroext %conv7.i.i15) #2
  br label %if.end6

if.end6:                                          ; preds = %if.then.i3.i, %bcma_pcicore_serdes_workaround.exit.i.if.end6_crit_edge, %bcma_core_pci_early_init.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_power_save(ptr nocapture noundef readonly %bus, i1 noundef zeroext %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_pci = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 14
  %2 = ptrtoint ptr %drv_pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_pci, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 4
  %6 = add i8 %5, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %7 = icmp ult i8 %6, 6
  br i1 %7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv11 = select i1 %up, i16 116, i16 124
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %8 = add i8 %5, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %if.then26, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %conv30 = select i1 %up, i16 117, i16 125
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then26, %if.then9
  %.sink = phi i16 [ 32612, %if.then9 ], [ 32357, %if.then26 ]
  %conv11.sink = phi i16 [ %conv11, %if.then9 ], [ %conv30, %if.then26 ]
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %drv_pci, i16 noundef zeroext 2049, i8 noundef zeroext 23, i16 noundef zeroext %.sink) #2
  %call.i = tail call fastcc zeroext i16 @bcma_pcie_mdio_read(ptr noundef %drv_pci, i16 noundef zeroext 2049, i8 noundef zeroext 23) #2
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %drv_pci, i16 noundef zeroext 2049, i8 noundef zeroext 25, i16 noundef zeroext %conv11.sink) #2
  %call.i47 = tail call fastcc zeroext i16 @bcma_pcie_mdio_read(ptr noundef %drv_pci, i16 noundef zeroext 2049, i8 noundef zeroext 25) #2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_up(ptr nocapture noundef readonly %pc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 304, i32 noundef 296) #2
  %8 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i6.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i6.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %15(ptr noundef %9, i16 noundef zeroext 304) #2
  %16 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ops.i7.i.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i7.i.i, align 4
  %read32.i8.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i8.i.i, align 4
  %call.i9.i.i = tail call i32 %23(ptr noundef %17, i16 noundef zeroext 308) #2
  %w.0.i = or i32 %call.i9.i.i, 16777216
  %24 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pc, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %ops.i.i6.i = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ops.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i6.i, align 4
  %write32.i.i7.i = getelementptr inbounds %struct.bcma_host_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i7.i, align 4
  tail call void %31(ptr noundef %25, i16 noundef zeroext 304, i32 noundef 296) #2
  %32 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pc, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i1.i.i, align 4
  %read32.i.i8.i = getelementptr inbounds %struct.bcma_host_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %read32.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i8.i, align 4
  %call.i.i9.i = tail call i32 %39(ptr noundef %33, i16 noundef zeroext 304) #2
  %40 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pc, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %ops.i2.i.i = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i2.i.i, align 4
  %write32.i3.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %write32.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i3.i.i, align 4
  tail call void %47(ptr noundef %41, i16 noundef zeroext 308, i32 noundef %w.0.i) #2
  %48 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pc, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %ops.i.i10.i = getelementptr inbounds %struct.bcma_bus, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %ops.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i10.i, align 4
  %write32.i.i11.i = getelementptr inbounds %struct.bcma_host_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write32.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i11.i, align 4
  tail call void %55(ptr noundef %49, i16 noundef zeroext 304, i32 noundef 296) #2
  %56 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pc, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %ops.i6.i12.i = getelementptr inbounds %struct.bcma_bus, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %ops.i6.i12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i6.i12.i, align 4
  %read32.i.i13.i = getelementptr inbounds %struct.bcma_host_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read32.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i13.i, align 4
  %call.i.i14.i = tail call i32 %63(ptr noundef %57, i16 noundef zeroext 304) #2
  %64 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pc, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %ops.i7.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %ops.i7.i15.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i7.i15.i, align 4
  %read32.i8.i16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %read32.i8.i16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i8.i16.i, align 4
  %call.i9.i17.i = tail call i32 %71(ptr noundef %65, i16 noundef zeroext 308) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_down(ptr nocapture noundef readonly %pc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 304, i32 noundef 296) #2
  %8 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i6.i.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i6.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %15(ptr noundef %9, i16 noundef zeroext 304) #2
  %16 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ops.i7.i.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i7.i.i, align 4
  %read32.i8.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i8.i.i, align 4
  %call.i9.i.i = tail call i32 %23(ptr noundef %17, i16 noundef zeroext 308) #2
  %and.i = and i32 %call.i9.i.i, -16777217
  %24 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pc, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %ops.i.i6.i = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %ops.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i6.i, align 4
  %write32.i.i7.i = getelementptr inbounds %struct.bcma_host_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %write32.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write32.i.i7.i, align 4
  tail call void %31(ptr noundef %25, i16 noundef zeroext 304, i32 noundef 296) #2
  %32 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pc, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i1.i.i, align 4
  %read32.i.i8.i = getelementptr inbounds %struct.bcma_host_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %read32.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i8.i, align 4
  %call.i.i9.i = tail call i32 %39(ptr noundef %33, i16 noundef zeroext 304) #2
  %40 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pc, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %ops.i2.i.i = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i2.i.i, align 4
  %write32.i3.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %write32.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i3.i.i, align 4
  tail call void %47(ptr noundef %41, i16 noundef zeroext 308, i32 noundef %and.i) #2
  %48 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pc, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %ops.i.i10.i = getelementptr inbounds %struct.bcma_bus, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %ops.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i10.i, align 4
  %write32.i.i11.i = getelementptr inbounds %struct.bcma_host_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write32.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i.i11.i, align 4
  tail call void %55(ptr noundef %49, i16 noundef zeroext 304, i32 noundef 296) #2
  %56 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pc, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %ops.i6.i12.i = getelementptr inbounds %struct.bcma_bus, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %ops.i6.i12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i6.i12.i, align 4
  %read32.i.i13.i = getelementptr inbounds %struct.bcma_host_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read32.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i13.i, align 4
  %call.i.i14.i = tail call i32 %63(ptr noundef %57, i16 noundef zeroext 304) #2
  %64 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pc, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %ops.i7.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %ops.i7.i15.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i7.i15.i, align 4
  %read32.i8.i16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %read32.i8.i16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read32.i8.i16.i, align 4
  %call.i9.i17.i = tail call i32 %71(ptr noundef %65, i16 noundef zeroext 308) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcma_pcie_mdio_write(ptr nocapture noundef readonly %pc, i16 noundef zeroext %device, i8 noundef zeroext %address, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 296, i32 noundef 130) #2
  %8 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %cmp = icmp ugt i8 %11, 9
  %conv.i = zext i16 %device to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %or4.i = or i32 %shl.i, 1350434816
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef %9, i16 noundef zeroext 300, i32 noundef %or4.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.016.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pc, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i15.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %20, i16 noundef zeroext 296) #2
  %and.i = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.bcma_pcie_mdio_set_phy.exit_crit_edge

for.body.i.bcma_pcie_mdio_set_phy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_pcie_mdio_set_phy.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %if.end.i.bcma_pcie_mdio_set_phy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.end.i.bcma_pcie_mdio_set_phy.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_pcie_mdio_set_phy.exit

bcma_pcie_mdio_set_phy.exit:                      ; preds = %if.end.i.bcma_pcie_mdio_set_phy.exit_crit_edge, %for.body.i.bcma_pcie_mdio_set_phy.exit_crit_edge
  %conv3 = zext i8 %address to i32
  %shl = shl nuw nsw i32 %conv3, 18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %shl6 = shl i32 %conv.i, 22
  %conv7 = zext i8 %address to i32
  %shl8 = shl nuw nsw i32 %conv7, 18
  %or9 = or i32 %shl8, %shl6
  br label %if.end

if.end:                                           ; preds = %if.else, %bcma_pcie_mdio_set_phy.exit
  %max_retries.0 = phi i32 [ 200, %bcma_pcie_mdio_set_phy.exit ], [ 10, %if.else ]
  %v.0 = phi i32 [ %shl, %bcma_pcie_mdio_set_phy.exit ], [ %or9, %if.else ]
  %conv13 = zext i16 %data to i32
  %or12 = or i32 %v.0, %conv13
  %or14 = or i32 %or12, 1342308352
  %27 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %ops.i39 = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i39, align 4
  %write32.i40 = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write32.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i40, align 4
  tail call void %34(ptr noundef %28, i16 noundef zeroext 300, i32 noundef %or14) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #2
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %if.end
  %i.044 = phi i32 [ 0, %if.end ], [ %inc, %if.end20.for.body_crit_edge ]
  %36 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pc, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %ops.i41 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i41, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %43(ptr noundef %37, i16 noundef zeroext 296) #2
  %and = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end20, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end20:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %max_retries.0
  br i1 %exitcond.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %for.body.for.end_crit_edge
  %44 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pc, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 8
  %ops.i42 = getelementptr inbounds %struct.bcma_bus, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i42, align 4
  %write32.i43 = getelementptr inbounds %struct.bcma_host_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %write32.i43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i43, align 4
  tail call void %51(ptr noundef %45, i16 noundef zeroext 296, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @bcma_pcie_mdio_read(ptr nocapture noundef readonly %pc, i16 noundef zeroext %device, i8 noundef zeroext %address) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 296, i32 noundef 130) #2
  %8 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %cmp = icmp ugt i8 %11, 9
  %conv.i = zext i16 %device to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %or4.i = or i32 %shl.i, 1350434816
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef %9, i16 noundef zeroext 300, i32 noundef %or4.i) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.016.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pc, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %ops.i15.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i15.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %26(ptr noundef %20, i16 noundef zeroext 296) #2
  %and.i = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.bcma_pcie_mdio_set_phy.exit_crit_edge

for.body.i.bcma_pcie_mdio_set_phy.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_pcie_mdio_set_phy.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %if.end.i.bcma_pcie_mdio_set_phy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

if.end.i.bcma_pcie_mdio_set_phy.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bcma_pcie_mdio_set_phy.exit

bcma_pcie_mdio_set_phy.exit:                      ; preds = %if.end.i.bcma_pcie_mdio_set_phy.exit_crit_edge, %for.body.i.bcma_pcie_mdio_set_phy.exit_crit_edge
  %conv3 = zext i8 %address to i32
  %shl = shl nuw nsw i32 %conv3, 18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %shl6 = shl i32 %conv.i, 22
  %conv7 = zext i8 %address to i32
  %shl8 = shl nuw nsw i32 %conv7, 18
  %or9 = or i32 %shl8, %shl6
  br label %if.end

if.end:                                           ; preds = %if.else, %bcma_pcie_mdio_set_phy.exit
  %max_retries.0 = phi i32 [ 200, %bcma_pcie_mdio_set_phy.exit ], [ 10, %if.else ]
  %v.0 = phi i32 [ %shl, %bcma_pcie_mdio_set_phy.exit ], [ %or9, %if.else ]
  %or12 = or i32 %v.0, 1610743808
  %27 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %ops.i40 = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i40, align 4
  %write32.i41 = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %write32.i41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i41, align 4
  tail call void %34(ptr noundef %28, i16 noundef zeroext 300, i32 noundef %or12) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #2
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.end
  %i.048 = phi i32 [ 0, %if.end ], [ %inc, %if.end21.for.body_crit_edge ]
  %36 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pc, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %ops.i42 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i42, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %43(ptr noundef %37, i16 noundef zeroext 296) #2
  %and = and i32 %call.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #2
  %45 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pc, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %ops.i43 = getelementptr inbounds %struct.bcma_bus, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %ops.i43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i43, align 4
  %read32.i44 = getelementptr inbounds %struct.bcma_host_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %read32.i44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32.i44, align 4
  %call.i45 = tail call i32 %52(ptr noundef %46, i16 noundef zeroext 300) #2
  %conv20 = trunc i32 %call.i45 to i16
  br label %for.end

if.end21:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %max_retries.0
  br i1 %exitcond.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.then17
  %ret.0 = phi i16 [ %conv20, %if.then17 ], [ 0, %if.end21.for.end_crit_edge ]
  %53 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pc, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %ops.i46 = getelementptr inbounds %struct.bcma_bus, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %ops.i46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i46, align 4
  %write32.i47 = getelementptr inbounds %struct.bcma_host_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %write32.i47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i47, align 4
  tail call void %60(ptr noundef %54, i16 noundef zeroext 296, i32 noundef 0) #2
  ret i16 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_bcma_core_pci_power_save, !1, !"__ksymtab_bcma_core_pci_power_save", i1 false, i1 false}
!1 = !{!"../drivers/bcma/driver_pci.c", i32 283, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
