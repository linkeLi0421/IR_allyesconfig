; ModuleID = '/llk/IR_all_yes/drivers/ssb/driver_chipcommon.c_pt.bc'
source_filename = "../drivers/ssb/driver_chipcommon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ssb_chipco_gpio_control\22, \22a\22\09"
module asm "\09.weak\09__crc_ssb_chipco_gpio_control\09\09\09\09"
module asm "\09.long\09__crc_ssb_chipco_gpio_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssb_chipco_gpio_control:\09\09\09\09\09"
module asm "\09.asciz \09\22ssb_chipco_gpio_control\22\09\09\09\09\09"
module asm "__kstrtabns_ssb_chipco_gpio_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm47xx_wdt = type { ptr, ptr, i32, ptr, %struct.watchdog_device, %struct.timer_list, %struct.atomic_t }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/ssb/driver_chipcommon.c\00", [32 x i8] zeroinitializer }, align 32
@ssb_chipcommon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cc->gpio_lock\00", [17 x i8] zeroinitializer }, align 32
@ssb_chipcommon_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssb\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ssb_chipcommon_init\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"chipcommon status is 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_ssb_chipco_gpio_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssb_chipco_gpio_control = external dso_local constant [0 x i8], align 1
@__ksymtab_ssb_chipco_gpio_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssb_chipco_gpio_control to i32), ptr @__kstrtab_ssb_chipco_gpio_control, ptr @__kstrtabns_ssb_chipco_gpio_control }, section "___ksymtab+ssb_chipco_gpio_control", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 16, i64 17170, i64 17186, i64 17192]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 163840, i64 196608]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 59, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 353, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [35 x i8] c"../drivers/ssb/driver_chipcommon.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 357, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_ssb_chipco_gpio_control, ptr @.str, ptr @ssb_chipcommon_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_chipcommon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipco_set_clockmode(ptr nocapture noundef readonly %cc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %cmp = icmp ugt i8 %5, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp3 = icmp eq i32 %mode, 0
  %6 = and i1 %cmp3, %cmp
  %mode.addr.0 = select i1 %6, i32 2, i32 %mode
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capabilities, align 4
  %and = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %5)
  %cmp13 = icmp ugt i8 %5, 19
  br i1 %cmp13, label %do.end, label %if.end9.if.end29_crit_edge, !prof !21

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 9, ptr noundef null) #4
  br label %if.end29

if.end29:                                         ; preds = %do.end, %if.end9.if.end29_crit_edge
  %9 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %revision, align 4
  %11 = add i8 %10, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %11)
  %12 = icmp ult i8 %11, -4
  br i1 %12, label %if.end29.cleanup_crit_edge, label %if.end50

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50:                                         ; preds = %if.end29
  %13 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capabilities, align 4
  %and52 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %15 = zext i32 %mode.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode.addr.0, label %do.end118 [
    i32 0, label %sw.bb
    i32 1, label %if.then64
    i32 2, label %if.then82
  ]

sw.bb:                                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %21(ptr noundef %17, i16 noundef zeroext 184) #4
  %or = or i32 %call.i, 2048
  %22 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cc, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write32.i, align 4
  tail call void %27(ptr noundef %23, i16 noundef zeroext 184, i32 noundef %or) #4
  br label %cleanup

if.then64:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = tail call i32 @ssb_pci_xtal(ptr noundef %3, i32 noundef 64, i32 noundef 1) #4
  %28 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cc, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %read32.i168 = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %read32.i168 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i168, align 4
  %call.i169 = tail call i32 %33(ptr noundef %29, i16 noundef zeroext 184) #4
  %and68 = and i32 %call.i169, -6145
  %or69 = or i32 %and68, 4096
  %34 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cc, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %write32.i170 = getelementptr inbounds %struct.ssb_bus_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %write32.i170 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write32.i170, align 4
  tail call void %39(ptr noundef %35, i16 noundef zeroext 184, i32 noundef %or69) #4
  br label %cleanup

if.then82:                                        ; preds = %if.end55
  %40 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cc, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %read32.i171 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %read32.i171 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i171, align 4
  %call.i172 = tail call i32 %45(ptr noundef %41, i16 noundef zeroext 184) #4
  %and87 = and i32 %call.i172, -14337
  %and88 = and i32 %call.i172, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and88)
  %cmp89.not = icmp eq i32 %and88, 1
  %or92 = or i32 %and87, 8192
  %spec.select = select i1 %cmp89.not, i32 %and87, i32 %or92
  %46 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cc, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %write32.i173 = getelementptr inbounds %struct.ssb_bus_ops, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %write32.i173 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32.i173, align 4
  tail call void %51(ptr noundef %47, i16 noundef zeroext 184, i32 noundef %spec.select) #4
  %and95 = and i32 %spec.select, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then82.cleanup_crit_edge, label %if.then97

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then97:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #6
  %call98 = tail call i32 @ssb_pci_xtal(ptr noundef %3, i32 noundef 64, i32 noundef 0) #4
  br label %cleanup

