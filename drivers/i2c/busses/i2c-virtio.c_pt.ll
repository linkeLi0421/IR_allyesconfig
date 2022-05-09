; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-virtio.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-virtio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_i2c = type { ptr, %struct.i2c_adapter, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtio_i2c_req = type { %struct.completion, [72 x i8], %struct.virtio_i2c_out_hdr, [120 x i8], ptr, [124 x i8], %struct.virtio_i2c_in_hdr, [127 x i8] }
%struct.virtio_i2c_out_hdr = type { i16, i16, i32 }
%struct.virtio_i2c_in_hdr = type { i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_virtio__291_277_virtio_i2c_driver_init6 = internal global ptr @virtio_i2c_driver_init, section ".initcall6.init", align 4
@virtio_i2c_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 1, ptr null, i32 0, ptr null, ptr @virtio_i2c_probe, ptr null, ptr @virtio_i2c_remove, ptr null, ptr @virtio_i2c_freeze, ptr @virtio_i2c_restore }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_i2c_driver_exit = internal global ptr @virtio_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [48 x i8] c"i2c_virtio.author=Jie Deng <jie.deng@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [56 x i8] c"i2c_virtio.author=Conghui Chen <conghui.chen@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [45 x i8] c"i2c_virtio.description=Virtio i2c bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [46 x i8] c"i2c_virtio.file=drivers/i2c/busses/i2c-virtio\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"i2c_virtio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_virtio\00", [21 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 34, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@virtio_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Zero-length request feature is mandatory\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"virtio_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-virtio.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtio_i2c_probe._entry_ptr = internal global ptr @virtio_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c_virtio at virtio bus %d\00", [36 x i8] zeroinitializer }, align 32
@virtio_algorithm = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @virtio_i2c_xfer, ptr null, ptr null, ptr null, ptr @virtio_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"virtio_i2c_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 263, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 270, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 240, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 259, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 196, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 213, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"virtio_algorithm\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 185, i32 29 }
@___asan_gen_.46 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-virtio.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 176, i32 60 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 87, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_virtio_i2c_driver_exit, ptr @__initcall__kmod_i2c_virtio__291_277_virtio_i2c_driver_init6, ptr @virtio_i2c_driver_exit, ptr @virtio_i2c_probe._entry, ptr @virtio_i2c_probe._entry_ptr, ptr @virtio_i2c_driver, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @virtio_algorithm, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_i2c_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_i2c_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %callbacks.i.i = alloca [1 x ptr], align 4
  %names.i.i = alloca [1 x ptr], align 4
  %vq.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 0) #9
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %1, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  br i1 %tobool13.i.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1376, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %priv, align 8
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vdev, ptr %call.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %callbacks.i.i) #9
  %4 = ptrtoint ptr %callbacks.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @virtio_i2c_msg_done, ptr %callbacks.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names.i.i) #9
  %5 = ptrtoint ptr %names.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.7, ptr %names.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vq.i.i) #9
  %6 = ptrtoint ptr %vq.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %vq.i.i, align 4, !annotation !46
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %7 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i.i, align 8
  %find_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %find_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %find_vqs.i.i, align 4
  %call.i.i = call i32 %10(ptr noundef %vdev, i32 noundef 1, ptr noundef nonnull %vq.i.i, ptr noundef nonnull %callbacks.i.i, ptr noundef nonnull %names.i.i, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %11 = inttoptr i32 %call.i.i to ptr
  br label %virtio_i2c_setup_vqs.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %vq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vq.i.i, align 4
  br label %virtio_i2c_setup_vqs.exit

virtio_i2c_setup_vqs.exit:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %11, %if.then.i.i ], [ %13, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vq.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %callbacks.i.i) #9
  %vq.i = getelementptr inbounds %struct.virtio_i2c, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %vq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i.i, ptr %vq.i, align 8
  %cmp.i.i.i.not = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %retval.0.i.i to i32
  br i1 %cmp.i.i.i.not, label %virtio_i2c_setup_vqs.exit.cleanup_crit_edge, label %if.end9

