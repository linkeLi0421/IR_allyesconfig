; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/bus.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.101, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.101 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.106, %struct.spinlock, i32, %union.anon.107, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { ptr }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @b43_bus_dev_bcma_init(ptr noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i.i, align 8
  %2 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %core, ptr %2, align 4
  %bus_may_powerdown = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %bus_may_powerdown to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @b43_bus_bcma_bus_may_powerdown, ptr %bus_may_powerdown, align 8
  %bus_powerup = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %bus_powerup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @b43_bus_bcma_bus_powerup, ptr %bus_powerup, align 4
  %device_is_enabled = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %device_is_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @b43_bus_bcma_device_is_enabled, ptr %device_is_enabled, align 8
  %device_enable = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %device_enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @b43_bus_bcma_device_enable, ptr %device_enable, align 4
  %device_disable = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %device_disable to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @b43_bus_bcma_device_disable, ptr %device_disable, align 8
  %read16 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %read16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @b43_bus_bcma_read16, ptr %read16, align 4
  %read32 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %read32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @b43_bus_bcma_read32, ptr %read32, align 8
  %write16 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %write16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @b43_bus_bcma_write16, ptr %write16, align 4
  %write32 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %write32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @b43_bus_bcma_write32, ptr %write32, align 8
  %block_read = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %block_read to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @b43_bus_bcma_block_read, ptr %block_read, align 4
  %block_write = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %block_write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @b43_bus_bcma_block_write, ptr %block_write, align 8
  %dev1 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 2
  %dev2 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %dev2, align 8
  %dma_dev = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 3
  %16 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_dev, align 8
  %dma_dev3 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %dma_dev3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dma_dev3, align 4
  %irq = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 4
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 16
  %21 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %irq4, align 8
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 8
  %boardinfo = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %boardinfo to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %boardinfo, align 4
  %board_vendor = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %board_vendor to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %board_vendor, align 4
  %type = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %type, align 2
  %board_type = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 18
  %29 = ptrtoint ptr %board_type to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %board_type, align 2
  %board_rev = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 18, i32 13
  %30 = ptrtoint ptr %board_rev to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %board_rev, align 2
  %board_rev8 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %board_rev8 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %board_rev8, align 8
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 6
  %33 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %chipinfo, align 4
  %chip_id = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 20
  %35 = ptrtoint ptr %chip_id to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %chip_id, align 2
  %rev = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rev, align 2
  %chip_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 21
  %38 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %chip_rev, align 4
  %pkg = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %pkg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pkg, align 1
  %chip_pkg = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 22
  %41 = ptrtoint ptr %chip_pkg to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %chip_pkg, align 1
  %sprom15 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 18
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 23
  %42 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %sprom15, ptr %bus_sprom, align 8
  %id17 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %id17 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %id17, align 2
  %core_id = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 24
  %45 = ptrtoint ptr %core_id to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %core_id, align 4
  %rev19 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %rev19 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rev19, align 4
  %core_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 25
  %48 = ptrtoint ptr %core_rev to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %core_rev, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43_bus_bcma_bus_may_powerdown(ptr nocapture noundef readnone %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @b43_bus_bcma_bus_powerup(ptr nocapture noundef readnone %dev, i1 noundef zeroext %dynamic_pctl) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_bus_bcma_device_is_enabled(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call zeroext i1 @bcma_core_is_enabled(ptr noundef %2) #6
  %conv = zext i1 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_bcma_device_enable(ptr nocapture noundef readonly %dev, i32 noundef %core_specific_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @bcma_core_enable(ptr noundef %2, i32 noundef %core_specific_flags) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_bcma_device_disable(ptr nocapture noundef readonly %dev, i32 noundef %core_specific_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @bcma_core_disable(ptr noundef %2, i32 noundef %core_specific_flags) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @b43_bus_bcma_read16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %read16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %8(ptr noundef %2, i16 noundef zeroext %offset) #6
  ret i16 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_bus_bcma_read32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %8(ptr noundef %2, i16 noundef zeroext %offset) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_bcma_write16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write16.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16.i, align 4
  tail call void %8(ptr noundef %2, i16 noundef zeroext %offset, i16 noundef zeroext %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_bcma_write32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write32.i, align 4
  tail call void %8(ptr noundef %2, i16 noundef zeroext %offset, i32 noundef %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_bcma_block_read(ptr nocapture noundef readonly %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %block_read.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %block_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block_read.i, align 4
  tail call void %8(ptr noundef %2, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_bcma_block_write(ptr nocapture noundef readonly %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %block_write.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %block_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block_write.i, align 4
  tail call void %8(ptr noundef %2, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @b43_bus_dev_ssb_init(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %call7.i.i, align 8
  %2 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sdev, ptr %2, align 4
  %bus_may_powerdown = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %bus_may_powerdown to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @b43_bus_ssb_bus_may_powerdown, ptr %bus_may_powerdown, align 8
  %bus_powerup = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %bus_powerup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @b43_bus_ssb_bus_powerup, ptr %bus_powerup, align 4
  %device_is_enabled = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %device_is_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @b43_bus_ssb_device_is_enabled, ptr %device_is_enabled, align 8
  %device_enable = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %device_enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @b43_bus_ssb_device_enable, ptr %device_enable, align 4
  %device_disable = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %device_disable to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @b43_bus_ssb_device_disable, ptr %device_disable, align 8
  %read16 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %read16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @b43_bus_ssb_read16, ptr %read16, align 4
  %read32 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %read32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @b43_bus_ssb_read32, ptr %read32, align 8
  %write16 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %write16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @b43_bus_ssb_write16, ptr %write16, align 4
  %write32 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %write32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @b43_bus_ssb_write32, ptr %write32, align 8
  %block_read = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %block_read to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @b43_bus_ssb_block_read, ptr %block_read, align 4
  %block_write = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 12
  %14 = ptrtoint ptr %block_write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @b43_bus_ssb_block_write, ptr %block_write, align 8
  %dev1 = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 1
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 14
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dev2, align 8
  %dma_dev = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 2
  %18 = ptrtoint ptr %dma_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_dev, align 4
  %dma_dev3 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %dma_dev3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dma_dev3, align 4
  %irq = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 6
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %irq4, align 8
  %bus = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 3
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %boardinfo = getelementptr inbounds %struct.ssb_bus, ptr %25, i32 0, i32 21
  %26 = ptrtoint ptr %boardinfo to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %boardinfo, align 4
  %board_vendor = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %board_vendor to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %board_vendor, align 4
  %type = getelementptr inbounds %struct.ssb_bus, ptr %25, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %type, align 2
  %board_type = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 18
  %31 = ptrtoint ptr %board_type to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %board_type, align 2
  %board_rev = getelementptr inbounds %struct.ssb_bus, ptr %25, i32 0, i32 22, i32 13
  %32 = ptrtoint ptr %board_rev to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %board_rev, align 2
  %board_rev8 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 19
  %34 = ptrtoint ptr %board_rev8 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %board_rev8, align 8
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %25, i32 0, i32 9
  %35 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %chip_id, align 4
  %chip_id10 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 20
  %37 = ptrtoint ptr %chip_id10 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %chip_id10, align 2
  %chip_rev = getelementptr inbounds %struct.ssb_bus, ptr %25, i32 0, i32 10
  %38 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %chip_rev, align 2
  %chip_rev12 = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 21
  %40 = ptrtoint ptr %chip_rev12 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %chip_rev12, align 4
  %chip_package = getelementptr inbounds %struct.ssb_bus, ptr %25, i32 0, i32 13
  %41 = ptrtoint ptr %chip_package to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %chip_package, align 4
  %chip_pkg = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 22
  %43 = ptrtoint ptr %chip_pkg to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %chip_pkg, align 1
  %sprom15 = getelementptr inbounds %struct.ssb_bus, ptr %25, i32 0, i32 22
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 23
  %44 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %sprom15, ptr %bus_sprom, align 8
  %coreid = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %coreid to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %coreid, align 2
  %core_id = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 24
  %47 = ptrtoint ptr %core_id to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %core_id, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %sdev, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %revision, align 4
  %core_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %call7.i.i, i32 0, i32 25
  %50 = ptrtoint ptr %core_rev to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %core_rev, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_bus_ssb_bus_may_powerdown(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %call = tail call i32 @ssb_bus_may_powerdown(ptr noundef %4) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_bus_ssb_bus_powerup(ptr nocapture noundef readonly %dev, i1 noundef zeroext %dynamic_pctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %call = tail call i32 @ssb_bus_powerup(ptr noundef %4, i1 noundef zeroext %dynamic_pctl) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_bus_ssb_device_is_enabled(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @ssb_device_is_enabled(ptr noundef %2) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_ssb_device_enable(ptr nocapture noundef readonly %dev, i32 noundef %core_specific_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @ssb_device_enable(ptr noundef %2, i32 noundef %core_specific_flags) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_ssb_device_disable(ptr nocapture noundef readonly %dev, i32 noundef %core_specific_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @ssb_device_disable(ptr noundef %2, i32 noundef %core_specific_flags) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @b43_bus_ssb_read16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %read16.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read16.i, align 4
  %call.i = tail call zeroext i16 %6(ptr noundef %2, i16 noundef zeroext %offset) #6
  ret i16 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_bus_ssb_read32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %6(ptr noundef %2, i16 noundef zeroext %offset) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_ssb_write16(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write16.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write16.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext %offset, i16 noundef zeroext %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_ssb_write32(ptr nocapture noundef readonly %dev, i16 noundef zeroext %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32.i, align 4
  tail call void %6(ptr noundef %2, i16 noundef zeroext %offset, i32 noundef %value) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_ssb_block_read(ptr nocapture noundef readonly %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %block_read.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %block_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %block_read.i, align 4
  tail call void %6(ptr noundef %2, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_bus_ssb_block_write(ptr nocapture noundef readonly %dev, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %block_write.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %block_write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %block_write.i, align 4
  tail call void %6(ptr noundef %2, ptr noundef %buffer, i32 noundef %count, i16 noundef zeroext %offset, i8 noundef zeroext %reg_width) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @b43_bus_get_wldev(ptr nocapture noundef readonly %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %drvdata.i = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 13
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %drvdata.i5 = getelementptr inbounds %struct.ssb_device, ptr %8, i32 0, i32 7
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %sw.bb
  %drvdata.i5.sink = phi ptr [ %drvdata.i5, %sw.bb1 ], [ %drvdata.i, %sw.bb ]
  %9 = ptrtoint ptr %drvdata.i5.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drvdata.i5.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %10, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @b43_bus_set_wldev(ptr nocapture noundef readonly %dev, ptr noundef %wldev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %drvdata1.i = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 13
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = getelementptr inbounds %struct.b43_bus_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %drvdata.i = getelementptr inbounds %struct.ssb_device, ptr %8, i32 0, i32 7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %drvdata.i.sink = phi ptr [ %drvdata.i, %sw.bb1 ], [ %drvdata1.i, %sw.bb ]
  %9 = ptrtoint ptr %drvdata.i.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wldev, ptr %drvdata.i.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bcma_core_is_enabled(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_enable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_disable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_may_powerdown(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_powerup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_device_is_enabled(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_enable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_disable(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

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