do.end118:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end118, %if.then97, %if.then82.cleanup_crit_edge, %if.then64, %sw.bb, %if.end50.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_pci_xtal(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_watchdog_timer_set_wdt(ptr nocapture noundef readonly %wdt, i32 noundef %ticks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.bcm47xx_wdt, ptr %wdt, i32 0, i32 3
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %capabilities.i.i = getelementptr inbounds %struct.ssb_chipcommon, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capabilities.i.i, align 4
  %and.i.i = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else5.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %revision.i.i = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %11)
  %cmp.i.i = icmp ult i8 %11, 26
  br i1 %cmp.i.i, label %if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge, label %if.else.i.i

if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_get_max_timer.exit.thread27.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %11)
  %cmp7.i.i = icmp ugt i8 %11, 36
  br i1 %cmp7.i.i, label %if.else.i.i.if.then.i_crit_edge, label %if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge

if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_get_max_timer.exit.thread27.i

if.else.i.i.if.then.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

ssb_chipco_watchdog_get_max_timer.exit.thread27.i: ; preds = %if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge, %if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge
  %nb.0.ph.i.ph.i = phi i32 [ 24, %if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge ], [ 16, %if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge ]
  %notmask20.i29.i = shl nsw i32 -1, %nb.0.ph.i.ph.i
  %sub21.i30.i = xor i32 %notmask20.i29.i, -1
  br label %if.then.i

if.then.i:                                        ; preds = %ssb_chipco_watchdog_get_max_timer.exit.thread27.i, %if.else.i.i.if.then.i_crit_edge
  %12 = phi i32 [ %sub21.i30.i, %ssb_chipco_watchdog_get_max_timer.exit.thread27.i ], [ -1, %if.else.i.i.if.then.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ticks)
  %cmp.i = icmp eq i32 %ticks, 1
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %ticks) #4
  %ticks.addr.0.i = select i1 %cmp.i, i32 2, i32 %13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i, align 4
  tail call void %17(ptr noundef %3, i16 noundef zeroext 1588, i32 noundef %ticks.addr.0.i) #4
  br label %cleanup

if.else5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ticks)
  %tobool6.not.i = icmp eq i32 %ticks, 0
  %cond.i = select i1 %tobool6.not.i, i32 2, i32 1
  tail call void @ssb_chipco_set_clockmode(ptr noundef %1, i32 noundef %cond.i) #4
  %18 = tail call i32 @llvm.umin.i32(i32 %ticks, i32 268435455) #4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %write32.i26.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write32.i26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i26.i, align 4
  tail call void %24(ptr noundef %20, i16 noundef zeroext 128, i32 noundef %18) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else5.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ticks.addr.0.i, %if.then.i ], [ %18, %if.else5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_watchdog_timer_set(ptr nocapture noundef readonly %cc, i32 noundef %ticks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %capabilities.i = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %0 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else5, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %5)
  %cmp.i = icmp ult i8 %5, 26
  br i1 %cmp.i, label %if.then.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge, label %if.else.i

if.then.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_get_max_timer.exit.thread27

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %5)
  %cmp7.i = icmp ugt i8 %5, 36
  br i1 %cmp7.i, label %if.else.i.if.then_crit_edge, label %if.else.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge

if.else.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_get_max_timer.exit.thread27

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

ssb_chipco_watchdog_get_max_timer.exit.thread27:  ; preds = %if.else.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge, %if.then.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge
  %nb.0.ph.i.ph = phi i32 [ 24, %if.else.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge ], [ 16, %if.then.i.ssb_chipco_watchdog_get_max_timer.exit.thread27_crit_edge ]
  %notmask20.i29 = shl nsw i32 -1, %nb.0.ph.i.ph
  %sub21.i30 = xor i32 %notmask20.i29, -1
  br label %if.then

if.then:                                          ; preds = %ssb_chipco_watchdog_get_max_timer.exit.thread27, %if.else.i.if.then_crit_edge
  %6 = phi i32 [ %sub21.i30, %ssb_chipco_watchdog_get_max_timer.exit.thread27 ], [ -1, %if.else.i.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ticks)
  %cmp = icmp eq i32 %ticks, 1
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %ticks)
  %ticks.addr.0 = select i1 %cmp, i32 2, i32 %7
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 1588, i32 noundef %ticks.addr.0) #4
  br label %if.end11

if.else5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ticks)
  %tobool6.not = icmp eq i32 %ticks, 0
  %cond = select i1 %tobool6.not, i32 2, i32 1
  tail call void @ssb_chipco_set_clockmode(ptr noundef %cc, i32 noundef %cond)
  %14 = tail call i32 @llvm.umin.i32(i32 %ticks, i32 268435455)
  %15 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write32.i26 = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write32.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i26, align 4
  tail call void %20(ptr noundef %16, i16 noundef zeroext 128, i32 noundef %14) #4
  br label %if.end11