virtio_i2c_setup_vqs.exit.cleanup_crit_edge:      ; preds = %virtio_i2c_setup_vqs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %virtio_i2c_setup_vqs.exit
  %adap = getelementptr inbounds %struct.virtio_i2c, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %adap, align 8
  %name = getelementptr inbounds %struct.virtio_i2c, ptr %call.i, i32 0, i32 1, i32 12
  %17 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vdev, align 8
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.6, i32 noundef %18)
  %algo = getelementptr inbounds %struct.virtio_i2c, ptr %call.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @virtio_algorithm, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.virtio_i2c, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 27
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %of_node19 = getelementptr inbounds %struct.virtio_i2c, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %23 = ptrtoint ptr %of_node19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %of_node19, align 8
  %driver_data.i.i = getelementptr inbounds %struct.virtio_i2c, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call25 = call i32 @i2c_add_adapter(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end9.cleanup_crit_edge, label %if.then27

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void @virtio_reset_device(ptr noundef %vdev) #9
  %25 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %del_vqs.i, align 4
  call void %28(ptr noundef %vdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end9.cleanup_crit_edge, %virtio_i2c_setup_vqs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %15, %virtio_i2c_setup_vqs.exit.cleanup_crit_edge ], [ %call25, %if.then27 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_i2c_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %adap = getelementptr inbounds %struct.virtio_i2c, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adap) #9
  tail call void @virtio_reset_device(ptr noundef %vdev) #9
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %del_vqs.i, align 4
  tail call void %5(ptr noundef %vdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_i2c_freeze(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @virtio_reset_device(ptr noundef %vdev) #9
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %del_vqs.i, align 4
  tail call void %3(ptr noundef %vdev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_i2c_restore(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  %callbacks.i.i = alloca [1 x ptr], align 4
  %names.i.i = alloca [1 x ptr], align 4
  %vq.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %callbacks.i.i) #9
  %4 = ptrtoint ptr %callbacks.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @virtio_i2c_msg_done, ptr %callbacks.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names.i.i) #9
  %5 = ptrtoint ptr %names.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.7, ptr %names.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vq.i.i) #9
  %6 = ptrtoint ptr %vq.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %vq.i.i, align 4, !annotation !46
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i.i, align 8
  %find_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %find_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %find_vqs.i.i, align 4
  %call.i.i = call i32 %10(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %vq.i.i, ptr noundef nonnull %callbacks.i.i, ptr noundef nonnull %names.i.i, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = inttoptr i32 %call.i.i to ptr
  br label %virtio_i2c_setup_vqs.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %vq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vq.i.i, align 4
  br label %virtio_i2c_setup_vqs.exit

virtio_i2c_setup_vqs.exit:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %11, %if.then.i.i ], [ %13, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vq.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %callbacks.i.i) #9
  %vq.i = getelementptr inbounds %struct.virtio_i2c, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %vq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i.i, ptr %vq.i, align 8
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %retval.0.i.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %15, i32 0
  ret i32 %spec.select.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_i2c_msg_done(ptr noundef %vq) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !46
  %call1 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #9
  %tobool.not2 = icmp eq ptr %call1, null
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call1, %entry.while.body_crit_edge ]
  call void @complete(ptr noundef nonnull %call3) #9
  %call = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %sgs.i = alloca [3 x ptr], align 4
  %out_hdr.i = alloca %struct.scatterlist, align 4
  %msg_buf.i = alloca %struct.scatterlist, align 4
  %in_hdr.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vq1 = getelementptr inbounds %struct.virtio_i2c, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vq1, align 8
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num, i32 512) #9
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !47

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgs.i) #9
  %7 = ptrtoint ptr %sgs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgs.i, align 4, !annotation !46
  %8 = getelementptr inbounds [3 x ptr], ptr %sgs.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !46
  %10 = getelementptr inbounds [3 x ptr], ptr %sgs.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %out_hdr.i) #9
  %12 = call ptr @memset(ptr %out_hdr.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %msg_buf.i) #9
  %13 = call ptr @memset(ptr %msg_buf.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %in_hdr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp117.i.not = icmp eq i32 %num, 0
  %14 = call ptr @memset(ptr %in_hdr.i, i32 255, i32 20)
  br i1 %cmp117.i.not, label %virtio_i2c_prepare_reqs.exit.thread, label %for.body.lr.ph.i

virtio_i2c_prepare_reqs.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %in_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %msg_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %out_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgs.i) #9
  br label %err_free

for.body.lr.ph.i:                                 ; preds = %if.end
  %sub.i = add nsw i32 %num, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0118.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc63.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.0118.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.i, align 128
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %arrayidx.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #9
  %arrayidx1.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0118.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx1.i, align 4
  %shl.i = shl i16 %17, 1
  %18 = call i16 @llvm.bswap.i16(i16 %shl.i) #9
  %out_hdr4.i = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.0118.i, i32 2
  %19 = ptrtoint ptr %out_hdr4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %out_hdr4.i, align 128
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0118.i, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags10.i = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.0118.i, i32 2, i32 2
  %23 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags10.i, align 4
  %or.i = or i32 %24, 33554432
  store i32 %or.i, ptr %flags10.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0118.i, i32 %sub.i)
  %cmp11.not.i = icmp eq i32 %i.0118.i, %sub.i
  br i1 %cmp11.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then13.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags16.i = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.0118.i, i32 2, i32 2
  %25 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags16.i, align 4
  %or17.i = or i32 %26, 16777216
  store i32 %or17.i, ptr %flags16.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end.i.if.end18.i_crit_edge
  call void @sg_init_one(ptr noundef nonnull %out_hdr.i, ptr noundef %out_hdr4.i, i32 noundef 8) #9
  %27 = ptrtoint ptr %sgs.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %out_hdr.i, ptr %sgs.i, align 4
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0118.i, i32 2
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool23.not.i = icmp eq i16 %29, 0
  br i1 %tobool23.not.i, label %if.end18.i.if.end48.i_crit_edge, label %if.then24.i

