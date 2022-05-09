; ModuleID = '/llk/IR_all_yes/drivers/reset/hisilicon/hi6220_reset.c_pt.bc'
source_filename = "../drivers/reset/hisilicon/hi6220_reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
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
%struct.hi6220_reset_data = type { %struct.reset_controller_dev, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_hi6220_reset__170_221_hi6220_reset_init2 = internal global ptr @hi6220_reset_init, section ".initcall2.init", align 4
@__UNIQUE_ID_file171 = internal constant [55 x i8] c"hi6220_reset.file=drivers/reset/hisilicon/hi6220_reset\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [28 x i8] c"hi6220_reset.license=GPL v2\00", section ".modinfo", align 1
@hi6220_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi6220_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi6220_reset_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset-hi6220\00", [19 x i8] zeroinitializer }, align 32
@hi6220_reset_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-mediactrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-aoctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@hi6220_reset_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get reset controller regmap\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hi6220_reset_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/reset/hisilicon/hi6220_reset.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi6220_reset_probe._entry_ptr = internal global ptr @hi6220_reset_probe._entry, section ".printk_index", align 4
@hi6220_media_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @hi6220_media_assert, ptr @hi6220_media_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@hi6220_peripheral_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @hi6220_peripheral_assert, ptr @hi6220_peripheral_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@hi6220_ao_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @hi6220_ao_assert, ptr @hi6220_ao_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"hi6220_reset_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 208, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 211, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"hi6220_reset_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 191, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 171, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"hi6220_media_reset_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 91, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"hi6220_peripheral_reset_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 68, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"hi6220_ao_reset_ops\00", align 1
@___asan_gen_.40 = private constant [42 x i8] c"../drivers/reset/hisilicon/hi6220_reset.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 150, i32 39 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__initcall__kmod_hi6220_reset__170_221_hi6220_reset_init2, ptr @hi6220_reset_probe._entry, ptr @hi6220_reset_probe._entry_ptr, ptr @hi6220_reset_driver, ptr @.str, ptr @hi6220_reset_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hi6220_media_reset_ops, ptr @hi6220_peripheral_reset_ops, ptr @hi6220_ao_reset_ops], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_reset_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_reset_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_media_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_peripheral_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6220_ao_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_reset_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6220_reset_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %call4 = tail call ptr @syscon_node_to_regmap(ptr noundef %1) #4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %regmap9 = getelementptr inbounds %struct.hi6220_reset_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regmap9, align 4
  %of_node10 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %of_node10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %of_node10, align 4
  %magicptr = ptrtoint ptr %call3 to i32
  %5 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.else20 [
    i32 1, label %if.end8.if.end26_crit_edge
    i32 0, label %if.then15
  ]

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end26:                                         ; preds = %if.else20, %if.then15, %if.end8.if.end26_crit_edge
  %hi6220_peripheral_reset_ops.sink = phi ptr [ @hi6220_peripheral_reset_ops, %if.then15 ], [ @hi6220_ao_reset_ops, %if.else20 ], [ @hi6220_media_reset_ops, %if.end8.if.end26_crit_edge ]
  %.sink = phi i32 [ 1289, %if.then15 ], [ 12, %if.else20 ], [ 8, %if.end8.if.end26_crit_edge ]
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hi6220_peripheral_reset_ops.sink, ptr %call.i, align 4
  %nr_resets19 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %nr_resets19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %nr_resets19, align 4
  %call28 = tail call i32 @reset_controller_register(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %do.end ], [ %call28, %if.end26 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_media_assert(ptr nocapture noundef readonly %rc_dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.hi6220_reset_data, ptr %rc_dev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %shl = shl nuw i32 1, %idx
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1324, i32 noundef %shl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_media_deassert(ptr nocapture noundef readonly %rc_dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.hi6220_reset_data, ptr %rc_dev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %shl = shl nuw i32 1, %idx
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1328, i32 noundef %shl) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_peripheral_assert(ptr nocapture noundef readonly %rc_dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.hi6220_reset_data, ptr %rc_dev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %and = and i32 %idx, 255
  %2 = lshr i32 %idx, 4
  %mul = and i32 %2, 268435440
  %add = add nuw nsw i32 %mul, 768
  %shl = shl nuw i32 1, %and
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add, i32 noundef %shl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_peripheral_deassert(ptr nocapture noundef readonly %rc_dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.hi6220_reset_data, ptr %rc_dev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %and = and i32 %idx, 255
  %2 = lshr i32 %idx, 4
  %mul = and i32 %2, 268435440
  %add = add nuw nsw i32 %mul, 772
  %shl = shl nuw i32 1, %and
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add, i32 noundef %shl) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_ao_assert(ptr nocapture noundef readonly %rc_dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.hi6220_reset_data, ptr %rc_dev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %shl = shl nuw i32 1, %idx
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2064, i32 noundef %shl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2080, i32 noundef %shl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2052, i32 noundef %shl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6220_ao_deassert(ptr nocapture noundef readonly %rc_dev, i32 noundef %idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.hi6220_reset_data, ptr %rc_dev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %shl = shl nuw i32 1, %idx
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2068, i32 noundef %shl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2084, i32 noundef %shl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 2048, i32 noundef %shl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_hi6220_reset__170_221_hi6220_reset_init2, !1, !"__initcall__kmod_hi6220_reset__170_221_hi6220_reset_init2", i1 false, i1 false}
!1 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 221, i32 1}
!2 = !{ptr @__UNIQUE_ID_file171, !3, !"__UNIQUE_ID_file171", i1 false, i1 false}
!3 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 223, i32 1}
!4 = !{ptr @__UNIQUE_ID_license172, !3, !"__UNIQUE_ID_license172", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 211, i32 11}
!7 = !{ptr @hi6220_reset_driver, !8, !"hi6220_reset_driver", i1 false, i1 false}
!8 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 208, i32 31}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 171, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @hi6220_reset_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @hi6220_reset_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @hi6220_media_reset_ops, !18, !"hi6220_media_reset_ops", i1 false, i1 false}
!18 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 91, i32 39}
!19 = !{ptr @hi6220_peripheral_reset_ops, !20, !"hi6220_peripheral_reset_ops", i1 false, i1 false}
!20 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 68, i32 39}
!21 = !{ptr @hi6220_ao_reset_ops, !22, !"hi6220_ao_reset_ops", i1 false, i1 false}
!22 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 150, i32 39}
!23 = !{ptr @hi6220_reset_match, !24, !"hi6220_reset_match", i1 false, i1 false}
!24 = !{!"../drivers/reset/hisilicon/hi6220_reset.c", i32 191, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
