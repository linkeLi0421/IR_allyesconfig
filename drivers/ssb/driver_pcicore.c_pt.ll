; ModuleID = '/llk/IR_all_yes/drivers/ssb/driver_pcicore.c_pt.bc'
source_filename = "../drivers/ssb/driver_pcicore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ssb_pcicore_dev_irqvecs_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_ssb_pcicore_dev_irqvecs_enable\09\09\09\09"
module asm "\09.long\09__crc_ssb_pcicore_dev_irqvecs_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssb_pcicore_dev_irqvecs_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ssb_pcicore_dev_irqvecs_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ssb_pcicore_dev_irqvecs_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/ssb/driver_pcicore.c\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_ssb_pcicore_dev_irqvecs_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssb_pcicore_dev_irqvecs_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ssb_pcicore_dev_irqvecs_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssb_pcicore_dev_irqvecs_enable to i32), ptr @__kstrtab_ssb_pcicore_dev_irqvecs_enable, ptr @__kstrtabns_ssb_pcicore_dev_irqvecs_enable }, section "___ksymtab+ssb_pcicore_dev_irqvecs_enable", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2052, i64 2080]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private constant [32 x i8] c"../drivers/ssb/driver_pcicore.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 702, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ssb_pcicore_dev_irqvecs_enable, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssb_pcicore_init(ptr nocapture noundef readonly %pc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ssb_device_is_enabled(ptr noundef nonnull %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @ssb_device_enable(ptr noundef nonnull %1, i32 noundef 0) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %hostmode = getelementptr inbounds %struct.ssb_pcicore, ptr %pc, i32 0, i32 1
  %2 = ptrtoint ptr %hostmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %hostmode, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pc, align 4
  %bus1.i = getelementptr inbounds %struct.ssb_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus1.i, align 4
  %bustype.i = getelementptr inbounds %struct.ssb_bus, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bustype.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bustype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then.i, label %if.then6.if.end.i_crit_edge

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %if.then6
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %13(ptr noundef %5, i16 noundef zeroext 2048) #3
  %14 = lshr i16 %call.i.i.i.i, 12
  %15 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pc, align 4
  %core_index.i.i = getelementptr inbounds %struct.ssb_device, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %core_index.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %core_index.i.i, align 2
  %19 = zext i8 %18 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %19)
  %cmp.not.i.i = icmp eq i16 %14, %19
  br i1 %cmp.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %and4.i.i = and i16 %call.i.i.i.i, 4095
  %20 = shl i16 %19, 12
  %conv10.i.i = or i16 %20, %and4.i.i
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %24(ptr noundef %16, i16 noundef zeroext 2048, i16 noundef zeroext %conv10.i.i) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %if.then6.if.end.i_crit_edge
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i.i, align 4
  tail call void %28(ptr noundef %5, i16 noundef zeroext 3988, i32 noundef 0) #3
  %29 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pc, align 4
  %coreid.i = getelementptr inbounds %struct.ssb_device, ptr %30, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %coreid.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %coreid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2080, i16 %32)
  %cmp3.i = icmp eq i16 %32, 2080
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ssb_pcicore_serdes_workaround(ptr noundef %pc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i, %if.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_device_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_pcicore_dev_irqvecs_enable(ptr nocapture noundef %pc, ptr noundef %dev) #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #3
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !13
  %bus2 = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus2, align 4
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp ne i32 %6, 1
  %tobool.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup116_crit_edge, label %if.end4

entry.cleanup116_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup116

if.end4:                                          ; preds = %entry
  %bus5 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %bus5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus5, align 4
  %coreid = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %coreid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %coreid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2052, i16 %10)
  %cmp6.not = icmp eq i16 %10, 2052
  br i1 %cmp6.not, label %if.end4.do.end15_crit_edge, label %do.body9

if.end4.do.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end15

do.body9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 702) #3
  br label %do.end15

do.end15:                                         ; preds = %do.body9, %if.end4.do.end15_crit_edge
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp18 = icmp ugt i8 %12, 5
  br i1 %cmp18, label %do.end15.if.then25_crit_edge, label %lor.lhs.false

do.end15.if.then25_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

