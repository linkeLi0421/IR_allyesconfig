; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-sc27xx-bltc.c_pt.bc'
source_filename = "../drivers/leds/leds-sc27xx-bltc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
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
%struct.sc27xx_led_priv = type { [3 x %struct.sc27xx_led], ptr, %struct.mutex, i32 }
%struct.sc27xx_led = type { ptr, %struct.led_classdev, ptr, i8, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.led_pattern = type { i32, i32 }

@__initcall__kmod_leds_sc27xx_bltc__174_356_sc27xx_led_driver_init6 = internal global ptr @sc27xx_led_driver_init, section ".initcall6.init", align 4
@sc27xx_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc27xx_led_probe, ptr @sc27xx_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc27xx_led_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc27xx_led_driver_exit = internal global ptr @sc27xx_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description175 = internal constant [81 x i8] c"leds_sc27xx_bltc.description=Spreadtrum SC27xx breathing light controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [65 x i8] c"leds_sc27xx_bltc.author=Xiaotong Lu <xiaotong.lu@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [61 x i8] c"leds_sc27xx_bltc.author=Baolin Wang <baolin.wang@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [52 x i8] c"leds_sc27xx_bltc.file=drivers/leds/leds-sc27xx-bltc\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [32 x i8] c"leds_sc27xx_bltc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sprd-bltc\00", [22 x i8] zeroinitializer }, align 32
@sc27xx_led_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731-bltc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sc27xx_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 290, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to get reg of property\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc27xx_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/leds/leds-sc27xx-bltc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc27xx_led_probe._entry_ptr = internal global ptr @sc27xx_led_probe._entry, section ".printk_index", align 4
@sc27xx_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@sc27xx_led_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regmap: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sc27xx_led_probe._entry_ptr.10 = internal global ptr @sc27xx_led_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pattern\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sc27xx\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"sc27xx_led_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 347, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 349, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"sc27xx_led_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 341, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 288, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 290, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 299, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 304, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 261, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 264, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [35 x i8] c"../drivers/leds/leds-sc27xx-bltc.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 265, i32 29 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_sc27xx_led_driver_exit, ptr @__initcall__kmod_leds_sc27xx_bltc__174_356_sc27xx_led_driver_init6, ptr @sc27xx_led_driver_exit, ptr @sc27xx_led_probe._entry, ptr @sc27xx_led_probe._entry.8, ptr @sc27xx_led_probe._entry_ptr, ptr @sc27xx_led_probe._entry_ptr.10, ptr @sc27xx_led_driver, ptr @.str, ptr @sc27xx_led_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sc27xx_led_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_led_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_led_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc27xx_led_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc27xx_led_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  %base = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #6
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %base, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !50
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %dev_of_node.exit.cleanup_crit_edge, label %dev_of_node.exit.for.body.i_crit_edge

dev_of_node.exit.for.body.i_crit_edge:            ; preds = %dev_of_node.exit
  br label %for.body.i

dev_of_node.exit.cleanup_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %dev_of_node.exit.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %dev_of_node.exit.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %dev_of_node.exit.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num.07.i)
  %4 = icmp ugt i32 %num.07.i, 2
  br i1 %4, label %of_get_available_child_count.exit.cleanup_crit_edge, label %if.end

of_get_available_child_count.exit.cleanup_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %of_get_available_child_count.exit
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i, ptr noundef nonnull @.str.1, ptr noundef nonnull %base, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i91 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1336, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i91, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i91, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.sc27xx_led_priv, ptr %call.i91, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sc27xx_led_probe.__key) #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %base14 = getelementptr inbounds %struct.sc27xx_led_priv, ptr %call.i91, i32 0, i32 3
  %8 = ptrtoint ptr %base14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %base14, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %call15 = call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.sc27xx_led_priv, ptr %call.i91, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %regmap, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef -19) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %call23 = call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #6
  %cmp24.not104 = icmp eq ptr %call23, null
  br i1 %cmp24.not104, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %if.end22.for.body_crit_edge
  %child.0105 = phi ptr [ %call43, %cond.end.for.body_crit_edge ], [ %call23, %if.end22.for.body_crit_edge ]
  %call.i.i92 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0105, ptr noundef nonnull @.str.1, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i92)
  %tobool26.not = icmp sgt i32 %call.i.i92, -1
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %child.0105) #6
  call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup

if.end29:                                         ; preds = %for.body
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp30 = icmp ugt i32 %13, 2
  br i1 %cmp30, label %if.end29.if.then33_crit_edge, label %lor.lhs.false31

if.end29.if.then33_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

lor.lhs.false31:                                  ; preds = %if.end29
  %active = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 %13, i32 4
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %active, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool32.not = icmp eq i8 %15, 0
  br i1 %tobool32.not, label %cond.end, label %lor.lhs.false31.if.then33_crit_edge

lor.lhs.false31.if.then33_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false31.if.then33_crit_edge, %if.end29.if.then33_crit_edge
  call void @of_node_put(ptr noundef nonnull %child.0105) #6
  call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup

cond.end:                                         ; preds = %lor.lhs.false31
  %fwnode = getelementptr inbounds %struct.device_node, ptr %child.0105, i32 0, i32 3
  %arrayidx38 = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 %13
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fwnode, ptr %arrayidx38, align 4
  %17 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %active, align 1
  %call43 = call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.0105) #6
  %cmp24.not = icmp eq ptr %call43, null
  br i1 %cmp24.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.end22.for.end_crit_edge
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3080, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.if.then46_crit_edge

for.end.if.then46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.end.i.i:                                       ; preds = %for.end
  %call.i11.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3096, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i11.i.i, 0
  br i1 %tobool2.not.i.i, label %sc27xx_led_init.exit.i, label %if.end.i.i.if.then46_crit_edge

if.end.i.i.if.then46_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

sc27xx_led_init.exit.i:                           ; preds = %if.end.i.i
  %call.i12.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3772, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not.i93 = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not.i93, label %for.cond.preheader.i, label %sc27xx_led_init.exit.i.if.then46_crit_edge

sc27xx_led_init.exit.i.if.then46_crit_edge:       ; preds = %sc27xx_led_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

for.cond.preheader.i:                             ; preds = %sc27xx_led_init.exit.i
  %devicename.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 2
  %default_label.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %20 = getelementptr inbounds i8, ptr %init_data.i, i32 12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %active.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 4
  %22 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %active.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %if.end3.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.cond.preheader.i
  %line.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 3
  %24 = ptrtoint ptr %line.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %line.i, align 4
  %priv4.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %priv4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i91, ptr %priv4.i, align 4
  %ldev.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 1
  %brightness_set_blocking.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sc27xx_led_set, ptr %brightness_set_blocking.i, align 4
  %pattern_set.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %pattern_set.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sc27xx_led_pattern_set, ptr %pattern_set.i, align 4
  %pattern_clear.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 1, i32 10
  %28 = ptrtoint ptr %pattern_clear.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sc27xx_led_pattern_clear, ptr %pattern_clear.i, align 4
  %default_trigger.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 0, i32 1, i32 14
  %29 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.11, ptr %default_trigger.i, align 4
  %30 = ptrtoint ptr %call.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i91, align 4
  %32 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %init_data.i, align 4
  %33 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.12, ptr %devicename.i, align 4
  %34 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.13, ptr %default_label.i, align 4
  %call10.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %ldev.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end3.i.for.inc.i_crit_edge, label %if.end3.i.cleanup.i_crit_edge

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end3.2.i.cleanup.i_crit_edge, %if.end3.1.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge
  %call10.lcssa.i = phi i32 [ %call10.i, %if.end3.i.cleanup.i_crit_edge ], [ %call10.1.i, %if.end3.1.i.cleanup.i_crit_edge ], [ %call10.2.i, %if.end3.2.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br label %if.then46

for.inc.i:                                        ; preds = %if.end3.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %35 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %20, align 4
  %active.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %active.1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %active.1.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.not.1.i = icmp eq i8 %37, 0
  br i1 %tobool1.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end3.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.end3.1.i:                                      ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1
  %line.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %line.1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %line.1.i, align 4
  %priv4.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %priv4.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i91, ptr %priv4.1.i, align 4
  %ldev.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 1
  %brightness_set_blocking.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 1, i32 6
  %40 = ptrtoint ptr %brightness_set_blocking.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sc27xx_led_set, ptr %brightness_set_blocking.1.i, align 4
  %pattern_set.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 1, i32 9
  %41 = ptrtoint ptr %pattern_set.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @sc27xx_led_pattern_set, ptr %pattern_set.1.i, align 4
  %pattern_clear.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 1, i32 10
  %42 = ptrtoint ptr %pattern_clear.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @sc27xx_led_pattern_clear, ptr %pattern_clear.1.i, align 4
  %default_trigger.1.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 1, i32 1, i32 14
  %43 = ptrtoint ptr %default_trigger.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.11, ptr %default_trigger.1.i, align 4
  %44 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.1.i, align 4
  %46 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %init_data.i, align 4
  %47 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.12, ptr %devicename.i, align 4
  %48 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.13, ptr %default_label.i, align 4
  %call10.1.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %ldev.1.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1.i)
  %tobool11.not.1.i = icmp eq i32 %call10.1.i, 0
  br i1 %tobool11.not.1.i, label %if.end3.1.i.for.inc.1.i_crit_edge, label %if.end3.1.i.cleanup.i_crit_edge