if.end11:                                         ; preds = %if.else5, %if.then
  %ticks.addr.2 = phi i32 [ %ticks.addr.0, %if.then ], [ %14, %if.else5 ]
  ret i32 %ticks.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_watchdog_timer_set_ms(ptr nocapture noundef readonly %wdt, i32 noundef %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.bcm47xx_wdt, ptr %wdt, i32 0, i32 3
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ticks_per_ms = getelementptr inbounds %struct.ssb_chipcommon, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ticks_per_ms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ticks_per_ms, align 4
  %mul = mul i32 %9, %ms
  %capabilities.i.i = getelementptr inbounds %struct.ssb_chipcommon, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capabilities.i.i, align 4
  %and.i.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else5.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %revision.i.i = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %13)
  %cmp.i.i = icmp ult i8 %13, 26
  br i1 %cmp.i.i, label %if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge, label %if.else.i.i

if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_get_max_timer.exit.thread27.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %13)
  %cmp7.i.i = icmp ugt i8 %13, 36
  br i1 %cmp7.i.i, label %if.else.i.i.if.then.i_crit_edge, label %if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge

if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_get_max_timer.exit.thread27.i

if.else.i.i.if.then.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

ssb_chipco_watchdog_get_max_timer.exit.thread27.i: ; preds = %if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge, %if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge
  %nb.0.ph.i.ph.i = phi i32 [ 24, %if.else.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge ], [ 16, %if.then.i.i.ssb_chipco_watchdog_get_max_timer.exit.thread27.i_crit_edge ]
  %notmask20.i29.i = shl nsw i32 -1, %nb.0.ph.i.ph.i
  %sub21.i30.i = xor i32 %notmask20.i29.i, -1
  br label %if.then.i

if.then.i:                                        ; preds = %ssb_chipco_watchdog_get_max_timer.exit.thread27.i, %if.else.i.i.if.then.i_crit_edge
  %14 = phi i32 [ %sub21.i30.i, %ssb_chipco_watchdog_get_max_timer.exit.thread27.i ], [ -1, %if.else.i.i.if.then.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul)
  %cmp.i = icmp eq i32 %mul, 1
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %mul) #4
  %ticks.addr.0.i = select i1 %cmp.i, i32 2, i32 %15
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %3, i16 noundef zeroext 1588, i32 noundef %ticks.addr.0.i) #4
  br label %ssb_chipco_watchdog_timer_set.exit

if.else5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool6.not.i = icmp eq i32 %mul, 0
  %cond.i = select i1 %tobool6.not.i, i32 2, i32 1
  tail call void @ssb_chipco_set_clockmode(ptr noundef %1, i32 noundef %cond.i) #4
  %20 = tail call i32 @llvm.umin.i32(i32 %mul, i32 268435455) #4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %write32.i26.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write32.i26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i26.i, align 4
  tail call void %26(ptr noundef %22, i16 noundef zeroext 128, i32 noundef %20) #4
  br label %ssb_chipco_watchdog_timer_set.exit

ssb_chipco_watchdog_timer_set.exit:               ; preds = %if.else5.i, %if.then.i
  %ticks.addr.2.i = phi i32 [ %ticks.addr.0.i, %if.then.i ], [ %20, %if.else5.i ]
  %27 = ptrtoint ptr %ticks_per_ms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ticks_per_ms, align 4
  %div = udiv i32 %ticks.addr.2.i, %28
  br label %cleanup

cleanup:                                          ; preds = %ssb_chipco_watchdog_timer_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %ssb_chipco_watchdog_timer_set.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipcommon_init(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %do.body

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.body:                                          ; preds = %entry
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %gpio_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ssb_chipcommon_init.__key, i16 noundef signext 3) #4
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cc, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp = icmp ugt i8 %5, 10
  br i1 %cmp, label %if.then3, label %do.body.do.body7_crit_edge

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body7

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %9(ptr noundef %3, i16 noundef zeroext 44) #4
  %status = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %status, align 4
  br label %do.body7

do.body7:                                         ; preds = %if.then3, %do.body.do.body7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssb_chipcommon_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssb_chipcommon_init, %if.then12)) #4
          to label %do.end17 [label %if.then12], !srcloc !22

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc, align 4
  %dev14 = getelementptr inbounds %struct.ssb_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  %status15 = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 2
  %15 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssb_chipcommon_init.__UNIQUE_ID_ddebug236, ptr noundef %14, ptr noundef nonnull @.str.4, i32 noundef %16) #4
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body7
  %17 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc, align 4
  %revision20 = getelementptr inbounds %struct.ssb_device, ptr %18, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %revision20 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %revision20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %20)
  %cmp22 = icmp ugt i8 %20, 19
  br i1 %cmp22, label %if.then24, label %do.end17.if.end27_crit_edge

do.end17.if.end27_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then24:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write32.i, align 4
  tail call void %24(ptr noundef %18, i16 noundef zeroext 88, i32 noundef 0) #4
  %25 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cc, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %write32.i55 = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %write32.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i55, align 4
  tail call void %30(ptr noundef %26, i16 noundef zeroext 92, i32 noundef 0) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %do.end17.if.end27_crit_edge
  tail call void @ssb_pmu_init(ptr noundef %cc) #4
  tail call fastcc void @chipco_powercontrol_init(ptr noundef %cc)
  tail call void @ssb_chipco_set_clockmode(ptr noundef %cc, i32 noundef 1)
  %31 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cc, align 4
  %bus1.i = getelementptr inbounds %struct.ssb_device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus1.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end27.calc_fast_powerup_delay.exit_crit_edge

