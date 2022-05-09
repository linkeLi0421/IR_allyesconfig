; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq27xxx_battery_hdq.c_pt.bc'
source_filename = "../drivers/power/supply/bq27xxx_battery_hdq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.bq27xxx_device_info = type { ptr, i32, i32, i32, ptr, ptr, i32, %struct.bq27xxx_access_methods, %struct.bq27xxx_reg_cache, i32, i32, %struct.delayed_work, ptr, %struct.list_head, %struct.mutex, ptr }
%struct.bq27xxx_access_methods = type { ptr, ptr, ptr, ptr }
%struct.bq27xxx_reg_cache = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }

@__param_str_F_ID = internal constant [25 x i8] c"bq27xxx_battery_hdq.F_ID\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@F_ID = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_F_ID = internal constant %struct.kernel_param { ptr @__param_str_F_ID, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @F_ID } }, section "__param", align 4
@__UNIQUE_ID_F_IDtype170 = internal constant [38 x i8] c"bq27xxx_battery_hdq.parmtype=F_ID:int\00", section ".modinfo", align 1
@__UNIQUE_ID_F_ID171 = internal constant [66 x i8] c"bq27xxx_battery_hdq.parm=F_ID:1-wire slave FID for BQ27xxx device\00", section ".modinfo", align 1
@__initcall__kmod_bq27xxx_battery_hdq__172_117_bq27xxx_battery_hdq_init6 = internal global ptr @bq27xxx_battery_hdq_init, section ".initcall6.init", align 4
@bq27xxx_battery_hdq_family = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 1, ptr @bq27xxx_battery_hdq_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_bq27xxx_battery_hdq_exit = internal global ptr @bq27xxx_battery_hdq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [49 x i8] c"bq27xxx_battery_hdq.author=Texas Instruments Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [74 x i8] c"bq27xxx_battery_hdq.description=BQ27xxx battery monitor HDQ/1-wire driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [66 x i8] c"bq27xxx_battery_hdq.file=drivers/power/supply/bq27xxx_battery_hdq\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [32 x i8] c"bq27xxx_battery_hdq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias177 = internal constant [41 x i8] c"bq27xxx_battery_hdq.alias=w1-family-0x01\00", section ".modinfo", align 1
@bq27xxx_battery_hdq_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @bq27xxx_battery_hdq_add_slave, ptr @bq27xxx_battery_hdq_remove_slave, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq27000-battery\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [5 x i8] c"F_ID\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 24, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"bq27xxx_battery_hdq_family\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 105, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"bq27xxx_battery_hdq_fops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 100, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [46 x i8] c"../drivers/power/supply/bq27xxx_battery_hdq.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 87, i32 13 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_F_ID171, ptr @__UNIQUE_ID_F_IDtype170, ptr @__UNIQUE_ID_alias177, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_bq27xxx_battery_hdq_exit, ptr @__initcall__kmod_bq27xxx_battery_hdq__172_117_bq27xxx_battery_hdq_init6, ptr @__param_F_ID, ptr @bq27xxx_battery_hdq_exit, ptr @F_ID, ptr @bq27xxx_battery_hdq_family, ptr @bq27xxx_battery_hdq_fops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @F_ID to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_hdq_family to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq27xxx_battery_hdq_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq27xxx_battery_hdq_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @F_ID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.w1_family, ptr @bq27xxx_battery_hdq_family, i32 0, i32 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @bq27xxx_battery_hdq_family) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq27xxx_battery_hdq_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @w1_unregister_family(ptr noundef nonnull @bq27xxx_battery_hdq_family) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq27xxx_battery_hdq_add_slave(ptr noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 300, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %chip = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %chip, align 4
  %name = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 4
  %bus = getelementptr inbounds %struct.bq27xxx_device_info, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bq27xxx_battery_hdq_read, ptr %bus, align 4
  %call4 = tail call i32 @bq27xxx_battery_setup(ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq27xxx_battery_hdq_remove_slave(ptr nocapture noundef readonly %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @bq27xxx_battery_teardown(ptr noundef %1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq27xxx_battery_hdq_read(ptr nocapture noundef readonly %di, i8 noundef zeroext %reg, i1 noundef zeroext %single) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di, align 4
  br i1 %single, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %add = add i8 %reg, 1
  %master.i = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %bus_mutex.i = getelementptr inbounds %struct.w1_master, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i, i32 noundef 0) #3
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %add) #3
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %call.i = tail call zeroext i8 @w1_read_8(ptr noundef %7) #3
  %8 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i = getelementptr inbounds %struct.w1_master, ptr %9, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i) #3
  %10 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i, align 4
  %bus_mutex.i41 = getelementptr inbounds %struct.w1_master, ptr %11, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i41, i32 noundef 0) #3
  %12 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %13, i8 noundef zeroext %reg) #3
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i, align 4
  %call.i42 = tail call zeroext i8 @w1_read_8(ptr noundef %15) #3
  %16 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i43 = getelementptr inbounds %struct.w1_master, ptr %17, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i43) #3
  %18 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i, align 4
  %bus_mutex.i46 = getelementptr inbounds %struct.w1_master, ptr %19, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i46, i32 noundef 0) #3
  %20 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %21, i8 noundef zeroext %add) #3
  %22 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i, align 4
  %call.i48 = tail call zeroext i8 @w1_read_8(ptr noundef %23) #3
  %24 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i49 = getelementptr inbounds %struct.w1_master, ptr %25, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i49) #3
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i, i8 %call.i48)
  %cmp13.not = icmp eq i8 %call.i, %call.i48
  br i1 %cmp13.not, label %if.then.if.end19_crit_edge, label %land.rhs

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