lor.lhs.false:                                    ; preds = %do.end15
  %13 = ptrtoint ptr %coreid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %coreid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2080, i16 %14)
  %cmp23 = icmp eq i16 %14, 2080
  br i1 %cmp23, label %lor.lhs.false.if.then25_crit_edge, label %if.else

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %do.end15.if.then25_crit_edge
  %core_index = getelementptr inbounds %struct.ssb_device, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %core_index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %core_index, align 2
  %conv26 = zext i8 %16 to i32
  %bustype27 = getelementptr inbounds %struct.ssb_bus, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %bustype27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bustype27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp28.not = icmp eq i32 %18, 1
  br i1 %cmp28.not, label %if.then25.if.end47_crit_edge, label %do.end41, !prof !14

if.then25.if.end47_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

do.end41:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 711, i32 noundef 9, ptr noundef null) #3
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.then25.if.end47_crit_edge
  %19 = getelementptr inbounds %struct.ssb_bus, ptr %8, i32 0, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %21, i32 noundef 148, ptr noundef nonnull %tmp) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool55.not = icmp eq i32 %call, 0
  br i1 %tobool55.not, label %if.end57, label %if.end47.cleanup116_crit_edge

if.end47.cleanup116_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup116

if.end57:                                         ; preds = %if.end47
  %shl58 = shl i32 256, %conv26
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tmp, align 4
  %or = or i32 %23, %shl58
  store i32 %or, ptr %tmp, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %call59 = call i32 @pci_write_config_dword(ptr noundef %25, i32 noundef 148, i32 noundef %or) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end57.if.end67_crit_edge, label %if.end57.cleanup116_crit_edge

if.end57.cleanup116_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup116

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %read32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %29(ptr noundef nonnull %1, i16 noundef zeroext 3988) #3
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %read32.i142 = getelementptr inbounds %struct.ssb_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %read32.i142 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read32.i142, align 4
  %call.i143 = tail call i32 %33(ptr noundef %dev, i16 noundef zeroext 3864) #3
  %and = and i32 %call.i143, 63
  %34 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and, ptr %tmp, align 4
  %shl65 = shl nuw i32 1, %and
  %or66 = or i32 %shl65, %call.i
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %write32.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32.i, align 4
  tail call void %38(ptr noundef nonnull %1, i16 noundef zeroext 3988, i32 noundef %or66) #3
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.end57.if.end67_crit_edge
  %setup_done = getelementptr inbounds %struct.ssb_pcicore, ptr %pc, i32 0, i32 1
  %39 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %setup_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool68.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool68.not, label %if.end70, label %if.end67.cleanup116_crit_edge

if.end67.cleanup116_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup116

if.end70:                                         ; preds = %if.end67
  %40 = ptrtoint ptr %coreid to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %coreid, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i16 %41, label %do.end99 [
    i16 2052, label %if.then76
    i16 2080, label %if.end70.if.end105_crit_edge
  ], !prof !15

if.end70.if.end105_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

if.then76:                                        ; preds = %if.end70
  %43 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pc, align 4
  %bus1.i = getelementptr inbounds %struct.ssb_device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bus1.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = call i32 %50(ptr noundef %44, i16 noundef zeroext 264) #3
  %or2.i = or i32 %call.i.i.i, 12
  %51 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pc, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i.i.i, align 4
  call void %56(ptr noundef %52, i16 noundef zeroext 264, i32 noundef %or2.i) #3
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %44, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %58)
  %cmp.i = icmp ult i8 %58, 5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #5
  %59 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %44, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %62(ptr noundef %44, i16 noundef zeroext 4008) #3
  %and.i = and i32 %call.i.i, -120
  %or7.i = or i32 %and.i, 50
  %63 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %44, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write32.i.i, align 4
  call void %66(ptr noundef %44, i16 noundef zeroext 4008, i32 noundef %or7.i) #3
  call void @ssb_commit_settings(ptr noundef %46) #3
  br label %if.end113

if.else.i:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %58)
  %cmp11.i = icmp ugt i8 %58, 10
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i.if.end113_crit_edge

if.else.i.if.end113_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %67 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pc, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %read32.i.i34.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %read32.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read32.i.i34.i, align 4
  %call.i.i35.i = call i32 %72(ptr noundef %68, i16 noundef zeroext 264) #3
  %or15.i = or i32 %call.i.i35.i, 32
  %73 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pc, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %write32.i.i36.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %write32.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write32.i.i36.i, align 4
  call void %78(ptr noundef %74, i16 noundef zeroext 264, i32 noundef %or15.i) #3
  br label %if.end113

do.end99:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 735, i32 noundef 9, ptr noundef null) #3
  br label %if.end105