if.end27.calc_fast_powerup_delay.exit_crit_edge:  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_fast_powerup_delay.exit

if.end.i:                                         ; preds = %if.end27
  %capabilities.i = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %37 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %38, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %chip_id.i.i = getelementptr inbounds %struct.ssb_bus, ptr %34, i32 0, i32 9
  %39 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %chip_id.i.i, align 4
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %40, label %sw.default.i.i [
    i16 17170, label %if.then2.i.cleanup.sink.split.i_crit_edge
    i16 17186, label %if.then2.i.cleanup.sink.split.i_crit_edge70
    i16 17192, label %if.then2.i.cleanup.sink.split.i_crit_edge71
  ]

if.then2.i.cleanup.sink.split.i_crit_edge71:      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.then2.i.cleanup.sink.split.i_crit_edge70:      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.then2.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.default.i.i:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end3.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %38, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end3.i.calc_fast_powerup_delay.exit_crit_edge, label %if.end8.i

if.end3.i.calc_fast_powerup_delay.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %calc_fast_powerup_delay.exit

if.end8.i:                                        ; preds = %if.end3.i
  %call9.i = tail call fastcc i32 @chipco_pctl_clockfreqlimit(ptr noundef %cc, i32 noundef 0) #4
  %42 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cc, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %47(ptr noundef %43, i16 noundef zeroext 176) #4
  %48 = mul i32 %call.i.i, 1000000
  %sub.i = add i32 %call9.i, 1999999
  %add12.i = add i32 %sub.i, %48
  %div.i = udiv i32 %add12.i, %call9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %div.i)
  %tobool14.not.i = icmp ult i32 %div.i, 65536
  br i1 %tobool14.not.i, label %if.end8.i.if.end29.i_crit_edge, label %do.end.i, !prof !23

if.end8.i.if.end29.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 9, ptr noundef null) #4
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %if.end8.i.if.end29.i_crit_edge
  %conv.i = trunc i32 %div.i to i16
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end29.i, %sw.default.i.i, %if.then2.i.cleanup.sink.split.i_crit_edge, %if.then2.i.cleanup.sink.split.i_crit_edge70, %if.then2.i.cleanup.sink.split.i_crit_edge71
  %conv.sink.i = phi i16 [ %conv.i, %if.end29.i ], [ 15000, %sw.default.i.i ], [ 7000, %if.then2.i.cleanup.sink.split.i_crit_edge ], [ 7000, %if.then2.i.cleanup.sink.split.i_crit_edge70 ], [ 7000, %if.then2.i.cleanup.sink.split.i_crit_edge71 ]
  %fast_pwrup_delay37.i = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 3
  %49 = ptrtoint ptr %fast_pwrup_delay37.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.sink.i, ptr %fast_pwrup_delay37.i, align 4
  br label %calc_fast_powerup_delay.exit

calc_fast_powerup_delay.exit:                     ; preds = %cleanup.sink.split.i, %if.end3.i.calc_fast_powerup_delay.exit_crit_edge, %if.end27.calc_fast_powerup_delay.exit_crit_edge
  %50 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cc, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus, align 4
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp29 = icmp eq i32 %55, 0
  br i1 %cmp29, label %if.then31, label %calc_fast_powerup_delay.exit.if.end35_crit_edge

calc_fast_powerup_delay.exit.if.end35_crit_edge:  ; preds = %calc_fast_powerup_delay.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then31:                                        ; preds = %calc_fast_powerup_delay.exit
  %capabilities.i57 = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %56 = ptrtoint ptr %capabilities.i57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %capabilities.i57, align 4
  %and.i58 = and i32 %57, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %if.else.i, label %if.then31.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge

if.then31.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_ticks_per_ms.exit

if.else.i:                                        ; preds = %if.then31
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %51, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %59)
  %cmp.i = icmp ult i8 %59, 18
  br i1 %cmp.i, label %if.then4.i, label %if.else.i.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge

if.else.i.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_ticks_per_ms.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i60 = tail call i32 @ssb_clockspeed(ptr noundef %53) #4
  %div.i61 = udiv i32 %call.i60, 1000
  br label %ssb_chipco_watchdog_ticks_per_ms.exit

ssb_chipco_watchdog_ticks_per_ms.exit:            ; preds = %if.then4.i, %if.else.i.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge, %if.then31.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge
  %retval.0.i62 = phi i32 [ %div.i61, %if.then4.i ], [ 32, %if.then31.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge ], [ 20000, %if.else.i.ssb_chipco_watchdog_ticks_per_ms.exit_crit_edge ]
  %ticks_per_ms = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 6
  %60 = ptrtoint ptr %ticks_per_ms to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i62, ptr %ticks_per_ms, align 4
  %61 = ptrtoint ptr %capabilities.i57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %capabilities.i57, align 4
  %and.i64 = and i32 %62, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %ssb_chipco_watchdog_ticks_per_ms.exit.if.end10.thread.i_crit_edge, label %if.then.i

