; ModuleID = '/llk/IR_all_yes/drivers/bcma/driver_pcie2.c_pt.bc'
source_filename = "../drivers/bcma/driver_pcie2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@bcma_core_pcie2_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bus%d: Error setting PCI_EXP_DEVCTL_READRQ: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcma_core_pcie2_up\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/bcma/driver_pcie2.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_core_pcie2_up._entry_ptr = internal global ptr @bcma_core_pcie2_up._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 10]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [31 x i8] c"../drivers/bcma/driver_pcie2.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 200, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @bcma_core_pcie2_up._entry, ptr @bcma_core_pcie2_up._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_pcie2_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pcie2_init(ptr noundef %pcie2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie2, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 2156) #3
  %8 = and i32 %call.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcie2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write32.i.i, align 4
  tail call void %16(ptr noundef %10, i16 noundef zeroext 288, i32 noundef 1248) #3
  %17 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcie2, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i1.i, align 4
  %write32.i2.i = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write32.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i2.i, align 4
  tail call void %24(ptr noundef %18, i16 noundef zeroext 292, i32 noundef 23) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %chipinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17248, i16 %26)
  %switch.selectcmp.case1 = icmp eq i16 %26, 17248
  call void @__sanitizer_cov_trace_const_cmp2(i16 17234, i16 %26)
  %switch.selectcmp.case2 = icmp eq i16 %26, 17234
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %27 = select i1 %switch.selectcmp, i16 1024, i16 128
  %reqsize4 = getelementptr inbounds %struct.bcma_drv_pcie2, ptr %pcie2, i32 0, i32 1
  %28 = ptrtoint ptr %reqsize4 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %reqsize4, align 4
  %29 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %chipinfo, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17248, i16 %30)
  %cmp7 = icmp eq i16 %30, 17248
  br i1 %cmp7, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %rev = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp10 = icmp ugt i8 %32, 3
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcie2, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %ops.i.i27 = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ops.i.i27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i27, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %40(ptr noundef %34, i16 noundef zeroext 0) #3
  %or.i = and i32 %call.i.i, -769
  %or2.i = or i32 %or.i, 512
  %41 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcie2, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ops.i1.i28 = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i1.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i1.i28, align 4
  %write32.i.i29 = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write32.i.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i.i29, align 4
  tail call void %48(ptr noundef %42, i16 noundef zeroext 0, i32 noundef %or2.i) #3
  %49 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcie2, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %ops.i2.i = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ops.i2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i2.i, align 4
  %read32.i3.i = getelementptr inbounds %struct.bcma_host_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %read32.i3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read32.i3.i, align 4
  %call.i4.i = tail call i32 %56(ptr noundef %50, i16 noundef zeroext 0) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %57 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcie2, align 4
  %rev.i = getelementptr inbounds %struct.bcma_device, ptr %58, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rev.i, align 4
  %.fr.i = freeze i8 %60
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %.fr.i)
  %cmp7.i = icmp ugt i8 %.fr.i, 13
  br i1 %cmp7.i, label %if.end14.bcma_core_pcie2_hw_ltr_war.exit_crit_edge, label %switch.early.test.i

if.end14.bcma_core_pcie2_hw_ltr_war.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_core_pcie2_hw_ltr_war.exit

switch.early.test.i:                              ; preds = %if.end14
  %61 = zext i8 %.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.fr.i, label %if.end.i [
    i8 10, label %switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge
    i8 1, label %switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge46
    i8 0, label %switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge47
  ]

switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge47: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_core_pcie2_hw_ltr_war.exit

switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge46: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_core_pcie2_hw_ltr_war.exit

switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_core_pcie2_hw_ltr_war.exit

if.end.i:                                         ; preds = %switch.early.test.i
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %58, align 8
  %ops.i.i30 = getelementptr inbounds %struct.bcma_bus, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %ops.i.i30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i.i30, align 4
  %write32.i.i31 = getelementptr inbounds %struct.bcma_host_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %write32.i.i31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write32.i.i31, align 4
  tail call void %67(ptr noundef %58, i16 noundef zeroext 288, i32 noundef 212) #3
  %68 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcie2, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %ops.i30.i = getelementptr inbounds %struct.bcma_bus, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i30.i, align 4
  %read32.i.i32 = getelementptr inbounds %struct.bcma_host_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %read32.i.i32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read32.i.i32, align 4
  %call.i.i33 = tail call i32 %75(ptr noundef %69, i16 noundef zeroext 292) #3
  %and.i = and i32 %call.i.i33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge, label %if.then11.i

