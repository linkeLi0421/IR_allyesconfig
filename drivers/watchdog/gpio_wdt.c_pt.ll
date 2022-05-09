; ModuleID = '/llk/IR_all_yes/drivers/watchdog/gpio_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/gpio_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gpio_wdt_priv = type { ptr, i8, i8, i32, %struct.watchdog_device }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_nowayout = internal constant [18 x i8] c"gpio_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype170 = internal constant [32 x i8] c"gpio_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout171 = internal constant [75 x i8] c"gpio_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_gpio_wdt__172_189_gpio_wdt_init3 = internal global ptr @gpio_wdt_init, section ".initcall3.init", align 4
@__UNIQUE_ID_author173 = internal constant [52 x i8] c"gpio_wdt.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [35 x i8] c"gpio_wdt.description=GPIO Watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [40 x i8] c"gpio_wdt.file=drivers/watchdog/gpio_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [21 x i8] c"gpio_wdt.license=GPL\00", section ".modinfo", align 1
@gpio_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_wdt_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-wdt\00", [23 x i8] zeroinitializer }, align 32
@gpio_wdt_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"linux,wdt-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hw_algo\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"toggle\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hw_margin_ms\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"always-running\00", [17 x i8] zeroinitializer }, align 32
@gpio_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"GPIO Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@gpio_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @gpio_wdt_start, ptr @gpio_wdt_stop, ptr @gpio_wdt_ping, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 16, i32 13 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"gpio_wdt_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 176, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 178, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"gpio_wdt_dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 170, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 122, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 125, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 128, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 140, i32 8 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 148, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"gpio_wdt_ident\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 93, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"gpio_wdt_ops\00", align 1
@___asan_gen_.38 = private constant [31 x i8] c"../drivers/watchdog/gpio_wdt.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 99, i32 34 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__UNIQUE_ID_nowayout171, ptr @__UNIQUE_ID_nowayouttype170, ptr @__initcall__kmod_gpio_wdt__172_189_gpio_wdt_init3, ptr @__param_nowayout, ptr @nowayout, ptr @gpio_wdt_driver, ptr @.str, ptr @gpio_wdt_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gpio_wdt_ident, ptr @gpio_wdt_ops], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_wdt_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_wdt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_wdt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %hw_margin = alloca i32, align 4
  %algo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_margin) #6
  %2 = ptrtoint ptr %hw_margin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hw_margin, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %algo) #6
  %3 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %algo, align 4, !annotation !46
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %algo) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo, align 4
  %call6 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(7) @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end15_crit_edge, label %if.else

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %call9 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(6) @.str.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else.if.end15_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %.sink = phi i32 [ 0, %if.end5.if.end15_crit_edge ], [ 1, %if.else.if.end15_crit_edge ]
  %gflags.0 = phi i32 [ 1, %if.end5.if.end15_crit_edge ], [ 3, %if.else.if.end15_crit_edge ]
  %hw_algo12 = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %hw_algo12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %hw_algo12, align 4
  %call16 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef null, i32 noundef %gflags.0) #6
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %hw_margin, i32 noundef 1, i32 noundef 0) #6
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %11 = ptrtoint ptr %hw_margin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_margin, align 4
  %13 = add i32 %12, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65534, i32 %13)
  %14 = icmp ult i32 %13, -65534
  br i1 %14, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %call.i88 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i88, null
  %always_running = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 2
  %frombool = zext i1 %tobool.i to i8
  %15 = ptrtoint ptr %always_running to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %always_running, align 1
  %wdd = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 16
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gpio_wdt_ident, ptr %info, align 4
  %ops = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @gpio_wdt_ops, ptr %ops, align 4
  %min_timeout = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 9
  %19 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %min_timeout, align 4
  %20 = ptrtoint ptr %hw_margin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_margin, align 4
  %max_hw_heartbeat_ms = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 12
  %22 = ptrtoint ptr %max_hw_heartbeat_ms to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_hw_heartbeat_ms, align 4
  %parent = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1, ptr %parent, align 4
  %timeout = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 7
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 60, ptr %timeout, align 4
  %call38 = call i32 @watchdog_init_timeout(ptr noundef %wdd, i32 noundef 0, ptr noundef %dev1) #6
  %25 = load i8, ptr @nowayout, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool40.not = icmp eq i8 %25, 0
  br i1 %tobool40.not, label %if.end29.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end29.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end29.watchdog_set_nowayout.exit_crit_edge
  %status.i89 = getelementptr inbounds %struct.gpio_wdt_priv, ptr %call.i, i32 0, i32 4, i32 18
  call void @_set_bit(i32 noundef 2, ptr noundef %status.i89) #6
  %26 = ptrtoint ptr %always_running to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %always_running, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br i1 %tobool43.not, label %watchdog_set_nowayout.exit.if.end47_crit_edge, label %if.then44

