; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-fsi.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-fsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsi_device_id = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsi_i2c_master = type { ptr, i8, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.fsi_i2c_port = type { %struct.list_head, %struct.i2c_adapter, ptr, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_fsi__348_772_fsi_i2c_driver_init6 = internal global ptr @fsi_i2c_driver_init, section ".initcall6.init", align 4
@fsi_i2c_driver = internal global { %struct.fsi_driver, [48 x i8] } { %struct.fsi_driver { %struct.device_driver { ptr @.str, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @fsi_i2c_probe, ptr null, ptr @fsi_i2c_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fsi_i2c_ids }, [48 x i8] zeroinitializer }, align 32
@__exitcall_fsi_i2c_driver_exit = internal global ptr @fsi_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author349 = internal constant [48 x i8] c"i2c_fsi.author=Eddie James <eajames@us.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description350 = internal constant [44 x i8] c"i2c_fsi.description=FSI attached I2C master\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [40 x i8] c"i2c_fsi.file=drivers/i2c/busses/i2c-fsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [20 x i8] c"i2c_fsi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c-fsi\00", [24 x i8] zeroinitializer }, align 32
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@fsi_i2c_ids = internal constant { [2 x %struct.fsi_device_id], [28 x i8] } { [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 7, i8 0 }, %struct.fsi_device_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@fsi_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@fsi_i2c_probe.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_fsi\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsi_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-fsi.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2C master has %d ports\0A\00", [39 x i8] zeroinitializer }, align 32
@fsi_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @fsi_i2c_xfer, ptr null, ptr null, ptr null, ptr @fsi_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsi_i2c_bus_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @i2c_generic_scl_recovery, ptr @fsi_i2c_get_scl, ptr @fsi_i2c_set_scl, ptr @fsi_i2c_get_sda, ptr @fsi_i2c_set_sda, ptr null, ptr @fsi_i2c_prepare_recovery, ptr @fsi_i2c_unprepare_recovery, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_bus-%u\00", [21 x i8] zeroinitializer }, align 32
@fsi_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 730, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register adapter: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_i2c_probe._entry_ptr = internal global ptr @fsi_i2c_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"fsi_i2c_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 762, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 765, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"fsi_i2c_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 757, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 689, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 702, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"fsi_i2c_algorithm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 656, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"fsi_i2c_bus_recovery_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 646, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 726, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 730, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-fsi.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 669, i32 33 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_fsi_i2c_driver_exit, ptr @__initcall__kmod_i2c_fsi__348_772_fsi_i2c_driver_init6, ptr @fsi_i2c_driver_exit, ptr @fsi_i2c_probe._entry, ptr @fsi_i2c_probe._entry_ptr, ptr @fsi_i2c_driver, ptr @.str, ptr @fsi_i2c_ids, ptr @fsi_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fsi_i2c_algorithm, ptr @fsi_i2c_bus_recovery_info, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_i2c_driver to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_i2c_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_i2c_bus_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fsi_driver_register(ptr noundef nonnull @fsi_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsi_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fsi_driver_unregister(ptr noundef nonnull @fsi_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_i2c_probe(ptr noundef %dev) #2 align 64 {
entry:
  %port_no.i = alloca i32, align 4
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi_i2c_master, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @fsi_i2c_probe.__key) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %ports1 = getelementptr inbounds %struct.fsi_i2c_master, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %ports1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %ports1, ptr %ports1, align 4
  %prev.i = getelementptr inbounds %struct.fsi_i2c_master, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ports1, ptr %prev.i, align 4
  %call2 = tail call fastcc i32 @fsi_i2c_dev_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.body
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %5 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %data_be.i, align 4, !annotation !48
  %call.i112 = call i32 @fsi_device_read(ptr noundef %4, i32 noundef 28, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i, label %do.end25, label %fsi_i2c_read_reg.exit

fsi_i2c_read_reg.exit:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  br label %cleanup

do.end25:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %data_be.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_be.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  %and = lshr i32 %7, 16
  %shr = and i32 %and, 127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_i2c_probe.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_i2c_probe, %do.end37)) #9
          to label %if.then34 [label %do.end37], !srcloc !49

if.then34:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %shr, 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_i2c_probe.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %add) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.end25
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end37
  %port_no.0118 = phi i32 [ 0, %do.end37 ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_no.i) #9
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %port_no.i, align 4, !annotation !48
  %call.i113 = call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #9
  %cmp.not10.i = icmp eq ptr %call.i113, null
  br i1 %cmp.not10.i, label %for.body.fsi_i2c_find_port_of_node.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.fsi_i2c_find_port_of_node.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_find_port_of_node.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %np.011.i = phi ptr [ %call3.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i113, %for.body.for.body.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.011.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %port_no.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i114 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i114, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %11 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_no.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %port_no.0118)
  %cmp2.i = icmp eq i32 %12, %port_no.0118
  br i1 %cmp2.i, label %land.lhs.true.i.fsi_i2c_find_port_of_node.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.fsi_i2c_find_port_of_node.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_find_port_of_node.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %call3.i = call ptr @of_get_next_child(ptr noundef %9, ptr noundef nonnull %np.011.i) #9
  %cmp.not.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not.i, label %for.inc.i.fsi_i2c_find_port_of_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.fsi_i2c_find_port_of_node.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_find_port_of_node.exit

fsi_i2c_find_port_of_node.exit:                   ; preds = %for.inc.i.fsi_i2c_find_port_of_node.exit_crit_edge, %land.lhs.true.i.fsi_i2c_find_port_of_node.exit_crit_edge, %for.body.fsi_i2c_find_port_of_node.exit_crit_edge
  %np.0.lcssa.i = phi ptr [ null, %for.body.fsi_i2c_find_port_of_node.exit_crit_edge ], [ %np.011.i, %land.lhs.true.i.fsi_i2c_find_port_of_node.exit_crit_edge ], [ null, %for.inc.i.fsi_i2c_find_port_of_node.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_no.i) #9
  %call39 = call zeroext i1 @of_device_is_available(ptr noundef %np.0.lcssa.i) #9
  br i1 %call39, label %if.end41, label %fsi_i2c_find_port_of_node.exit.for.inc_crit_edge

fsi_i2c_find_port_of_node.exit.for.inc_crit_edge: ; preds = %fsi_i2c_find_port_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end41:                                         ; preds = %fsi_i2c_find_port_of_node.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 1376) #12
  %tobool43.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef %np.0.lcssa.i) #9
  br label %for.end

if.end45:                                         ; preds = %if.end41
  %master = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %master, align 8
  %conv = trunc i32 %port_no.0118 to i16
  %port46 = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %port46 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %port46, align 4
  %adapter = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %adapter, align 8
  %of_node49 = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 27
  %17 = ptrtoint ptr %of_node49 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %np.0.lcssa.i, ptr %of_node49, align 8
  %parent = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fsi_i2c_algorithm, ptr %algo, align 8
  %bus_recovery_info = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 1, i32 16
  %20 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @fsi_i2c_bus_recovery_info, ptr %bus_recovery_info, align 4
  %algo_data = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %algo_data, align 4
  %name = getelementptr inbounds %struct.fsi_i2c_port, ptr %call7.i.i, i32 0, i32 1, i32 12
  %call56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %port_no.0118)
  %call58 = call i32 @i2c_add_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end64, label %if.end65