if.end3.1.i.cleanup.i_crit_edge:                  ; preds = %if.end3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end3.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end3.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end3.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #6
  %49 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %20, align 4
  %active.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 4
  %50 = ptrtoint ptr %active.2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %active.2.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.2.i = icmp eq i8 %51, 0
  br i1 %tobool1.not.2.i, label %for.inc.1.i.sc27xx_led_register.exit_crit_edge, label %if.end3.2.i

for.inc.1.i.sc27xx_led_register.exit_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sc27xx_led_register.exit

if.end3.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2
  %line.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %line.2.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %line.2.i, align 4
  %priv4.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %priv4.2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i91, ptr %priv4.2.i, align 4
  %ldev.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 1
  %brightness_set_blocking.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 1, i32 6
  %54 = ptrtoint ptr %brightness_set_blocking.2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @sc27xx_led_set, ptr %brightness_set_blocking.2.i, align 4
  %pattern_set.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 1, i32 9
  %55 = ptrtoint ptr %pattern_set.2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @sc27xx_led_pattern_set, ptr %pattern_set.2.i, align 4
  %pattern_clear.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 1, i32 10
  %56 = ptrtoint ptr %pattern_clear.2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @sc27xx_led_pattern_clear, ptr %pattern_clear.2.i, align 4
  %default_trigger.2.i = getelementptr [3 x %struct.sc27xx_led], ptr %call.i91, i32 0, i32 2, i32 1, i32 14
  %57 = ptrtoint ptr %default_trigger.2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.11, ptr %default_trigger.2.i, align 4
  %58 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.2.i, align 4
  %60 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %init_data.i, align 4
  %61 = ptrtoint ptr %devicename.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.12, ptr %devicename.i, align 4
  %62 = ptrtoint ptr %default_label.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.13, ptr %default_label.i, align 4
  %call10.2.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef %ldev.2.i, ptr noundef nonnull %init_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2.i)
  %tobool11.not.2.i = icmp eq i32 %call10.2.i, 0
  br i1 %tobool11.not.2.i, label %if.end3.2.i.sc27xx_led_register.exit_crit_edge, label %if.end3.2.i.cleanup.i_crit_edge

if.end3.2.i.cleanup.i_crit_edge:                  ; preds = %if.end3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end3.2.i.sc27xx_led_register.exit_crit_edge:   ; preds = %if.end3.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sc27xx_led_register.exit