land.rhs:                                         ; preds = %if.then
  %26 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master.i, align 4
  %bus_mutex.i41.1 = getelementptr inbounds %struct.w1_master, ptr %27, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i41.1, i32 noundef 0) #3
  %28 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %29, i8 noundef zeroext %reg) #3
  %30 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master.i, align 4
  %call.i42.1 = tail call zeroext i8 @w1_read_8(ptr noundef %31) #3
  %32 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i43.1 = getelementptr inbounds %struct.w1_master, ptr %33, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i43.1) #3
  %34 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master.i, align 4
  %bus_mutex.i46.1 = getelementptr inbounds %struct.w1_master, ptr %35, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i46.1, i32 noundef 0) #3
  %36 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %37, i8 noundef zeroext %add) #3
  %38 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master.i, align 4
  %call.i48.1 = tail call zeroext i8 @w1_read_8(ptr noundef %39) #3
  %40 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i49.1 = getelementptr inbounds %struct.w1_master, ptr %41, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i49.1) #3
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i48, i8 %call.i48.1)
  %cmp13.not.1 = icmp eq i8 %call.i48, %call.i48.1
  br i1 %cmp13.not.1, label %land.rhs.if.end19_crit_edge, label %land.rhs.1

land.rhs.if.end19_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

land.rhs.1:                                       ; preds = %land.rhs
  %42 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i, align 4
  %bus_mutex.i41.2 = getelementptr inbounds %struct.w1_master, ptr %43, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i41.2, i32 noundef 0) #3
  %44 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %45, i8 noundef zeroext %reg) #3
  %46 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %master.i, align 4
  %call.i42.2 = tail call zeroext i8 @w1_read_8(ptr noundef %47) #3
  %48 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i43.2 = getelementptr inbounds %struct.w1_master, ptr %49, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i43.2) #3
  %50 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master.i, align 4
  %bus_mutex.i46.2 = getelementptr inbounds %struct.w1_master, ptr %51, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i46.2, i32 noundef 0) #3
  %52 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %master.i, align 4
  tail call void @w1_write_8(ptr noundef %53, i8 noundef zeroext %add) #3
  %54 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %master.i, align 4
  %call.i48.2 = tail call zeroext i8 @w1_read_8(ptr noundef %55) #3
  %56 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master.i, align 4
  %bus_mutex4.i49.2 = getelementptr inbounds %struct.w1_master, ptr %57, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i49.2) #3
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i48.1, i8 %call.i48.2)
  %cmp13.not.2 = icmp eq i8 %call.i48.1, %call.i48.2
  br i1 %cmp13.not.2, label %land.rhs.1.if.end19_crit_edge, label %land.rhs.1.cleanup_crit_edge

