; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/i2c.c_pt.bc'
source_filename = "../drivers/staging/greybus/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gbphy_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gbphy_device_id = type { i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_i2c_functionality_response = type { i32 }
%struct.gbphy_device = type { i32, ptr, ptr, %struct.list_head, %struct.device }
%struct.list_head = type { ptr, ptr }
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
%struct.gb_connection = type { ptr, ptr, ptr, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], ptr, %struct.atomic_t, ptr, i8 }
%struct.gb_i2c_device = type { ptr, ptr, i32, %struct.i2c_adapter }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.gb_operation = type { ptr, ptr, ptr, i32, i8, i16, i32, %struct.work_struct, ptr, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, ptr }
%struct.gb_message = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gb_i2c_transfer_request = type { i16, [0 x %struct.gb_i2c_transfer_op] }
%struct.gb_i2c_transfer_op = type { i16, i16, i16 }

@__initcall__kmod_gb_i2c__289_320_i2c_driver_init6 = internal global ptr @i2c_driver_init, section ".initcall6.init", align 4
@i2c_driver = internal global { %struct.gbphy_driver, [36 x i8] } { %struct.gbphy_driver { ptr @.str.1, ptr @gb_i2c_probe, ptr @gb_i2c_remove, ptr @gb_i2c_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_i2c_driver_exit = internal global ptr @i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file290 = internal constant [43 x i8] c"gb_i2c.file=drivers/staging/greybus/gb-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [22 x i8] c"gb_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gb_i2c\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@gb_i2c_id_table = internal constant { [2 x %struct.gbphy_device_id], [30 x i8] } { [2 x %struct.gbphy_device_id] [%struct.gbphy_device_id { i8 3 }, %struct.gbphy_device_id zeroinitializer], [30 x i8] zeroinitializer }, align 32
@gb_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @gb_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @gb_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Greybus i2c adapter\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gb_i2c_transfer_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"transfer operation failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gb_i2c_transfer_operation\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/greybus/i2c.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gb_i2c_transfer_operation._entry_ptr = internal global ptr @gb_i2c_transfer_operation._entry, section ".printk_index", align 4
@gb_i2c_operation_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 95, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msg_count (%u) too big\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gb_i2c_operation_create\00", [40 x i8] zeroinitializer }, align 32
@gb_i2c_operation_create._entry_ptr = internal global ptr @gb_i2c_operation_create._entry, section ".printk_index", align 4
@gbphy_runtime_get_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 76, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm_runtime_get_sync failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gbphy_runtime_get_sync\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/greybus/gbphy.h\00", [32 x i8] zeroinitializer }, align 32
@gbphy_runtime_get_sync._entry_ptr = internal global ptr @gbphy_runtime_get_sync._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967285]
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"i2c_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 313, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 320, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 314, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"gb_i2c_id_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 307, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"gb_i2c_algorithm\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 225, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 271, i32 49 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 197, i32 3 }
@___asan_gen_.56 = private constant [33 x i8] c"../drivers/staging/greybus/i2c.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 94, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [35 x i8] c"../drivers/staging/greybus/gbphy.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 76, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_i2c_driver_exit, ptr @__initcall__kmod_gb_i2c__289_320_i2c_driver_init6, ptr @gb_i2c_operation_create._entry, ptr @gb_i2c_operation_create._entry_ptr, ptr @gb_i2c_transfer_operation._entry, ptr @gb_i2c_transfer_operation._entry_ptr, ptr @gbphy_runtime_get_sync._entry, ptr @gbphy_runtime_get_sync._entry_ptr, ptr @i2c_driver_exit, ptr @i2c_driver, ptr @.str, ptr @.str.1, ptr @gb_i2c_id_table, ptr @gb_i2c_algorithm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_i2c_id_table to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_i2c_transfer_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gb_i2c_operation_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gbphy_runtime_get_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gb_gbphy_register_driver(ptr noundef nonnull @i2c_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gb_gbphy_deregister_driver(ptr noundef nonnull @i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_gbphy_deregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_gbphy_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_i2c_probe(ptr noundef %gbphy_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %response.i = alloca %struct.gb_i2c_functionality_response, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1376) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bundle = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 2
  %1 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bundle, align 8
  %cport_desc = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 1
  %3 = ptrtoint ptr %cport_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cport_desc, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %call2 = tail call ptr @gb_connection_create(ptr noundef %2, i16 noundef zeroext %7, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call2 to i32
  br label %exit_i2cdev_free

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %call7.i.i, align 8
  %private.i = getelementptr inbounds %struct.gb_connection, ptr %call2, i32 0, i32 17
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private.i, align 4
  %gbphy_dev8 = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %gbphy_dev8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %gbphy_dev, ptr %gbphy_dev8, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @gb_connection_enable(ptr noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.exit_connection_destroy_crit_edge

if.end6.exit_connection_destroy_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_connection_destroy

if.end12:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response.i) #9
  %13 = ptrtoint ptr %response.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %response.i, align 4, !annotation !45
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %call.i.i = call i32 @gb_operation_sync_timeout(ptr noundef %15, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef nonnull %response.i, i32 noundef 4, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end16, label %gb_i2c_device_setup.exit

gb_i2c_device_setup.exit:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response.i) #9
  br label %exit_connection_disable

if.end16:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %response.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  %functionality3.i = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %functionality3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %functionality3.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response.i) #9
  %adapter17 = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %adapter17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %adapter17, align 8
  %class = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 129, ptr %class, align 4
  %algo = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gb_i2c_algorithm, ptr %algo, align 8
  %dev = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %parent = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 3, i32 9, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 3, i32 12
  %24 = call ptr @memcpy(ptr %name, ptr @.str.2, i32 20)
  %driver_data.i.i55 = getelementptr inbounds %struct.gb_i2c_device, ptr %call7.i.i, i32 0, i32 3, i32 9, i32 8
  %25 = ptrtoint ptr %driver_data.i.i55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %driver_data.i.i55, align 4
  %call20 = call i32 @i2c_add_adapter(ptr noundef %adapter17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.exit_connection_disable_crit_edge

if.end16.exit_connection_disable_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_connection_disable

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i56 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i.i56, ptr %last_busy.i.i, align 8
  %call.i3.i = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  br label %cleanup

exit_connection_disable:                          ; preds = %if.end16.exit_connection_disable_crit_edge, %gb_i2c_device_setup.exit
  %ret.0 = phi i32 [ %call.i.i, %gb_i2c_device_setup.exit ], [ %call20, %if.end16.exit_connection_disable_crit_edge ]
  call void @gb_connection_disable(ptr noundef %call2) #9
  br label %exit_connection_destroy

exit_connection_destroy:                          ; preds = %exit_connection_disable, %if.end6.exit_connection_destroy_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end6.exit_connection_destroy_crit_edge ], [ %ret.0, %exit_connection_disable ]
  call void @gb_connection_destroy(ptr noundef %call2) #9
  br label %exit_i2cdev_free

exit_i2cdev_free:                                 ; preds = %exit_connection_destroy, %if.then4
  %ret.2 = phi i32 [ %8, %if.then4 ], [ %ret.1, %exit_connection_destroy ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_i2cdev_free, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %exit_i2cdev_free ], [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gb_i2c_remove(ptr noundef %gbphy_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.i:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.10, i32 noundef %call.i.i) #13
  %usage_count.i.i = getelementptr inbounds %struct.gbphy_device, ptr %gbphy_dev, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !47
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end.i.if.then_crit_edge, label %do.end11.i.i.i.i.i

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

do.end11.i.i.i.i.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  br label %if.then

if.then:                                          ; preds = %do.end11.i.i.i.i.i, %do.end.i.if.then_crit_edge
  %call.i.i.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !49
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %adapter = getelementptr inbounds %struct.gb_i2c_device, ptr %1, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  tail call void @gb_connection_disable(ptr noundef %3) #9
  tail call void @gb_connection_destroy(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_connection_create(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_connection_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_connection_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_sync_timeout(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gb_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %msg_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %gbphy_dev.i = getelementptr inbounds %struct.gb_i2c_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %gbphy_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gbphy_dev.i, align 4
  %dev2.i = getelementptr inbounds %struct.gbphy_device, ptr %5, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %msg_count)
  %cmp.i.i = icmp ugt i32 %msg_count, 65535
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private.i.i.i = getelementptr inbounds %struct.gb_connection, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i.i.i, align 4
  %gbphy_dev.i.i = getelementptr inbounds %struct.gb_i2c_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %gbphy_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gbphy_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.gbphy_device, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.8, i32 noundef %msg_count) #13
  br label %gb_i2c_transfer_operation.exit

if.end.i.i:                                       ; preds = %entry
  %conv.i.i = trunc i32 %msg_count to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_count)
  %cmp192.not.i.i = icmp eq i32 %msg_count, 0
  br i1 %cmp192.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.097.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %data_in_size.096.i.i = phi i32 [ %data_in_size.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %data_out_size.095.i.i = phi i32 [ %data_out_size.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %msg.093.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %msgs, %if.end.i.i.for.body.i.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.093.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i.i, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i = icmp eq i16 %12, 0
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.093.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len6.i.i, align 4
  %conv7.i.i = zext i16 %14 to i32
  %add8.i.i = select i1 %tobool.not.i.i, i32 %conv7.i.i, i32 0
  %data_out_size.1.i.i = add i32 %add8.i.i, %data_out_size.095.i.i
  %add.i.i = select i1 %tobool.not.i.i, i32 0, i32 %conv7.i.i
  %data_in_size.1.i.i = add i32 %add.i.i, %data_in_size.096.i.i
  %inc.i.i = add nuw nsw i32 %i.097.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.i2c_msg, ptr %msg.093.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %msg_count
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %data_out_size.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %data_out_size.1.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %data_in_size.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %data_in_size.1.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %mul.i.i = mul i32 %msg_count, 6
  %add10.i.i = add i32 %mul.i.i, 2
  %add11.i.i = add i32 %add10.i.i, %data_out_size.0.lcssa.i.i
  %call.i.i.i = tail call ptr @gb_operation_create_flags(ptr noundef %3, i8 noundef zeroext 5, i32 noundef %add11.i.i, i32 noundef %data_in_size.0.lcssa.i.i, i32 noundef 0, i32 noundef 3264) #9
  %tobool13.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool13.not.i.i, label %for.end.i.i.gb_i2c_transfer_operation.exit_crit_edge, label %if.end15.i.i

for.end.i.i.gb_i2c_transfer_operation.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gb_i2c_transfer_operation.exit

if.end15.i.i:                                     ; preds = %for.end.i.i
  %request16.i.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %request16.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %request16.i.i, align 4
  %payload.i.i = getelementptr inbounds %struct.gb_message, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %payload.i.i, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %19, ptr %18, align 1
  br i1 %cmp192.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %for.body21.i.preheader.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body21.i.preheader.i:                         ; preds = %if.end15.i.i
  %ops.i.i = getelementptr inbounds %struct.gb_i2c_transfer_request, ptr %18, i32 0, i32 1
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %for.body21.i.preheader.i
  %i.1102.i.i = phi i32 [ %inc25.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ 0, %for.body21.i.preheader.i ]
  %msg.1101.i.i = phi ptr [ %incdec.ptr23.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ %msgs, %for.body21.i.preheader.i ]
  %op.0100.i.i = phi ptr [ %incdec.ptr22.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ %ops.i.i, %for.body21.i.preheader.i ]
  %incdec.ptr22.i.i = getelementptr %struct.gb_i2c_transfer_op, ptr %op.0100.i.i, i32 1
  %incdec.ptr23.i.i = getelementptr %struct.i2c_msg, ptr %msg.1101.i.i, i32 1
  %flags1.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.1101.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags1.i.i.i, align 2
  %23 = ptrtoint ptr %msg.1101.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %msg.1101.i.i, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  %26 = ptrtoint ptr %op.0100.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %op.0100.i.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %22) #9
  %flags3.i.i.i = getelementptr inbounds %struct.gb_i2c_transfer_op, ptr %op.0100.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %flags3.i.i.i, align 1
  %len.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.1101.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len.i.i.i, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #9
  %size.i.i.i = getelementptr inbounds %struct.gb_i2c_transfer_op, ptr %op.0100.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %size.i.i.i, align 1
  %inc25.i.i = add nuw i32 %i.1102.i.i, 1
  %exitcond109.not.i.i = icmp eq i32 %inc25.i.i, %msg_count
  br i1 %exitcond109.not.i.i, label %for.end26.i.i, label %for.body21.i.i.for.body21.i.i_crit_edge

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.i.i

for.end26.i.i:                                    ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_out_size.0.lcssa.i.i)
  %tobool27.not.not.i.i = icmp eq i32 %data_out_size.0.lcssa.i.i, 0
  br i1 %tobool27.not.not.i.i, label %for.end26.i.i.if.end.i_crit_edge, label %for.end26.i.i.for.body33.i.i_crit_edge

for.end26.i.i.for.body33.i.i_crit_edge:           ; preds = %for.end26.i.i
  br label %for.body33.i.i

for.end26.i.i.if.end.i_crit_edge:                 ; preds = %for.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body33.i.i:                                   ; preds = %if.end43.i.i.for.body33.i.i_crit_edge, %for.end26.i.i.for.body33.i.i_crit_edge
  %i.2108.i.i = phi i32 [ %inc46.i.i, %if.end43.i.i.for.body33.i.i_crit_edge ], [ 0, %for.end26.i.i.for.body33.i.i_crit_edge ]
  %data.0107.i.i = phi ptr [ %data.1.i.i, %if.end43.i.i.for.body33.i.i_crit_edge ], [ %incdec.ptr22.i.i, %for.end26.i.i.for.body33.i.i_crit_edge ]
  %msg.2105.i.i = phi ptr [ %incdec.ptr44.i.i, %if.end43.i.i.for.body33.i.i_crit_edge ], [ %msgs, %for.end26.i.i.for.body33.i.i_crit_edge ]
  %flags34.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.2105.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags34.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags34.i.i, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool37.not.i.i = icmp eq i16 %35, 0
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %for.body33.i.i.if.end43.i.i_crit_edge

for.body33.i.i.if.end43.i.i_crit_edge:            ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i.i

if.then38.i.i:                                    ; preds = %for.body33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.2105.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf.i.i, align 4
  %len39.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.2105.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %len39.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len39.i.i, align 4
  %conv40.i.i = zext i16 %39 to i32
  %40 = call ptr @memcpy(ptr %data.0107.i.i, ptr %37, i32 %conv40.i.i)
  %41 = load i16, ptr %len39.i.i, align 4
  %conv42.i.i = zext i16 %41 to i32
  %add.ptr.i.i = getelementptr i8, ptr %data.0107.i.i, i32 %conv42.i.i
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then38.i.i, %for.body33.i.i.if.end43.i.i_crit_edge
  %data.1.i.i = phi ptr [ %data.0107.i.i, %for.body33.i.i.if.end43.i.i_crit_edge ], [ %add.ptr.i.i, %if.then38.i.i ]
  %incdec.ptr44.i.i = getelementptr %struct.i2c_msg, ptr %msg.2105.i.i, i32 1
  %inc46.i.i = add nuw i32 %i.2108.i.i, 1
  %exitcond110.not.i.i = icmp eq i32 %inc46.i.i, %msg_count
  br i1 %exitcond110.not.i.i, label %if.end43.i.i.if.end.i_crit_edge, label %if.end43.i.i.for.body33.i.i_crit_edge

if.end43.i.i.for.body33.i.i_crit_edge:            ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33.i.i

if.end43.i.i.if.end.i_crit_edge:                  ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end43.i.i.if.end.i_crit_edge, %for.end26.i.i.if.end.i_crit_edge, %if.end15.i.i.if.end.i_crit_edge
  %42 = ptrtoint ptr %gbphy_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gbphy_dev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.gbphy_device, ptr %43, i32 0, i32 4
  %call.i.i33.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33.i)
  %cmp.i34.i = icmp slt i32 %call.i.i33.i, 0
  br i1 %cmp.i34.i, label %do.end.i35.i, label %if.end7.i

do.end.i35.i:                                     ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.10, i32 noundef %call.i.i33.i) #13
  %usage_count.i.i.i = getelementptr inbounds %struct.gbphy_device, ptr %43, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #9, !srcloc !47
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end.i35.i.exit_operation_put.i_crit_edge, label %do.end11.i.i.i.i.i.i

do.end.i35.i.exit_operation_put.i_crit_edge:      ; preds = %do.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_operation_put.i

do.end11.i.i.i.i.i.i:                             ; preds = %do.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  br label %exit_operation_put.i

if.end7.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @gb_operation_request_send_sync_timeout(ptr noundef nonnull %call.i.i.i, i32 noundef 1000) #9
  %45 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %do.end.i [
    i32 0, label %if.then10.i
    i32 -11, label %if.end7.i.if.end15.i_crit_edge
    i32 -19, label %if.end7.i.if.end15.i_crit_edge2
  ]

if.end7.i.if.end15.i_crit_edge2:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then10.i:                                      ; preds = %if.end7.i
  %response11.i = getelementptr inbounds %struct.gb_operation, ptr %call.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %response11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %response11.i, align 4
  %payload.i = getelementptr inbounds %struct.gb_message, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %payload.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %payload.i, align 4
  %tobool.not.i37.i = icmp ne ptr %49, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msg_count)
  %cmp17.i.i = icmp ne i32 %msg_count, 0
  %or.cond.i.i = and i1 %cmp17.i.i, %tobool.not.i37.i
  br i1 %or.cond.i.i, label %if.then10.i.for.body.i39.i_crit_edge, label %if.then10.i.if.end15.i_crit_edge

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then10.i.for.body.i39.i_crit_edge:             ; preds = %if.then10.i
  br label %for.body.i39.i

for.body.i39.i:                                   ; preds = %if.end7.i.i.for.body.i39.i_crit_edge, %if.then10.i.for.body.i39.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i44.i, %if.end7.i.i.for.body.i39.i_crit_edge ], [ 0, %if.then10.i.for.body.i39.i_crit_edge ]
  %data.019.i.i = phi ptr [ %data.1.i42.i, %if.end7.i.i.for.body.i39.i_crit_edge ], [ %49, %if.then10.i.for.body.i39.i_crit_edge ]
  %msg.018.i.i = phi ptr [ %incdec.ptr.i43.i, %if.end7.i.i.for.body.i39.i_crit_edge ], [ %msgs, %if.then10.i.for.body.i39.i_crit_edge ]
  %flags.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.018.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i38.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags.i38.i, align 2
  %52 = and i16 %51, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool2.not.i.i = icmp eq i16 %52, 0
  br i1 %tobool2.not.i.i, label %for.body.i39.i.if.end7.i.i_crit_edge, label %if.then3.i.i