ssb_chipco_watchdog_ticks_per_ms.exit.if.end10.thread.i_crit_edge: ; preds = %ssb_chipco_watchdog_ticks_per_ms.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.thread.i

if.then.i:                                        ; preds = %ssb_chipco_watchdog_ticks_per_ms.exit
  %63 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cc, align 4
  %revision.i66 = getelementptr inbounds %struct.ssb_device, ptr %64, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %revision.i66 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %revision.i66, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %66)
  %cmp.i67 = icmp ult i8 %66, 26
  br i1 %cmp.i67, label %if.then.i.if.end10.thread.i_crit_edge, label %if.else.i68

if.then.i.if.end10.thread.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.thread.i

if.else.i68:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %66)
  %cmp7.i = icmp ugt i8 %66, 36
  br i1 %cmp7.i, label %if.else.i68.ssb_chipco_watchdog_get_max_timer.exit_crit_edge, label %if.else.i68.if.end10.thread.i_crit_edge

if.else.i68.if.end10.thread.i_crit_edge:          ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.thread.i

if.else.i68.ssb_chipco_watchdog_get_max_timer.exit_crit_edge: ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssb_chipco_watchdog_get_max_timer.exit

if.end10.thread.i:                                ; preds = %if.else.i68.if.end10.thread.i_crit_edge, %if.then.i.if.end10.thread.i_crit_edge, %ssb_chipco_watchdog_ticks_per_ms.exit.if.end10.thread.i_crit_edge
  %nb.0.ph.i = phi i32 [ 28, %ssb_chipco_watchdog_ticks_per_ms.exit.if.end10.thread.i_crit_edge ], [ 16, %if.then.i.if.end10.thread.i_crit_edge ], [ 24, %if.else.i68.if.end10.thread.i_crit_edge ]
  %notmask20.i = shl nsw i32 -1, %nb.0.ph.i
  %sub21.i = xor i32 %notmask20.i, -1
  br label %ssb_chipco_watchdog_get_max_timer.exit

ssb_chipco_watchdog_get_max_timer.exit:           ; preds = %if.end10.thread.i, %if.else.i68.ssb_chipco_watchdog_get_max_timer.exit_crit_edge
  %67 = phi i32 [ %sub21.i, %if.end10.thread.i ], [ -1, %if.else.i68.ssb_chipco_watchdog_get_max_timer.exit_crit_edge ]
  %div = udiv i32 %67, %retval.0.i62
  %max_timer_ms = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 7
  %68 = ptrtoint ptr %max_timer_ms to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div, ptr %max_timer_ms, align 4
  br label %if.end35

if.end35:                                         ; preds = %ssb_chipco_watchdog_get_max_timer.exit, %calc_fast_powerup_delay.exit.if.end35_crit_edge, %entry.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_pmu_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chipco_powercontrol_init(ptr nocapture noundef readonly %cc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17185, i16 %5)
  %cmp = icmp eq i16 %5, 17185
  br i1 %cmp, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  %chip_rev = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_rev, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %7, label %if.then.if.end15_crit_edge [
    i8 0, label %if.then.if.end15.sink.split_crit_edge
    i8 1, label %if.then12
  ]

if.then.if.end15.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then12, %if.then.if.end15.sink.split_crit_edge
  %.sink = phi i32 [ 164, %if.then12 ], [ 932, %if.then.if.end15.sink.split_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i, align 4
  tail call void %12(ptr noundef %1, i16 noundef zeroext 40, i32 noundef %.sink) #4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %13 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capabilities, align 4
  %and = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15.cleanup_crit_edge, label %if.end17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cc, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %16, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %18)
  %cmp20 = icmp ugt i8 %18, 9
  br i1 %cmp20, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %22(ptr noundef %16, i16 noundef zeroext 192) #4
  %and25 = and i32 %call.i, 65535
  %or = or i32 %and25, 262144
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 4
  %write32.i47 = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write32.i47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i47, align 4
  tail call void %26(ptr noundef %16, i16 noundef zeroext 192, i32 noundef %or) #4
  br label %cleanup