land.rhs.1.cleanup_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.rhs.1.if.end19_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end19:                                         ; preds = %land.rhs.1.if.end19_crit_edge, %land.rhs.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %call.i42.lcssa = phi i8 [ %call.i42, %if.then.if.end19_crit_edge ], [ %call.i42.1, %land.rhs.if.end19_crit_edge ], [ %call.i42.2, %land.rhs.1.if.end19_crit_edge ]
  %conv5.i50.lcssa.in = phi i8 [ %call.i, %if.then.if.end19_crit_edge ], [ %call.i48, %land.rhs.if.end19_crit_edge ], [ %call.i48.1, %land.rhs.1.if.end19_crit_edge ]
  %conv5.i50.lcssa = zext i8 %conv5.i50.lcssa.in to i32
  %conv5.i44 = zext i8 %call.i42.lcssa to i32
  %shl = shl nuw nsw i32 %conv5.i50.lcssa, 8
  %or = or i32 %shl, %conv5.i44
  br label %cleanup

if.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %master.i51 = getelementptr i8, ptr %1, i32 -12
  %58 = ptrtoint ptr %master.i51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %master.i51, align 4
  %bus_mutex.i52 = getelementptr inbounds %struct.w1_master, ptr %59, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex.i52, i32 noundef 0) #3
  %60 = ptrtoint ptr %master.i51 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %master.i51, align 4
  tail call void @w1_write_8(ptr noundef %61, i8 noundef zeroext %reg) #3
  %62 = ptrtoint ptr %master.i51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %master.i51, align 4
  %call.i53 = tail call zeroext i8 @w1_read_8(ptr noundef %63) #3
  %64 = ptrtoint ptr %master.i51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %master.i51, align 4
  %bus_mutex4.i54 = getelementptr inbounds %struct.w1_master, ptr %65, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex4.i54) #3
  %conv5.i55 = zext i8 %call.i53 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end19, %land.rhs.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv5.i55, %if.end20 ], [ %or, %if.end19 ], [ -5, %land.rhs.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bq27xxx_battery_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bq27xxx_battery_teardown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__param_F_ID, !1, !"__param_F_ID", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_F_IDtype170, !1, !"__UNIQUE_ID_F_IDtype170", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_F_ID171, !4, !"__UNIQUE_ID_F_ID171", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 26, i32 1}
!5 = !{ptr @__initcall__kmod_bq27xxx_battery_hdq__172_117_bq27xxx_battery_hdq_init6, !6, !"__initcall__kmod_bq27xxx_battery_hdq__172_117_bq27xxx_battery_hdq_init6", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 117, i32 1}
!7 = !{ptr @__exitcall_bq27xxx_battery_hdq_exit, !8, !"__exitcall_bq27xxx_battery_hdq_exit", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 123, i32 1}
!9 = !{ptr @__UNIQUE_ID_author173, !10, !"__UNIQUE_ID_author173", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 125, i32 1}
!11 = !{ptr @__UNIQUE_ID_description174, !12, !"__UNIQUE_ID_description174", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 126, i32 1}
!13 = !{ptr @__UNIQUE_ID_file175, !14, !"__UNIQUE_ID_file175", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 127, i32 1}
!15 = !{ptr @__UNIQUE_ID_license176, !14, !"__UNIQUE_ID_license176", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias177, !17, !"__UNIQUE_ID_alias177", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 128, i32 1}
!18 = !{ptr @F_ID, !19, !"F_ID", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 24, i32 12}
!20 = !{ptr @__param_str_F_ID, !1, !"__param_str_F_ID", i1 false, i1 false}
!21 = !{ptr @bq27xxx_battery_hdq_family, !22, !"bq27xxx_battery_hdq_family", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 105, i32 25}
!23 = !{ptr @bq27xxx_battery_hdq_fops, !24, !"bq27xxx_battery_hdq_fops", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 100, i32 35}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/bq27xxx_battery_hdq.c", i32 87, i32 13}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
