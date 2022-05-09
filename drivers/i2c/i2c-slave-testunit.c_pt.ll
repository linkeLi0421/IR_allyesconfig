; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-slave-testunit.c_pt.bc'
source_filename = "../drivers/i2c/i2c-slave-testunit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.testunit_data = type { i32, [4 x i8], i8, ptr, %struct.delayed_work }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_slave_testunit__288_179_i2c_slave_testunit_driver_init6 = internal global ptr @i2c_slave_testunit_driver_init, section ".initcall6.init", align 4
@i2c_slave_testunit_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @i2c_slave_testunit_remove, ptr @i2c_slave_testunit_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @i2c_slave_testunit_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_i2c_slave_testunit_driver_exit = internal global ptr @i2c_slave_testunit_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [66 x i8] c"i2c_slave_testunit.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"i2c_slave_testunit.description=I2C slave mode test unit\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"i2c_slave_testunit.file=drivers/i2c/i2c-slave-testunit\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [34 x i8] c"i2c_slave_testunit.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-slave-testunit\00", [45 x i8] zeroinitializer }, align 32
@i2c_slave_testunit_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"slave-testunit\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@i2c_slave_testunit_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&tu->worker)->work)\00", [56 x i8] zeroinitializer }, align 32
@i2c_slave_testunit_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&tu->worker)->timer\00", [42 x i8] zeroinitializer }, align 32
@i2c_slave_testunit_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 83, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMD%02X failed (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c_slave_testunit_work\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/i2c-slave-testunit.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_slave_testunit_work._entry_ptr = internal global ptr @i2c_slave_testunit_work._entry, section ".printk_index", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"i2c_slave_testunit_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 171, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 173, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"i2c_slave_testunit_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 165, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 151, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [36 x i8] c"../drivers/i2c/i2c-slave-testunit.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 83, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_i2c_slave_testunit_driver_exit, ptr @__initcall__kmod_i2c_slave_testunit__288_179_i2c_slave_testunit_driver_init6, ptr @i2c_slave_testunit_driver_exit, ptr @i2c_slave_testunit_work._entry, ptr @i2c_slave_testunit_work._entry_ptr, ptr @i2c_slave_testunit_driver, ptr @.str, ptr @i2c_slave_testunit_id, ptr @i2c_slave_testunit_probe.__key, ptr @.str.1, ptr @i2c_slave_testunit_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_testunit_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_testunit_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_testunit_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_testunit_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_slave_testunit_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_testunit_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @i2c_slave_testunit_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_slave_testunit_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @i2c_slave_testunit_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_testunit_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %worker = getelementptr inbounds %struct.testunit_data, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %worker) #5
  %call2 = tail call i32 @i2c_slave_unregister(ptr noundef %client) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_testunit_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %client1 = getelementptr inbounds %struct.testunit_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %worker = getelementptr inbounds %struct.testunit_data, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %worker, i32 noundef 0) #5
  %2 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %worker, align 4
  %lockdep_map = getelementptr inbounds %struct.testunit_data, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @i2c_slave_testunit_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry9 = getelementptr inbounds %struct.testunit_data, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.testunit_data, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.testunit_data, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @i2c_slave_testunit_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.testunit_data, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @i2c_slave_testunit_probe.__key.2) #5
  %call18 = tail call i32 @i2c_slave_register(ptr noundef %client, ptr noundef nonnull @i2c_slave_testunit_slave_cb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_slave_testunit_work(ptr noundef %work) #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 8
  %msgbuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msgbuf) #5
  %1 = call ptr @memset(ptr %msgbuf, i32 255, i32 256)
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -2, ptr %msg, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %msgbuf, ptr %buf, align 8
  %regs = getelementptr i8, ptr %work, i32 -12
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regs, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.if.end34_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
  ]

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx2 = getelementptr i8, ptr %work, i32 -11
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3, ptr %msg, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags, align 2
  %arrayidx6 = getelementptr i8, ptr %work, i32 -10
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 2
  %conv7 = zext i8 %12 to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %len, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8, ptr %msg, align 8
  %flags10 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags10, align 2
  %len11 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %len11, align 4
  %client = getelementptr i8, ptr %work, i32 -4
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client, align 4
  %addr12 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %addr12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr12, align 2
  %conv13 = trunc i16 %20 to i8
  %21 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13, ptr %msgbuf, align 1
  %arrayidx16 = getelementptr i8, ptr %work, i32 -11
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %msgbuf, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr i8, ptr %work, i32 -10
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19, align 2
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr %msgbuf, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx20, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %28)
  %.pr = load i16, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %.pr)
  %cmp.not = icmp eq i16 %.pr, -2
  br i1 %cmp.not, label %sw.epilog.if.end34_crit_edge, label %if.then