if.end105:                                        ; preds = %do.end99, %if.end70.if.end105_crit_edge
  %79 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pc, align 4
  %revision.i144 = getelementptr inbounds %struct.ssb_device, ptr %80, i32 0, i32 4, i32 2
  %81 = ptrtoint ptr %revision.i144 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %revision.i144, align 4
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %82, label %if.end105.if.end35.i_crit_edge [
    i8 1, label %if.end105.if.then.i145_crit_edge
    i8 0, label %if.end105.if.then.i145_crit_edge150
    i8 3, label %if.end105.if.then27.i_crit_edge
    i8 4, label %if.end105.if.then27.i_crit_edge151
    i8 5, label %if.end105.if.then27.i_crit_edge152
  ]

if.end105.if.then27.i_crit_edge152:               ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27.i

if.end105.if.then27.i_crit_edge151:               ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27.i

if.end105.if.then27.i_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then27.i

if.end105.if.then.i145_crit_edge150:              ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i145

if.end105.if.then.i145_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i145

if.end105.if.end35.i_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35.i

if.then.i145:                                     ; preds = %if.end105.if.then.i145_crit_edge, %if.end105.if.then.i145_crit_edge150
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %80, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write32.i.i.i.i, align 4
  call void %87(ptr noundef %80, i16 noundef zeroext 304, i32 noundef 4) #3
  %88 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pc, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %93(ptr noundef %89, i16 noundef zeroext 308) #3
  %or.i = or i32 %call.i.i.i.i, 8
  %94 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pc, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %write32.i.i.i70.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %write32.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write32.i.i.i70.i, align 4
  call void %99(ptr noundef %95, i16 noundef zeroext 304, i32 noundef 4) #3
  %100 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pc, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %write32.i.i2.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %write32.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write32.i.i2.i.i, align 4
  call void %105(ptr noundef %101, i16 noundef zeroext 308, i32 noundef %or.i) #3
  %106 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %82, label %if.then.i145.if.end35.i_crit_edge [
    i8 1, label %if.then8.i
    i8 0, label %if.then15.i
  ]

if.then.i145.if.end35.i_crit_edge:                ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35.i

if.then8.i:                                       ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #5
  %107 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pc, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %write32.i.i.i71.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %write32.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write32.i.i.i71.i, align 4
  call void %112(ptr noundef %108, i16 noundef zeroext 304, i32 noundef 256) #3
  %113 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pc, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %read32.i.i.i72.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %read32.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read32.i.i.i72.i, align 4
  %call.i.i.i73.i = call i32 %118(ptr noundef %114, i16 noundef zeroext 308) #3
  %or10.i = or i32 %call.i.i.i73.i, 64
  %119 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pc, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %write32.i.i.i74.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %write32.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write32.i.i.i74.i, align 4
  call void %124(ptr noundef %120, i16 noundef zeroext 304, i32 noundef 256) #3
  %125 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pc, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %write32.i.i2.i75.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %write32.i.i2.i75.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write32.i.i2.i75.i, align 4
  call void %130(ptr noundef %126, i16 noundef zeroext 308, i32 noundef %or10.i) #3
  br label %if.end113

if.then15.i:                                      ; preds = %if.then.i145
  call void @__sanitizer_cov_trace_pc() #5
  call fastcc void @ssb_pcie_mdio_write(ptr noundef %pc, i8 noundef zeroext 31, i8 noundef zeroext 2, i16 noundef zeroext -32472) #3
  call fastcc void @ssb_pcie_mdio_write(ptr noundef %pc, i8 noundef zeroext 31, i8 noundef zeroext 6, i16 noundef zeroext 256) #3
  call fastcc void @ssb_pcie_mdio_write(ptr noundef %pc, i8 noundef zeroext 31, i8 noundef zeroext 7, i16 noundef zeroext 5222) #3
  br label %if.end113

if.then27.i:                                      ; preds = %if.end105.if.then27.i_crit_edge, %if.end105.if.then27.i_crit_edge151, %if.end105.if.then27.i_crit_edge152
  call fastcc void @ssb_pcicore_serdes_workaround(ptr noundef %pc) #3
  br label %if.end113

if.end35.i:                                       ; preds = %if.then.i145.if.end35.i_crit_edge, %if.end105.if.end35.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %82)
  %cmp37.i = icmp ugt i8 %82, 5
  br i1 %cmp37.i, label %if.then39.i, label %if.end35.i.if.end113_crit_edge

if.end35.i.if.end113_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