do.end64:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call58) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %for.inc

if.end65:                                         ; preds = %if.end45
  %22 = ptrtoint ptr %ports1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ports1, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %ports1, ptr noundef %23) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end65.for.inc_crit_edge

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ports1, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %ports1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %ports1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end65.for.inc_crit_edge, %do.end64, %fsi_i2c_find_port_of_node.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %port_no.0118, 1
  %exitcond = icmp eq i32 %port_no.0118, %shr
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then44
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %fsi_i2c_read_reg.exit, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %do.body.cleanup_crit_edge ], [ %call.i112, %fsi_i2c_read_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_i2c_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ports = getelementptr inbounds %struct.fsi_i2c_master, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %cmp.not20 = icmp eq ptr %3, %ports
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %port.021 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %port.021 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0 = load ptr, ptr %port.021, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port.021) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %port.021, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %port.021 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %port.021 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %port.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %port.021, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %adapter = getelementptr inbounds %struct.fsi_i2c_port, ptr %port.021, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  tail call void @kfree(ptr noundef %port.021) #9
  %cmp.not = icmp eq ptr %tmp.0, %ports
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_i2c_dev_init(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  %data_be.i106 = alloca i32, align 4
  %data_be.i105 = alloca i32, align 4
  %data_be.i103 = alloca i32, align 4
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %2 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data_be.i, align 4
  %call1.i = call i32 @fsi_device_write(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %do.end12, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end12:                                         ; preds = %entry
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i103) #9
  %5 = ptrtoint ptr %data_be.i103 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 393224, ptr %data_be.i103, align 4
  %call1.i104 = call i32 @fsi_device_write(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %data_be.i103, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool15.not = icmp eq i32 %call1.i104, 0
  br i1 %tobool15.not, label %if.end17, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %do.end12
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i105) #9
  %8 = ptrtoint ptr %data_be.i105 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %data_be.i105, align 4, !annotation !48
  %call.i = call i32 @fsi_device_read(ptr noundef %7, i32 noundef 32, ptr noundef nonnull %data_be.i105, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end37, label %fsi_i2c_read_reg.exit

fsi_i2c_read_reg.exit:                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i105) #9
  br label %cleanup

do.end37:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %data_be.i105 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_be.i105, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i105) #9
  %shr = lshr i32 %10, 24
  %conv = trunc i32 %shr to i8
  %fifo_size = getelementptr inbounds %struct.fsi_i2c_master, ptr %i2c, i32 0, i32 1
  %11 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %fifo_size, align 4
  %sub66 = shl nuw nsw i32 %shr, 12
  %shl = add nuw nsw i32 %sub66, 49152
  %and67 = and i32 %shl, 61440
  %or84 = or i32 %and67, 64
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i106) #9
  %14 = ptrtoint ptr %data_be.i106 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or84, ptr %data_be.i106, align 4
  %call1.i107 = call i32 @fsi_device_write(ptr noundef %13, i32 noundef 12, ptr noundef nonnull %data_be.i106, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i106) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %fsi_i2c_read_reg.exit, %do.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i107, %do.end37 ], [ %call1.i, %entry.cleanup_crit_edge ], [ %call1.i104, %do.end12.cleanup_crit_edge ], [ %call.i, %fsi_i2c_read_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %dummy.i.i.i = alloca i32, align 4
  %data_be.i66.i.i.i = alloca i32, align 4
  %data_be.i64.i.i.i = alloca i32, align 4
  %data_be.i27.i.i.i.i = alloca i32, align 4
  %data_be.i26.i.i.i.i = alloca i32, align 4
  %data_be.i.i53.i.i.i = alloca i32, align 4
  %data_be.i.i.i.i = alloca i32, align 4
  %data_be.i62.i.i.i.i = alloca i32, align 4
  %data_be.i60.i.i.i.i = alloca i32, align 4
  %data_be.i59.i.i.i.i = alloca i32, align 4
  %data_be.i.i.i.i.i = alloca i32, align 4
  %data_be.i.i35 = alloca i32, align 4
  %data_be.i.i29 = alloca i32, align 4
  %data_be.i63.i = alloca i32, align 4
  %data_be.i62.i = alloca i32, align 4
  %data_be.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master1 = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master1, align 8
  %lock = getelementptr inbounds %struct.fsi_i2c_master, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i) #9
  %8 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %data_be.i.i, align 4, !annotation !48
  %call.i.i = call i32 @fsi_device_read(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %data_be.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end13.i, label %fsi_i2c_read_reg.exit.i

fsi_i2c_read_reg.exit.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #9
  br label %unlock.thread

do.end13.i:                                       ; preds = %entry
  %9 = ptrtoint ptr %data_be.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_be.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i) #9
  %and.i = lshr i32 %10, 10
  %shr.i = and i32 %and.i, 63
  %port14.i = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %port14.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %port14.i, align 4
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %shr.i, %conv.i
  br i1 %cmp.i, label %do.end13.i.for.cond.preheader_crit_edge, label %do.end40.i

do.end13.i.for.cond.preheader_crit_edge:          ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

