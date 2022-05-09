; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmb_dev_int.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmb_dev_int.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ipmb_dev = type { ptr, %struct.miscdevice, %struct.ipmb_msg, %struct.list_head, %struct.atomic_t, i32, %struct.spinlock, %struct.wait_queue_head, %struct.mutex, i8 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.ipmb_msg = type { i8, i8, i8, i8, i8, i8, i8, [232 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ipmb_request_elem = type { %struct.list_head, %struct.ipmb_msg }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_ipmb_dev_int__290_376_ipmb_driver_init6 = internal global ptr @ipmb_driver_init, section ".initcall6.init", align 4
@ipmb_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ipmb_probe, ptr @ipmb_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ipmb_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ipmb_driver_exit = internal global ptr @ipmb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [42 x i8] c"ipmb_dev_int.author=Mellanox Technologies\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [37 x i8] c"ipmb_dev_int.description=IPMB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"ipmb_dev_int.file=drivers/char/ipmi/ipmb_dev_int\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [28 x i8] c"ipmb_dev_int.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ipmb-dev\00", [23 x i8] zeroinitializer }, align 32
@ipmb_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ipmb-dev\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ipmb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ipmb_dev->lock\00", [16 x i8] zeroinitializer }, align 32
@ipmb_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ipmb_dev->wait_queue\00", [42 x i8] zeroinitializer }, align 32
@ipmb_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ipmb_dev->file_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipmb-\00", [26 x i8] zeroinitializer }, align 32
@ipmb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ipmb_read, ptr @ipmb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipmb_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c-protocol\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/char/ipmi/ipmb_dev_int.c\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"ipmb_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 367, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 369, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"ipmb_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 355, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 313, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 314, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 318, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 323, i32 7 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 323, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"ipmb_fops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 195, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 332, i32 45 }
@___asan_gen_.53 = private constant [36 x i8] c"../drivers/char/ipmi/ipmb_dev_int.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 92, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 230, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 214, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 174, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ipmb_driver_exit, ptr @__initcall__kmod_ipmb_dev_int__290_376_ipmb_driver_init6, ptr @ipmb_driver_exit, ptr @ipmb_driver, ptr @.str, ptr @ipmb_id, ptr @ipmb_probe.__key, ptr @.str.1, ptr @ipmb_probe.__key.2, ptr @.str.3, ptr @ipmb_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ipmb_fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmb_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmb_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmb_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmb_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ipmb_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipmb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ipmb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmb_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 492, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ipmb_probe.__key, i16 noundef signext 3) #7
  %wait_queue = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.3, ptr noundef nonnull @ipmb_probe.__key.2) #7
  %request_queue_len = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %request_queue_len, i32 noundef 4) #7
  %0 = ptrtoint ptr %request_queue_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %request_queue_len, align 4
  %request_queue = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %request_queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %request_queue, ptr %request_queue, align 4
  %prev.i = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %request_queue, ptr %prev.i, align 4
  %file_mutex = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %file_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @ipmb_probe.__key.4) #7
  %miscdev = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %miscdev, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %call9 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %7) #7
  %name = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %name, align 4
  %fops = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ipmb_fops, ptr %fops, align 4
  %parent = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 4
  %call15 = tail call i32 @misc_register(ptr noundef %miscdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %do.body
  %call.i52 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  %is_i2c_protocol = getelementptr inbounds %struct.ipmb_dev, ptr %call.i, i32 0, i32 9
  %frombool = zext i1 %call.i52 to i8
  %11 = ptrtoint ptr %is_i2c_protocol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %is_i2c_protocol, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call22 = tail call i32 @i2c_slave_register(ptr noundef %client, ptr noundef nonnull @ipmb_slave_cb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.then24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @misc_deregister(ptr noundef %miscdev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end18.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then24 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %do.body.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmb_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @i2c_slave_unregister(ptr noundef %client) #7
  %miscdev = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 1
  tail call void @misc_deregister(ptr noundef %miscdev) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmb_slave_cb(ptr nocapture noundef readonly %client, i32 noundef %event, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %request = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 2
  %lock = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb10
    i32 4, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = call ptr @memset(ptr %request, i32 0, i32 239)
  %msg_idx = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %msg_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %msg_idx, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %conv7 = trunc i16 %6 to i8
  %shl = shl i8 %conv7, 1
  store i32 1, ptr %msg_idx, align 4
  %arrayidx = getelementptr %struct.ipmb_dev, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %shl, ptr %arrayidx, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %msg_idx11 = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %msg_idx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_idx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 237, i32 %9)
  %cmp12 = icmp ugt i32 %9, 237
  br i1 %cmp12, label %sw.bb10.sw.epilog_crit_edge, label %if.end

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %inc15 = add nuw nsw i32 %9, 1
  %12 = ptrtoint ptr %msg_idx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc15, ptr %msg_idx11, align 4
  %arrayidx16 = getelementptr i8, ptr %request, i32 %inc15
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx16, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %msg_idx18 = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %msg_idx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_idx18, align 4
  %conv19 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %request to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv19, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp.i = icmp ugt i32 %15, 6
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb17.sw.epilog_crit_edge

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb17
  %addr21 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %17 = ptrtoint ptr %addr21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr21, align 2
  %conv22 = trunc i16 %18 to i8
  %shl23 = shl i8 %conv22, 1
  %netfn_rs_lun.i.i = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %netfn_rs_lun.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %netfn_rs_lun.i.i, align 2
  %add.i.i = add i8 %shl23, %20
  %checksum1.i.i = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %checksum1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %checksum1.i.i, align 1
  %add4.i.i = sub i8 0, %22
  call void @__sanitizer_cov_trace_cmp1(i8 %add.i.i, i8 %add4.i.i)
  %tobool.not.i = icmp eq i8 %add.i.i, %add4.i.i
  br i1 %tobool.not.i, label %if.then27, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then27:                                        ; preds = %land.lhs.true.i
  %request_queue_len.i = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %request_queue_len.i, i32 noundef 4) #7
  %23 = ptrtoint ptr %request_queue_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %request_queue_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %24)
  %cmp.i44 = icmp sgt i32 %24, 255
  br i1 %cmp.i44, label %if.then27.sw.epilog_crit_edge, label %if.end.i46

if.then27.sw.epilog_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i46:                                       ; preds = %if.then27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 2592, i32 noundef 248) #10
  %tobool.not.i45 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i45, label %if.end.i46.sw.epilog_crit_edge, label %if.end3.i