if.else26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call fastcc i32 @chipco_pctl_clockfreqlimit(ptr noundef %cc, i32 noundef 1)
  %27 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cc, align 4
  %mul = mul i32 %call27, 150
  %add = add i32 %mul, 999999
  %div = sdiv i32 %add, 1000000
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %write32.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write32.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i48, align 4
  tail call void %32(ptr noundef %28, i16 noundef zeroext 176, i32 noundef %div) #4
  %33 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cc, align 4
  %mul30 = mul i32 %call27, 15
  %add31 = add i32 %mul30, 999999
  %div32 = sdiv i32 %add31, 1000000
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %write32.i49 = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %write32.i49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i49, align 4
  tail call void %38(ptr noundef %34, i16 noundef zeroext 180, i32 noundef %div32) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.then22, %if.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipco_suspend(ptr nocapture noundef readonly %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ssb_chipco_set_clockmode(ptr noundef %cc, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipco_resume(ptr nocapture noundef readonly %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @chipco_powercontrol_init(ptr noundef %cc)
  tail call void @ssb_chipco_set_clockmode(ptr noundef %cc, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipco_get_clockcpu(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %plltype, ptr nocapture noundef writeonly %n, ptr nocapture noundef writeonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 144) #4
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %n, align 4
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capabilities, align 4
  %and = and i32 %8, 229376
  %9 = ptrtoint ptr %plltype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %plltype, align 4
  %10 = add nsw i32 %and, -32768
  %11 = lshr exact i32 %10, 15
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %11, label %sw.default [
    i32 3, label %entry.sw.bb_crit_edge
    i32 0, label %entry.sw.bb_crit_edge21
    i32 4, label %entry.sw.bb_crit_edge22
    i32 6, label %entry.sw.bb_crit_edge23
    i32 5, label %sw.bb3
  ]

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22, %entry.sw.bb_crit_edge23
  %13 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cc, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %read32.i15 = getelementptr inbounds %struct.ssb_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %read32.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i15, align 4
  %call.i16 = tail call i32 %18(ptr noundef %14, i16 noundef zeroext 160) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cc, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %read32.i17 = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read32.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i17, align 4
  %call.i18 = tail call i32 %24(ptr noundef %20, i16 noundef zeroext 156) #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cc, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %read32.i19 = getelementptr inbounds %struct.ssb_bus_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %read32.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i19, align 4
  %call.i20 = tail call i32 %30(ptr noundef %26, i16 noundef zeroext 148) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %call.i20.sink = phi i32 [ %call.i20, %sw.default ], [ %call.i18, %sw.bb3 ], [ %call.i16, %sw.bb ]
  %31 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i20.sink, ptr %m, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipco_get_clockcontrol(ptr nocapture noundef readonly %cc, ptr nocapture noundef writeonly %plltype, ptr nocapture noundef writeonly %n, ptr nocapture noundef writeonly %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 144) #4
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %n, align 4
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 1
  %7 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capabilities, align 4
  %and = and i32 %8, 229376
  %9 = ptrtoint ptr %plltype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %plltype, align 4
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and, label %entry.sw.default_crit_edge [
    i32 163840, label %sw.bb
    i32 196608, label %sw.bb3
  ]

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %read32.i18 = getelementptr inbounds %struct.ssb_bus_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %read32.i18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32.i18, align 4
  %call.i19 = tail call i32 %16(ptr noundef %12, i16 noundef zeroext 160) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %17 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc, align 4
  %bus = getelementptr inbounds %struct.ssb_device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 4
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21349, i16 %22)
  %cmp.not = icmp eq i16 %22, 21349
  br i1 %cmp.not, label %sw.bb3.sw.default_crit_edge, label %if.then

sw.bb3.sw.default_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.default

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %read32.i20 = getelementptr inbounds %struct.ssb_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i20, align 4
  %call.i21 = tail call i32 %26(ptr noundef %18, i16 noundef zeroext 156) #4
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb3.sw.default_crit_edge, %entry.sw.default_crit_edge
  %27 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %read32.i22 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read32.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i22, align 4
  %call.i23 = tail call i32 %32(ptr noundef %28, i16 noundef zeroext 148) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb
  %call.i23.sink = phi i32 [ %call.i23, %sw.default ], [ %call.i21, %if.then ], [ %call.i19, %sw.bb ]
  %33 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i23.sink, ptr %m, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipco_timing_init(ptr nocapture noundef readonly %cc, i32 noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus2 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32.i, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 288, i32 noundef 17) #4
  %sub = add i32 %ns, 9
  %div = udiv i32 %sub, %ns
  %shl = shl i32 %div, 24
  %sub5 = add i32 %ns, 39
  %div6 = udiv i32 %sub5, %ns
  %shl7 = shl i32 %div6, 8
  %or = or i32 %shl7, %shl
  %sub9 = add i32 %ns, 239
  %div10 = udiv i32 %sub9, %ns
  %or11 = or i32 %or, %div10
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %write32.i117 = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i117 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i117, align 4
  tail call void %13(ptr noundef %9, i16 noundef zeroext 292, i32 noundef %or11) #4
  %shl20 = shl i32 %div, 8
  %sub23 = add i32 %ns, 119
  %div24 = udiv i32 %sub23, %ns
  %or21 = or i32 %div24, %shl
  %or25 = or i32 %or21, %shl20
  %chip_id = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21349, i16 %15)
  %cmp = icmp eq i16 %15, 21349
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %17)
  %cmp28 = icmp ult i8 %17, 9
  br i1 %cmp28, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %18 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cc, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write32.i118 = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %write32.i118 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i118, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 300, i32 noundef %or25) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %24 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21349, i16 %25)
  %cmp33 = icmp eq i16 %25, 21349
  br i1 %cmp33, label %if.end.if.then49_crit_edge, label %lor.lhs.false35

if.end.if.then49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

lor.lhs.false35:                                  ; preds = %if.end
  %revision37 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %revision37 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %revision37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %27)
  %cmp39 = icmp ult i8 %27, 9
  br i1 %cmp39, label %lor.lhs.false35.if.then49_crit_edge, label %lor.lhs.false41

