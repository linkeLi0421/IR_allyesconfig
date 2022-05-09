; ModuleID = '/llk/IR_all_yes/drivers/mfd/ucb1400_core.c_pt.bc'
source_filename = "../drivers/mfd/ucb1400_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ucb1400_adc_read\22, \22a\22\09"
module asm "\09.weak\09__crc_ucb1400_adc_read\09\09\09\09"
module asm "\09.long\09__crc_ucb1400_adc_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ucb1400_adc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ucb1400_adc_read\22\09\09\09\09\09"
module asm "__kstrtabns_ucb1400_adc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.74 = type { i32, [28 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ucb1400_ts = type { ptr, i32, i32, ptr, %struct.wait_queue_head, i8 }
%struct.ucb1400_gpio = type { %struct.gpio_chip, ptr, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.ucb1400_pdata = type { i32, i32, ptr, ptr }
%struct.ucb1400 = type { ptr, ptr }

@__kstrtab_ucb1400_adc_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ucb1400_adc_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ucb1400_adc_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ucb1400_adc_read to i32), ptr @__kstrtab_ucb1400_adc_read, ptr @__kstrtabns_ucb1400_adc_read }, section "___ksymtab_gpl+ucb1400_adc_read", align 4
@ucb1400_core_driver = internal global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str, ptr @ac97_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @ucb1400_core_probe, ptr null, ptr @ucb1400_core_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_ucb1400_core__234_156_ucb1400_core_init6 = internal global ptr @ucb1400_core_init, section ".initcall6.init", align 4
@__exitcall_ucb1400_core_exit = internal global ptr @ucb1400_core_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [48 x i8] c"ucb1400_core.description=Philips UCB1400 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [43 x i8] c"ucb1400_core.file=drivers/mfd/ucb1400_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"ucb1400_core.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ucb1400_core\00", [19 x i8] zeroinitializer }, align 32
@ac97_bus_type = external dso_local global %struct.bus_type, align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ucb1400_gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ucb1400_ts\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"ucb1400_core_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 139, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 140, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 80, i32 44 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [30 x i8] c"../drivers/mfd/ucb1400_core.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 101, i32 42 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_ucb1400_core_exit, ptr @__initcall__kmod_ucb1400_core__234_156_ucb1400_core_init6, ptr @__ksymtab_ucb1400_adc_read, ptr @ucb1400_core_exit, ptr @ucb1400_core_driver, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_core_driver to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ucb1400_adc_read(ptr noundef %ac97, i16 noundef zeroext %adc_channel, i32 noundef %adcsync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adcsync)
  %tobool.not = icmp ne i32 %adcsync, 0
  %0 = zext i1 %tobool.not to i16
  %spec.select = or i16 %0, %adc_channel
  %1 = or i16 %spec.select, -32768
  %bus.i = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 3
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %write.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  tail call void %7(ptr noundef %ac97, i16 noundef zeroext 102, i16 noundef zeroext %1) #5
  %8 = or i16 %spec.select, -32640
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %write.i18 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i18, align 4
  tail call void %14(ptr noundef %ac97, i16 noundef zeroext 102, i16 noundef zeroext %8) #5
  %15 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %read.i20 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %read.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i20, align 4
  %call.i21 = tail call zeroext i16 %20(ptr noundef %ac97, i16 noundef zeroext 104) #5
  %conv922 = zext i16 %call.i21 to i32
  %and23 = and i32 %conv922, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool10.not24 = icmp eq i32 %and23, 0
  br i1 %tobool10.not24, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call11 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #5
  %21 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %read.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i16 %26(ptr noundef %ac97, i16 noundef zeroext 104) #5
  %conv9 = zext i16 %call.i to i32
  %and = and i32 %conv9, 32768
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %conv9.lcssa = phi i32 [ %conv922, %entry.while.end_crit_edge ], [ %conv9, %while.body.while.end_crit_edge ]
  %and12 = and i32 %conv9.lcssa, 1023
  ret i32 %and12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucb1400_core_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef nonnull @ucb1400_core_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_core_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef nonnull @ucb1400_core_driver) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_core_probe(ptr noundef %dev) #0 align 64 {