if.end.i46.sw.epilog_crit_edge:                   ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i46
  %request.i = getelementptr inbounds %struct.ipmb_request_elem, ptr %call7.i.i, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %request.i, ptr %request, i32 239)
  %request_queue.i = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request_queue.i, align 4
  %call.i.i13.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %request_queue.i, ptr noundef %28) #7
  br i1 %call.i.i13.i, label %if.end.i.i.i, label %if.end3.i.list_add.exit.i_crit_edge

if.end3.i.list_add.exit.i_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %request_queue.i, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i, ptr %request_queue.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end3.i.list_add.exit.i_crit_edge
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %request_queue_len.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %request_queue_len.i, i32 1, i32 3, i32 1) #7
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %request_queue_len.i, ptr %request_queue_len.i, i32 1, ptr elementtype(i32) %request_queue_len.i) #7, !srcloc !52
  %wait_queue.i = getelementptr inbounds %struct.ipmb_dev, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_add.exit.i, %if.end.i46.sw.epilog_crit_edge, %if.then27.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.end, %sw.bb10.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmb_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %msg = alloca %struct.ipmb_msg, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 239, ptr nonnull %msg) #7
  %lock = getelementptr i8, ptr %1, i32 296
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %request_queue = getelementptr i8, ptr %1, i32 280
  %2 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %request_queue, align 4
  %cmp.i.not94 = icmp eq ptr %3, %request_queue
  br i1 %cmp.i.not94, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %wait_queue = getelementptr i8, ptr %1, i32 340
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %while.body.cleanup43_crit_edge

while.body.cleanup43_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup43

