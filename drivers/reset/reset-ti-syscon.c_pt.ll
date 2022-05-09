; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-ti-syscon.c_pt.bc'
source_filename = "../drivers/reset/reset-ti-syscon.c"
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.ti_syscon_reset_control = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.ti_syscon_reset_data = type { %struct.reset_controller_dev, ptr, ptr, i32 }

@__initcall__kmod_reset_ti_syscon__170_233_ti_syscon_reset_driver_init6 = internal global ptr @ti_syscon_reset_driver_init, section ".initcall6.init", align 4
@ti_syscon_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_syscon_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_syscon_reset_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_syscon_reset_driver_exit = internal global ptr @ti_syscon_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [52 x i8] c"reset_ti_syscon.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [50 x i8] c"reset_ti_syscon.author=Suman Anna <s-anna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [58 x i8] c"reset_ti_syscon.description=TI SYSCON Regmap Reset Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [51 x i8] c"reset_ti_syscon.file=drivers/reset/reset-ti-syscon\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [31 x i8] c"reset_ti_syscon.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti-syscon-reset\00", [16 x i8] zeroinitializer }, align 32
@ti_syscon_reset_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,syscon-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,reset-bits\00", [18 x i8] zeroinitializer }, align 32
@ti_syscon_reset_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid DT reset description\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_syscon_reset_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/reset/reset-ti-syscon.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_syscon_reset_probe._entry_ptr = internal global ptr @ti_syscon_reset_probe._entry, section ".printk_index", align 4
@ti_syscon_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @ti_syscon_reset_assert, ptr @ti_syscon_reset_deassert, ptr @ti_syscon_reset_status }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"ti_syscon_reset_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 226, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 229, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"ti_syscon_reset_of_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 220, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 185, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 187, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"ti_syscon_reset_ops\00", align 1
@___asan_gen_.38 = private constant [35 x i8] c"../drivers/reset/reset-ti-syscon.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 161, i32 39 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_ti_syscon_reset_driver_exit, ptr @__initcall__kmod_reset_ti_syscon__170_233_ti_syscon_reset_driver_init6, ptr @ti_syscon_reset_driver_exit, ptr @ti_syscon_reset_probe._entry, ptr @ti_syscon_reset_probe._entry_ptr, ptr @ti_syscon_reset_driver, ptr @.str, ptr @ti_syscon_reset_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ti_syscon_reset_ops], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_reset_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_reset_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_syscon_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_syscon_reset_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_syscon_reset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_syscon_reset_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #6
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !39
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %4) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %size) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.do.end_crit_edge, label %lor.lhs.false

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end6
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %div98 = lshr i32 %7, 2
  %rem = urem i32 %div98, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end10, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end6.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %div12 = udiv i32 %7, 28
  %8 = mul nuw i32 %div12, 28
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3520) #6
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %for.cond.preheader

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %9 = icmp ult i32 %7, 28
  br i1 %9, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div12, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %list.0102 = phi ptr [ %incdec.ptr34, %for.body.for.body_crit_edge ], [ %call7, %for.body.preheader ]
  %incdec.ptr = getelementptr i32, ptr %list.0102, i32 1
  %10 = ptrtoint ptr %list.0102 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %list.0102, align 4
  %arrayidx = getelementptr %struct.ti_syscon_reset_control, ptr %call5.i.i, i32 %i.0103
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %incdec.ptr19 = getelementptr i32, ptr %list.0102, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr, align 4
  %assert_bit = getelementptr %struct.ti_syscon_reset_control, ptr %call5.i.i, i32 %i.0103, i32 1
  %15 = ptrtoint ptr %assert_bit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %assert_bit, align 4
  %incdec.ptr22 = getelementptr i32, ptr %list.0102, i32 3
  %16 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr19, align 4
  %deassert_offset = getelementptr %struct.ti_syscon_reset_control, ptr %call5.i.i, i32 %i.0103, i32 2
  %18 = ptrtoint ptr %deassert_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %deassert_offset, align 4
  %incdec.ptr25 = getelementptr i32, ptr %list.0102, i32 4
  %19 = ptrtoint ptr %incdec.ptr22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %incdec.ptr22, align 4
  %deassert_bit = getelementptr %struct.ti_syscon_reset_control, ptr %call5.i.i, i32 %i.0103, i32 3
  %21 = ptrtoint ptr %deassert_bit to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %deassert_bit, align 4
  %incdec.ptr28 = getelementptr i32, ptr %list.0102, i32 5
  %22 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %incdec.ptr25, align 4
  %status_offset = getelementptr %struct.ti_syscon_reset_control, ptr %call5.i.i, i32 %i.0103, i32 4
  %24 = ptrtoint ptr %status_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %status_offset, align 4
  %incdec.ptr31 = getelementptr i32, ptr %list.0102, i32 6
  %25 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr28, align 4
  %status_bit = getelementptr %struct.ti_syscon_reset_control, ptr %call5.i.i, i32 %i.0103, i32 5
  %27 = ptrtoint ptr %status_bit to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %status_bit, align 4
  %incdec.ptr34 = getelementptr i32, ptr %list.0102, i32 7
  %28 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr31, align 4
  %flags = getelementptr %struct.ti_syscon_reset_control, ptr %call5.i.i, i32 %i.0103, i32 6
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %flags, align 4
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ti_syscon_reset_ops, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %owner, align 4
  %of_node39 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %of_node39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %of_node39, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div12, ptr %nr_resets, align 4
  %regmap41 = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %regmap41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call2, ptr %regmap41, align 4
  %controls42 = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %controls42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i, ptr %controls42, align 4
  %nr_controls43 = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %nr_controls43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div12, ptr %nr_controls43, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call45 = call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end10.cleanup_crit_edge, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then4 ], [ -22, %do.end ], [ %call45, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_controls = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %nr_controls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_controls, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp.not = icmp ugt i32 %1, %id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %controls = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 2
  %2 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controls, align 4
  %flags = getelementptr %struct.ti_syscon_reset_control, ptr %3, i32 %id, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.ti_syscon_reset_control, ptr %3, i32 %id
  %assert_bit = getelementptr %struct.ti_syscon_reset_control, ptr %3, i32 %id, i32 1
  %6 = ptrtoint ptr %assert_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assert_bit, align 4
  %shl = shl nuw i32 1, %7
  %and4 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 %shl
  %regmap = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_controls = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 3
  %0 = ptrtoint ptr %nr_controls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_controls, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp.not = icmp ugt i32 %1, %id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %controls = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 2
  %2 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controls, align 4
  %flags = getelementptr %struct.ti_syscon_reset_control, ptr %3, i32 %id, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %deassert_bit = getelementptr %struct.ti_syscon_reset_control, ptr %3, i32 %id, i32 3
  %6 = ptrtoint ptr %deassert_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %deassert_bit, align 4
  %shl = shl nuw i32 1, %7
  %and4 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 %shl
  %regmap = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %deassert_offset = getelementptr %struct.ti_syscon_reset_control, ptr %3, i32 %id, i32 2
  %10 = ptrtoint ptr %deassert_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %deassert_offset, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_syscon_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  %reset_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_state) #6
  %0 = ptrtoint ptr %reset_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reset_state, align 4, !annotation !39
  %nr_controls = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 3
  %1 = ptrtoint ptr %nr_controls to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_controls, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %id)
  %cmp.not = icmp ugt i32 %2, %id
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %controls = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 2
  %3 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controls, align 4
  %flags = getelementptr %struct.ti_syscon_reset_control, ptr %4, i32 %id, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.ti_syscon_reset_data, ptr %rcdev, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %status_offset = getelementptr %struct.ti_syscon_reset_control, ptr %4, i32 %id, i32 4
  %9 = ptrtoint ptr %status_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status_offset, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %reset_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %reset_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reset_state, align 4
  %status_bit = getelementptr %struct.ti_syscon_reset_control, ptr %4, i32 %id, i32 5
  %13 = ptrtoint ptr %status_bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status_bit, align 4
  %15 = xor i32 %12, -1
  %16 = lshr i32 %15, %14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and9 = lshr i32 %18, 5
  %and9.lobit24 = xor i32 %and9, %16
  %19 = and i32 %and9.lobit24, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_state) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_reset_ti_syscon__170_233_ti_syscon_reset_driver_init6, !1, !"__initcall__kmod_reset_ti_syscon__170_233_ti_syscon_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-ti-syscon.c", i32 233, i32 1}