sw.epilog.if.end34_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then:                                          ; preds = %sw.epilog
  %client24 = getelementptr i8, ptr %work, i32 -4
  %29 = ptrtoint ptr %client24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client24, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp25 = icmp eq i32 %call, 0
  br i1 %cmp25, label %if.then.do.end_crit_edge, label %if.end

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp27 = icmp slt i32 %call, 0
  br i1 %cmp27, label %if.end.do.end_crit_edge, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.then.do.end_crit_edge
  %ret.054 = phi i32 [ %call, %if.end.do.end_crit_edge ], [ -5, %if.then.do.end_crit_edge ]
  %33 = ptrtoint ptr %client24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client24, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regs, align 4
  %conv33 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv33, i32 noundef %ret.054) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end.if.end34_crit_edge, %sw.epilog.if.end34_crit_edge, %entry.if.end34_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  call void @_clear_bit(i32 noundef 0, ptr noundef %add.ptr) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msgbuf) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_slave_testunit_slave_cb(ptr nocapture noundef readonly %client, i32 noundef %event, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reg_idx = getelementptr inbounds %struct.testunit_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.testunit_data, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp3 = icmp eq i8 %5, 1
  br i1 %cmp3, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.testunit_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp8 = icmp eq i8 %7, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp8, %land.rhs ]
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %event, label %land.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb34
    i32 1, label %land.end.sw.bb47_crit_edge
    i32 2, label %sw.bb50
    i32 0, label %sw.bb62
  ]

land.end.sw.bb47_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %land.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %1, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp13 = icmp ult i8 %3, 4
  br i1 %cmp13, label %if.then15, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv12 = zext i8 %3 to i32
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %arrayidx18 = getelementptr %struct.testunit_data, ptr %1, i32 0, i32 1, i32 %conv12
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end.if.end19_crit_edge
  %ret.0 = phi i32 [ 0, %if.then15 ], [ -90, %if.end.if.end19_crit_edge ]
  %15 = ptrtoint ptr %reg_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp22 = icmp ult i8 %16, 5
  br i1 %cmp22, label %if.then24, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nuw nsw i8 %16, 1
  %17 = ptrtoint ptr %reg_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %inc, ptr %reg_idx, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %regs27 = getelementptr inbounds %struct.testunit_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %regs27 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %regs27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp30 = icmp ugt i8 %19, 3
  %spec.select = select i1 %cmp30, i32 -22, i32 %ret.0
  br label %cleanup

sw.bb34:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp37 = icmp eq i8 %3, 4
  br i1 %cmp37, label %if.then39, label %sw.bb34.sw.bb47_crit_edge

sw.bb34.sw.bb47_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb47

if.then39:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %20 = load ptr, ptr @system_long_wq, align 4
  %worker = getelementptr inbounds %struct.testunit_data, ptr %1, i32 0, i32 4
  %arrayidx42 = getelementptr %struct.testunit_data, ptr %1, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %22 to i32
  %mul = mul nuw nsw i32 %conv43, 10
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #5
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %worker, i32 noundef %call2.i) #5
  br label %sw.bb47

sw.bb47:                                          ; preds = %if.then39, %sw.bb34.sw.bb47_crit_edge, %land.end.sw.bb47_crit_edge
  %regs48 = getelementptr inbounds %struct.testunit_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %regs48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %regs48, align 4
  %24 = ptrtoint ptr %reg_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %reg_idx, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %land.end
  br i1 %8, label %land.lhs.true53, label %sw.bb50.cond.end_crit_edge

sw.bb50.cond.end_crit_edge:                       ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

land.lhs.true53:                                  ; preds = %sw.bb50
  %arrayidx55 = getelementptr %struct.testunit_data, ptr %1, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx55, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool57.not = icmp eq i8 %26, 0
  br i1 %tobool57.not, label %land.lhs.true53.cond.true_crit_edge, label %if.then58

land.lhs.true53.cond.true_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true

if.then58:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i8 %26, -1
  %27 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %dec, ptr %arrayidx55, align 2
  br label %cond.true

sw.bb62:                                          ; preds = %land.end
  br i1 %8, label %sw.bb62.cond.true_crit_edge, label %sw.bb62.cond.end_crit_edge

sw.bb62.cond.end_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

sw.bb62.cond.true_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true

cond.true:                                        ; preds = %sw.bb62.cond.true_crit_edge, %if.then58, %land.lhs.true53.cond.true_crit_edge
  %arrayidx66 = getelementptr %struct.testunit_data, ptr %1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx66, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb62.cond.end_crit_edge, %sw.bb50.cond.end_crit_edge
  %cond = phi i8 [ %29, %cond.true ], [ 1, %sw.bb62.cond.end_crit_edge ], [ 1, %sw.bb50.cond.end_crit_edge ]
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %sw.bb47, %if.end26, %sw.bb.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %sw.bb.cleanup_crit_edge ], [ 0, %land.end.cleanup_crit_edge ], [ 0, %cond.end ], [ 0, %sw.bb47 ], [ %spec.select, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_i2c_slave_testunit__288_179_i2c_slave_testunit_driver_init6, !1, !"__initcall__kmod_i2c_slave_testunit__288_179_i2c_slave_testunit_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 179, i32 1}
!2 = !{ptr @__exitcall_i2c_slave_testunit_driver_exit, !1, !"__exitcall_i2c_slave_testunit_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 181, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 182, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 183, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 173, i32 11}
!12 = !{ptr @i2c_slave_testunit_driver, !13, !"i2c_slave_testunit_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 171, i32 26}
!14 = !{ptr @i2c_slave_testunit_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 151, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @i2c_slave_testunit_probe.__key.2, !15, !"__key", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 83, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @i2c_slave_testunit_work._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @i2c_slave_testunit_work._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @i2c_slave_testunit_id, !28, !"i2c_slave_testunit_id", i1 false, i1 false}
!28 = !{!"../drivers/i2c/i2c-slave-testunit.c", i32 165, i32 35}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