for.body.i39.i.if.end7.i.i_crit_edge:             ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then3.i.i:                                     ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  %buf.i40.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.018.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i40.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf.i40.i, align 4
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.018.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len.i.i, align 4
  %conv4.i.i = zext i16 %56 to i32
  %57 = call ptr @memcpy(ptr %54, ptr %data.019.i.i, i32 %conv4.i.i)
  %58 = load i16, ptr %len.i.i, align 4
  %conv6.i.i = zext i16 %58 to i32
  %add.ptr.i41.i = getelementptr i8, ptr %data.019.i.i, i32 %conv6.i.i
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then3.i.i, %for.body.i39.i.if.end7.i.i_crit_edge
  %data.1.i42.i = phi ptr [ %add.ptr.i41.i, %if.then3.i.i ], [ %data.019.i.i, %for.body.i39.i.if.end7.i.i_crit_edge ]
  %incdec.ptr.i43.i = getelementptr %struct.i2c_msg, ptr %msg.018.i.i, i32 1
  %inc.i44.i = add nuw i32 %i.020.i.i, 1
  %exitcond.not.i45.i = icmp eq i32 %inc.i44.i, %msg_count
  br i1 %exitcond.not.i45.i, label %if.end7.i.i.if.end15.i_crit_edge, label %if.end7.i.i.for.body.i39.i_crit_edge