if.then39.i:                                      ; preds = %if.end35.i
  %131 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pc, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i146 = call zeroext i16 %136(ptr noundef %132, i16 noundef zeroext 2058) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i.i146)
  %tobool.not.i = icmp sgt i16 %call.i.i.i146, -1
  br i1 %tobool.not.i, label %if.then42.i, label %if.then39.i.if.end113_crit_edge

if.then39.i.if.end113_crit_edge:                  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end113

if.then42.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #5
  %or43.i = or i16 %call.i.i.i146, -32768
  %137 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pc, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write16.i.i.i, align 4
  call void %142(ptr noundef %138, i16 noundef zeroext 2058, i16 noundef zeroext %or43.i) #3
  br label %if.end113

if.end113:                                        ; preds = %if.then42.i, %if.then39.i.if.end113_crit_edge, %if.end35.i.if.end113_crit_edge, %if.then27.i, %if.then15.i, %if.then8.i, %if.then13.i, %if.else.i.if.end113_crit_edge, %if.then.i
  %143 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load115 = load i8, ptr %setup_done, align 4
  %bf.set = or i8 %bf.load115, -128
  store i8 %bf.set, ptr %setup_done, align 4
  br label %cleanup116

cleanup116:                                       ; preds = %if.end113, %if.end67.cleanup116_crit_edge, %if.end57.cleanup116_crit_edge, %if.end47.cleanup116_crit_edge, %entry.cleanup116_crit_edge
  %err.2 = phi i32 [ 0, %entry.cleanup116_crit_edge ], [ 0, %if.end67.cleanup116_crit_edge ], [ 0, %if.end113 ], [ %call59, %if.end57.cleanup116_crit_edge ], [ %call, %if.end47.cleanup116_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #3
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssb_pcicore_serdes_workaround(ptr nocapture noundef readonly %pc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 304, i32 noundef 516) #3
  %6 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read32.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %11(ptr noundef %7, i16 noundef zeroext 308) #3
  %and.i = and i32 %call.i.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv = select i1 %tobool.not.i, i16 128, i16 192
  tail call fastcc void @ssb_pcie_mdio_write(ptr noundef %pc, i8 noundef zeroext 31, i8 noundef zeroext 1, i16 noundef zeroext %conv)
  %12 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %17(ptr noundef %13, i16 noundef zeroext 296, i32 noundef 130) #3
  %18 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pc, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %19, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %21)
  %cmp.i = icmp ugt i8 %21, 9
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %write32.i.i.i.i10 = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %write32.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32.i.i.i.i10, align 4
  tail call void %25(ptr noundef %19, i16 noundef zeroext 300, i32 noundef 1350435280) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.012.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %27 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pc, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %read32.i.i.i.i11 = getelementptr inbounds %struct.ssb_bus_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read32.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.i.i.i11, align 4
  %call.i.i.i.i12 = tail call i32 %32(ptr noundef %28, i16 noundef zeroext 296) #3
  %and.i.i = and i32 %call.i.i.i.i12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  tail call void @msleep(i32 noundef 1) #3
  %inc.i.i = add nuw nsw i32 %i.012.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 200
  br i1 %exitcond.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %for.body.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %max_retries.0.i = phi i32 [ 10, %entry.if.end.i_crit_edge ], [ 200, %for.body.i.i.if.end.i_crit_edge ], [ 200, %if.end.i.i.if.end.i_crit_edge ]
  %33 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pc, align 4
  %revision6.i = getelementptr inbounds %struct.ssb_device, ptr %34, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %revision6.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %revision6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %36)
  %cmp8.i = icmp ult i8 %36, 10
  %spec.select.i = select i1 %cmp8.i, i32 1732640768, i32 1611005952
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %write32.i.i1.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %write32.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32.i.i1.i, align 4
  tail call void %40(ptr noundef %34, i16 noundef zeroext 300, i32 noundef %spec.select.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end22.i.for.body.i_crit_edge, %if.end.i
  %i.05.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %if.end22.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pc, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %47(ptr noundef %43, i16 noundef zeroext 296) #3
  %and.i13 = and i32 %call.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.end22.i, label %if.then19.i

if.then19.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #3
  %49 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pc, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %read32.i.i2.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %read32.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32.i.i2.i, align 4
  %call.i.i3.i = tail call i32 %54(ptr noundef %50, i16 noundef zeroext 300) #3
  %conv21.i = trunc i32 %call.i.i3.i to i16
  br label %ssb_pcie_mdio_read.exit

if.end22.i:                                       ; preds = %for.body.i
  tail call void @msleep(i32 noundef 1) #3
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %max_retries.0.i
  br i1 %exitcond.not.i, label %if.end22.i.ssb_pcie_mdio_read.exit_crit_edge, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end22.i.ssb_pcie_mdio_read.exit_crit_edge:     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ssb_pcie_mdio_read.exit

ssb_pcie_mdio_read.exit:                          ; preds = %if.end22.i.ssb_pcie_mdio_read.exit_crit_edge, %if.then19.i
  %ret.0.i = phi i16 [ %conv21.i, %if.then19.i ], [ 0, %if.end22.i.ssb_pcie_mdio_read.exit_crit_edge ]
  %55 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pc, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %write32.i.i4.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %write32.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i.i4.i, align 4
  tail call void %60(ptr noundef %56, i16 noundef zeroext 296, i32 noundef 0) #3
  %61 = and i16 %ret.0.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not = icmp eq i16 %61, 0
  br i1 %tobool.not, label %ssb_pcie_mdio_read.exit.if.end_crit_edge, label %if.then

ssb_pcie_mdio_read.exit.if.end_crit_edge:         ; preds = %ssb_pcie_mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %ssb_pcie_mdio_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  %and4 = and i16 %ret.0.i, -16385
  tail call fastcc void @ssb_pcie_mdio_write(ptr noundef %pc, i8 noundef zeroext 29, i8 noundef zeroext 1, i16 noundef zeroext %and4)
  br label %if.end

if.end:                                           ; preds = %if.then, %ssb_pcie_mdio_read.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssb_pcie_mdio_write(ptr nocapture noundef readonly %pc, i8 noundef zeroext %device, i8 noundef zeroext %address, i16 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32.i.i, align 4
  tail call void %5(ptr noundef %1, i16 noundef zeroext 296, i32 noundef 130) #3
  %6 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pc, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %7, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %9)
  %cmp = icmp ugt i8 %9, 9
  %conv.i = zext i8 %device to i32
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %or3.i = or i32 %shl.i, 1350434816
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %write32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %13(ptr noundef %7, i16 noundef zeroext 300, i32 noundef %or3.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.012.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pc, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %20(ptr noundef %16, i16 noundef zeroext 296) #3
  %and.i = and i32 %call.i.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %for.body.i
  tail call void @msleep(i32 noundef 1) #3
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %max_retries.0 = phi i32 [ 10, %entry.if.end_crit_edge ], [ 200, %for.body.i.if.end_crit_edge ], [ 200, %if.end.i.if.end_crit_edge ]
  %21 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pc, align 4
  %revision6 = getelementptr inbounds %struct.ssb_device, ptr %22, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %revision6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %revision6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp8 = icmp ult i8 %24, 10
  %shl = shl nuw nsw i32 %conv.i, 22
  %or12 = or i32 %shl, 1342308352
  %v.0 = select i1 %cmp8, i32 %or12, i32 1342308352
  %conv14 = zext i8 %address to i32
  %shl15 = shl nuw nsw i32 %conv14, 18
  %conv17 = zext i16 %data to i32
  %or16 = or i32 %shl15, %conv17
  %or18 = or i32 %or16, %v.0
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %write32.i.i39 = getelementptr inbounds %struct.ssb_bus_ops, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %write32.i.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write32.i.i39, align 4
  tail call void %28(ptr noundef %22, i16 noundef zeroext 300, i32 noundef %or18) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #3
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %if.end
  %i.041 = phi i32 [ 0, %if.end ], [ %inc, %if.end22.for.body_crit_edge ]
  %30 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pc, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %35(ptr noundef %31, i16 noundef zeroext 296) #3
  %and = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end22, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end22:                                         ; preds = %for.body
  tail call void @msleep(i32 noundef 1) #3
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %max_retries.0
  br i1 %exitcond.not, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %for.body.for.end_crit_edge
  %36 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pc, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %write32.i.i40 = getelementptr inbounds %struct.ssb_bus_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %write32.i.i40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i40, align 4
  tail call void %41(ptr noundef %37, i16 noundef zeroext 296, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_commit_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/driver_pcicore.c", i32 702, i32 2}
!2 = !{ptr @__ksymtab_ssb_pcicore_dev_irqvecs_enable, !3, !"__ksymtab_ssb_pcicore_dev_irqvecs_enable", i1 false, i1 false}
!3 = !{!"../drivers/ssb/driver_pcicore.c", i32 742, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