do.end40.i:                                       ; preds = %do.end13.i
  %and18.i = and i32 %10, -64513
  %shl.i = shl nuw nsw i32 %conv.i, 10
  %and44.i = and i32 %shl.i, 64512
  %or.i = or i32 %and44.i, %and18.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i62.i) #9
  %13 = ptrtoint ptr %data_be.i62.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %data_be.i62.i, align 4
  %call1.i.i = call i32 @fsi_device_write(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %data_be.i62.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i62.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool46.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool46.not.i, label %fsi_i2c_set_port.exit, label %do.end40.i.unlock.thread_crit_edge

do.end40.i.unlock.thread_crit_edge:               ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

fsi_i2c_set_port.exit:                            ; preds = %do.end40.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i63.i) #9
  %14 = ptrtoint ptr %data_be.i63.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data_be.i63.i, align 4
  %call1.i64.i = call i32 @fsi_device_write(ptr noundef %7, i32 noundef 32, ptr noundef nonnull %data_be.i63.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i63.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64.i)
  %tobool.not = icmp eq i32 %call1.i64.i, 0
  br i1 %tobool.not, label %fsi_i2c_set_port.exit.for.cond.preheader_crit_edge, label %fsi_i2c_set_port.exit.unlock.thread_crit_edge

fsi_i2c_set_port.exit.unlock.thread_crit_edge:    ; preds = %fsi_i2c_set_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

fsi_i2c_set_port.exit.for.cond.preheader_crit_edge: ; preds = %fsi_i2c_set_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %fsi_i2c_set_port.exit.for.cond.preheader_crit_edge, %do.end13.i.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp77 = icmp sgt i32 %num, 0
  br i1 %cmp77, label %for.body.lr.ph, label %for.cond.preheader.unlock.thread_crit_edge

for.cond.preheader.unlock.thread_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %xfrd.i = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 4
  %sub = add nsw i32 %num, -1
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %adapter.i.i.i.i = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master1, align 8
  %18 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %xfrd.i, align 2
  %add.ptr = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.078
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.078, i32 %sub)
  %cmp2 = icmp ne i32 %i.078, %sub
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.078, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %tobool6.not.i = icmp sgt i16 %22, -1
  %or.cond73.i = select i1 %cmp2, i1 %tobool6.not.i, i1 false
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i = icmp eq i16 %23, 0
  %spec.select.i = select i1 %tobool.not.i, i32 -1073741824, i32 -1073676288
  %or8.i = or i32 %spec.select.i, 268435456
  %cmd.1.i = select i1 %or.cond73.i, i32 %spec.select.i, i32 %or8.i
  %conv29.i = zext i16 %20 to i32
  %shl.i33 = shl i32 %conv29.i, 17
  %and30.i = and i32 %shl.i33, 16646144
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.078, i32 2
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len.i, align 4
  %conv57.i = zext i16 %25 to i32
  %or31.i = or i32 %and30.i, %conv57.i
  %or60.i = or i32 %or31.i, %cmd.1.i
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i29) #9
  %28 = ptrtoint ptr %data_be.i.i29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or60.i, ptr %data_be.i.i29, align 4
  %call1.i.i34 = call i32 @fsi_device_write(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %data_be.i.i29, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i34)
  %tobool4.not = icmp eq i32 %call1.i.i34, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.unlock.thread_crit_edge

for.body.unlock.thread_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end6:                                          ; preds = %for.body
  %29 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = load volatile i32, ptr @jiffies, align 128
  %buf.i.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.078, i32 3
  %33 = add i32 %30, %15
  %34 = add i32 %33, %32
  %.neg53 = sub i32 %31, %34
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end6
  %35 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %master1, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i35) #9
  %39 = ptrtoint ptr %data_be.i.i35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %data_be.i.i35, align 4, !annotation !48
  %call.i.i37 = call i32 @fsi_device_read(ptr noundef %38, i32 noundef 28, ptr noundef nonnull %data_be.i.i35, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %tobool.not.i.i38 = icmp eq i32 %call.i.i37, 0
  br i1 %tobool.not.i.i38, label %if.end.i, label %fsi_i2c_read_reg.exit.i39

fsi_i2c_read_reg.exit.i39:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i35) #9
  br label %unlock.thread