if.end:                                           ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 93) #7
  %6 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %request_queue, align 4
  %cmp.i69.not = icmp eq ptr %7, %request_queue
  br i1 %cmp.i69.not, label %if.then10, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call1291 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %9 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %request_queue, align 4
  %cmp.i71.not92 = icmp eq ptr %10, %request_queue
  br i1 %cmp.i71.not92, label %if.then10.if.end17_crit_edge, label %if.then10.if.end22.thread84_crit_edge

if.then10.if.end22.thread84_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.thread84

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  br label %if.end17

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.then10.if.end17_crit_edge
  %call1293 = phi i32 [ %call12, %cleanup.if.end17_crit_edge ], [ %call1291, %if.then10.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1293)
  %tobool18.not = icmp eq i32 %call1293, 0
  br i1 %tobool18.not, label %cleanup, label %if.end22

cleanup:                                          ; preds = %if.end17
  call void @schedule() #7
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %11 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %request_queue, align 4
  %cmp.i71.not = icmp eq ptr %12, %request_queue
  br i1 %cmp.i71.not, label %cleanup.if.end17_crit_edge, label %cleanup.if.end22.thread84_crit_edge

cleanup.if.end22.thread84_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.thread84

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end22.thread84:                                ; preds = %cleanup.if.end22.thread84_crit_edge, %if.then10.if.end22.thread84_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end26

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %cleanup43

if.end26:                                         ; preds = %if.end22.thread84, %if.end.if.end26_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %13 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %request_queue, align 4
  %cmp.i.not = icmp eq ptr %14, %request_queue
  br i1 %cmp.i.not, label %if.end26.while.body_crit_edge, label %if.end26.while.end_crit_edge

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.while.end_crit_edge ], [ %14, %if.end26.while.end_crit_edge ]
  %request = getelementptr inbounds %struct.ipmb_request_elem, ptr %.lcssa, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %msg, ptr %request, i32 239)
  %call.i.i73 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa) #7
  br i1 %call.i.i73, label %if.end.i.i74, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i74:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.lcssa, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i74, %while.end.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.lcssa, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %.lcssa) #7
  %request_queue_len = getelementptr i8, ptr %1, i32 288
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %request_queue_len, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %request_queue_len, i32 1, i32 3, i32 1) #7
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %request_queue_len, ptr %request_queue_len, i32 1, ptr elementtype(i32) %request_queue_len) #7, !srcloc !53
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %msg, align 1
  %conv = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %count)
  %cmp.not = icmp ult i32 %conv, %count
  %add = add nuw nsw i32 %conv, 1
  %cond = select i1 %cmp.not, i32 %add, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %cond)
  %cmp1.i.i = icmp ugt i32 %cond, 239
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !54

if.then3.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef 239, i32 noundef %cond) #7
  br label %cleanup43

if.then.i.i.i:                                    ; preds = %list_del.exit
  call void @__check_object_size(ptr noundef nonnull %msg, i32 noundef %cond, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #7
  %call.i.i68 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i68, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %cond, i32 -1226833920) #11, !srcloc !55
  %asmresult.i.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %msg, i32 noundef %cond) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %msg, i32 noundef %cond) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %cond, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %cond, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool34.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool34.not, i32 %cond, i32 -14
  br label %cleanup43