entry:
  %ucb_ts = alloca %struct.ucb1400_ts, align 4
  %ucb_gpio = alloca %struct.ucb1400_gpio, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ucb_ts) #5
  call void @llvm.lifetime.start.p0(i64 364, ptr nonnull %ucb_gpio) #5
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = call ptr @memset(ptr %ucb_ts, i32 0, i32 72)
  %3 = call ptr @memset(ptr %ucb_gpio, i32 0, i32 364)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -688
  %bus.i = getelementptr i8, ptr %dev, i32 -676
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %read.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i16 %11(ptr noundef %add.ptr, i16 noundef zeroext 126) #5
  %conv = zext i16 %call.i to i32
  %id = getelementptr inbounds %struct.ucb1400_ts, ptr %ucb_ts, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17156, i16 %call.i)
  %cmp.not = icmp eq i16 %call.i, 17156
  br i1 %cmp.not, label %if.end6, label %if.end.err0_crit_edge

if.end.err0_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err0

if.end6:                                          ; preds = %if.end
  %ac977 = getelementptr inbounds %struct.ucb1400_gpio, ptr %ucb_gpio, i32 0, i32 1
  %13 = ptrtoint ptr %ac977 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %ac977, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_setup = getelementptr inbounds %struct.ucb1400_pdata, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %gpio_setup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_setup, align 4
  %gpio_setup10 = getelementptr inbounds %struct.ucb1400_gpio, ptr %ucb_gpio, i32 0, i32 3
  %16 = ptrtoint ptr %gpio_setup10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %gpio_setup10, align 4
  %gpio_teardown = getelementptr inbounds %struct.ucb1400_pdata, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %gpio_teardown to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_teardown, align 4
  %gpio_teardown11 = getelementptr inbounds %struct.ucb1400_gpio, ptr %ucb_gpio, i32 0, i32 4
  %19 = ptrtoint ptr %gpio_teardown11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %gpio_teardown11, align 4
  %gpio_offset = getelementptr inbounds %struct.ucb1400_pdata, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %gpio_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_offset, align 4
  %gpio_offset12 = getelementptr inbounds %struct.ucb1400_gpio, ptr %ucb_gpio, i32 0, i32 2
  %22 = ptrtoint ptr %gpio_offset12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %gpio_offset12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  %call14 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -1) #5
  %ucb1400_gpio = getelementptr inbounds %struct.ucb1400, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %ucb1400_gpio to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call14, ptr %ucb1400_gpio, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end13.err0_crit_edge, label %if.end18

if.end13.err0_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err0

if.end18:                                         ; preds = %if.end13
  %call20 = call i32 @platform_device_add_data(ptr noundef nonnull %call14, ptr noundef nonnull %ucb_gpio, i32 noundef 364) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.err1_crit_edge

if.end18.err1_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end23:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %ucb1400_gpio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ucb1400_gpio, align 4
  %call25 = call i32 @platform_device_add(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.err1_crit_edge

if.end23.err1_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end28:                                         ; preds = %if.end23
  %ac9729 = getelementptr inbounds %struct.ucb1400_ts, ptr %ucb_ts, i32 0, i32 3
  %26 = ptrtoint ptr %ac9729 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %ac9729, align 4
  br i1 %tobool8.not, label %if.end28.if.else_crit_edge, label %land.lhs.true

if.end28.if.else_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end28
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp32 = icmp sgt i32 %28, -1
  br i1 %cmp32, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end28.if.else_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.else, %land.lhs.true.if.end38_crit_edge
  %.sink = phi i32 [ -1, %if.else ], [ %28, %land.lhs.true.if.end38_crit_edge ]
  %irq37 = getelementptr inbounds %struct.ucb1400_ts, ptr %ucb_ts, i32 0, i32 2
  %29 = ptrtoint ptr %irq37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %irq37, align 4
  %call39 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.2, i32 noundef -1) #5
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call39, ptr %call7.i.i, align 8
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.end38.err2_crit_edge, label %if.end43