if.end.i:                                         ; preds = %do.body.i
  %40 = ptrtoint ptr %data_be.i.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_be.i.i35, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %41)
  %tobool1.not.i = icmp ult i32 %41, 8388608
  br i1 %tobool1.not.i, label %if.end10.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i.i = and i32 %41, -58720256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i21.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i21.i, label %if.end23.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  %42 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master1, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %port14.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %port14.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i.i.i.i) #9
  %48 = ptrtoint ptr %data_be.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %data_be.i.i.i.i.i, align 4
  %call1.i.i.i.i.i = call i32 @fsi_device_write(ptr noundef %45, i32 noundef 28, ptr noundef nonnull %data_be.i.i.i.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.fsi_i2c_handle_status.exit.i_crit_edge

if.then.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  %call1.i.i.i.i = call fastcc i32 @fsi_i2c_dev_init(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end4.i.i.i.i, label %if.end.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge

if.end.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

if.end4.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i59.i.i.i.i) #9
  %51 = ptrtoint ptr %data_be.i59.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %data_be.i59.i.i.i.i, align 4, !annotation !48
  %call.i.i.i.i.i = call i32 @fsi_device_read(ptr noundef %50, i32 noundef 8, ptr noundef nonnull %data_be.i59.i.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end9.i.i.i.i, label %fsi_i2c_read_reg.exit.i.i.i.i

fsi_i2c_read_reg.exit.i.i.i.i:                    ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i59.i.i.i.i) #9
  br label %fsi_i2c_handle_status.exit.i

if.end9.i.i.i.i:                                  ; preds = %if.end4.i.i.i.i
  %52 = ptrtoint ptr %data_be.i59.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_be.i59.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i59.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool10.not.i.i.i.i = icmp eq i16 %47, 0
  br i1 %tobool10.not.i.i.i.i, label %if.end9.i.i.i.i.fsi_i2c_reset_engine.exit.i.i.i_crit_edge, label %do.end27.i.i.i.i

if.end9.i.i.i.i.fsi_i2c_reset_engine.exit.i.i.i_crit_edge: ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_reset_engine.exit.i.i.i

do.end27.i.i.i.i:                                 ; preds = %if.end9.i.i.i.i
  %and.i.i.i.i = and i32 %53, -64513
  %conv28.i.i.i.i = zext i16 %47 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv28.i.i.i.i, 10
  %and29.i.i.i.i = and i32 %shl.i.i.i.i, 64512
  %or.i.i.i.i = or i32 %and.i.i.i.i, %and29.i.i.i.i
  %54 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i60.i.i.i.i) #9
  %56 = ptrtoint ptr %data_be.i60.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i.i.i.i, ptr %data_be.i60.i.i.i.i, align 4
  %call1.i61.i.i.i.i = call i32 @fsi_device_write(ptr noundef %55, i32 noundef 8, ptr noundef nonnull %data_be.i60.i.i.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i60.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %call1.i61.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %do.end27.i.i.i.i.fsi_i2c_reset_engine.exit.i.i.i_crit_edge, label %do.end27.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge

do.end27.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %do.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

do.end27.i.i.i.i.fsi_i2c_reset_engine.exit.i.i.i_crit_edge: ; preds = %do.end27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_reset_engine.exit.i.i.i

fsi_i2c_reset_engine.exit.i.i.i:                  ; preds = %do.end27.i.i.i.i.fsi_i2c_reset_engine.exit.i.i.i_crit_edge, %if.end9.i.i.i.i.fsi_i2c_reset_engine.exit.i.i.i_crit_edge
  %57 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i62.i.i.i.i) #9
  %59 = ptrtoint ptr %data_be.i62.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -2147483648, ptr %data_be.i62.i.i.i.i, align 4
  %call1.i63.i.i.i.i = call i32 @fsi_device_write(ptr noundef %58, i32 noundef 40, ptr noundef nonnull %data_be.i62.i.i.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i62.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i63.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %fsi_i2c_reset_engine.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge

fsi_i2c_reset_engine.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %fsi_i2c_reset_engine.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

if.end.i.i.i:                                     ; preds = %fsi_i2c_reset_engine.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i.i.i) #9
  %60 = ptrtoint ptr %data_be.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %data_be.i.i.i.i, align 4, !annotation !48
  %call.i.i.i.i = call i32 @fsi_device_read(ptr noundef %45, i32 noundef 28, ptr noundef nonnull %data_be.i.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i51.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i51.i.i.i, label %if.end6.i.i.i, label %fsi_i2c_read_reg.exit.i.i.i

fsi_i2c_read_reg.exit.i.i.i:                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i.i.i) #9
  br label %fsi_i2c_handle_status.exit.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %61 = ptrtoint ptr %data_be.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_be.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i.i.i) #9
  %and.i.i.i = and i32 %62, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.then8.i.i.i, label %if.end6.i.i.i.if.end13.i.i.i_crit_edge

if.end6.i.i.i.if.end13.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end6.i.i.i
  %call.i54.i.i.i = call i32 @i2c_recover_bus(ptr noundef %adapter.i.i.i.i) #9
  %63 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i.i53.i.i.i) #9
  %65 = ptrtoint ptr %data_be.i.i53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %data_be.i.i53.i.i.i, align 4
  %call1.i.i55.i.i.i = call i32 @fsi_device_write(ptr noundef %64, i32 noundef 32, ptr noundef nonnull %data_be.i.i53.i.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i.i53.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i55.i.i.i)
  %tobool.not.i56.i.i.i = icmp eq i32 %call1.i.i55.i.i.i, 0
  br i1 %tobool.not.i56.i.i.i, label %if.end.i59.i.i.i, label %if.then8.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge

if.then8.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

if.end.i59.i.i.i:                                 ; preds = %if.then8.i.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %66 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i26.i.i.i.i) #9
  %68 = ptrtoint ptr %data_be.i26.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %data_be.i26.i.i.i.i, align 4, !annotation !48
  %call.i.i57.i.i.i = call i32 @fsi_device_read(ptr noundef %67, i32 noundef 28, ptr noundef nonnull %data_be.i26.i.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57.i.i.i)
  %tobool.not.i.i58.i.i.i = icmp eq i32 %call.i.i57.i.i.i, 0
  br i1 %tobool.not.i.i58.i.i.i, label %if.end6.i.i.i.i, label %fsi_i2c_read_reg.exit.i60.i.i.i

fsi_i2c_read_reg.exit.i60.i.i.i:                  ; preds = %if.end.i59.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i26.i.i.i.i) #9
  br label %fsi_i2c_handle_status.exit.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i59.i.i.i
  %69 = ptrtoint ptr %data_be.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_be.i26.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i26.i.i.i.i) #9
  %and.i61.i.i.i = and i32 %70, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and.i61.i.i.i, 0
  br i1 %tobool7.not.i.i.i.i, label %if.end9.i62.i.i.i, label %if.end6.i.i.i.i.if.end13.i.i.i_crit_edge

if.end6.i.i.i.i.if.end13.i.i.i_crit_edge:         ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.end9.i62.i.i.i:                                ; preds = %if.end6.i.i.i.i
  %71 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i27.i.i.i.i) #9
  %73 = ptrtoint ptr %data_be.i27.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %data_be.i27.i.i.i.i, align 4
  %call1.i28.i.i.i.i = call i32 @fsi_device_write(ptr noundef %72, i32 noundef 28, ptr noundef nonnull %data_be.i27.i.i.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i27.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28.i.i.i.i)
  %tobool12.not.i.i.i.i = icmp eq i32 %call1.i28.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i, label %fsi_i2c_reset_bus.exit.i.i.i, label %if.end9.i62.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge

if.end9.i62.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %if.end9.i62.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