sc27xx_led_register.exit:                         ; preds = %if.end3.2.i.sc27xx_led_register.exit_crit_edge, %for.inc.1.i.sc27xx_led_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #6
  br label %cleanup

if.then46:                                        ; preds = %cleanup.i, %sc27xx_led_init.exit.i.if.then46_crit_edge, %if.end.i.i.if.then46_crit_edge, %for.end.if.then46_crit_edge
  %retval.2.i.ph = phi i32 [ %call.i.i.i, %for.end.if.then46_crit_edge ], [ %call.i11.i.i, %if.end.i.i.if.then46_crit_edge ], [ %call.i12.i.i, %sc27xx_led_init.exit.i.if.then46_crit_edge ], [ %call10.lcssa.i, %cleanup.i ]
  call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %sc27xx_led_register.exit, %if.then33, %if.then27, %if.then18, %if.end6.cleanup_crit_edge, %do.end, %of_get_available_child_count.exit.cleanup_crit_edge, %dev_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i92, %if.then27 ], [ -22, %if.then33 ], [ -19, %if.then18 ], [ -22, %of_get_available_child_count.exit.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %retval.2.i.ph, %if.then46 ], [ 0, %sc27xx_led_register.exit ], [ -22, %dev_of_node.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_led_set(ptr nocapture noundef readonly %ldev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %ldev, i32 400
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap1.i = getelementptr inbounds %struct.sc27xx_led_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1.i, align 4
  %base.i = getelementptr inbounds %struct.sc27xx_led_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i, align 4
  %line.i = getelementptr i8, ptr %ldev, i32 404
  %8 = ptrtoint ptr %line.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %line.i, align 4
  %mul.i = shl i8 %9, 2
  %conv4.i = zext i8 %mul.i to i32
  %shl.i = shl i32 3, %conv4.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %base.i.i = getelementptr inbounds %struct.sc27xx_led_priv, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i, align 4
  %line.i.i = getelementptr i8, ptr %ldev, i32 404
  %12 = ptrtoint ptr %line.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %line.i.i, align 4
  %conv.i.i = zext i8 %13 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 4
  %regmap4.i = getelementptr inbounds %struct.sc27xx_led_priv, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap4.i, align 4
  %add.i.i = add i32 %11, 8
  %add5.i = add i32 %add.i.i, %mul.i.i
  %shl.i8 = shl i32 %value, 8
  %or.i = or i32 %shl.i8, 255
  %call.i.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add5.i, i32 noundef 65535, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i10 = shl i8 %13, 2
  %conv7.i = zext i8 %mul.i10 to i32
  %shl8.i = shl i32 3, %conv7.i
  %call.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %11, i32 noundef %shl8.i, i32 noundef %shl8.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.else.if.end_crit_edge, %if.then
  %err.0 = phi i32 [ %call.i.i, %if.then ], [ %call.i22.i, %if.end.i ], [ %call.i.i9, %if.else.if.end_crit_edge ]
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %lock3 = getelementptr inbounds %struct.sc27xx_led_priv, ptr %17, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock3) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_led_pattern_set(ptr nocapture noundef %ldev, ptr nocapture noundef %pattern, i32 noundef %len, i32 noundef %repeat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %ldev, i32 400
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %base.i = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i, align 4
  %line.i = getelementptr i8, ptr %ldev, i32 404
  %4 = ptrtoint ptr %line.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %line.i, align 4
  %conv.i = zext i8 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.i = add i32 %mul.i, %3
  %mul = shl i8 %5, 2
  %regmap4 = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp.not = icmp eq i32 %len, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %8 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pattern, align 4
  %add.i100 = add i32 %9, 62
  %10 = tail call i32 @llvm.umax.i32(i32 %add.i100, i32 125) #6
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 31875) #6
  %12 = trunc i32 %11 to i16
  %.lhs.trunc.i = add nsw i16 %12, -125
  %13 = urem i16 %.lhs.trunc.i, 125
  %.zext.i = zext i16 %13 to i32
  %add7.i = sub nuw nsw i32 %11, %.zext.i
  %14 = ptrtoint ptr %pattern to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add7.i, ptr %pattern, align 4
  %add7 = add i32 %add.i, 12
  %div.lhs.trunc = trunc i32 %add7.i to i16
  %div118 = udiv i16 %div.lhs.trunc, 125
  %div.zext = zext i16 %div118 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add7, i32 noundef 255, i32 noundef %div.zext, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end12, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end12:                                         ; preds = %if.end
  %arrayidx13 = getelementptr %struct.led_pattern, ptr %pattern, i32 1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %add.i101 = add i32 %16, 62
  %17 = tail call i32 @llvm.umax.i32(i32 %add.i101, i32 125) #6
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 31875) #6
  %19 = trunc i32 %18 to i16
  %.lhs.trunc.i102 = add nsw i16 %19, -125
  %20 = urem i16 %.lhs.trunc.i102, 125
  %.zext.i103 = zext i16 %20 to i32
  %add7.i104 = sub nuw nsw i32 %18, %.zext.i103
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add7.i104, ptr %arrayidx13, align 4
  %add15 = add i32 %add.i, 16
  %div18.lhs.trunc = trunc i32 %add7.i104 to i16
  %div18119 = udiv i16 %div18.lhs.trunc, 125
  %div18.zext = zext i16 %div18119 to i32
  %call.i105 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add15, i32 noundef 255, i32 noundef %div18.zext, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool20.not = icmp eq i32 %call.i105, 0
  br i1 %tobool20.not, label %if.end22, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end22:                                         ; preds = %if.end12
  %arrayidx23 = getelementptr %struct.led_pattern, ptr %pattern, i32 2
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx23, align 4
  %add.i106 = add i32 %23, 62
  %24 = tail call i32 @llvm.umax.i32(i32 %add.i106, i32 125) #6
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 31875) #6
  %26 = trunc i32 %25 to i16
  %.lhs.trunc.i107 = add nsw i16 %26, -125
  %27 = urem i16 %.lhs.trunc.i107, 125
  %.zext.i108 = zext i16 %27 to i32
  %add7.i109 = sub nuw nsw i32 %25, %.zext.i108
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add7.i109, ptr %arrayidx23, align 4
  %div28.lhs.trunc = trunc i32 %add7.i109 to i16
  %div28120 = udiv i16 %div28.lhs.trunc, 125
  %div28.zext = zext i16 %div28120 to i32
  %shl = shl nuw nsw i32 %div28.zext, 8
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add7, i32 noundef 65280, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool30.not = icmp eq i32 %call.i110, 0
  br i1 %tobool30.not, label %if.end32, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end32:                                         ; preds = %if.end22
  %arrayidx33 = getelementptr %struct.led_pattern, ptr %pattern, i32 3
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx33, align 4
  %add.i111 = add i32 %30, 62
  %31 = tail call i32 @llvm.umax.i32(i32 %add.i111, i32 125) #6
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 31875) #6
  %33 = trunc i32 %32 to i16
  %.lhs.trunc.i112 = add nsw i16 %33, -125
  %34 = urem i16 %.lhs.trunc.i112, 125
  %.zext.i113 = zext i16 %34 to i32
  %add7.i114 = sub nuw nsw i32 %32, %.zext.i113
  %35 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add7.i114, ptr %arrayidx33, align 4
  %div38.lhs.trunc = trunc i32 %add7.i114 to i16
  %div38121 = udiv i16 %div38.lhs.trunc, 125
  %div38.zext = zext i16 %div38121 to i32
  %shl39 = shl nuw nsw i32 %div38.zext, 8
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add15, i32 noundef 65280, i32 noundef %shl39, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool41.not = icmp eq i32 %call.i115, 0
  br i1 %tobool41.not, label %if.end43, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end43:                                         ; preds = %if.end32
  %add44 = add i32 %add.i, 8
  %brightness = getelementptr %struct.led_pattern, ptr %pattern, i32 1, i32 1
  %36 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %brightness, align 4
  %shl46 = shl i32 %37, 8
  %or = or i32 %shl46, 255
  %call.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add44, i32 noundef 65535, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool48.not = icmp eq i32 %call.i116, 0
  br i1 %tobool48.not, label %if.end50, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end50:                                         ; preds = %if.end43
  %conv51 = zext i8 %mul to i32
  %shl52 = shl nuw i32 1, %conv51
  %call.i117 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %3, i32 noundef %shl52, i32 noundef %shl52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool56.not = icmp eq i32 %call.i117, 0
  br i1 %tobool56.not, label %if.then57, label %if.end50.out_crit_edge

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then57:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %brightness, align 4
  %brightness60 = getelementptr inbounds %struct.led_classdev, ptr %ldev, i32 0, i32 1
  %40 = ptrtoint ptr %brightness60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %brightness60, align 4
  br label %out

