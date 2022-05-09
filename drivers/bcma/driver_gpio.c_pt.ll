; ModuleID = '/llk/IR_all_yes/drivers/bcma/driver_gpio.c_pt.bc'
source_filename = "../drivers/bcma/driver_gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.67, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.67 = type { ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.73, %struct.anon.74, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.73 = type { i8, i8, i8, i8 }
%struct.anon.74 = type { %struct.anon.75, %struct.anon.76 }
%struct.anon.75 = type { i8, i8, i8, i8, i8 }
%struct.anon.76 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcma_gpio\00", [22 x i8] zeroinitializer }, align 32
@bcma_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcma_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@bcma_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcma_gpio_irq_mask, ptr null, ptr @bcma_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BCMA-GPIO\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 21335, i64 53010, i64 53030, i64 53572, i64 53573]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 176, i32 17 }
@___asan_gen_.6 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 218, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 132, i32 63 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"bcma_gpio_irq_chip\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 96, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [30 x i8] c"../drivers/bcma/driver_gpio.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 97, i32 11 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @bcma_gpio_init.lock_key, ptr @bcma_gpio_init.request_key, ptr @.str.1, ptr @bcma_gpio_irq_chip, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_gpio_init(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %gpio = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %gpio, align 4
  %owner = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 4
  %request = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 5
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bcma_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 6
  %6 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bcma_gpio_free, ptr %free, align 4
  %get = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 10
  %7 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bcma_gpio_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 12
  %8 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bcma_gpio_set_value, ptr %set, align 4
  %direction_input = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 8
  %9 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bcma_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 9
  %10 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bcma_gpio_direction_output, ptr %direction_output, align 4
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %owner, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 2
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %parent, align 4
  %of_node = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 2, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 39
  %17 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node5, align 4
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chipinfo, align 4
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i16 %19, label %sw.default [
    i16 -12526, label %entry.sw.epilog_crit_edge
    i16 21335, label %entry.sw.epilog_crit_edge57
    i16 -11964, label %entry.sw.epilog_crit_edge58
    i16 -11963, label %entry.sw.epilog_crit_edge59
    i16 -12506, label %entry.sw.epilog_crit_edge60
  ]

entry.sw.epilog_crit_edge60:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge59:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge57:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge57, %entry.sw.epilog_crit_edge58, %entry.sw.epilog_crit_edge59, %entry.sw.epilog_crit_edge60
  %.sink56 = phi i16 [ 16, %sw.default ], [ 32, %entry.sw.epilog_crit_edge ], [ 32, %entry.sw.epilog_crit_edge57 ], [ 32, %entry.sw.epilog_crit_edge58 ], [ 32, %entry.sw.epilog_crit_edge59 ], [ 32, %entry.sw.epilog_crit_edge60 ]
  %ngpio6 = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 20
  %21 = ptrtoint ptr %ngpio6 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %.sink56, ptr %ngpio6, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp eq i32 %25, 2
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %num = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num, align 1
  %conv10 = zext i8 %27 to i32
  %mul = shl nuw nsw i32 %conv10, 5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %.sink = phi i32 [ %mul, %if.then ], [ -1, %sw.epilog.if.end_crit_edge ]
  %28 = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 19
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %28, align 4
  %irq.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 37
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end.i:                                         ; preds = %if.end
  %call.i = tail call i32 @bcma_core_irq(ptr noundef %1, i32 noundef 0) #3
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call.i, ptr noundef nonnull @bcma_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef %cc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call5.i = tail call i32 @bcma_chipco_gpio_intmask(ptr noundef %cc, i32 noundef -1, i32 noundef 0) #3
  %34 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cc, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i, align 4
  %call.i25.i = tail call i32 %41(ptr noundef %35, i16 noundef zeroext 36) #3
  %or.i = or i32 %call.i25.i, 1
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 8
  %ops.i26.i = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i26.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i26.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i.i, align 4
  tail call void %47(ptr noundef %35, i16 noundef zeroext 36, i32 noundef %or.i) #3
  %48 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @bcma_gpio_irq_chip, ptr %irq.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 37, i32 13
  %49 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %parent_handler.i, align 4
  %num_parents.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 37, i32 15
  %50 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %num_parents.i, align 4
  %parents.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 37, i32 16
  %51 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %parents.i, align 4
  %default_type.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 37, i32 10
  %52 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15, i32 37, i32 9
  %53 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @handle_simple_irq, ptr %handler.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end4.i, %if.end.if.end13_crit_edge
  %call14 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio, ptr noundef %cc, ptr noundef nonnull @bcma_gpio_init.lock_key, ptr noundef nonnull @bcma_gpio_init.request_key) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %54 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cc, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %hosttype.i46 = getelementptr inbounds %struct.bcma_bus, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %hosttype.i46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hosttype.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp.not.i47 = icmp eq i32 %59, 2
  br i1 %cmp.not.i47, label %if.end.i53, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i53:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %ops.i.i48 = getelementptr inbounds %struct.bcma_bus, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %ops.i.i48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i.i48, align 4
  %read32.i.i49 = getelementptr inbounds %struct.bcma_host_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read32.i.i49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32.i.i49, align 4
  %call.i.i50 = tail call i32 %63(ptr noundef %55, i16 noundef zeroext 36) #3
  %and.i = and i32 %call.i.i50, -2
  %64 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %55, align 8
  %ops.i10.i = getelementptr inbounds %struct.bcma_bus, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %ops.i10.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i10.i, align 4
  %write32.i.i51 = getelementptr inbounds %struct.bcma_host_ops, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %write32.i.i51 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write32.i.i51, align 4
  tail call void %69(ptr noundef %55, i16 noundef zeroext 36, i32 noundef %and.i) #3
  %70 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cc, align 4
  %call4.i = tail call i32 @bcma_core_irq(ptr noundef %71, i32 noundef 0) #3
  %call5.i52 = tail call ptr @free_irq(i32 noundef %call4.i, ptr noundef %cc) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i53, %if.then16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call14, %if.then16.cleanup_crit_edge ], [ %call14, %if.end.i53 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_gpio_request(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #3
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @bcma_chipco_gpio_control(ptr noundef %call, i32 noundef %shl, i32 noundef 0) #3
  %call3 = tail call i32 @bcma_chipco_gpio_pulldown(ptr noundef %call, i32 noundef %shl, i32 noundef 0) #3
  %call6 = tail call i32 @bcma_chipco_gpio_pullup(ptr noundef %call, i32 noundef %shl, i32 noundef %shl) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_gpio_free(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #3
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @bcma_chipco_gpio_pullup(ptr noundef %call, i32 noundef %shl, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_gpio_get_value(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #3
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @bcma_chipco_gpio_in(ptr noundef %call, i32 noundef %shl) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool = icmp ne i32 %call1, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_gpio_set_value(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #3
  %shl = shl nuw i32 1, %gpio
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call2 = tail call i32 @bcma_chipco_gpio_out(ptr noundef %call, i32 noundef %shl, i32 noundef %spec.select) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_gpio_direction_input(ptr noundef %chip, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #3
  %shl = shl nuw i32 1, %gpio
  %call1 = tail call i32 @bcma_chipco_gpio_outen(ptr noundef %call, i32 noundef %shl, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_gpio_direction_output(ptr noundef %chip, i32 noundef %gpio, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #3
  %shl = shl nuw i32 1, %gpio
  %call2 = tail call i32 @bcma_chipco_gpio_outen(ptr noundef %call, i32 noundef %shl, i32 noundef %shl) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call5 = tail call i32 @bcma_chipco_gpio_out(ptr noundef %call, i32 noundef %shl, i32 noundef %spec.select) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_gpio_unregister(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hosttype.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hosttype.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hosttype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.bcma_gpio_irq_exit.exit_crit_edge

entry.bcma_gpio_irq_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_gpio_irq_exit.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %1, i16 noundef zeroext 36) #3
  %and.i = and i32 %call.i.i, -2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %ops.i10.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i10.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %1, i16 noundef zeroext 36, i32 noundef %and.i) #3
  %16 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cc, align 4
  %call4.i = tail call i32 @bcma_core_irq(ptr noundef %17, i32 noundef 0) #3
  %call5.i = tail call ptr @free_irq(i32 noundef %call4.i, ptr noundef %cc) #3
  br label %bcma_gpio_irq_exit.exit

bcma_gpio_irq_exit.exit:                          ; preds = %if.end.i, %entry.bcma_gpio_irq_exit.exit_crit_edge
  %gpio = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 15
  tail call void @gpiochip_remove(ptr noundef %gpio) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_control(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_pulldown(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_pullup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_in(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_outen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_gpio_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %irqs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 96) #3
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i34 = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i34, align 4
  %read32.i35 = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i35, align 4
  %call.i36 = tail call i32 %15(ptr noundef %9, i16 noundef zeroext 116) #3
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %ops.i37 = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i37, align 4
  %read32.i38 = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read32.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i38, align 4
  %call.i39 = tail call i32 %23(ptr noundef %17, i16 noundef zeroext 112) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqs) #3
  %xor = xor i32 %call.i39, %call.i
  %and = and i32 %xor, %call.i36
  %24 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ngpio = getelementptr inbounds %struct.bcma_drv_cc, ptr %dev_id, i32 0, i32 15, i32 20
  %25 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %26 to i32
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqs, i32 noundef %conv, i32 noundef 0) #3
  %27 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ngpio, align 4
  %conv841 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %conv841)
  %cmp42 = icmp slt i32 %call6, %conv841
  br i1 %cmp42, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %domain = getelementptr inbounds %struct.bcma_drv_cc, ptr %dev_id, i32 0, i32 15, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.body.lr.ph
  %gpio5.043 = phi i32 [ %call6, %for.body.lr.ph ], [ %call15, %irq_find_mapping.exit.for.body_crit_edge ]
  %29 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #3
  %31 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %irq.i, align 4, !annotation !20
  %call.i40 = call ptr @__irq_resolve_mapping(ptr noundef %30, i32 noundef %gpio5.043, ptr noundef nonnull %irq.i) #3
  %tobool.not.i = icmp eq ptr %call.i40, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %33, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #3
  %call12 = call i32 @generic_handle_irq(i32 noundef %retval.0.i) #3
  %34 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ngpio, align 4
  %conv14 = zext i16 %35 to i32
  %add = add nsw i32 %gpio5.043, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqs, i32 noundef %conv14, i32 noundef %add) #3
  %36 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ngpio, align 4
  %conv8 = zext i16 %37 to i32
  %cmp = icmp slt i32 %call15, %conv8
  br i1 %cmp, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.for.end_crit_edge

irq_find_mapping.exit.for.end_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %irq_find_mapping.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %38 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irqs, align 4
  %and16 = and i32 %39, %call.i
  %call17 = call i32 @bcma_chipco_gpio_polarity(ptr noundef %dev_id, i32 noundef %39, i32 noundef %and16) #3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqs) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_intmask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_chipco_gpio_polarity(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_gpio_irq_mask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #3
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %call3 = tail call i32 @bcma_chipco_gpio_intmask(ptr noundef %call1, i32 noundef %shl, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcma_gpio_irq_unmask(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #3
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %call3 = tail call i32 @bcma_chipco_gpio_in(ptr noundef %call1, i32 noundef %shl) #3
  %call5 = tail call i32 @bcma_chipco_gpio_polarity(ptr noundef %call1, i32 noundef %shl, i32 noundef %call3) #3
  %call8 = tail call i32 @bcma_chipco_gpio_intmask(ptr noundef %call1, i32 noundef %shl, i32 noundef %shl) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bcma/driver_gpio.c", i32 176, i32 17}
!2 = !{ptr @bcma_gpio_init.lock_key, !3, !"lock_key", i1 false, i1 false}
!3 = !{!"../drivers/bcma/driver_gpio.c", i32 218, i32 8}
!4 = !{ptr @bcma_gpio_init.request_key, !3, !"request_key", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/bcma/driver_gpio.c", i32 132, i32 63}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/bcma/driver_gpio.c", i32 97, i32 11}
!9 = !{ptr @bcma_gpio_irq_chip, !10, !"bcma_gpio_irq_chip", i1 false, i1 false}
!10 = !{!"../drivers/bcma/driver_gpio.c", i32 96, i32 24}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