if.end.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_core_pcie2_hw_ltr_war.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %76 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcie2, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i.i.i, align 4
  %write32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %83(ptr noundef %77, i16 noundef zeroext 288, i32 noundef 2116) #3
  %84 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pcie2, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %ops.i11.i.i = getelementptr inbounds %struct.bcma_bus, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %ops.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i11.i.i, align 4
  %write32.i12.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %write32.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write32.i12.i.i, align 4
  tail call void %91(ptr noundef %85, i16 noundef zeroext 292, i32 noundef -2009298884) #3
  %92 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pcie2, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %ops.i13.i.i = getelementptr inbounds %struct.bcma_bus, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %ops.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i13.i.i, align 4
  %write32.i14.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %write32.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i14.i.i, align 4
  tail call void %99(ptr noundef %93, i16 noundef zeroext 288, i32 noundef 2120) #3
  %100 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcie2, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 8
  %ops.i15.i.i = getelementptr inbounds %struct.bcma_bus, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %ops.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i15.i.i, align 4
  %write32.i16.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %write32.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32.i16.i.i, align 4
  tail call void %107(ptr noundef %101, i16 noundef zeroext 292, i32 noundef -2006677404) #3
  %108 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pcie2, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 8
  %ops.i17.i.i = getelementptr inbounds %struct.bcma_bus, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %ops.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i17.i.i, align 4
  %write32.i18.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %write32.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write32.i18.i.i, align 4
  tail call void %115(ptr noundef %109, i16 noundef zeroext 288, i32 noundef 2124) #3
  %116 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pcie2, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %ops.i19.i.i = getelementptr inbounds %struct.bcma_bus, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %ops.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i19.i.i, align 4
  %write32.i20.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %write32.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %write32.i20.i.i, align 4
  tail call void %123(ptr noundef %117, i16 noundef zeroext 292, i32 noundef -1878814717) #3
  %or.i34 = or i32 %call.i.i33, 1024
  %124 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pcie2, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 8
  %ops.i31.i = getelementptr inbounds %struct.bcma_bus, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %ops.i31.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i31.i, align 4
  %write32.i32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %write32.i32.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write32.i32.i, align 4
  tail call void %131(ptr noundef %125, i16 noundef zeroext 288, i32 noundef 212) #3
  %132 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pcie2, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 8
  %ops.i33.i = getelementptr inbounds %struct.bcma_bus, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %ops.i33.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i33.i, align 4
  %write32.i34.i = getelementptr inbounds %struct.bcma_host_ops, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %write32.i34.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write32.i34.i, align 4
  tail call void %139(ptr noundef %133, i16 noundef zeroext 292, i32 noundef %or.i34) #3
  %140 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pcie2, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 8
  %ops.i35.i = getelementptr inbounds %struct.bcma_bus, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %ops.i35.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i35.i, align 4
  %write32.i36.i = getelementptr inbounds %struct.bcma_host_ops, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %write32.i36.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write32.i36.i, align 4
  tail call void %147(ptr noundef %141, i16 noundef zeroext 416, i32 noundef 2) #3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %148 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pcie2, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 8
  %ops.i37.i = getelementptr inbounds %struct.bcma_bus, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %ops.i37.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i37.i, align 4
  %write32.i38.i = getelementptr inbounds %struct.bcma_host_ops, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %write32.i38.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write32.i38.i, align 4
  tail call void %155(ptr noundef %149, i16 noundef zeroext 416, i32 noundef 0) #3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  br label %bcma_core_pcie2_hw_ltr_war.exit

bcma_core_pcie2_hw_ltr_war.exit:                  ; preds = %if.then11.i, %if.end.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge, %switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge, %switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge46, %switch.early.test.i.bcma_core_pcie2_hw_ltr_war.exit_crit_edge47, %if.end14.bcma_core_pcie2_hw_ltr_war.exit_crit_edge
  %156 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pcie2, align 4
  %rev.i35 = getelementptr inbounds %struct.bcma_device, ptr %157, i32 0, i32 1, i32 2
  %158 = ptrtoint ptr %rev.i35 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %rev.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %159)
  %cmp.i = icmp ult i8 %159, 14
  br i1 %cmp.i, label %if.then.i, label %bcma_core_pcie2_hw_ltr_war.exit.pciedev_reg_pm_clk_period.exit_crit_edge

bcma_core_pcie2_hw_ltr_war.exit.pciedev_reg_pm_clk_period.exit_crit_edge: ; preds = %bcma_core_pcie2_hw_ltr_war.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %pciedev_reg_pm_clk_period.exit

