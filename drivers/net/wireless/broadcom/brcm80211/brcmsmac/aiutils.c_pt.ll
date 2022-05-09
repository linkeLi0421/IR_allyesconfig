; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/aiutils.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/aiutils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.si_info = type { %struct.si_pub, ptr, ptr, i32 }
%struct.si_pub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.100, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.100 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.101, %struct.anon.102, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.101 = type { i8, i8, i8, i8 }
%struct.anon.102 = type { %struct.anon.103, %struct.anon.104 }
%struct.anon.103 = type { i8, i8, i8, i8, i8 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
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
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ai_attach(ptr noundef %pbus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 48) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %icbus.i = getelementptr inbounds %struct.si_info, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %icbus.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pbus, ptr %icbus.i, align 4
  %host_pci.i = getelementptr inbounds %struct.bcma_bus, ptr %pbus, i32 0, i32 5
  %2 = ptrtoint ptr %host_pci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_pci.i, align 4
  %pcibus.i = getelementptr inbounds %struct.si_info, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pcibus.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pcibus.i, align 8
  %drv_cc.i = getelementptr inbounds %struct.bcma_bus, ptr %pbus, i32 0, i32 12
  %5 = ptrtoint ptr %drv_cc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_cc.i, align 4
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %pbus, i32 0, i32 6
  %7 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chipinfo.i, align 4
  %conv.i = zext i16 %8 to i32
  %chip.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %chip.i, align 8
  %rev.i = getelementptr inbounds %struct.bcma_bus, ptr %pbus, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rev.i, align 2
  %conv2.i = zext i8 %11 to i32
  %chiprev.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %chiprev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv2.i, ptr %chiprev.i, align 4
  %pkg.i = getelementptr inbounds %struct.bcma_bus, ptr %pbus, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %pkg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pkg.i, align 1
  %conv4.i = zext i8 %14 to i32
  %chippkg.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %chippkg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4.i, ptr %chippkg.i, align 8
  %boardinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %pbus, i32 0, i32 7
  %16 = ptrtoint ptr %boardinfo.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %boardinfo.i, align 4
  %conv5.i = zext i16 %17 to i32
  %boardvendor.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %boardvendor.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv5.i, ptr %boardvendor.i, align 4
  %type.i = getelementptr inbounds %struct.bcma_bus, ptr %pbus, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type.i, align 2
  %conv7.i = zext i16 %20 to i32
  %boardtype.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %boardtype.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv7.i, ptr %boardtype.i, align 8
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 8
  %nr_cores.i.i = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %nr_cores.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nr_cores.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i.i = icmp eq i8 %25, 0
  br i1 %cmp.i.i, label %if.then3, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end
  %rev.i.i = getelementptr inbounds %struct.bcma_device, ptr %6, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rev.i.i, align 4
  %conv2.i.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv2.i.i, ptr %call7.i.i, align 8
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %6, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %34(ptr noundef %6, i16 noundef zeroext 44) #4
  %chipst.i.i = getelementptr inbounds %struct.si_info, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %chipst.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i.i.i, ptr %chipst.i.i, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %6, align 8
  %ops.i25.i.i = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i25.i.i, align 4
  %read32.i26.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read32.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i26.i.i, align 4
  %call.i27.i.i = tail call i32 %41(ptr noundef %6, i16 noundef zeroext 4) #4
  %cccaps.i.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %cccaps.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i27.i.i, ptr %cccaps.i.i, align 4
  %and.i.i = and i32 %call.i27.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %6, align 8
  %ops.i28.i.i = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i28.i.i, align 4
  %read32.i29.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %read32.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i29.i.i, align 4
  %call.i30.i.i = tail call i32 %48(ptr noundef %6, i16 noundef zeroext 1540) #4
  %pmucaps.i.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %pmucaps.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i30.i.i, ptr %pmucaps.i.i, align 4
  %and12.i.i = and i32 %call.i30.i.i, 255
  %pmurev.i.i = getelementptr inbounds %struct.si_pub, ptr %call7.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %pmurev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and12.i.i, ptr %pmurev.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i.i, %if.end.i.i.if.end.i_crit_edge
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %6, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i.i, align 4
  tail call void %56(ptr noundef %6, i16 noundef zeroext 88, i32 noundef 0) #4
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %6, align 8
  %ops.i32.i = getelementptr inbounds %struct.bcma_bus, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ops.i32.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i32.i, align 4
  %write32.i33.i = getelementptr inbounds %struct.bcma_host_ops, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %write32.i33.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32.i33.i, align 4
  tail call void %62(ptr noundef %6, i16 noundef zeroext 92, i32 noundef 0) #4
  %63 = ptrtoint ptr %cccaps.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cccaps.i.i, align 4
  %and.i = and i32 %64, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call10.i = tail call i32 @si_pmu_measure_alpclk(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then9.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then9.i ], [ %call7.i.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ai_detach(ptr noundef %sih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %sih) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ai_cc_reg(ptr nocapture noundef readonly %sih, i32 noundef %regoff, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %icbus = getelementptr inbounds %struct.si_info, ptr %sih, i32 0, i32 1
  %0 = ptrtoint ptr %icbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icbus, align 4
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_cc, align 4
  %4 = or i32 %val, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %.pre = trunc i32 %regoff to i16
  br i1 %5, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %mask, -1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %3, i16 noundef zeroext %.pre) #4
  %and.i = and i32 %call.i.i, %neg
  %or.i = or i32 %and.i, %val
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %ops.i3.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i3.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef %3, i16 noundef zeroext %.pre, i32 noundef %or.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %23(ptr noundef %3, i16 noundef zeroext %.pre) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ai_clkctl_init(ptr nocapture noundef readonly %sih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cccaps.i = getelementptr inbounds %struct.si_pub, ptr %sih, i32 0, i32 1
  %0 = ptrtoint ptr %cccaps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cccaps.i, align 4
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %icbus = getelementptr inbounds %struct.si_info, ptr %sih, i32 0, i32 1
  %2 = ptrtoint ptr %icbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icbus, align 4
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_cc, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef nonnull %5, i16 noundef zeroext 192) #4
  %and.i = and i32 %call.i.i, -327680
  %or.i = or i32 %and.i, 262144
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %ops.i3.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i3.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef nonnull %5, i16 noundef zeroext 192, i32 noundef %or.i) #4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i.i, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %23(ptr noundef nonnull %5, i16 noundef zeroext 192) #4
  %24 = lshr i32 %call.i.i.i, 14
  %add.i.i = and i32 %24, 262140
  %mul.i.i = add nuw nsw i32 %add.i.i, 4
  %div1.i.i = udiv i32 19800000, %mul.i.i
  %mul.i = mul nuw nsw i32 %div1.i.i, 150
  %add2.i = add nuw nsw i32 %mul.i, 999999
  %div.i = udiv i32 %add2.i, 1000000
  %mul3.i = mul nuw nsw i32 %div1.i.i, 200
  %add4.i = add nuw nsw i32 %mul3.i, 999999
  %div5.i = udiv i32 %add4.i, 1000000
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 8
  %ops.i.i8 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i.i8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i8, align 4
  %write32.i.i9 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i.i9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i.i9, align 4
  tail call void %30(ptr noundef nonnull %5, i16 noundef zeroext 176, i32 noundef %div.i) #4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i1.i, align 4
  %write32.i2.i = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %write32.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i2.i, align 4
  tail call void %36(ptr noundef nonnull %5, i16 noundef zeroext 180, i32 noundef %div5.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @ai_clkctl_fast_pwrup_delay(ptr noundef %sih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cccaps.i = getelementptr inbounds %struct.si_pub, ptr %sih, i32 0, i32 1
  %0 = ptrtoint ptr %cccaps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cccaps.i, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call zeroext i16 @si_pmu_fast_pwrup_delay(ptr noundef %sih) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %icbus = getelementptr inbounds %struct.si_info, ptr %sih, i32 0, i32 1
  %2 = ptrtoint ptr %icbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icbus, align 4
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_cc, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef nonnull %5, i16 noundef zeroext 192) #4
  %12 = lshr i32 %call.i.i, 14
  %add.i = and i32 %12, 262140
  %mul.i = add nuw nsw i32 %add.i, 4
  %div1.i = udiv i32 19800000, %mul.i
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %18(ptr noundef nonnull %5, i16 noundef zeroext 176) #4
  %19 = mul i32 %call.i, 1000000
  %sub = add nuw nsw i32 %div1.i, 1999999
  %add11 = add i32 %sub, %19
  %div = udiv i32 %add11, %div1.i
  %conv = trunc i32 %div to i16
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i16 [ %call1, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %conv, %if.then8 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @si_pmu_fast_pwrup_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ai_clkctl_cc(ptr nocapture noundef readonly %sih, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %icbus = getelementptr inbounds %struct.si_info, ptr %sih, i32 0, i32 1
  %0 = ptrtoint ptr %icbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icbus, align 4
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_cc, align 4
  tail call void @bcma_core_set_clockmode(ptr noundef %3, i32 noundef %mode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_set_clockmode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ai_epa_4313war(ptr nocapture noundef readonly %sih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %icbus = getelementptr inbounds %struct.si_info, ptr %sih, i32 0, i32 1
  %0 = ptrtoint ptr %icbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icbus, align 4
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %drv_cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_cc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %3, i16 noundef zeroext 108) #4
  %or.i = or i32 %call.i.i, 64
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i1.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %3, i16 noundef zeroext 108, i32 noundef %or.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ai_deviceremoved(ptr nocapture noundef readonly %sih) local_unnamed_addr #0 align 64 {
entry:
  %w = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w) #4
  %0 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %w, align 4
  %icbus = getelementptr inbounds %struct.si_info, ptr %sih, i32 0, i32 1
  %1 = ptrtoint ptr %icbus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %icbus, align 4
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pcibus = getelementptr inbounds %struct.si_info, ptr %sih, i32 0, i32 2
  %5 = ptrtoint ptr %pcibus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcibus, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %w) #4
  %7 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %w, align 4
  %and = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5348, i32 %and)
  %cmp1.not = icmp ne i32 %and, 5348
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp1.not, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_pmu_measure_alpclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

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