if.end7.i.i.for.body.i39.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i

if.end7.i.i.if.end15.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.3, i32 noundef %call.i.i) #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i, %if.end7.i.i.if.end15.i_crit_edge, %if.then10.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge, %if.end7.i.if.end15.i_crit_edge2
  %ret.0.i = phi i32 [ %call.i.i, %do.end.i ], [ %msg_count, %if.then10.i.if.end15.i_crit_edge ], [ %call.i.i, %if.end7.i.if.end15.i_crit_edge ], [ %call.i.i, %if.end7.i.if.end15.i_crit_edge2 ], [ %msg_count, %if.end7.i.i.if.end15.i_crit_edge ]
  %59 = ptrtoint ptr %gbphy_dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gbphy_dev.i, align 4
  %dev1.i47.i = getelementptr inbounds %struct.gbphy_device, ptr %60, i32 0, i32 4
  %call.i.i48.i = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i.i = getelementptr inbounds %struct.gbphy_device, ptr %60, i32 0, i32 4, i32 12, i32 22
  %61 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store volatile i64 %call.i.i48.i, ptr %last_busy.i.i.i, align 8
  %call.i3.i.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1.i47.i, i32 noundef 13) #9
  br label %exit_operation_put.i

exit_operation_put.i:                             ; preds = %if.end15.i, %do.end11.i.i.i.i.i.i, %do.end.i35.i.exit_operation_put.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.end15.i ], [ %call.i.i33.i, %do.end.i35.i.exit_operation_put.i_crit_edge ], [ %call.i.i33.i, %do.end11.i.i.i.i.i.i ]
  tail call void @gb_operation_put(ptr noundef nonnull %call.i.i.i) #9
  br label %gb_i2c_transfer_operation.exit