if.then.i:                                        ; preds = %bcma_core_pcie2_hw_ltr_war.exit
  call void @__sanitizer_cov_trace_pc() #5
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %157, align 8
  %drv_cc1.i = getelementptr inbounds %struct.bcma_bus, ptr %161, i32 0, i32 12
  %call.i36 = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %drv_cc1.i) #3
  %div.i = udiv i32 %call.i36, 1000
  %div4.i = udiv i32 2000000, %div.i
  %162 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pcie2, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 8
  %ops.i.i37 = getelementptr inbounds %struct.bcma_bus, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %ops.i.i37 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ops.i.i37, align 4
  %write32.i.i38 = getelementptr inbounds %struct.bcma_host_ops, ptr %167, i32 0, i32 5
  %168 = ptrtoint ptr %write32.i.i38 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write32.i.i38, align 4
  tail call void %169(ptr noundef %163, i16 noundef zeroext 288, i32 noundef 6220) #3
  %170 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pcie2, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 8
  %ops.i10.i = getelementptr inbounds %struct.bcma_bus, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %ops.i10.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ops.i10.i, align 4
  %write32.i11.i = getelementptr inbounds %struct.bcma_host_ops, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %write32.i11.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %write32.i11.i, align 4
  tail call void %177(ptr noundef %171, i16 noundef zeroext 292, i32 noundef %div4.i) #3
  br label %pciedev_reg_pm_clk_period.exit

pciedev_reg_pm_clk_period.exit:                   ; preds = %if.then.i, %bcma_core_pcie2_hw_ltr_war.exit.pciedev_reg_pm_clk_period.exit_crit_edge
  %178 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pcie2, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 8
  %ops.i.i40 = getelementptr inbounds %struct.bcma_bus, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %ops.i.i40 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ops.i.i40, align 4
  %write32.i.i41 = getelementptr inbounds %struct.bcma_host_ops, ptr %183, i32 0, i32 5
  %184 = ptrtoint ptr %write32.i.i41 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write32.i.i41, align 4
  tail call void %185(ptr noundef %179, i16 noundef zeroext 288, i32 noundef 6164) #3
  %186 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %pcie2, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %187, align 8
  %ops.i.i.i42 = getelementptr inbounds %struct.bcma_bus, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %ops.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ops.i.i.i42, align 4
  %read32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %193(ptr noundef %187, i16 noundef zeroext 292) #3
  %or.i.i = or i32 %call.i.i.i, 31
  %194 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %187, align 8
  %ops.i1.i.i = getelementptr inbounds %struct.bcma_bus, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %ops.i1.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ops.i1.i.i, align 4
  %write32.i.i.i43 = getelementptr inbounds %struct.bcma_host_ops, ptr %197, i32 0, i32 5
  %198 = ptrtoint ptr %write32.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %write32.i.i.i43, align 4
  tail call void %199(ptr noundef %187, i16 noundef zeroext 292, i32 noundef %or.i.i) #3
  %200 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %pcie2, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 8
  %ops.i.i44 = getelementptr inbounds %struct.bcma_bus, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %ops.i.i44 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ops.i.i44, align 4
  %write32.i.i45 = getelementptr inbounds %struct.bcma_host_ops, ptr %205, i32 0, i32 5
  %206 = ptrtoint ptr %write32.i.i45 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %write32.i.i45, align 4
  tail call void %207(ptr noundef %201, i16 noundef zeroext 288, i32 noundef 152) #3
  %208 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pcie2, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 8
  %ops.i3.i = getelementptr inbounds %struct.bcma_bus, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ops.i3.i, align 4
  %write32.i4.i = getelementptr inbounds %struct.bcma_host_ops, ptr %213, i32 0, i32 5
  %214 = ptrtoint ptr %write32.i4.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %write32.i4.i, align 4
  tail call void %215(ptr noundef %209, i16 noundef zeroext 292, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pcie2_up(ptr nocapture noundef readonly %pcie2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie2, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %host_pci = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %host_pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_pci, align 4
  %reqsize = getelementptr inbounds %struct.bcma_drv_pcie2, ptr %pcie2, i32 0, i32 1
  %6 = ptrtoint ptr %reqsize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reqsize, align 4
  %conv = zext i16 %7 to i32
  %call = tail call i32 @pcie_set_readrq(ptr noundef %5, i32 noundef %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num, align 1
  %conv3 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %conv3, i32 noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_set_readrq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pmu_get_alp_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bcma/driver_pcie2.c", i32 200, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bcma_core_pcie2_up._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @bcma_core_pcie2_up._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
