; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-meson.c_pt.bc'
source_filename = "../drivers/reset/reset-meson.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.meson_reset_param = type { i32, i32 }
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
%struct.meson_reset = type { ptr, ptr, %struct.reset_controller_dev, %struct.spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_reset_meson__183_147_meson_reset_driver_init6 = internal global ptr @meson_reset_driver_init, section ".initcall6.init", align 4
@meson_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_reset_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_reset_driver_exit = internal global ptr @meson_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [62 x i8] c"reset_meson.description=Amlogic Meson Reset Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [60 x i8] c"reset_meson.author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"reset_meson.file=drivers/reset/reset-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [33 x i8] c"reset_meson.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"meson_reset\00", [20 x i8] zeroinitializer }, align 32
@meson_reset_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_param }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_param }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_param }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-a1-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_a1_param }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@meson_reset_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@meson_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @meson_reset_reset, ptr @meson_reset_assert, ptr @meson_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@meson8b_param = internal constant { %struct.meson_reset_param, [24 x i8] } { %struct.meson_reset_param { i32 8, i32 124 }, [24 x i8] zeroinitializer }, align 32
@meson_a1_param = internal constant { %struct.meson_reset_param, [24 x i8] } { %struct.meson_reset_param { i32 3, i32 64 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"meson_reset_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 140, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 143, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"meson_reset_dt_ids\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 101, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 130, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"meson_reset_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 85, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"meson8b_param\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 91, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"meson_a1_param\00", align 1
@___asan_gen_.24 = private constant [31 x i8] c"../drivers/reset/reset-meson.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 96, i32 39 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_meson_reset_driver_exit, ptr @__initcall__kmod_reset_meson__183_147_meson_reset_driver_init6, ptr @meson_reset_driver_exit, ptr @meson_reset_driver, ptr @.str, ptr @meson_reset_dt_ids, ptr @meson_reset_probe.__key, ptr @.str.1, ptr @meson_reset_ops, ptr @meson8b_param, ptr @meson_a1_param], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_reset_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_reset_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_param to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_a1_param to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_reset_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_reset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_reset_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %param = getelementptr inbounds %struct.meson_reset, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %param, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.meson_reset, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @meson_reset_probe.__key, i16 noundef signext 3) #4
  %rcdev = getelementptr inbounds %struct.meson_reset, ptr %call.i, i32 0, i32 2
  %owner = getelementptr inbounds %struct.meson_reset, ptr %call.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 4
  %5 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %param, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %mul = shl i32 %8, 5
  %nr_resets = getelementptr inbounds %struct.meson_reset, ptr %call.i, i32 0, i32 2, i32 8
  %9 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %nr_resets, align 4
  %10 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @meson_reset_ops, ptr %rcdev, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %of_node22 = getelementptr inbounds %struct.meson_reset, ptr %call.i, i32 0, i32 2, i32 5
  %13 = ptrtoint ptr %of_node22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node22, align 4
  %call25 = tail call i32 @devm_reset_controller_register(ptr noundef %dev, ptr noundef %rcdev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %call25, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_reset_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -8
  %rem = and i32 %id, 31
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = lshr i32 %id, 3
  %shl = and i32 %2, 536870908
  %add.ptr1 = getelementptr i8, ptr %1, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %shl2 = shl nuw i32 1, %rem
  %3 = tail call i32 @llvm.bswap.i32(i32 %shl2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %3) #4, !srcloc !35
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_reset_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -8
  %rem.i = and i32 %id, 31
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %param.i = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param.i, align 4
  %level_offset.i = getelementptr inbounds %struct.meson_reset_param, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %level_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level_offset.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 %5
  %6 = lshr i32 %id, 3
  %shl.i = and i32 %6, 536870908
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %shl.i
  %lock.i = getelementptr i8, ptr %rcdev, i32 44
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !36
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %shl14.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl14.i, -1
  %and.i = and i32 %8, %neg.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %9) #4, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_reset_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -8
  %rem.i = and i32 %id, 31
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %param.i = getelementptr i8, ptr %rcdev, i32 -4
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param.i, align 4
  %level_offset.i = getelementptr inbounds %struct.meson_reset_param, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %level_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level_offset.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %1, i32 %5
  %6 = lshr i32 %id, 3
  %shl.i = and i32 %6, 536870908
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %shl.i
  %lock.i = getelementptr i8, ptr %rcdev, i32 44
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #4, !srcloc !36
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %shl14.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %8, %shl14.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %9) #4, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_reset_meson__183_147_meson_reset_driver_init6, !1, !"__initcall__kmod_reset_meson__183_147_meson_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-meson.c", i32 147, i32 1}
!2 = !{ptr @__exitcall_meson_reset_driver_exit, !1, !"__exitcall_meson_reset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/reset/reset-meson.c", i32 149, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/reset/reset-meson.c", i32 150, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/reset/reset-meson.c", i32 151, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/reset/reset-meson.c", i32 143, i32 12}
!12 = !{ptr @meson_reset_driver, !13, !"meson_reset_driver", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-meson.c", i32 140, i32 31}
!14 = !{ptr @meson_reset_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/reset/reset-meson.c", i32 130, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @meson_reset_ops, !18, !"meson_reset_ops", i1 false, i1 false}
!18 = !{!"../drivers/reset/reset-meson.c", i32 85, i32 39}
!19 = !{ptr @meson_reset_dt_ids, !20, !"meson_reset_dt_ids", i1 false, i1 false}
!20 = !{!"../drivers/reset/reset-meson.c", i32 101, i32 34}
!21 = !{ptr @meson8b_param, !22, !"meson8b_param", i1 false, i1 false}
!22 = !{!"../drivers/reset/reset-meson.c", i32 91, i32 39}
!23 = !{ptr @meson_a1_param, !24, !"meson_a1_param", i1 false, i1 false}
!24 = !{!"../drivers/reset/reset-meson.c", i32 96, i32 39}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2152894981}
!35 = !{i64 687041}
!36 = !{i64 687459}
!37 = !{i64 2152897229}