if.end18.i.if.end48.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then24.i:                                      ; preds = %if.end18.i
  %call.i = call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %arrayidx1.i, i32 noundef 1) #9
  %buf.i = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.0118.i, i32 4
  %30 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %buf.i, align 128
  %tobool29.not.i = icmp eq ptr %call.i, null
  br i1 %tobool29.not.i, label %if.then24.i.virtio_i2c_prepare_reqs.exit_crit_edge, label %if.end31.i

if.then24.i.virtio_i2c_prepare_reqs.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %virtio_i2c_prepare_reqs.exit

if.end31.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len.i, align 4
  %conv36.i = zext i16 %32 to i32
  call void @sg_init_one(ptr noundef nonnull %msg_buf.i, ptr noundef nonnull %call.i, i32 noundef %conv36.i) #9
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags.i, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool41.not.i = icmp eq i16 %35, 0
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg_buf.i, ptr %8, align 4
  %..i = select i1 %tobool41.not.i, i32 2, i32 1
  %not.tobool41.not.i = xor i1 %tobool41.not.i, true
  %.125.i = zext i1 %not.tobool41.not.i to i32
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end31.i, %if.end18.i.if.end48.i_crit_edge
  %outcnt.0.i = phi i32 [ 1, %if.end18.i.if.end48.i_crit_edge ], [ %..i, %if.end31.i ]
  %incnt.0.i = phi i32 [ 0, %if.end18.i.if.end48.i_crit_edge ], [ %.125.i, %if.end31.i ]
  %in_hdr50.i = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.0118.i, i32 6
  call void @sg_init_one(ptr noundef nonnull %in_hdr.i, ptr noundef %in_hdr50.i, i32 noundef 1) #9
  %inc51.i = add nuw nsw i32 %incnt.0.i, 1
  %add52.i = add nuw nsw i32 %incnt.0.i, %outcnt.0.i
  %arrayidx53.i = getelementptr [3 x ptr], ptr %sgs.i, i32 0, i32 %add52.i
  %37 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %in_hdr.i, ptr %arrayidx53.i, align 4
  %call55.i = call i32 @virtqueue_add_sgs(ptr noundef %3, ptr noundef nonnull %sgs.i, i32 noundef %outcnt.0.i, i32 noundef %inc51.i, ptr noundef %arrayidx.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %for.inc.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %buf59.i = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.0118.i, i32 4
  %38 = ptrtoint ptr %buf59.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf59.i, align 128
  call void @i2c_put_dma_safe_msg_buf(ptr noundef %39, ptr noundef %arrayidx1.i, i1 noundef zeroext false) #9
  br label %virtio_i2c_prepare_reqs.exit

for.inc.i:                                        ; preds = %if.end48.i
  %inc63.i = add nuw nsw i32 %i.0118.i, 1
  %exitcond.not.i = icmp eq i32 %inc63.i, %num
  br i1 %exitcond.not.i, label %for.inc.i.virtio_i2c_prepare_reqs.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.virtio_i2c_prepare_reqs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %virtio_i2c_prepare_reqs.exit

virtio_i2c_prepare_reqs.exit:                     ; preds = %for.inc.i.virtio_i2c_prepare_reqs.exit_crit_edge, %if.then57.i, %if.then24.i.virtio_i2c_prepare_reqs.exit_crit_edge
  %i.0116.i = phi i32 [ %i.0118.i, %if.then57.i ], [ %i.0118.i, %if.then24.i.virtio_i2c_prepare_reqs.exit_crit_edge ], [ %num, %for.inc.i.virtio_i2c_prepare_reqs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %in_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %msg_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %out_hdr.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgs.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0116.i)
  %tobool4.not = icmp eq i32 %i.0116.i, 0
  br i1 %tobool4.not, label %virtio_i2c_prepare_reqs.exit.err_free_crit_edge, label %if.end6

virtio_i2c_prepare_reqs.exit.err_free_crit_edge:  ; preds = %virtio_i2c_prepare_reqs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end6:                                          ; preds = %virtio_i2c_prepare_reqs.exit
  %call7 = call zeroext i1 @virtqueue_kick(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0116.i)
  %cmp4.i = icmp sgt i32 %i.0116.i, 0
  br i1 %cmp4.i, label %if.end6.for.body.i22_crit_edge, label %if.end6.err_free_crit_edge

if.end6.err_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

if.end6.for.body.i22_crit_edge:                   ; preds = %if.end6
  br label %for.body.i22

for.body.i22:                                     ; preds = %if.end.i26.for.body.i22_crit_edge, %if.end6.for.body.i22_crit_edge
  %j.07.i = phi i32 [ %spec.select3.i, %if.end.i26.for.body.i22_crit_edge ], [ 0, %if.end6.for.body.i22_crit_edge ]
  %i.06.i = phi i32 [ %inc9.i, %if.end.i26.for.body.i22_crit_edge ], [ 0, %if.end6.for.body.i22_crit_edge ]
  %failed.0.off05.i = phi i1 [ %failed.1.off0.i, %if.end.i26.for.body.i22_crit_edge ], [ false, %if.end6.for.body.i22_crit_edge ]
  %arrayidx.i21 = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.06.i
  call void @wait_for_completion(ptr noundef %arrayidx.i21) #9
  br i1 %failed.0.off05.i, label %for.body.i22.if.end.i26_crit_edge, label %land.lhs.true.i

for.body.i22.if.end.i26_crit_edge:                ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i26

land.lhs.true.i:                                  ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #11
  %in_hdr.i23 = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.06.i, i32 6
  %40 = ptrtoint ptr %in_hdr.i23 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %in_hdr.i23, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp1.not.i = icmp ne i8 %41, 0
  br label %if.end.i26

if.end.i26:                                       ; preds = %land.lhs.true.i, %for.body.i22.if.end.i26_crit_edge
  %failed.1.off0.i = phi i1 [ true, %for.body.i22.if.end.i26_crit_edge ], [ %cmp1.not.i, %land.lhs.true.i ]
  %buf.i24 = getelementptr %struct.virtio_i2c_req, ptr %call8.i.i, i32 %i.06.i, i32 4
  %42 = ptrtoint ptr %buf.i24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf.i24, align 128
  %arrayidx4.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.06.i
  %lnot.i = xor i1 %failed.1.off0.i, true
  call void @i2c_put_dma_safe_msg_buf(ptr noundef %43, ptr noundef %arrayidx4.i, i1 noundef zeroext %lnot.i) #9
  %inc.i = zext i1 %lnot.i to i32
  %spec.select3.i = add i32 %j.07.i, %inc.i
  %inc9.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i25 = icmp eq i32 %inc9.i, %i.0116.i
  br i1 %exitcond.not.i25, label %if.end.i26.err_free_crit_edge, label %if.end.i26.for.body.i22_crit_edge

if.end.i26.for.body.i22_crit_edge:                ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i22

if.end.i26.err_free_crit_edge:                    ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free

err_free:                                         ; preds = %if.end.i26.err_free_crit_edge, %if.end6.err_free_crit_edge, %virtio_i2c_prepare_reqs.exit.err_free_crit_edge, %virtio_i2c_prepare_reqs.exit.thread
  %count.0 = phi i32 [ 0, %virtio_i2c_prepare_reqs.exit.err_free_crit_edge ], [ 0, %virtio_i2c_prepare_reqs.exit.thread ], [ 0, %if.end6.err_free_crit_edge ], [ %spec.select3.i, %if.end.i26.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0, %err_free ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_dma_safe_msg_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_dma_safe_msg_buf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_i2c_virtio__291_277_virtio_i2c_driver_init6, !1, !"__initcall__kmod_i2c_virtio__291_277_virtio_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 277, i32 1}
!2 = !{ptr @__exitcall_virtio_i2c_driver_exit, !1, !"__exitcall_virtio_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 279, i32 1}
!5 = !{ptr @__UNIQUE_ID_author293, !6, !"__UNIQUE_ID_author293", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 280, i32 1}
!7 = !{ptr @__UNIQUE_ID_description294, !8, !"__UNIQUE_ID_description294", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 281, i32 1}
!9 = !{ptr @__UNIQUE_ID_file295, !10, !"__UNIQUE_ID_file295", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 282, i32 1}
!11 = !{ptr @__UNIQUE_ID_license296, !10, !"__UNIQUE_ID_license296", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 270, i32 11}
!14 = !{ptr @virtio_i2c_driver, !15, !"virtio_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 263, i32 29}
!16 = !{ptr @id_table, !17, !"id_table", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 240, i32 32}
!18 = !{ptr @features, !19, !"features", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 259, i32 27}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 196, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @virtio_i2c_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @virtio_i2c_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 213, i32 4}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 176, i32 60}
!32 = !{ptr @virtio_algorithm, !33, !"virtio_algorithm", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-virtio.c", i32 185, i32 29}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 1, i32 2000}