fsi_i2c_reset_bus.exit.i.i.i:                     ; preds = %if.end9.i62.i.i.i
  %call15.i.i.i.i = call fastcc i32 @fsi_i2c_dev_init(ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call15.i.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %fsi_i2c_reset_bus.exit.i.i.i.if.end13.i.i.i_crit_edge, label %fsi_i2c_reset_bus.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge

fsi_i2c_reset_bus.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %fsi_i2c_reset_bus.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

fsi_i2c_reset_bus.exit.i.i.i.if.end13.i.i.i_crit_edge: ; preds = %fsi_i2c_reset_bus.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %fsi_i2c_reset_bus.exit.i.i.i.if.end13.i.i.i_crit_edge, %if.end6.i.i.i.i.if.end13.i.i.i_crit_edge, %if.end6.i.i.i.if.end13.i.i.i_crit_edge
  %and14.i.i.i = and i32 %41, 1216348160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %and14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end17.i.i.i, label %if.end13.i.i.i.if.end.i22.i_crit_edge

if.end13.i.i.i.if.end.i22.i_crit_edge:            ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i22.i

if.end17.i.i.i:                                   ; preds = %if.end13.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i64.i.i.i) #9
  %74 = ptrtoint ptr %data_be.i64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 268435456, ptr %data_be.i64.i.i.i, align 4
  %call1.i65.i.i.i = call i32 @fsi_device_write(ptr noundef %45, i32 noundef 4, ptr noundef nonnull %data_be.i64.i.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i64.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %call1.i65.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %if.end21.i.i.i, label %if.end17.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge

if.end17.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

if.end21.i.i.i:                                   ; preds = %if.end17.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i = sub i32 -10, %75
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.end29.i.i.i.do.body.i.i.i_crit_edge, %if.end21.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i66.i.i.i) #9
  %76 = ptrtoint ptr %data_be.i66.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %data_be.i66.i.i.i, align 4, !annotation !48
  %call.i67.i.i.i = call i32 @fsi_device_read(ptr noundef %45, i32 noundef 28, ptr noundef nonnull %data_be.i66.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i.i.i)
  %tobool.not.i68.i.i.i = icmp eq i32 %call.i67.i.i.i, 0
  br i1 %tobool.not.i68.i.i.i, label %if.end25.i.i.i, label %fsi_i2c_read_reg.exit70.i.i.i

fsi_i2c_read_reg.exit70.i.i.i:                    ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i66.i.i.i) #9
  br label %fsi_i2c_handle_status.exit.i

if.end25.i.i.i:                                   ; preds = %do.body.i.i.i
  %77 = ptrtoint ptr %data_be.i66.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_be.i66.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i66.i.i.i) #9
  %and26.i.i.i = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %and26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %if.end29.i.i.i, label %if.end25.i.i.i.if.end.i22.i_crit_edge

if.end25.i.i.i.if.end.i22.i_crit_edge:            ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i22.i