if.end38.err2_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end43:                                         ; preds = %if.end38
  %call45 = call i32 @platform_device_add_data(ptr noundef nonnull %call39, ptr noundef nonnull %ucb_ts, i32 noundef 72) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.err3_crit_edge

if.end43.err3_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %err3

if.end48:                                         ; preds = %if.end43
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %call50 = call i32 @platform_device_add(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.cleanup_crit_edge, label %if.end48.err3_crit_edge

if.end48.err3_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %err3

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err3:                                             ; preds = %if.end48.err3_crit_edge, %if.end43.err3_crit_edge
  %err.0 = phi i32 [ %call45, %if.end43.err3_crit_edge ], [ %call50, %if.end48.err3_crit_edge ]
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  call void @platform_device_put(ptr noundef %34) #5
  br label %err2

err2:                                             ; preds = %err3, %if.end38.err2_crit_edge
  %err.1 = phi i32 [ %err.0, %err3 ], [ -12, %if.end38.err2_crit_edge ]
  %35 = ptrtoint ptr %ucb1400_gpio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ucb1400_gpio, align 4
  call void @platform_device_del(ptr noundef %36) #5
  br label %err1

err1:                                             ; preds = %err2, %if.end23.err1_crit_edge, %if.end18.err1_crit_edge
  %err.2 = phi i32 [ %call20, %if.end18.err1_crit_edge ], [ %call25, %if.end23.err1_crit_edge ], [ %err.1, %err2 ]
  %37 = ptrtoint ptr %ucb1400_gpio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ucb1400_gpio, align 4
  call void @platform_device_put(ptr noundef %38) #5
  br label %err0

err0:                                             ; preds = %err1, %if.end13.err0_crit_edge, %if.end.err0_crit_edge
  %err.3 = phi i32 [ %err.2, %err1 ], [ -19, %if.end.err0_crit_edge ], [ -12, %if.end13.err0_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48.cleanup_crit_edge ], [ %err.3, %err0 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %ucb_gpio) #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ucb_ts) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_core_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #5
  %ucb1400_gpio = getelementptr inbounds %struct.ucb1400, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ucb1400_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ucb1400_gpio, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_ucb1400_adc_read, !1, !"__ksymtab_ucb1400_adc_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/ucb1400_core.c", i32 43, i32 1}
!2 = !{ptr @__initcall__kmod_ucb1400_core__234_156_ucb1400_core_init6, !3, !"__initcall__kmod_ucb1400_core__234_156_ucb1400_core_init6", i1 false, i1 false}
!3 = !{!"../drivers/mfd/ucb1400_core.c", i32 156, i32 1}
!4 = !{ptr @__exitcall_ucb1400_core_exit, !5, !"__exitcall_ucb1400_core_exit", i1 false, i1 false}
!5 = !{!"../drivers/mfd/ucb1400_core.c", i32 157, i32 1}
!6 = !{ptr @__UNIQUE_ID_description235, !7, !"__UNIQUE_ID_description235", i1 false, i1 false}
!7 = !{!"../drivers/mfd/ucb1400_core.c", i32 159, i32 1}
!8 = !{ptr @__UNIQUE_ID_file236, !9, !"__UNIQUE_ID_file236", i1 false, i1 false}
!9 = !{!"../drivers/mfd/ucb1400_core.c", i32 160, i32 1}
!10 = !{ptr @__UNIQUE_ID_license237, !9, !"__UNIQUE_ID_license237", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/ucb1400_core.c", i32 140, i32 10}
!13 = !{ptr @ucb1400_core_driver, !14, !"ucb1400_core_driver", i1 false, i1 false}
!14 = !{!"../drivers/mfd/ucb1400_core.c", i32 139, i32 29}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/ucb1400_core.c", i32 80, i32 44}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/ucb1400_core.c", i32 101, i32 42}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