lor.lhs.false35.if.then49_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_const_cmp2(i16 21328, i16 %25)
  %cmp44 = icmp eq i16 %25, 21328
  br i1 %cmp44, label %land.lhs.true, label %lor.lhs.false41.if.end51_crit_edge

lor.lhs.false41.if.end51_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

land.lhs.true:                                    ; preds = %lor.lhs.false41
  %chip_rev = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp47 = icmp eq i8 %29, 0
  br i1 %cmp47, label %land.lhs.true.if.then49_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

if.then49:                                        ; preds = %land.lhs.true.if.then49_crit_edge, %lor.lhs.false35.if.then49_crit_edge, %if.end.if.then49_crit_edge
  %30 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cc, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %write32.i119 = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %write32.i119 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i119, align 4
  tail call void %35(ptr noundef %31, i16 noundef zeroext 260, i32 noundef %or25) #4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %land.lhs.true.if.end51_crit_edge, %lor.lhs.false41.if.end51_crit_edge
  %36 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21328, i16 %37)
  %cmp54 = icmp eq i16 %37, 21328
  br i1 %cmp54, label %if.then56, label %if.end51.if.end76_crit_edge

if.end51.if.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %sub62 = add i32 %ns, 19
  %div63 = udiv i32 %sub62, %ns
  %shl64 = shl i32 %div63, 16
  %sub67 = add i32 %ns, 99
  %div68 = udiv i32 %sub67, %ns
  %shl69 = shl i32 %div68, 8
  %or70 = or i32 %or21, %shl64
  %or74 = or i32 %or70, %shl69
  %38 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cc, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %write32.i120 = getelementptr inbounds %struct.ssb_bus_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %write32.i120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i120, align 4
  tail call void %43(ptr noundef %39, i16 noundef zeroext 292, i32 noundef %or74) #4
  br label %if.end76

if.end76:                                         ; preds = %if.then56, %if.end51.if.end76_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_chipco_irq_mask(ptr nocapture noundef readonly %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 36) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 36, i32 noundef %or.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_irq_status(ptr nocapture noundef readonly %cc, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 32) #4
  %and = and i32 %call.i, %mask
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_in(ptr nocapture noundef readonly %cc, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 96) #4
  %and = and i32 %call.i, %mask
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_out(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #4
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 100) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 100, i32 noundef %or.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #4
  ret i32 %or.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_outen(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #4
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 104) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 104, i32 noundef %or.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #4
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_control(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #4
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 108) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 108, i32 noundef %or.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #4
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_intmask(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #4
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 116) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 116, i32 noundef %or.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #4
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_polarity(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #4
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 112) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %7, i16 noundef zeroext 112, i32 noundef %or.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #4
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_pullup(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp = icmp ult i8 %3, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #4
  %and.i = and i32 %value, %mask
  %4 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5, i16 noundef zeroext 88) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %10 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %11, i16 noundef zeroext 88, i32 noundef %or.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call5) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %do.body2 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_chipco_gpio_pulldown(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp = icmp ult i8 %3, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, ptr %cc, i32 0, i32 4
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #4
  %and.i = and i32 %value, %mask
  %4 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5, i16 noundef zeroext 92) #4
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %10 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %11, i16 noundef zeroext 92, i32 noundef %or.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call5) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %do.body2 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chipco_pctl_clockfreqlimit(ptr nocapture noundef readonly %cc, i32 noundef %get_max) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %bus1.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp.i, align 4, !annotation !24
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp.i = icmp ult i8 %6, 6
  br i1 %cmp.i, label %if.then.i, label %if.end17.i

if.then.i:                                        ; preds = %entry
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bustype.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %8, label %if.then.i.if.then24.i_crit_edge [
    i32 0, label %if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge
    i32 2, label %if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge78
    i32 1, label %if.then13.i
  ]

if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge78: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chipco_pctl_get_slowclksrc.exit

if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chipco_pctl_get_slowclksrc.exit

if.then.i.if.then24.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef 180, ptr noundef nonnull %tmp.i) #4
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp.i, align 4
  %and.i = lshr i32 %14, 4
  %and.lobit.i = and i32 %and.i, 1
  %15 = xor i32 %and.lobit.i, 1
  br label %chipco_pctl_get_slowclksrc.exit

if.end17.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp22.i = icmp ult i8 %6, 10
  br i1 %cmp22.i, label %if.end17.i.if.then24.i_crit_edge, label %if.end17.i.chipco_pctl_get_slowclksrc.exit_crit_edge

if.end17.i.chipco_pctl_get_slowclksrc.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chipco_pctl_get_slowclksrc.exit

if.end17.i.if.then24.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24.i

if.then24.i:                                      ; preds = %if.end17.i.if.then24.i_crit_edge, %if.then.i.if.then24.i_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %19(ptr noundef %1, i16 noundef zeroext 184) #4
  %and27.i = and i32 %call.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and27.i)
  %20 = icmp ult i32 %and27.i, 3
  %switch.offset = sub nsw i32 2, %and27.i
  %spec.select = select i1 %20, i32 %switch.offset, i32 1
  br label %chipco_pctl_get_slowclksrc.exit