cleanup43:                                        ; preds = %copy_to_user.exit, %if.then3.i.i, %if.end22, %while.body.cleanup43_crit_edge
  %retval.0 = phi i32 [ %call1293, %if.end22 ], [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ], [ -11, %while.body.cleanup43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 239, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmb_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %i2c_msg.i = alloca %struct.i2c_msg, align 4
  %msg = alloca [240 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %msg) #7
  %2 = call ptr @memset(ptr %msg, i32 255, i32 240)
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %count)
  %cmp = icmp ugt i32 %count, 240
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %msg, i32 noundef %count, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #11, !srcloc !56
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !57

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %msg, i32 noundef %count) #7
  %4 = call i32 @llvm.read_register.i32(metadata !42) #7
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !58
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %msg, ptr noundef %buf, i32 noundef %count) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #7, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !57

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %msg, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msg, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %count)
  %cmp4 = icmp ugt i32 %conv, %count
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %arrayidx8 = getelementptr inbounds [240 x i8], ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %12 = lshr i8 %11, 1
  %arrayidx11 = getelementptr inbounds [240 x i8], ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1
  %is_i2c_protocol = getelementptr i8, ptr %1, i32 484
  %15 = ptrtoint ptr %is_i2c_protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_i2c_protocol, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  br i1 %tobool12.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2c_msg.i) #7
  %19 = getelementptr inbounds i8, ptr %i2c_msg.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4
  %conv.i = zext i8 %9 to i16
  %sub.i = add nsw i16 %conv.i, -1
  store i16 %sub.i, ptr %19, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx11, ptr %buf.i, align 4
  %conv2.i = zext i8 %12 to i16
  %22 = ptrtoint ptr %i2c_msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv2.i, ptr %i2c_msg.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %18, align 8
  %25 = and i16 %24, 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %flags6.i, align 2
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %i2c_msg.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2c_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp15 = icmp eq i32 %call.i, 1
  %count.call14 = select i1 %cmp15, i32 %count, i32 %call.i
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %call22 = call ptr @kmemdup(ptr noundef %18, i32 noundef 984, i32 noundef 3264) #7
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i8 %9, -2
  %conv26 = zext i8 %12 to i16
  %addr = getelementptr inbounds %struct.i2c_client, ptr %call22, i32 0, i32 1
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv26, ptr %addr, align 2
  %add.ptr = getelementptr inbounds i8, ptr %msg, i32 3
  %call28 = call i32 @i2c_smbus_write_block_data(ptr noundef nonnull %call22, i8 noundef zeroext %14, i8 noundef zeroext %sub, ptr noundef %add.ptr) #7
  call void @kfree(ptr noundef nonnull %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  %call28.count = select i1 %cmp29, i32 %call28, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end17.cleanup_crit_edge, %if.then13, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call14, %if.then13 ], [ %call28.count, %if.end25 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmb_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %file_mutex = getelementptr i8, ptr %1, i32 392
  tail call void @mutex_lock_nested(ptr noundef %file_mutex, i32 noundef 0) #7
  %wait_queue = getelementptr i8, ptr %1, i32 340
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait_queue, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %request_queue_len = getelementptr i8, ptr %1, i32 288
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %request_queue_len, i32 noundef 4) #7
  %4 = ptrtoint ptr %request_queue_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %request_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 4, i32 5
  tail call void @mutex_unlock(ptr noundef %file_mutex) #7
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_ipmb_dev_int__290_376_ipmb_driver_init6, !1, !"__initcall__kmod_ipmb_dev_int__290_376_ipmb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 376, i32 1}
!2 = !{ptr @__exitcall_ipmb_driver_exit, !1, !"__exitcall_ipmb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 378, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 379, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 380, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 369, i32 11}
!12 = !{ptr @ipmb_driver, !13, !"ipmb_driver", i1 false, i1 false}
!13 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 367, i32 26}
!14 = !{ptr @ipmb_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 313, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ipmb_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 314, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ipmb_probe.__key.4, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 318, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 323, i32 7}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 323, i32 15}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 332, i32 45}
!29 = !{ptr @ipmb_fops, !30, !"ipmb_fops", i1 false, i1 false}
!30 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 195, i32 37}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 92, i32 9}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!40 = !{ptr @ipmb_id, !41, !"ipmb_id", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmb_dev_int.c", i32 355, i32 35}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148310880, i64 2148310906, i64 2148310935, i64 2148310969, i64 2148311000, i64 2148311023}
!53 = !{i64 2148313345, i64 2148313371, i64 2148313400, i64 2148313434, i64 2148313465, i64 2148313488}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2153852769, i64 2153852794}
!56 = !{i64 2153852088, i64 2153852113}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 6347643}
!59 = !{i64 6347840}
!60 = !{i64 2153833073}
!61 = !{i8 0, i8 2}
