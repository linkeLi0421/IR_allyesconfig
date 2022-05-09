; ModuleID = '/llk/IR_all_yes/drivers/auxdisplay/hd44780.c_pt.bc'
source_filename = "../drivers/auxdisplay/hd44780.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.charlcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hd44780_common = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.charlcd = type { ptr, ptr, i32, i32, %struct.anon.43, ptr }
%struct.anon.43 = type { i32, i32 }

@__initcall__kmod_hd44780__183_348_hd44780_driver_init6 = internal global ptr @hd44780_driver_init, section ".initcall6.init", align 4
@hd44780_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hd44780_probe, ptr @hd44780_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hd44780_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hd44780_driver_exit = internal global ptr @hd44780_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [49 x i8] c"hd44780.description=HD44780 Character LCD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [57 x i8] c"hd44780.author=Geert Uytterhoeven <geert@linux-m68k.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [40 x i8] c"hd44780.file=drivers/auxdisplay/hd44780\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [20 x i8] c"hd44780.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hd44780\00", [24 x i8] zeroinitializer }, align 32
@hd44780_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hit,hd44780\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rs\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backlight\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"display-height-chars\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"display-width-chars\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"internal-buffer-width\00", [42 x i8] zeroinitializer }, align 32
@hd44780_ops_gpio8 = internal constant { %struct.charlcd_ops, [40 x i8] } { %struct.charlcd_ops { ptr @hd44780_backlight, ptr @hd44780_common_print, ptr @hd44780_common_gotoxy, ptr @hd44780_common_home, ptr @hd44780_common_clear_display, ptr @hd44780_common_init_display, ptr @hd44780_common_shift_cursor, ptr @hd44780_common_shift_display, ptr @hd44780_common_display, ptr @hd44780_common_cursor, ptr @hd44780_common_blink, ptr @hd44780_common_fontsize, ptr @hd44780_common_lines, ptr @hd44780_common_redefine_char }, [40 x i8] zeroinitializer }, align 32
@hd44780_ops_gpio4 = internal constant { %struct.charlcd_ops, [40 x i8] } { %struct.charlcd_ops { ptr @hd44780_backlight, ptr @hd44780_common_print, ptr @hd44780_common_gotoxy, ptr @hd44780_common_home, ptr @hd44780_common_clear_display, ptr @hd44780_common_init_display, ptr @hd44780_common_shift_cursor, ptr @hd44780_common_shift_display, ptr @hd44780_common_display, ptr @hd44780_common_cursor, ptr @hd44780_common_blink, ptr @hd44780_common_fontsize, ptr @hd44780_common_lines, ptr @hd44780_common_redefine_char }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"hd44780_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 339, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 343, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"hd44780_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 333, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 210, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 248, i32 45 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 254, i32 46 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 261, i32 55 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 268, i32 55 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 276, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 280, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 292, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"hd44780_ops_gpio8\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 127, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"hd44780_ops_gpio4\00", align 1
@___asan_gen_.46 = private constant [32 x i8] c"../drivers/auxdisplay/hd44780.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 183, i32 33 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_hd44780_driver_exit, ptr @__initcall__kmod_hd44780__183_348_hd44780_driver_init6, ptr @hd44780_driver_exit, ptr @hd44780_driver, ptr @.str, ptr @hd44780_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hd44780_ops_gpio8, ptr @hd44780_ops_gpio4], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd44780_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd44780_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd44780_ops_gpio8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hd44780_ops_gpio4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hd44780_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hd44780_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hd44780_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hd44780_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hd44780_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @gpiod_count(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 8, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %base.0 = phi i32 [ 0, %sw.bb2 ], [ %call, %if.end.sw.epilog_crit_edge ]
  %call3 = tail call ptr @hd44780_common_alloc() #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end5

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %sw.epilog
  %call6 = tail call ptr @charlcd_alloc() #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.fail1_crit_edge, label %if.end9

if.end5.fail1_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail1

if.end9:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 48) #8
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.fail2_crit_edge, label %for.body.preheader

if.end9.fail2_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