if.end29.i.i.i:                                   ; preds = %if.end25.i.i.i
  call void @usleep_range_state(i32 noundef 50, i32 noundef 500, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %add.neg.i.i.i, %79
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end29.i.i.i.do.body.i.i.i_crit_edge, label %if.end29.i.i.i.unlock.thread_crit_edge

if.end29.i.i.i.unlock.thread_crit_edge:           ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end29.i.i.i.do.body.i.i.i_crit_edge:           ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i

if.end.i22.i:                                     ; preds = %if.end25.i.i.i.if.end.i22.i_crit_edge, %if.end13.i.i.i.if.end.i22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool4.not.i.i = icmp sgt i32 %41, -1
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i22.i.unlock.thread_crit_edge

if.end.i22.i.unlock.thread_crit_edge:             ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end6.i.i:                                      ; preds = %if.end.i22.i
  %and7.i.i = and i32 %41, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end6.i.i.unlock.thread_crit_edge

if.end6.i.i.unlock.thread_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %and11.i.i = and i32 %41, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.unlock.thread_crit_edge

if.end10.i.i.unlock.thread_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end14.i.i:                                     ; preds = %if.end10.i.i
  %and15.i.i = and i32 %41, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end14.i.i.unlock.thread_crit_edge

if.end14.i.i.unlock.thread_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end18.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and19.i.i = and i32 %41, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  %..i.i = select i1 %tobool20.not.i.i, i32 -5, i32 -74
  br label %unlock.thread

if.end23.i.i:                                     ; preds = %if.then2.i
  %and24.i.i = and i32 %41, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end47.i.i, label %do.end38.i.i

do.end38.i.i:                                     ; preds = %if.end23.i.i
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %flags.i, align 2
  %82 = and i16 %81, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool42.not.i.i = icmp eq i16 %82, 0
  %83 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %master1, align 8
  br i1 %tobool42.not.i.i, label %if.end45.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %do.end38.i.i
  %85 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %len.i, align 4
  %conv.i.i.i = zext i16 %86 to i32
  %87 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %xfrd.i, align 2
  %conv1.i.i.i = zext i16 %88 to i32
  %sub.i79.i.i = sub nsw i32 %conv.i.i.i, %conv1.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #9
  %89 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %dummy.i.i.i, align 4, !annotation !48
  %conv2.i.i.i = and i32 %41, 255
  %90 = call i32 @llvm.smin.i32(i32 %sub.i79.i.i, i32 %conv2.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not43.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not43.i.i.i, label %if.then43.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge, label %if.then43.i.i.while.body.i.i.i_crit_edge

if.then43.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.then43.i.i
  br label %while.body.i.i.i

if.then43.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_read_fifo.exit.i.i

while.body.i.i.i:                                 ; preds = %if.end18.i.i.i.while.body.i.i.i_crit_edge, %if.then43.i.i.while.body.i.i.i_crit_edge
  %xfr_remaining.045.i.i.i = phi i32 [ %xfr_remaining.1.i.i.i, %if.end18.i.i.i.while.body.i.i.i_crit_edge ], [ %sub.i79.i.i, %if.then43.i.i.while.body.i.i.i_crit_edge ]
  %bytes_to_read.044.i.i.i = phi i32 [ %sub19.i.i.i, %if.end18.i.i.i.while.body.i.i.i_crit_edge ], [ %90, %if.then43.i.i.while.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes_to_read.044.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %bytes_to_read.044.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bytes_to_read.044.i.i.i)
  %cmp1.i.i.i.i = icmp eq i32 %bytes_to_read.044.i.i.i, 3
  %.op_bytes.i.i.i.i = select i1 %cmp1.i.i.i.i, i32 2, i32 %bytes_to_read.044.i.i.i
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i32 4, i32 %.op_bytes.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfr_remaining.045.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %xfr_remaining.045.i.i.i, 0
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %84, align 4
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  %93 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %buf.i.i.i, align 4
  %95 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %xfrd.i, align 2
  %idxprom.i.i.i = zext i16 %96 to i32
  %arrayidx.i.i.i = getelementptr i8, ptr %94, i32 %idxprom.i.i.i
  %call6.i.i.i = call i32 @fsi_device_read(ptr noundef %92, i32 noundef 0, ptr noundef %arrayidx.i.i.i, i32 noundef %retval.0.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i80.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i80.i.i, label %if.end.i81.i.i, label %if.then.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge

if.then.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_read_fifo.exit.i.i

if.end.i81.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %xfrd.i, align 2
  %99 = trunc i32 %retval.0.i.i.i.i to i16
  %conv11.i.i.i = add i16 %98, %99
  store i16 %conv11.i.i.i, ptr %xfrd.i, align 2
  %sub12.i.i.i = sub i32 %xfr_remaining.045.i.i.i, %retval.0.i.i.i.i
  br label %if.end18.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %call14.i.i.i = call i32 @fsi_device_read(ptr noundef %92, i32 noundef 0, ptr noundef nonnull %dummy.i.i.i, i32 noundef %retval.0.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i)
  %tobool15.not.i82.i.i = icmp eq i32 %call14.i.i.i, 0
  br i1 %tobool15.not.i82.i.i, label %if.else.i.i.i.if.end18.i.i.i_crit_edge, label %if.else.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge

if.else.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_read_fifo.exit.i.i

if.else.i.i.i.if.end18.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i.i.i

if.end18.i.i.i:                                   ; preds = %if.else.i.i.i.if.end18.i.i.i_crit_edge, %if.end.i81.i.i
  %xfr_remaining.1.i.i.i = phi i32 [ %sub12.i.i.i, %if.end.i81.i.i ], [ 0, %if.else.i.i.i.if.end18.i.i.i_crit_edge ]
  %sub19.i.i.i = sub i32 %bytes_to_read.044.i.i.i, %retval.0.i.i.i.i
  %tobool.not.i83.i.i = icmp eq i32 %sub19.i.i.i, 0
  br i1 %tobool.not.i83.i.i, label %if.end18.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge, label %if.end18.i.i.i.while.body.i.i.i_crit_edge

if.end18.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

if.end18.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_read_fifo.exit.i.i

fsi_i2c_read_fifo.exit.i.i:                       ; preds = %if.end18.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge, %if.else.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge, %if.then.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge, %if.then43.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge
  %retval.0.i84.i.i = phi i32 [ 0, %if.then43.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge ], [ %call6.i.i.i, %if.then.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge ], [ %call14.i.i.i, %if.else.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge ], [ 0, %if.end18.i.i.i.fsi_i2c_read_fifo.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #9
  br label %fsi_i2c_handle_status.exit.i

if.end45.i.i:                                     ; preds = %do.end38.i.i
  %fifo_size.i.i.i = getelementptr inbounds %struct.fsi_i2c_master, ptr %84, i32 0, i32 1
  %100 = ptrtoint ptr %fifo_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %fifo_size.i.i.i, align 4
  %conv.i86.i.i = zext i8 %101 to i32
  %conv1.i87.i.i = and i32 %41, 255
  %sub.i88.i.i = sub nsw i32 %conv.i86.i.i, %conv1.i87.i.i
  %102 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %len.i, align 4
  %conv2.i90.i.i = zext i16 %103 to i32
  %104 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %xfrd.i, align 2
  %conv3.i.i.i = zext i16 %105 to i32
  %sub4.i.i.i = sub nsw i32 %conv2.i90.i.i, %conv3.i.i.i
  %106 = call i32 @llvm.smin.i32(i32 %sub.i88.i.i, i32 %sub4.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not30.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool.not30.i.i.i, label %if.end45.i.i.if.end5.i_crit_edge, label %if.end45.i.i.while.body.i100.i.i_crit_edge

if.end45.i.i.while.body.i100.i.i_crit_edge:       ; preds = %if.end45.i.i
  br label %while.body.i100.i.i

if.end45.i.i.if.end5.i_crit_edge:                 ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

while.body.i100.i.i:                              ; preds = %if.end.i104.i.i.while.body.i100.i.i_crit_edge, %if.end45.i.i.while.body.i100.i.i_crit_edge
  %bytes_to_write.031.i.i.i = phi i32 [ %sub12.i102.i.i, %if.end.i104.i.i.while.body.i100.i.i_crit_edge ], [ %106, %if.end45.i.i.while.body.i100.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes_to_write.031.i.i.i)
  %cmp.i.i94.i.i = icmp sgt i32 %bytes_to_write.031.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bytes_to_write.031.i.i.i)
  %cmp1.i.i95.i.i = icmp eq i32 %bytes_to_write.031.i.i.i, 3
  %.op_bytes.i.i96.i.i = select i1 %cmp1.i.i95.i.i, i32 2, i32 %bytes_to_write.031.i.i.i
  %retval.0.i.i97.i.i = select i1 %cmp.i.i94.i.i, i32 4, i32 %.op_bytes.i.i96.i.i
  %107 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %84, align 4
  %109 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %buf.i.i.i, align 4
  %111 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %xfrd.i, align 2
  %idxprom.i98.i.i = zext i16 %112 to i32
  %arrayidx.i99.i.i = getelementptr i8, ptr %110, i32 %idxprom.i98.i.i
  %call7.i.i.i = call i32 @fsi_device_write(ptr noundef %108, i32 noundef 0, ptr noundef %arrayidx.i99.i.i, i32 noundef %retval.0.i.i97.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i104.i.i, label %while.body.i100.i.i.fsi_i2c_handle_status.exit.i_crit_edge

while.body.i100.i.i.fsi_i2c_handle_status.exit.i_crit_edge: ; preds = %while.body.i100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_handle_status.exit.i

if.end.i104.i.i:                                  ; preds = %while.body.i100.i.i
  %113 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %xfrd.i, align 2
  %115 = trunc i32 %retval.0.i.i97.i.i to i16
  %conv11.i101.i.i = add i16 %114, %115
  store i16 %conv11.i101.i.i, ptr %xfrd.i, align 2
  %sub12.i102.i.i = sub i32 %bytes_to_write.031.i.i.i, %retval.0.i.i97.i.i
  %tobool.not.i103.i.i = icmp eq i32 %sub12.i102.i.i, 0
  br i1 %tobool.not.i103.i.i, label %if.end.i104.i.i.if.end5.i_crit_edge, label %if.end.i104.i.i.while.body.i100.i.i_crit_edge

if.end.i104.i.i.while.body.i100.i.i_crit_edge:    ; preds = %if.end.i104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i100.i.i

if.end.i104.i.i.if.end5.i_crit_edge:              ; preds = %if.end.i104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end47.i.i:                                     ; preds = %if.end23.i.i
  %and48.i.i = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end47.i.i.if.end5.i_crit_edge, label %if.then50.i.i

if.end47.i.i.if.end5.i_crit_edge:                 ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then50.i.i:                                    ; preds = %if.end47.i.i
  %116 = ptrtoint ptr %xfrd.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %xfrd.i, align 2
  %118 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %119)
  %cmp.i.i = icmp ult i16 %117, %119
  %conv52.i.i = zext i16 %119 to i32
  br i1 %cmp.i.i, label %if.then50.i.i.unlock.thread_crit_edge, label %if.then50.i.i.if.end5.i_crit_edge

if.then50.i.i.if.end5.i_crit_edge:                ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then50.i.i.unlock.thread_crit_edge:            ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

fsi_i2c_handle_status.exit.i:                     ; preds = %while.body.i100.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %fsi_i2c_read_fifo.exit.i.i, %fsi_i2c_read_reg.exit70.i.i.i, %if.end17.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %fsi_i2c_reset_bus.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %if.end9.i62.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %fsi_i2c_read_reg.exit.i60.i.i.i, %if.then8.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %fsi_i2c_read_reg.exit.i.i.i, %fsi_i2c_reset_engine.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %do.end27.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %fsi_i2c_read_reg.exit.i.i.i.i, %if.end.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge, %if.then.i.i.fsi_i2c_handle_status.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %retval.0.i84.i.i, %fsi_i2c_read_fifo.exit.i.i ], [ %call1.i.i55.i.i.i, %if.then8.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call.i.i57.i.i.i, %fsi_i2c_read_reg.exit.i60.i.i.i ], [ %call1.i28.i.i.i.i, %if.end9.i62.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call1.i.i.i.i.i, %if.then.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call1.i.i.i.i, %if.end.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call.i.i.i.i.i, %fsi_i2c_read_reg.exit.i.i.i.i ], [ %call1.i61.i.i.i.i, %do.end27.i.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call.i67.i.i.i, %fsi_i2c_read_reg.exit70.i.i.i ], [ %call1.i65.i.i.i, %if.end17.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call15.i.i.i.i, %fsi_i2c_reset_bus.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call.i.i.i.i, %fsi_i2c_read_reg.exit.i.i.i ], [ %call1.i63.i.i.i.i, %fsi_i2c_reset_engine.exit.i.i.i.fsi_i2c_handle_status.exit.i_crit_edge ], [ %call7.i.i.i, %while.body.i100.i.i.fsi_i2c_handle_status.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i40 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i40, label %fsi_i2c_handle_status.exit.i.unlock.thread_crit_edge, label %fsi_i2c_handle_status.exit.i.if.end5.i_crit_edge

fsi_i2c_handle_status.exit.i.if.end5.i_crit_edge: ; preds = %fsi_i2c_handle_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

fsi_i2c_handle_status.exit.i.unlock.thread_crit_edge: ; preds = %fsi_i2c_handle_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end5.i:                                        ; preds = %fsi_i2c_handle_status.exit.i.if.end5.i_crit_edge, %if.then50.i.i.if.end5.i_crit_edge, %if.end47.i.i.if.end5.i_crit_edge, %if.end.i104.i.i.if.end5.i_crit_edge, %if.end45.i.i.if.end5.i_crit_edge
  %retval.0.i37.i = phi i32 [ %retval.0.i.i, %fsi_i2c_handle_status.exit.i.if.end5.i_crit_edge ], [ 0, %if.end45.i.i.if.end5.i_crit_edge ], [ %conv52.i.i, %if.then50.i.i.if.end5.i_crit_edge ], [ 0, %if.end47.i.i.if.end5.i_crit_edge ], [ 0, %if.end.i104.i.i.if.end5.i_crit_edge ]
  %120 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %len.i, align 4
  %conv.i41 = zext i16 %121 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i37.i, i32 %conv.i41)
  %cmp6.i = icmp eq i32 %retval.0.i37.i, %conv.i41
  br i1 %cmp6.i, label %for.inc, label %if.end5.i.do.cond.i_crit_edge

if.end5.i.do.cond.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond.i

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 50, i32 noundef 500, i32 noundef 2) #9
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end10.i, %if.end5.i.do.cond.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %122 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %.neg53, %122
  %cmp11.i = icmp slt i32 %sub.i, 0
  br i1 %cmp11.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.unlock.thread_crit_edge

do.cond.i.unlock.thread_crit_edge:                ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.inc:                                          ; preds = %if.end5.i
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.unlock.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.unlock.thread_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

unlock.thread:                                    ; preds = %for.inc.unlock.thread_crit_edge, %do.cond.i.unlock.thread_crit_edge, %fsi_i2c_handle_status.exit.i.unlock.thread_crit_edge, %if.then50.i.i.unlock.thread_crit_edge, %if.end18.i.i, %if.end14.i.i.unlock.thread_crit_edge, %if.end10.i.i.unlock.thread_crit_edge, %if.end6.i.i.unlock.thread_crit_edge, %if.end.i22.i.unlock.thread_crit_edge, %if.end29.i.i.i.unlock.thread_crit_edge, %fsi_i2c_read_reg.exit.i39, %for.body.unlock.thread_crit_edge, %for.cond.preheader.unlock.thread_crit_edge, %fsi_i2c_set_port.exit.unlock.thread_crit_edge, %do.end40.i.unlock.thread_crit_edge, %fsi_i2c_read_reg.exit.i
  %123 = phi i32 [ %call1.i64.i, %fsi_i2c_set_port.exit.unlock.thread_crit_edge ], [ %call1.i.i, %do.end40.i.unlock.thread_crit_edge ], [ %call.i.i, %fsi_i2c_read_reg.exit.i ], [ -22, %if.end.i22.i.unlock.thread_crit_edge ], [ -71, %if.end6.i.i.unlock.thread_crit_edge ], [ -6, %if.end10.i.i.unlock.thread_crit_edge ], [ -11, %if.end14.i.i.unlock.thread_crit_edge ], [ %..i.i, %if.end18.i.i ], [ %call.i.i37, %fsi_i2c_read_reg.exit.i39 ], [ %num, %for.cond.preheader.unlock.thread_crit_edge ], [ -110, %if.end29.i.i.i.unlock.thread_crit_edge ], [ -61, %if.then50.i.i.unlock.thread_crit_edge ], [ -110, %do.cond.i.unlock.thread_crit_edge ], [ %retval.0.i.i, %fsi_i2c_handle_status.exit.i.unlock.thread_crit_edge ], [ %call1.i.i34, %for.body.unlock.thread_crit_edge ], [ %num, %for.inc.unlock.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %123
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsi_i2c_functionality(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369933
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_generic_scl_recovery(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_i2c_get_scl(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %6 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data_be.i, align 4, !annotation !48
  %call.i = call i32 @fsi_device_read(ptr noundef %5, i32 noundef 28, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsi_i2c_read_reg.exit_crit_edge

entry.fsi_i2c_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_read_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %data_be.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_be.i, align 4
  %phi.bo = lshr i32 %8, 11
  %phi.bo2 = and i32 %phi.bo, 1
  br label %fsi_i2c_read_reg.exit

fsi_i2c_read_reg.exit:                            ; preds = %if.end.i, %entry.fsi_i2c_read_reg.exit_crit_edge
  %stat.0 = phi i32 [ %phi.bo2, %if.end.i ], [ 0, %entry.fsi_i2c_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  ret i32 %stat.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_i2c_set_scl(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  %data_be.i4 = alloca i32, align 4
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %6 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_be.i, align 4
  %call1.i = call i32 @fsi_device_write(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i4) #9
  %7 = ptrtoint ptr %data_be.i4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_be.i4, align 4
  %call1.i5 = call i32 @fsi_device_write(ptr noundef %5, i32 noundef 44, ptr noundef nonnull %data_be.i4, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i4) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_i2c_get_sda(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %6 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data_be.i, align 4, !annotation !48
  %call.i = call i32 @fsi_device_read(ptr noundef %5, i32 noundef 28, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsi_i2c_read_reg.exit_crit_edge

entry.fsi_i2c_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsi_i2c_read_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %data_be.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_be.i, align 4
  %phi.bo = lshr i32 %8, 10
  %phi.bo2 = and i32 %phi.bo, 1
  br label %fsi_i2c_read_reg.exit

fsi_i2c_read_reg.exit:                            ; preds = %if.end.i, %entry.fsi_i2c_read_reg.exit_crit_edge
  %stat.0 = phi i32 [ %phi.bo2, %if.end.i ], [ 0, %entry.fsi_i2c_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  ret i32 %stat.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_i2c_set_sda(ptr nocapture noundef readonly %adap, i32 noundef %val) #2 align 64 {
entry:
  %data_be.i4 = alloca i32, align 4
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %6 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data_be.i, align 4
  %call1.i = call i32 @fsi_device_write(ptr noundef %5, i32 noundef 48, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i4) #9
  %7 = ptrtoint ptr %data_be.i4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_be.i4, align 4
  %call1.i5 = call i32 @fsi_device_write(ptr noundef %5, i32 noundef 52, ptr noundef nonnull %data_be.i4, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i4) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_i2c_prepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  %data_be.i7 = alloca i32, align 4
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %6 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data_be.i, align 4, !annotation !48
  %call.i = call i32 @fsi_device_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %fsi_i2c_read_reg.exit

fsi_i2c_read_reg.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %data_be.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_be.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  %or = or i32 %8, 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i7) #9
  %11 = ptrtoint ptr %data_be.i7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %data_be.i7, align 4
  %call1.i = call i32 @fsi_device_write(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %data_be.i7, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fsi_i2c_read_reg.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsi_i2c_unprepare_recovery(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  %data_be.i7 = alloca i32, align 4
  %data_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %master = getelementptr inbounds %struct.fsi_i2c_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i) #9
  %6 = ptrtoint ptr %data_be.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data_be.i, align 4, !annotation !48
  %call.i = call i32 @fsi_device_read(ptr noundef %5, i32 noundef 8, ptr noundef nonnull %data_be.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %fsi_i2c_read_reg.exit

fsi_i2c_read_reg.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %data_be.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_be.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i) #9
  %and = and i32 %8, -5
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be.i7) #9
  %11 = ptrtoint ptr %data_be.i7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %data_be.i7, align 4
  %call1.i = call i32 @fsi_device_write(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %data_be.i7, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be.i7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fsi_i2c_read_reg.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_i2c_fsi__348_772_fsi_i2c_driver_init6, !1, !"__initcall__kmod_i2c_fsi__348_772_fsi_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 772, i32 1}
!2 = !{ptr @__exitcall_fsi_i2c_driver_exit, !1, !"__exitcall_fsi_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author349, !4, !"__UNIQUE_ID_author349", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 774, i32 1}
!5 = !{ptr @__UNIQUE_ID_description350, !6, !"__UNIQUE_ID_description350", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 775, i32 1}
!7 = !{ptr @__UNIQUE_ID_file351, !8, !"__UNIQUE_ID_file351", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 776, i32 1}
!9 = !{ptr @__UNIQUE_ID_license352, !8, !"__UNIQUE_ID_license352", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 765, i32 11}
!12 = !{ptr @fsi_i2c_driver, !13, !"fsi_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 762, i32 26}
!14 = !{ptr @fsi_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 689, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 702, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fsi_i2c_probe.__UNIQUE_ID_ddebug347, !18, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 726, i32 5}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 730, i32 4}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @fsi_i2c_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsi_i2c_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 669, i32 33}
!33 = !{ptr @fsi_i2c_algorithm, !34, !"fsi_i2c_algorithm", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 656, i32 35}
!35 = !{ptr @fsi_i2c_bus_recovery_info, !36, !"fsi_i2c_bus_recovery_info", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 646, i32 37}
!37 = !{ptr @fsi_i2c_ids, !38, !"fsi_i2c_ids", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-fsi.c", i32 757, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{i64 2148803938, i64 2148803943, i64 2148803956, i64 2148804000, i64 2148804034, i64 2148804055}