chipco_pctl_get_slowclksrc.exit:                  ; preds = %if.then24.i, %if.end17.i.chipco_pctl_get_slowclksrc.exit_crit_edge, %if.then13.i, %if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge, %if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge78
  %retval.0.i = phi i32 [ 1, %if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge ], [ 1, %if.then.i.chipco_pctl_get_slowclksrc.exit_crit_edge78 ], [ %15, %if.then13.i ], [ 1, %if.end17.i.chipco_pctl_get_slowclksrc.exit_crit_edge ], [ %spec.select, %if.then24.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %21 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cc, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %22, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %cmp = icmp ult i8 %24, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %chipco_pctl_get_slowclksrc.exit
  %25 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %retval.0.i, label %do.end [
    i32 0, label %if.then.sw.bb48_crit_edge
    i32 1, label %if.then.sw.bb43_crit_edge
  ]

if.then.sw.bb43_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb43

if.then.sw.bb48_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb48

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #4
  br label %if.end37

if.else:                                          ; preds = %chipco_pctl_get_slowclksrc.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp23 = icmp ult i8 %24, 10
  br i1 %cmp23, label %if.then25, label %if.else30

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %switch = icmp ult i32 %retval.0.i, 2
  br i1 %switch, label %sw.bb26, label %if.then25.if.end37_crit_edge

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

sw.bb26:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i, align 4
  %call.i69 = call i32 %29(ptr noundef %22, i16 noundef zeroext 184) #4
  %30 = lshr i32 %call.i69, 14
  %add = and i32 %30, 262140
  %mul = add nuw nsw i32 %add, 4
  br label %if.end37

if.else30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %22, align 4
  %read32.i70 = getelementptr inbounds %struct.ssb_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read32.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i70, align 4
  %call.i71 = call i32 %34(ptr noundef %22, i16 noundef zeroext 192) #4
  %35 = lshr i32 %call.i71, 14
  %add34 = and i32 %35, 262140
  %mul35 = add nuw nsw i32 %add34, 4
  br label %if.end37

if.end37:                                         ; preds = %if.else30, %sw.bb26, %if.then25.if.end37_crit_edge, %do.end
  %divisor.0 = phi i32 [ 1, %do.end ], [ 1, %if.then25.if.end37_crit_edge ], [ %mul, %sw.bb26 ], [ %mul35, %if.else30 ]
  %36 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %retval.0.i, label %if.end37.sw.epilog53_crit_edge [
    i32 2, label %sw.bb38
    i32 1, label %if.end37.sw.bb43_crit_edge
    i32 0, label %if.end37.sw.bb48_crit_edge
  ]

if.end37.sw.bb48_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb48

if.end37.sw.bb43_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb43

if.end37.sw.epilog53_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog53

sw.bb38:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %get_max)
  %tobool39.not = icmp eq i32 %get_max, 0
  %. = select i1 %tobool39.not, i32 25000, i32 43000
  br label %sw.epilog53

sw.bb43:                                          ; preds = %if.end37.sw.bb43_crit_edge, %if.then.sw.bb43_crit_edge
  %divisor.073 = phi i32 [ %divisor.0, %if.end37.sw.bb43_crit_edge ], [ 32, %if.then.sw.bb43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %get_max)
  %tobool44.not = icmp eq i32 %get_max, 0
  %.67 = select i1 %tobool44.not, i32 19800000, i32 20200000
  br label %sw.epilog53

sw.bb48:                                          ; preds = %if.end37.sw.bb48_crit_edge, %if.then.sw.bb48_crit_edge
  %divisor.077 = phi i32 [ %divisor.0, %if.end37.sw.bb48_crit_edge ], [ 64, %if.then.sw.bb48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %get_max)
  %tobool49.not = icmp eq i32 %get_max, 0
  %.68 = select i1 %tobool49.not, i32 25000000, i32 34000000
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.bb48, %sw.bb43, %sw.bb38, %if.end37.sw.epilog53_crit_edge
  %divisor.074 = phi i32 [ %divisor.0, %if.end37.sw.epilog53_crit_edge ], [ %divisor.0, %sw.bb38 ], [ %divisor.073, %sw.bb43 ], [ %divisor.077, %sw.bb48 ]
  %limit.0 = phi i32 [ -1, %if.end37.sw.epilog53_crit_edge ], [ %., %sw.bb38 ], [ %.67, %sw.bb43 ], [ %.68, %sw.bb48 ]
  %div = sdiv i32 %limit.0, %divisor.074
  ret i32 %div
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_clockspeed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/driver_chipcommon.c", i32 59, i32 2}
!2 = !{ptr @ssb_chipcommon_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/ssb/driver_chipcommon.c", i32 353, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/ssb/driver_chipcommon.c", i32 357, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ssb_chipcommon_init.__UNIQUE_ID_ddebug236, !6, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!10 = !{ptr @__ksymtab_ssb_chipco_gpio_control, !11, !"__ksymtab_ssb_chipco_gpio_control", i1 false, i1 false}
!11 = !{!"../drivers/ssb/driver_chipcommon.c", i32 544, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2148321499, i64 2148321504, i64 2148321517, i64 2148321561, i64 2148321595, i64 2148321616}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"auto-init"}