for.body.preheader:                               ; preds = %if.end9
  %hd44780 = getelementptr inbounds %struct.hd44780_common, ptr %call3, i32 0, i32 7
  %2 = ptrtoint ptr %hd44780 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hd44780, align 4
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %call6, i32 0, i32 5
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %drvdata, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0172 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call15 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %i.0172, i32 noundef 3) #5
  %add = add i32 %i.0172, %base.0
  %arrayidx = getelementptr [12 x ptr], ptr %call7.i.i, i32 0, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call15, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %for.cond

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call15 to i32
  br label %fail3

for.end:                                          ; preds = %for.cond
  %call26 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 3) #5
  %arrayidx28 = getelementptr [12 x ptr], ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call26, ptr %arrayidx28, align 8
  %cmp.i165 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then32, label %if.end36

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call26 to i32
  br label %fail3

if.end36:                                         ; preds = %for.end
  %call37 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 7) #5
  %arrayidx39 = getelementptr [12 x ptr], ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call37, ptr %arrayidx39, align 8
  %cmp.i166 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call37 to i32
  br label %fail3

if.end47:                                         ; preds = %if.end36
  %call48 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 3) #5
  %arrayidx50 = getelementptr [12 x ptr], ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call48, ptr %arrayidx50, align 4
  %cmp.i167 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call48 to i32
  br label %fail3

if.end58:                                         ; preds = %if.end47
  %call59 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 3) #5
  %arrayidx61 = getelementptr [12 x ptr], ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call59, ptr %arrayidx61, align 4
  %cmp.i168 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call59 to i32
  br label %fail3

if.end69:                                         ; preds = %if.end58
  %height = getelementptr inbounds %struct.charlcd, ptr %call6, i32 0, i32 2
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %height, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool71.not = icmp eq i32 %call.i, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.fail3_crit_edge

if.end69.fail3_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail3

if.end73:                                         ; preds = %if.end69
  %width = getelementptr inbounds %struct.charlcd, ptr %call6, i32 0, i32 3
  %call.i169 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %width, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool75.not = icmp eq i32 %call.i169, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.fail3_crit_edge

if.end73.fail3_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail3

if.end77:                                         ; preds = %if.end73
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp79 = icmp sgt i32 %15, 2
  br i1 %cmp79, label %if.then80, label %if.end77.if.end82_crit_edge

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 4
  %bwidth = getelementptr inbounds %struct.hd44780_common, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %bwidth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bwidth, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77.if.end82_crit_edge
  %bwidth83 = getelementptr inbounds %struct.hd44780_common, ptr %call3, i32 0, i32 1
  %call.i170 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %bwidth83, i32 noundef 1) #5
  %19 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call, ptr %call3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp86 = icmp eq i32 %call, 8
  br i1 %cmp86, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hd44780_ops_gpio8, ptr %call6, align 4
  br label %if.end91