!2 = !{ptr @__exitcall_ti_syscon_reset_driver_exit, !1, !"__exitcall_ti_syscon_reset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/reset/reset-ti-syscon.c", i32 235, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/reset/reset-ti-syscon.c", i32 236, i32 1}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/reset/reset-ti-syscon.c", i32 237, i32 1}
!9 = !{ptr @__UNIQUE_ID_file174, !10, !"__UNIQUE_ID_file174", i1 false, i1 false}
!10 = !{!"../drivers/reset/reset-ti-syscon.c", i32 238, i32 1}
!11 = !{ptr @__UNIQUE_ID_license175, !10, !"__UNIQUE_ID_license175", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-ti-syscon.c", i32 229, i32 11}
!14 = !{ptr @ti_syscon_reset_driver, !15, !"ti_syscon_reset_driver", i1 false, i1 false}
!15 = !{!"../drivers/reset/reset-ti-syscon.c", i32 226, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/reset/reset-ti-syscon.c", i32 185, i32 29}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/reset/reset-ti-syscon.c", i32 187, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ti_syscon_reset_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ti_syscon_reset_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ti_syscon_reset_ops, !27, !"ti_syscon_reset_ops", i1 false, i1 false}
!27 = !{!"../drivers/reset/reset-ti-syscon.c", i32 161, i32 39}
!28 = !{ptr @ti_syscon_reset_of_match, !29, !"ti_syscon_reset_of_match", i1 false, i1 false}
!29 = !{!"../drivers/reset/reset-ti-syscon.c", i32 220, i32 34}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