watchdog_set_nowayout.exit.if.end47_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then44:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = call i32 @gpio_wdt_start(ptr noundef %wdd)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %watchdog_set_nowayout.exit.if.end47_crit_edge
  %call49 = call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdd) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then19, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then19 ], [ %call49, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %10, %if.end22.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %algo) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_margin) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_wdt_start(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.gpio_wdt_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %state, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @gpiod_direction_output(ptr noundef %4, i32 noundef 0) #6
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %hw_algo.i = getelementptr inbounds %struct.gpio_wdt_priv, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %hw_algo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_algo.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.gpio_wdt_ping.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb4.i
  ]

entry.gpio_wdt_ping.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gpio_wdt_ping.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr inbounds %struct.gpio_wdt_priv, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state.i, align 4, !range !47
  %12 = xor i8 %11, 1
  store i8 %12, ptr %state.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %15 = zext i8 %12 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef %15) #6
  br label %gpio_wdt_ping.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %6, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %20, i32 noundef 0) #6
  br label %gpio_wdt_ping.exit

gpio_wdt_ping.exit:                               ; preds = %sw.bb4.i, %sw.bb.i, %entry.gpio_wdt_ping.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_wdt_stop(ptr noundef %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %always_running = getelementptr inbounds %struct.gpio_wdt_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %always_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %always_running, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #6
  %hw_algo.i = getelementptr inbounds %struct.gpio_wdt_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %hw_algo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_algo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @gpiod_direction_input(ptr noundef %9) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %status = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_wdt_ping(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_algo = getelementptr inbounds %struct.gpio_wdt_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hw_algo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_algo, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.gpio_wdt_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 4, !range !47
  %7 = xor i8 %6, 1
  store i8 %7, ptr %state, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = zext i8 %7 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef %10) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/gpio_wdt.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype170, !1, !"__UNIQUE_ID_nowayouttype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout171, !4, !"__UNIQUE_ID_nowayout171", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/gpio_wdt.c", i32 18, i32 1}
!5 = !{ptr @__initcall__kmod_gpio_wdt__172_189_gpio_wdt_init3, !6, !"__initcall__kmod_gpio_wdt__172_189_gpio_wdt_init3", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/gpio_wdt.c", i32 189, i32 1}
!7 = !{ptr @__UNIQUE_ID_author173, !8, !"__UNIQUE_ID_author173", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/gpio_wdt.c", i32 194, i32 1}
!9 = !{ptr @__UNIQUE_ID_description174, !10, !"__UNIQUE_ID_description174", i1 false, i1 false}
!10 = !{!"../drivers/watchdog/gpio_wdt.c", i32 195, i32 1}
!11 = !{ptr @__UNIQUE_ID_file175, !12, !"__UNIQUE_ID_file175", i1 false, i1 false}
!12 = !{!"../drivers/watchdog/gpio_wdt.c", i32 196, i32 1}
!13 = !{ptr @__UNIQUE_ID_license176, !12, !"__UNIQUE_ID_license176", i1 false, i1 false}
!14 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!15 = !{ptr @nowayout, !16, !"nowayout", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/gpio_wdt.c", i32 16, i32 13}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/watchdog/gpio_wdt.c", i32 178, i32 12}
!19 = !{ptr @gpio_wdt_driver, !20, !"gpio_wdt_driver", i1 false, i1 false}
!20 = !{!"../drivers/watchdog/gpio_wdt.c", i32 176, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/watchdog/gpio_wdt.c", i32 122, i32 36}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/watchdog/gpio_wdt.c", i32 125, i32 20}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/gpio_wdt.c", i32 128, i32 27}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/gpio_wdt.c", i32 140, i32 8}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/watchdog/gpio_wdt.c", i32 148, i32 12}
!31 = !{ptr @gpio_wdt_ident, !32, !"gpio_wdt_ident", i1 false, i1 false}
!32 = !{!"../drivers/watchdog/gpio_wdt.c", i32 93, i32 35}
!33 = !{ptr @gpio_wdt_ops, !34, !"gpio_wdt_ops", i1 false, i1 false}
!34 = !{!"../drivers/watchdog/gpio_wdt.c", i32 99, i32 34}
!35 = !{ptr @gpio_wdt_dt_ids, !36, !"gpio_wdt_dt_ids", i1 false, i1 false}
!36 = !{!"../drivers/watchdog/gpio_wdt.c", i32 170, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{i8 0, i8 2}