if.else:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @hd44780_ops_gpio4, ptr %call6, align 4
  %write_cmd_raw4 = getelementptr inbounds %struct.hd44780_common, ptr %call3, i32 0, i32 6
  %22 = ptrtoint ptr %write_cmd_raw4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hd44780_write_cmd_raw_gpio4, ptr %write_cmd_raw4, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else, %if.then87
  %hd44780_write_data_gpio4.sink = phi ptr [ @hd44780_write_data_gpio8, %if.then87 ], [ @hd44780_write_data_gpio4, %if.else ]
  %hd44780_write_cmd_gpio4.sink = phi ptr [ @hd44780_write_cmd_gpio8, %if.then87 ], [ @hd44780_write_cmd_gpio4, %if.else ]
  %23 = getelementptr inbounds %struct.hd44780_common, ptr %call3, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %hd44780_write_data_gpio4.sink, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hd44780_common, ptr %call3, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %hd44780_write_cmd_gpio4.sink, ptr %25, align 4
  %call92 = tail call i32 @charlcd_register(ptr noundef nonnull %call6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.fail3_crit_edge

if.end91.fail3_crit_edge:                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail3

if.end95:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call6, ptr %driver_data.i.i, align 4
  br label %cleanup

fail3:                                            ; preds = %if.end91.fail3_crit_edge, %if.end73.fail3_crit_edge, %if.end69.fail3_crit_edge, %if.then65, %if.then54, %if.then43, %if.then32, %if.then20
  %ret.0 = phi i32 [ %5, %if.then20 ], [ %7, %if.then32 ], [ %9, %if.then43 ], [ %11, %if.then54 ], [ %13, %if.then65 ], [ %call.i, %if.end69.fail3_crit_edge ], [ %call.i169, %if.end73.fail3_crit_edge ], [ %call92, %if.end91.fail3_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end9.fail2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %fail3 ], [ -12, %if.end9.fail2_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call6) #5
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end5.fail1_crit_edge
  %ret.2 = phi i32 [ %ret.1, %fail2 ], [ -12, %if.end5.fail1_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end95, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail1 ], [ 0, %if.end95 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hd44780_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @charlcd_unregister(ptr noundef %1) #5
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  tail call void @kfree(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hd44780_common_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @charlcd_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hd44780_write_data_gpio8(ptr nocapture noundef readonly %hdc, i32 noundef %data) #2 align 64 {
entry:
  %values.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hd44780 = getelementptr inbounds %struct.hd44780_common, ptr %hdc, i32 0, i32 7
  %0 = ptrtoint ptr %hd44780 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd44780, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i) #5
  %conv.i = and i32 %data, 255
  %or.i.i.i = or i32 %conv.i, 256
  %2 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i.i.i, ptr %values.i, align 4
  %arrayidx1.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  %cond.i = select i1 %tobool2.not.i, i32 9, i32 10
  %call.i = call i32 @gpiod_set_array_value_cansleep(i32 noundef %cond.i, ptr noundef %1, ptr noundef null, ptr noundef nonnull %values.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 4294960) #5
  %arrayidx.i.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 8589920) #5
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 9663660) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hd44780_write_cmd_gpio8(ptr nocapture noundef readonly %hdc, i32 noundef %cmd) #2 align 64 {
entry:
  %values.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hd44780 = getelementptr inbounds %struct.hd44780_common, ptr %hdc, i32 0, i32 7
  %0 = ptrtoint ptr %hd44780 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd44780, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i) #5
  %conv.i = and i32 %cmd, 255
  %2 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %values.i, align 4
  %arrayidx1.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i = icmp eq ptr %4, null
  %cond.i = select i1 %tobool2.not.i, i32 9, i32 10
  %call.i = call i32 @gpiod_set_array_value_cansleep(i32 noundef %cond.i, ptr noundef %1, ptr noundef null, ptr noundef nonnull %values.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 4294960) #5
  %arrayidx.i.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 8589920) #5
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 25769760) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hd44780_write_data_gpio4(ptr nocapture noundef readonly %hdc, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hd44780 = getelementptr inbounds %struct.hd44780_common, ptr %hdc, i32 0, i32 7
  %0 = ptrtoint ptr %hd44780 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd44780, align 4
  %conv = trunc i32 %data to i8
  tail call fastcc void @hd44780_write_gpio4(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 9663660) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hd44780_write_cmd_gpio4(ptr nocapture noundef readonly %hdc, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hd44780 = getelementptr inbounds %struct.hd44780_common, ptr %hdc, i32 0, i32 7
  %0 = ptrtoint ptr %hd44780 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd44780, align 4
  %conv = trunc i32 %cmd to i8
  tail call fastcc void @hd44780_write_gpio4(ptr noundef %1, i8 noundef zeroext %conv, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 25769760) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hd44780_write_cmd_raw_gpio4(ptr nocapture noundef readonly %hdc, i32 noundef %cmd) #2 align 64 {
entry:
  %values = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #5
  %hd44780 = getelementptr inbounds %struct.hd44780_common, ptr %hdc, i32 0, i32 7
  %0 = ptrtoint ptr %hd44780 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hd44780, align 4
  %and = and i32 %cmd, 15
  %2 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %values, align 4
  %arrayidx1 = getelementptr [12 x ptr], ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %4, null
  %cond = select i1 %tobool.not, i32 5, i32 6
  %arrayidx3 = getelementptr [12 x ptr], ptr %1, i32 0, i32 4
  %call = call i32 @gpiod_set_array_value_cansleep(i32 noundef %cond, ptr noundef %arrayidx3, ptr noundef null, ptr noundef nonnull %values) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 4294960) #5
  %arrayidx.i = getelementptr [12 x ptr], ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 8589920) #5
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @charlcd_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hd44780_backlight(ptr nocapture noundef readonly %lcd, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.charlcd, ptr %lcd, i32 0, i32 5
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %hd44780 = getelementptr inbounds %struct.hd44780_common, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %hd44780 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hd44780, align 4
  %arrayidx = getelementptr [12 x ptr], ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef %on) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_print(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_gotoxy(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_home(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_clear_display(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_init_display(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_shift_cursor(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_shift_display(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_display(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_cursor(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_blink(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_fontsize(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_lines(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hd44780_common_redefine_char(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hd44780_write_gpio4(ptr noundef %hd, i8 noundef zeroext %val, i32 noundef %rs) unnamed_addr #2 align 64 {
entry:
  %values = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #5
  %conv = zext i8 %val to i32
  %0 = lshr i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rs)
  %tobool.not = icmp eq i32 %rs, 0
  %or.i.i = or i32 %0, 16
  %storemerge.i = select i1 %tobool.not, i32 %0, i32 %or.i.i
  %1 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge.i, ptr %values, align 4
  %arrayidx1 = getelementptr [12 x ptr], ptr %hd, i32 0, i32 9
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  %cond = select i1 %tobool2.not, i32 5, i32 6
  %arrayidx4 = getelementptr [12 x ptr], ptr %hd, i32 0, i32 4
  %call = call i32 @gpiod_set_array_value_cansleep(i32 noundef %cond, ptr noundef %arrayidx4, ptr noundef null, ptr noundef nonnull %values) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 4294960) #5
  %arrayidx.i = getelementptr [12 x ptr], ptr %hd, i32 0, i32 10
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 8589920) #5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #5
  %10 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %values, align 4
  %and = and i32 %11, -16
  %and8 = and i32 %conv, 15
  %or = or i32 %and, %and8
  store i32 %or, ptr %values, align 4
  %call13 = call i32 @gpiod_set_array_value_cansleep(i32 noundef %cond, ptr noundef %arrayidx4, ptr noundef null, ptr noundef nonnull %values) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 4294960) #5
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 8589920) #5
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %17, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @charlcd_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_hd44780__183_348_hd44780_driver_init6, !1, !"__initcall__kmod_hd44780__183_348_hd44780_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/auxdisplay/hd44780.c", i32 348, i32 1}
!2 = !{ptr @__exitcall_hd44780_driver_exit, !1, !"__exitcall_hd44780_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/auxdisplay/hd44780.c", i32 349, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/auxdisplay/hd44780.c", i32 350, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/auxdisplay/hd44780.c", i32 351, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/auxdisplay/hd44780.c", i32 343, i32 11}
!12 = !{ptr @hd44780_driver, !13, !"hd44780_driver", i1 false, i1 false}
!13 = !{!"../drivers/auxdisplay/hd44780.c", i32 339, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/auxdisplay/hd44780.c", i32 210, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/auxdisplay/hd44780.c", i32 248, i32 45}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/auxdisplay/hd44780.c", i32 254, i32 46}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/auxdisplay/hd44780.c", i32 261, i32 55}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/auxdisplay/hd44780.c", i32 268, i32 55}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/auxdisplay/hd44780.c", i32 276, i32 38}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/auxdisplay/hd44780.c", i32 280, i32 38}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/auxdisplay/hd44780.c", i32 292, i32 32}
!30 = !{ptr @hd44780_ops_gpio8, !31, !"hd44780_ops_gpio8", i1 false, i1 false}
!31 = !{!"../drivers/auxdisplay/hd44780.c", i32 127, i32 33}
!32 = !{ptr @hd44780_ops_gpio4, !33, !"hd44780_ops_gpio4", i1 false, i1 false}
!33 = !{!"../drivers/auxdisplay/hd44780.c", i32 183, i32 33}
!34 = !{ptr @hd44780_of_match, !35, !"hd44780_of_match", i1 false, i1 false}
!35 = !{!"../drivers/auxdisplay/hd44780.c", i32 333, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