out:                                              ; preds = %if.then57, %if.end50.out_crit_edge, %if.end43.out_crit_edge, %if.end32.out_crit_edge, %if.end22.out_crit_edge, %if.end12.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call.i105, %if.end12.out_crit_edge ], [ %call.i110, %if.end22.out_crit_edge ], [ %call.i115, %if.end32.out_crit_edge ], [ %call.i116, %if.end43.out_crit_edge ], [ %call.i117, %if.end50.out_crit_edge ], [ 0, %if.then57 ]
  %41 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv.i, align 4
  %lock63 = getelementptr inbounds %struct.sc27xx_led_priv, ptr %42, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock63) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_led_pattern_clear(ptr nocapture noundef %ldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %ldev, i32 400
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap1 = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %base.i = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %line.i = getelementptr i8, ptr %ldev, i32 404
  %6 = ptrtoint ptr %line.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %line.i, align 4
  %conv.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.i = add i32 %mul.i, %5
  %mul = shl i8 %7, 2
  %lock = getelementptr inbounds %struct.sc27xx_led_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add6 = add i32 %add.i, 12
  %call7 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add6, i32 noundef 0) #6
  %add8 = add i32 %add.i, 16
  %call9 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add8, i32 noundef 0) #6
  %conv10 = zext i8 %mul to i32
  %shl = shl i32 3, %conv10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %brightness = getelementptr inbounds %struct.led_classdev, ptr %ldev, i32 0, i32 1
  %8 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %brightness, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %lock13 = getelementptr inbounds %struct.sc27xx_led_priv, ptr %10, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock13) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_leds_sc27xx_bltc__174_356_sc27xx_led_driver_init6, !1, !"__initcall__kmod_leds_sc27xx_bltc__174_356_sc27xx_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 356, i32 1}