gb_i2c_transfer_operation.exit:                   ; preds = %exit_operation_put.i, %for.end.i.i.gb_i2c_transfer_operation.exit_crit_edge, %do.end.i.i
  %retval.0.i = phi i32 [ %ret.1.i, %exit_operation_put.i ], [ -12, %do.end.i.i ], [ -12, %for.end.i.i.gb_i2c_transfer_operation.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gb_i2c_functionality(ptr nocapture noundef readonly %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %functionality = getelementptr inbounds %struct.gb_i2c_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functionality to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %functionality, align 8
  ret i32 %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gb_operation_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gb_operation_create_flags(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gb_operation_request_send_sync_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_gb_i2c__289_320_i2c_driver_init6, !1, !"__initcall__kmod_gb_i2c__289_320_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/i2c.c", i32 320, i32 1}
!2 = !{ptr @__exitcall_i2c_driver_exit, !1, !"__exitcall_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file290, !4, !"__UNIQUE_ID_file290", i1 false, i1 false}
!4 = !{!"../drivers/staging/greybus/i2c.c", i32 321, i32 1}
!5 = !{ptr @__UNIQUE_ID_license291, !4, !"__UNIQUE_ID_license291", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/i2c.c", i32 314, i32 11}
!9 = !{ptr @i2c_driver, !10, !"i2c_driver", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/i2c.c", i32 313, i32 28}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/i2c.c", i32 271, i32 49}
!13 = !{ptr @gb_i2c_algorithm, !14, !"gb_i2c_algorithm", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/i2c.c", i32 225, i32 35}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/greybus/i2c.c", i32 197, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gb_i2c_transfer_operation._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @gb_i2c_transfer_operation._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/greybus/i2c.c", i32 94, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @gb_i2c_operation_create._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @gb_i2c_operation_create._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/greybus/gbphy.h", i32 76, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gbphy_runtime_get_sync._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @gbphy_runtime_get_sync._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @gb_i2c_id_table, !35, !"gb_i2c_id_table", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/i2c.c", i32 307, i32 37}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2148214961}
!47 = !{i64 699784, i64 699809, i64 699831, i64 699847, i64 699859, i64 699879, i64 699903, i64 699919, i64 699931}
!48 = !{i64 2148215149}
!49 = !{i64 2148215542, i64 2148215568, i64 2148215597, i64 2148215631, i64 2148215662, i64 2148215685}
