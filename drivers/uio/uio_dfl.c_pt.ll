; ModuleID = '/llk/IR_all_yes/drivers/uio/uio_dfl.c_pt.bc'
source_filename = "../drivers/uio/uio_dfl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dfl_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dfl_device_id = type { i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dfl_device = type { %struct.device, i32, i16, i16, i8, %struct.resource, ptr, i32, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.uio_info = type { ptr, ptr, ptr, [5 x %struct.uio_mem], [5 x %struct.uio_port], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uio_mem = type { ptr, i32, i32, i32, i32, ptr, ptr }
%struct.uio_port = type { ptr, i32, i32, i32, ptr }

@__initcall__kmod_uio_dfl__227_62_uio_dfl_driver_init6 = internal global ptr @uio_dfl_driver_init, section ".initcall6.init", align 4
@uio_dfl_driver = internal global { %struct.dfl_driver, [40 x i8] } { %struct.dfl_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @uio_dfl_ids, ptr @uio_dfl_probe, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_uio_dfl_driver_exit = internal global ptr @uio_dfl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [65 x i8] c"uio_dfl.description=Generic DFL driver for Userspace I/O devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [33 x i8] c"uio_dfl.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [33 x i8] c"uio_dfl.file=drivers/uio/uio_dfl\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [23 x i8] c"uio_dfl.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uio_dfl\00", [24 x i8] zeroinitializer }, align 32
@uio_dfl_ids = internal constant { [2 x %struct.dfl_device_id], [16 x i8] } { [2 x %struct.dfl_device_id] [%struct.dfl_device_id { i16 0, i16 16, i32 0 }, %struct.dfl_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@uio_dfl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 42, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register uio device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uio_dfl_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/uio/uio_dfl.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uio_dfl_probe._entry_ptr = internal global ptr @uio_dfl_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"uio_dfl_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 55, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 57, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"uio_dfl_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 49, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 27, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [25 x i8] c"../drivers/uio/uio_dfl.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 42, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_uio_dfl_driver_exit, ptr @__initcall__kmod_uio_dfl__227_62_uio_dfl_driver_init6, ptr @uio_dfl_driver_exit, ptr @uio_dfl_probe._entry, ptr @uio_dfl_probe._entry_ptr, ptr @uio_dfl_driver, ptr @.str, ptr @uio_dfl_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dfl_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dfl_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uio_dfl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dfl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__dfl_driver_register(ptr noundef nonnull @uio_dfl_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uio_dfl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dfl_driver_unregister(ptr noundef nonnull @uio_dfl_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dfl_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uio_dfl_probe(ptr noundef %ddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ddev, i32 noundef 284, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_res = getelementptr inbounds %struct.dfl_device, ptr %ddev, i32 0, i32 5
  %name = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %name, align 4
  %version = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %version, align 4
  %mem = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3
  %memtype = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %memtype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %memtype, align 4
  %3 = ptrtoint ptr %mmio_res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mmio_res, align 4
  %and = and i32 %4, -4096
  %addr = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %addr, align 4
  %and3 = and i32 %4, 4095
  %offs = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %offs, align 4
  %end.i = getelementptr inbounds %struct.dfl_device, ptr %ddev, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i, align 4
  %add.i = sub i32 4096, %4
  %add = add i32 %add.i, %and3
  %sub = add i32 %add, %8
  %and7 = and i32 %sub, -4096
  %size = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and7, ptr %size, align 4
  %name8 = getelementptr inbounds %struct.dfl_device, ptr %ddev, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name8, align 4
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %mem, align 4
  %irq = getelementptr inbounds %struct.uio_info, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %irq, align 4
  %call10 = tail call i32 @__devm_uio_register_device(ptr noundef null, ptr noundef %ddev, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ddev, ptr noundef nonnull @.str.2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call10, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_uio_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_uio_dfl__227_62_uio_dfl_driver_init6, !1, !"__initcall__kmod_uio_dfl__227_62_uio_dfl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/uio/uio_dfl.c", i32 62, i32 1}
!2 = !{ptr @__exitcall_uio_dfl_driver_exit, !1, !"__exitcall_uio_dfl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/uio/uio_dfl.c", i32 64, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/uio/uio_dfl.c", i32 65, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/uio/uio_dfl.c", i32 66, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/uio/uio_dfl.c", i32 57, i32 11}
!12 = !{ptr @uio_dfl_driver, !13, !"uio_dfl_driver", i1 false, i1 false}
!13 = !{!"../drivers/uio/uio_dfl.c", i32 55, i32 26}
!14 = !{ptr @uio_dfl_ids, !15, !"uio_dfl_ids", i1 false, i1 false}
!15 = !{!"../drivers/uio/uio_dfl.c", i32 49, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/uio/uio_dfl.c", i32 27, i32 21}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/uio/uio_dfl.c", i32 42, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @uio_dfl_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @uio_dfl_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