!2 = !{ptr @__exitcall_sc27xx_led_driver_exit, !1, !"__exitcall_sc27xx_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description175, !4, !"__UNIQUE_ID_description175", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 358, i32 1}
!5 = !{ptr @__UNIQUE_ID_author176, !6, !"__UNIQUE_ID_author176", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 359, i32 1}
!7 = !{ptr @__UNIQUE_ID_author177, !8, !"__UNIQUE_ID_author177", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 360, i32 1}
!9 = !{ptr @__UNIQUE_ID_file178, !10, !"__UNIQUE_ID_file178", i1 false, i1 false}
!10 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 361, i32 1}
!11 = !{ptr @__UNIQUE_ID_license179, !10, !"__UNIQUE_ID_license179", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 349, i32 11}
!14 = !{ptr @sc27xx_led_driver, !15, !"sc27xx_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 347, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 288, i32 33}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 290, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sc27xx_led_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sc27xx_led_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sc27xx_led_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 299, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 304, i32 3}
!31 = !{ptr @sc27xx_led_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sc27xx_led_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 261, i32 31}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 264, i32 26}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 265, i32 29}
!39 = !{ptr @sc27xx_led_of_match, !40, !"sc27xx_led_of_match", i1 false, i1 false}
!40 = !{!"../drivers/leds/leds-sc27xx-bltc.c", i32 341, i32 34}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i8 0, i8 2}
