; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_input.c_pt.bc'
source_filename = "../drivers/virtio/virtio_input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
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
%struct.virtio_input = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, [64 x %struct.virtio_input_event], %struct.spinlock, i8 }
%struct.virtio_input_event = type { i16, i16, i32 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_virtio_input__235_409_virtio_input_driver_init6 = internal global ptr @virtio_input_driver_init, section ".initcall6.init", align 4
@virtio_input_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 0, ptr null, i32 0, ptr null, ptr @virtinput_probe, ptr null, ptr @virtinput_remove, ptr null, ptr @virtinput_freeze, ptr @virtinput_restore }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_input_driver_exit = internal global ptr @virtio_input_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file236 = internal constant [46 x i8] c"virtio_input.file=drivers/virtio/virtio_input\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"virtio_input.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [52 x i8] c"virtio_input.description=Virtio input device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [54 x i8] c"virtio_input.author=Gerd Hoffmann <kraxel@redhat.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"virtio_input\00", [19 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 18, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [0 x i32], [32 x i8] } zeroinitializer, align 32
@virtinput_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&vi->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"virtio%d/input0\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/virtio/virtio_input.c\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.virtinput_init_vqs.cbs = private unnamed_addr constant [2 x ptr] [ptr @virtinput_recv_events, ptr @virtinput_recv_status], align 8
@virtinput_init_vqs.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.5], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/virtio_config.h\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"virtio_input_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 395, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 396, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 390, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 387, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 234, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 256, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 263, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 191, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 191, i32 40 }
@___asan_gen_.38 = private constant [33 x i8] c"../drivers/virtio/virtio_input.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 191, i32 50 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [33 x i8] c"../include/linux/virtio_config.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 451, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_virtio_input_driver_exit, ptr @__initcall__kmod_virtio_input__235_409_virtio_input_driver_init6, ptr @virtio_input_driver_exit, ptr @virtio_input_driver, ptr @.str, ptr @id_table, ptr @features, ptr @virtinput_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @virtinput_init_vqs.names, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_input_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtinput_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtinput_init_vqs.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_input_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_input_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_input_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_input_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtinput_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %virtio_cwrite_v.i.i = alloca i8, align 1
  %virtio_cwrite_v9.i.i = alloca i8, align 1
  %virtio_cread_v.i.i = alloca i8, align 1
  %virtio_cread_v.i363 = alloca i32, align 4
  %virtio_cread_v10.i = alloca i32, align 4
  %virtio_cread_v29.i = alloca i32, align 4
  %virtio_cread_v48.i = alloca i32, align 4
  %virtio_cread_v67.i = alloca i32, align 4
  %virtio_cwrite_v.i354 = alloca i8, align 1
  %virtio_cwrite_v9.i355 = alloca i8, align 1
  %virtio_cread_v.i356 = alloca i8, align 1
  %virtio_cwrite_v.i345 = alloca i8, align 1
  %virtio_cwrite_v9.i346 = alloca i8, align 1
  %virtio_cread_v.i347 = alloca i8, align 1
  %virtio_cwrite_v.i310 = alloca i8, align 1
  %virtio_cwrite_v9.i311 = alloca i8, align 1
  %virtio_cread_v.i312 = alloca i8, align 1
  %virtio_cwrite_v.i = alloca i8, align 1
  %virtio_cwrite_v9.i = alloca i8, align 1
  %virtio_cread_v.i = alloca i8, align 1
  %vqs.i = alloca [2 x ptr], align 4
  %cbs.i = alloca [2 x ptr], align 8
  %virtio_cread_v = alloca i16, align 2
  %virtio_cread_v64 = alloca i16, align 2
  %virtio_cread_v85 = alloca i16, align 2
  %virtio_cread_v106 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %1, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %priv, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vdev, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @virtinput_probe.__key, i16 noundef signext 3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vqs.i) #8
  %5 = ptrtoint ptr %vqs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %vqs.i, align 4, !annotation !42
  %6 = getelementptr inbounds [2 x ptr], ptr %vqs.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cbs.i) #8
  %8 = load i64, ptr @__const.virtinput_init_vqs.cbs, align 8
  %9 = ptrtoint ptr %cbs.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %cbs.i, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 8
  %find_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %find_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %find_vqs.i.i, align 4
  %call.i.i = call i32 %15(ptr noundef %11, i32 noundef 2, ptr noundef nonnull %vqs.i, ptr noundef nonnull %cbs.i, ptr noundef nonnull @virtinput_init_vqs.names, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end9, label %virtinput_init_vqs.exit

virtinput_init_vqs.exit:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbs.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs.i) #8
  br label %err_init_vq

if.end9:                                          ; preds = %if.end3
  %16 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vqs.i, align 4
  %evt.i = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %evt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %evt.i, align 8
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %sts.i = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %sts.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %sts.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbs.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs.i) #8
  %call10 = call ptr @input_allocate_device() #8
  %idev = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %idev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call10, ptr %idev, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end9.err_input_alloc_crit_edge, label %if.end14

if.end9.err_input_alloc_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_input_alloc

if.end14:                                         ; preds = %if.end9
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call10, i32 0, i32 40, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v.i) #8
  %24 = ptrtoint ptr %virtio_cwrite_v.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %virtio_cwrite_v.i, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 132) #8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 8
  %set.i = getelementptr inbounds %struct.virtio_config_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set.i, align 4
  call void %30(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %virtio_cwrite_v.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i) #8
  %31 = ptrtoint ptr %virtio_cwrite_v9.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %virtio_cwrite_v9.i, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 133) #8
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %config22.i = getelementptr inbounds %struct.virtio_device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %config22.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config22.i, align 8
  %set23.i = getelementptr inbounds %struct.virtio_config_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %set23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set23.i, align 4
  call void %37(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %virtio_cwrite_v9.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i) #8
  %38 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %virtio_cread_v.i, align 1, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #8
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  %config40.i = getelementptr inbounds %struct.virtio_device, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %config40.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config40.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get.i, align 4
  call void %44(ptr noundef %40, i32 noundef 2, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 1) #8
  %45 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %virtio_cread_v.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i) #8
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call7.i.i, align 8
  %name = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 2
  %49 = call i8 @llvm.umin.i8(i8 %46, i8 64)
  %cond = zext i8 %49 to i32
  %config.i.i308 = getelementptr inbounds %struct.virtio_device, ptr %48, i32 0, i32 8
  %50 = ptrtoint ptr %config.i.i308 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config.i.i308, align 8
  %generation.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %generation.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %if.end14.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end14.cond.end.i.i_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i309 = call i32 %53(ptr noundef %48) #8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end14.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i309, %cond.true.i.i ], [ 0, %if.end14.cond.end.i.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 451) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp1.not.i.i = icmp eq i8 %49, 0
  br label %do.body6.i.i

do.body6.i.i:                                     ; preds = %cond.end17.i.i.do.body6.i.i_crit_edge, %cond.end.i.i
  %gen.0.i.i = phi i32 [ %cond.i.i, %cond.end.i.i ], [ %cond18.i.i, %cond.end17.i.i.do.body6.i.i_crit_edge ]
  br i1 %cmp1.not.i.i, label %do.body6.i.i.for.end.i.i_crit_edge, label %do.body6.i.i.for.body.i.i_crit_edge

do.body6.i.i.for.body.i.i_crit_edge:              ; preds = %do.body6.i.i
  br label %for.body.i.i

do.body6.i.i.for.end.i.i_crit_edge:               ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body6.i.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body6.i.i.for.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %config.i.i308 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config.i.i308, align 8
  %get.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.02.i.i, 8
  %add.ptr.i.i = getelementptr i8, ptr %name, i32 %i.02.i.i
  call void %57(ptr noundef %48, i32 noundef %add.i.i, ptr noundef %add.ptr.i.i, i32 noundef 1) #8
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %cond
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %do.body6.i.i.for.end.i.i_crit_edge
  %58 = ptrtoint ptr %config.i.i308 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config.i.i308, align 8
  %generation10.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %generation10.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %generation10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %61, null
  br i1 %tobool11.not.i.i, label %for.end.i.i.cond.end17.i.i_crit_edge, label %cond.true12.i.i

for.end.i.i.cond.end17.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.i.i

cond.true12.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i.i = call i32 %61(ptr noundef %48) #8
  br label %cond.end17.i.i

cond.end17.i.i:                                   ; preds = %cond.true12.i.i, %for.end.i.i.cond.end17.i.i_crit_edge
  %cond18.i.i = phi i32 [ %call15.i.i, %cond.true12.i.i ], [ 0, %for.end.i.i.cond.end17.i.i_crit_edge ]
  %cmp20.not.i.i = icmp eq i32 %cond18.i.i, %gen.0.i.i
  br i1 %cmp20.not.i.i, label %virtio_cread_bytes.exit, label %cond.end17.i.i.do.body6.i.i_crit_edge

cond.end17.i.i.do.body6.i.i_crit_edge:            ; preds = %cond.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i

virtio_cread_bytes.exit:                          ; preds = %cond.end17.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v.i310) #8
  %62 = ptrtoint ptr %virtio_cwrite_v.i310 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %virtio_cwrite_v.i310, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 132) #8
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call7.i.i, align 8
  %config.i313 = getelementptr inbounds %struct.virtio_device, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %config.i313 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i313, align 8
  %set.i314 = getelementptr inbounds %struct.virtio_config_ops, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %set.i314 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set.i314, align 4
  call void %68(ptr noundef %64, i32 noundef 0, ptr noundef nonnull %virtio_cwrite_v.i310, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v.i310) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i311) #8
  %69 = ptrtoint ptr %virtio_cwrite_v9.i311 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %virtio_cwrite_v9.i311, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 133) #8
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call7.i.i, align 8
  %config22.i315 = getelementptr inbounds %struct.virtio_device, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %config22.i315 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config22.i315, align 8
  %set23.i316 = getelementptr inbounds %struct.virtio_config_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %set23.i316 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set23.i316, align 4
  call void %75(ptr noundef %71, i32 noundef 1, ptr noundef nonnull %virtio_cwrite_v9.i311, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i311) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i312) #8
  %76 = ptrtoint ptr %virtio_cread_v.i312 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -1, ptr %virtio_cread_v.i312, align 1, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #8
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i, align 8
  %config40.i317 = getelementptr inbounds %struct.virtio_device, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %config40.i317 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config40.i317, align 8
  %get.i318 = getelementptr inbounds %struct.virtio_config_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %get.i318 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %get.i318, align 4
  call void %82(ptr noundef %78, i32 noundef 2, ptr noundef nonnull %virtio_cread_v.i312, i32 noundef 1) #8
  %83 = ptrtoint ptr %virtio_cread_v.i312 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %virtio_cread_v.i312, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i312) #8
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i, align 8
  %serial = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 3
  %87 = call i8 @llvm.umin.i8(i8 %84, i8 64)
  %cond29 = zext i8 %87 to i32
  %config.i.i319 = getelementptr inbounds %struct.virtio_device, ptr %86, i32 0, i32 8
  %88 = ptrtoint ptr %config.i.i319 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %config.i.i319, align 8
  %generation.i.i320 = getelementptr inbounds %struct.virtio_config_ops, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %generation.i.i320 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %generation.i.i320, align 4
  %tobool.not.i.i321 = icmp eq ptr %91, null
  br i1 %tobool.not.i.i321, label %virtio_cread_bytes.exit.cond.end.i.i326_crit_edge, label %cond.true.i.i323

virtio_cread_bytes.exit.cond.end.i.i326_crit_edge: ; preds = %virtio_cread_bytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i326

cond.true.i.i323:                                 ; preds = %virtio_cread_bytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i322 = call i32 %91(ptr noundef %86) #8
  br label %cond.end.i.i326

cond.end.i.i326:                                  ; preds = %cond.true.i.i323, %virtio_cread_bytes.exit.cond.end.i.i326_crit_edge
  %cond.i.i324 = phi i32 [ %call.i.i322, %cond.true.i.i323 ], [ 0, %virtio_cread_bytes.exit.cond.end.i.i326_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 451) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp1.not.i.i325 = icmp eq i8 %87, 0
  br label %do.body6.i.i328

do.body6.i.i328:                                  ; preds = %cond.end17.i.i343.do.body6.i.i328_crit_edge, %cond.end.i.i326
  %gen.0.i.i327 = phi i32 [ %cond.i.i324, %cond.end.i.i326 ], [ %cond18.i.i341, %cond.end17.i.i343.do.body6.i.i328_crit_edge ]
  br i1 %cmp1.not.i.i325, label %do.body6.i.i328.for.end.i.i338_crit_edge, label %do.body6.i.i328.for.body.i.i335_crit_edge

do.body6.i.i328.for.body.i.i335_crit_edge:        ; preds = %do.body6.i.i328
  br label %for.body.i.i335

do.body6.i.i328.for.end.i.i338_crit_edge:         ; preds = %do.body6.i.i328
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i338

for.body.i.i335:                                  ; preds = %for.body.i.i335.for.body.i.i335_crit_edge, %do.body6.i.i328.for.body.i.i335_crit_edge
  %i.02.i.i329 = phi i32 [ %inc.i.i333, %for.body.i.i335.for.body.i.i335_crit_edge ], [ 0, %do.body6.i.i328.for.body.i.i335_crit_edge ]
  %92 = ptrtoint ptr %config.i.i319 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config.i.i319, align 8
  %get.i.i330 = getelementptr inbounds %struct.virtio_config_ops, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %get.i.i330 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get.i.i330, align 4
  %add.i.i331 = add nuw nsw i32 %i.02.i.i329, 8
  %add.ptr.i.i332 = getelementptr i8, ptr %serial, i32 %i.02.i.i329
  call void %95(ptr noundef %86, i32 noundef %add.i.i331, ptr noundef %add.ptr.i.i332, i32 noundef 1) #8
  %inc.i.i333 = add nuw nsw i32 %i.02.i.i329, 1
  %exitcond.not.i.i334 = icmp eq i32 %inc.i.i333, %cond29
  br i1 %exitcond.not.i.i334, label %for.body.i.i335.for.end.i.i338_crit_edge, label %for.body.i.i335.for.body.i.i335_crit_edge

for.body.i.i335.for.body.i.i335_crit_edge:        ; preds = %for.body.i.i335
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i335

for.body.i.i335.for.end.i.i338_crit_edge:         ; preds = %for.body.i.i335
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i338

for.end.i.i338:                                   ; preds = %for.body.i.i335.for.end.i.i338_crit_edge, %do.body6.i.i328.for.end.i.i338_crit_edge
  %96 = ptrtoint ptr %config.i.i319 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config.i.i319, align 8
  %generation10.i.i336 = getelementptr inbounds %struct.virtio_config_ops, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %generation10.i.i336 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %generation10.i.i336, align 4
  %tobool11.not.i.i337 = icmp eq ptr %99, null
  br i1 %tobool11.not.i.i337, label %for.end.i.i338.cond.end17.i.i343_crit_edge, label %cond.true12.i.i340

for.end.i.i338.cond.end17.i.i343_crit_edge:       ; preds = %for.end.i.i338
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.i.i343

cond.true12.i.i340:                               ; preds = %for.end.i.i338
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i.i339 = call i32 %99(ptr noundef %86) #8
  br label %cond.end17.i.i343

cond.end17.i.i343:                                ; preds = %cond.true12.i.i340, %for.end.i.i338.cond.end17.i.i343_crit_edge
  %cond18.i.i341 = phi i32 [ %call15.i.i339, %cond.true12.i.i340 ], [ 0, %for.end.i.i338.cond.end17.i.i343_crit_edge ]
  %cmp20.not.i.i342 = icmp eq i32 %cond18.i.i341, %gen.0.i.i327
  br i1 %cmp20.not.i.i342, label %virtio_cread_bytes.exit344, label %cond.end17.i.i343.do.body6.i.i328_crit_edge

cond.end17.i.i343.do.body6.i.i328_crit_edge:      ; preds = %cond.end17.i.i343
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i328

virtio_cread_bytes.exit344:                       ; preds = %cond.end17.i.i343
  %phys = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vdev, align 8
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %101)
  %102 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %idev, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %name, ptr %103, align 8
  %105 = load ptr, ptr %idev, align 4
  %phys39 = getelementptr inbounds %struct.input_dev, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %phys39 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %phys, ptr %phys39, align 4
  %107 = load ptr, ptr %idev, align 4
  %uniq = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %uniq to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %serial, ptr %uniq, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v.i345) #8
  %109 = ptrtoint ptr %virtio_cwrite_v.i345 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 3, ptr %virtio_cwrite_v.i345, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 132) #8
  %110 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call7.i.i, align 8
  %config.i348 = getelementptr inbounds %struct.virtio_device, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %config.i348 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config.i348, align 8
  %set.i349 = getelementptr inbounds %struct.virtio_config_ops, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %set.i349 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %set.i349, align 4
  call void %115(ptr noundef %111, i32 noundef 0, ptr noundef nonnull %virtio_cwrite_v.i345, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v.i345) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i346) #8
  %116 = ptrtoint ptr %virtio_cwrite_v9.i346 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %virtio_cwrite_v9.i346, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 133) #8
  %117 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call7.i.i, align 8
  %config22.i350 = getelementptr inbounds %struct.virtio_device, ptr %118, i32 0, i32 8
  %119 = ptrtoint ptr %config22.i350 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %config22.i350, align 8
  %set23.i351 = getelementptr inbounds %struct.virtio_config_ops, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %set23.i351 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %set23.i351, align 4
  call void %122(ptr noundef %118, i32 noundef 1, ptr noundef nonnull %virtio_cwrite_v9.i346, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i346) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i347) #8
  %123 = ptrtoint ptr %virtio_cread_v.i347 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %virtio_cread_v.i347, align 1, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #8
  %124 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call7.i.i, align 8
  %config40.i352 = getelementptr inbounds %struct.virtio_device, ptr %125, i32 0, i32 8
  %126 = ptrtoint ptr %config40.i352 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config40.i352, align 8
  %get.i353 = getelementptr inbounds %struct.virtio_config_ops, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %get.i353 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get.i353, align 4
  call void %129(ptr noundef %125, i32 noundef 2, ptr noundef nonnull %virtio_cread_v.i347, i32 noundef 1) #8
  %130 = ptrtoint ptr %virtio_cread_v.i347 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %virtio_cread_v.i347, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i347) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %131)
  %cmp45 = icmp ugt i8 %131, 7
  br i1 %cmp45, label %do.body48, label %if.else

do.body48:                                        ; preds = %virtio_cread_bytes.exit344
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v) #8
  %132 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 -1, ptr %virtio_cread_v, align 2, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 264) #8
  %133 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %call7.i.i, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %134, i32 0, i32 8
  %135 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %get, align 4
  call void %138(ptr noundef %134, i32 noundef 8, ptr noundef nonnull %virtio_cread_v, i32 noundef 2) #8
  %139 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %virtio_cread_v, align 2
  %141 = call i16 @llvm.bswap.i16(i16 %140)
  %142 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %idev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %141, ptr %id, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v64) #8
  %145 = ptrtoint ptr %virtio_cread_v64 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -1, ptr %virtio_cread_v64, align 2, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 266) #8
  %146 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %call7.i.i, align 8
  %config77 = getelementptr inbounds %struct.virtio_device, ptr %147, i32 0, i32 8
  %148 = ptrtoint ptr %config77 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %config77, align 8
  %get78 = getelementptr inbounds %struct.virtio_config_ops, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %get78 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %get78, align 4
  call void %151(ptr noundef %147, i32 noundef 10, ptr noundef nonnull %virtio_cread_v64, i32 noundef 2) #8
  %152 = ptrtoint ptr %virtio_cread_v64 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %virtio_cread_v64, align 2
  %154 = call i16 @llvm.bswap.i16(i16 %153)
  %155 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %idev, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %156, i32 0, i32 3, i32 1
  %157 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %154, ptr %vendor, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v64) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v85) #8
  %158 = ptrtoint ptr %virtio_cread_v85 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -1, ptr %virtio_cread_v85, align 2, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 268) #8
  %159 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %call7.i.i, align 8
  %config98 = getelementptr inbounds %struct.virtio_device, ptr %160, i32 0, i32 8
  %161 = ptrtoint ptr %config98 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %config98, align 8
  %get99 = getelementptr inbounds %struct.virtio_config_ops, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %get99 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %get99, align 4
  call void %164(ptr noundef %160, i32 noundef 12, ptr noundef nonnull %virtio_cread_v85, i32 noundef 2) #8
  %165 = ptrtoint ptr %virtio_cread_v85 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %virtio_cread_v85, align 2
  %167 = call i16 @llvm.bswap.i16(i16 %166)
  %168 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %idev, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %169, i32 0, i32 3, i32 2
  %170 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %167, ptr %product, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v85) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v106) #8
  %171 = ptrtoint ptr %virtio_cread_v106 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -1, ptr %virtio_cread_v106, align 2, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 270) #8
  %172 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %call7.i.i, align 8
  %config119 = getelementptr inbounds %struct.virtio_device, ptr %173, i32 0, i32 8
  %174 = ptrtoint ptr %config119 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %config119, align 8
  %get120 = getelementptr inbounds %struct.virtio_config_ops, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %get120 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %get120, align 4
  call void %177(ptr noundef %173, i32 noundef 14, ptr noundef nonnull %virtio_cread_v106, i32 noundef 2) #8
  %178 = ptrtoint ptr %virtio_cread_v106 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %virtio_cread_v106, align 2
  %180 = call i16 @llvm.bswap.i16(i16 %179)
  %181 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %idev, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %182, i32 0, i32 3, i32 3
  %183 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %180, ptr %version, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v106) #8
  br label %if.end129

if.else:                                          ; preds = %virtio_cread_bytes.exit344
  call void @__sanitizer_cov_trace_pc() #10
  %184 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %idev, align 4
  %id127 = getelementptr inbounds %struct.input_dev, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %id127 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 6, ptr %id127, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else, %do.body48
  %187 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %idev, align 4
  %propbit = getelementptr inbounds %struct.input_dev, ptr %188, i32 0, i32 4
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 16, i32 noundef 0, ptr noundef %propbit, i32 noundef 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v.i354) #8
  %189 = ptrtoint ptr %virtio_cwrite_v.i354 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 17, ptr %virtio_cwrite_v.i354, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 132) #8
  %190 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %call7.i.i, align 8
  %config.i357 = getelementptr inbounds %struct.virtio_device, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %config.i357 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %config.i357, align 8
  %set.i358 = getelementptr inbounds %struct.virtio_config_ops, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %set.i358 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %set.i358, align 4
  call void %195(ptr noundef %191, i32 noundef 0, ptr noundef nonnull %virtio_cwrite_v.i354, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v.i354) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i355) #8
  %196 = ptrtoint ptr %virtio_cwrite_v9.i355 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 20, ptr %virtio_cwrite_v9.i355, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 133) #8
  %197 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %call7.i.i, align 8
  %config22.i359 = getelementptr inbounds %struct.virtio_device, ptr %198, i32 0, i32 8
  %199 = ptrtoint ptr %config22.i359 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %config22.i359, align 8
  %set23.i360 = getelementptr inbounds %struct.virtio_config_ops, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %set23.i360 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %set23.i360, align 4
  call void %202(ptr noundef %198, i32 noundef 1, ptr noundef nonnull %virtio_cwrite_v9.i355, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i355) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i356) #8
  %203 = ptrtoint ptr %virtio_cread_v.i356 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -1, ptr %virtio_cread_v.i356, align 1, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #8
  %204 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %call7.i.i, align 8
  %config40.i361 = getelementptr inbounds %struct.virtio_device, ptr %205, i32 0, i32 8
  %206 = ptrtoint ptr %config40.i361 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %config40.i361, align 8
  %get.i362 = getelementptr inbounds %struct.virtio_config_ops, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %get.i362 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %get.i362, align 4
  call void %209(ptr noundef %205, i32 noundef 2, ptr noundef nonnull %virtio_cread_v.i356, i32 noundef 1) #8
  %210 = ptrtoint ptr %virtio_cread_v.i356 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %virtio_cread_v.i356, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i356) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool134.not = icmp eq i8 %211, 0
  br i1 %tobool134.not, label %if.end129.if.end138_crit_edge, label %if.then135

if.end129.if.end138_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %idev, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %213, i32 0, i32 5
  %214 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %evbit, align 4
  %or.i = or i32 %215, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then135, %if.end129.if.end138_crit_edge
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %216 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %idev, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %217, i32 0, i32 40, i32 1
  %218 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %dev, ptr %parent, align 8
  %219 = load ptr, ptr %idev, align 4
  %event = getelementptr inbounds %struct.input_dev, ptr %219, i32 0, i32 34
  %220 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @virtinput_status, ptr %event, align 4
  %221 = load ptr, ptr %idev, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %221, i32 0, i32 6
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 17, i32 noundef 1, ptr noundef %keybit, i32 noundef 768)
  %222 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %idev, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %223, i32 0, i32 7
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 17, i32 noundef 2, ptr noundef %relbit, i32 noundef 16)
  %224 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %idev, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %225, i32 0, i32 8
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 17, i32 noundef 3, ptr noundef %absbit, i32 noundef 64)
  %226 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %idev, align 4
  %mscbit = getelementptr inbounds %struct.input_dev, ptr %227, i32 0, i32 9
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 17, i32 noundef 4, ptr noundef %mscbit, i32 noundef 8)
  %228 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %idev, align 4
  %swbit = getelementptr inbounds %struct.input_dev, ptr %229, i32 0, i32 13
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 17, i32 noundef 5, ptr noundef %swbit, i32 noundef 17)
  %230 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %idev, align 4
  %ledbit = getelementptr inbounds %struct.input_dev, ptr %231, i32 0, i32 10
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 17, i32 noundef 17, ptr noundef %ledbit, i32 noundef 16)
  %232 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %idev, align 4
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %233, i32 0, i32 11
  call fastcc void @virtinput_cfg_bits(ptr noundef %call7.i.i, i32 noundef 17, i32 noundef 18, ptr noundef %sndbit, i32 noundef 8)
  %234 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %idev, align 4
  %evbit157 = getelementptr inbounds %struct.input_dev, ptr %235, i32 0, i32 5
  %236 = ptrtoint ptr %evbit157 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %evbit157, align 4
  %238 = and i32 %237, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool160.not = icmp eq i32 %238, 0
  br i1 %tobool160.not, label %if.end138.if.end185_crit_edge, label %if.end138.for.body_crit_edge

if.end138.for.body_crit_edge:                     ; preds = %if.end138
  br label %for.body

if.end138.if.end185_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end138.for.body_crit_edge
  %abs.0373 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end138.for.body_crit_edge ]
  %239 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %idev, align 4
  %absbit165 = getelementptr inbounds %struct.input_dev, ptr %240, i32 0, i32 8
  %div3.i = lshr i32 %abs.0373, 5
  %arrayidx.i = getelementptr i32, ptr %absbit165, i32 %div3.i
  %241 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %abs.0373, 31
  %243 = shl nuw i32 1, %and.i
  %244 = and i32 %242, %243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool168.not = icmp eq i32 %244, 0
  br i1 %tobool168.not, label %for.body.for.inc_crit_edge, label %if.end170

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end170:                                        ; preds = %for.body
  %conv.i = trunc i32 %abs.0373 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v.i.i) #8
  %245 = ptrtoint ptr %virtio_cwrite_v.i.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 18, ptr %virtio_cwrite_v.i.i, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 132) #8
  %246 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %call7.i.i, align 8
  %config.i.i364 = getelementptr inbounds %struct.virtio_device, ptr %247, i32 0, i32 8
  %248 = ptrtoint ptr %config.i.i364 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %config.i.i364, align 8
  %set.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %set.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %set.i.i, align 4
  call void %251(ptr noundef %247, i32 noundef 0, ptr noundef nonnull %virtio_cwrite_v.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i.i) #8
  %252 = ptrtoint ptr %virtio_cwrite_v9.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %conv.i, ptr %virtio_cwrite_v9.i.i, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 133) #8
  %253 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %call7.i.i, align 8
  %config22.i.i = getelementptr inbounds %struct.virtio_device, ptr %254, i32 0, i32 8
  %255 = ptrtoint ptr %config22.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %config22.i.i, align 8
  %set23.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %256, i32 0, i32 2
  %257 = ptrtoint ptr %set23.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %set23.i.i, align 4
  call void %258(ptr noundef %254, i32 noundef 1, ptr noundef nonnull %virtio_cwrite_v9.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i.i) #8
  %259 = ptrtoint ptr %virtio_cread_v.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 -1, ptr %virtio_cread_v.i.i, align 1, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #8
  %260 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %call7.i.i, align 8
  %config40.i.i = getelementptr inbounds %struct.virtio_device, ptr %261, i32 0, i32 8
  %262 = ptrtoint ptr %config40.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %config40.i.i, align 8
  %get.i.i365 = getelementptr inbounds %struct.virtio_config_ops, ptr %263, i32 0, i32 1
  %264 = ptrtoint ptr %get.i.i365 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %get.i.i365, align 4
  call void %265(ptr noundef %261, i32 noundef 2, ptr noundef nonnull %virtio_cread_v.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v.i363) #8
  %266 = ptrtoint ptr %virtio_cread_v.i363 to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 -1, ptr %virtio_cread_v.i363, align 4, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 177) #8
  %267 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %call7.i.i, align 8
  %config.i366 = getelementptr inbounds %struct.virtio_device, ptr %268, i32 0, i32 8
  %269 = ptrtoint ptr %config.i366 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %config.i366, align 8
  %get.i367 = getelementptr inbounds %struct.virtio_config_ops, ptr %270, i32 0, i32 1
  %271 = ptrtoint ptr %get.i367 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %get.i367, align 4
  call void %272(ptr noundef %268, i32 noundef 8, ptr noundef nonnull %virtio_cread_v.i363, i32 noundef 4) #8
  %273 = ptrtoint ptr %virtio_cread_v.i363 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %virtio_cread_v.i363, align 4
  %275 = call i32 @llvm.bswap.i32(i32 %274) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v.i363) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v10.i) #8
  %276 = ptrtoint ptr %virtio_cread_v10.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 -1, ptr %virtio_cread_v10.i, align 4, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 178) #8
  %277 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %call7.i.i, align 8
  %config23.i = getelementptr inbounds %struct.virtio_device, ptr %278, i32 0, i32 8
  %279 = ptrtoint ptr %config23.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %config23.i, align 8
  %get24.i = getelementptr inbounds %struct.virtio_config_ops, ptr %280, i32 0, i32 1
  %281 = ptrtoint ptr %get24.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %get24.i, align 4
  call void %282(ptr noundef %278, i32 noundef 12, ptr noundef nonnull %virtio_cread_v10.i, i32 noundef 4) #8
  %283 = ptrtoint ptr %virtio_cread_v10.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %virtio_cread_v10.i, align 4
  %285 = call i32 @llvm.bswap.i32(i32 %284) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v10.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v29.i) #8
  %286 = ptrtoint ptr %virtio_cread_v29.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 -1, ptr %virtio_cread_v29.i, align 4, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 179) #8
  %287 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %call7.i.i, align 8
  %config42.i = getelementptr inbounds %struct.virtio_device, ptr %288, i32 0, i32 8
  %289 = ptrtoint ptr %config42.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %config42.i, align 8
  %get43.i = getelementptr inbounds %struct.virtio_config_ops, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %get43.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %get43.i, align 4
  call void %292(ptr noundef %288, i32 noundef 24, ptr noundef nonnull %virtio_cread_v29.i, i32 noundef 4) #8
  %293 = ptrtoint ptr %virtio_cread_v29.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %virtio_cread_v29.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v29.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v48.i) #8
  %295 = ptrtoint ptr %virtio_cread_v48.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 -1, ptr %virtio_cread_v48.i, align 4, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 180) #8
  %296 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %call7.i.i, align 8
  %config61.i = getelementptr inbounds %struct.virtio_device, ptr %297, i32 0, i32 8
  %298 = ptrtoint ptr %config61.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %config61.i, align 8
  %get62.i = getelementptr inbounds %struct.virtio_config_ops, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %get62.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %get62.i, align 4
  call void %301(ptr noundef %297, i32 noundef 16, ptr noundef nonnull %virtio_cread_v48.i, i32 noundef 4) #8
  %302 = ptrtoint ptr %virtio_cread_v48.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %virtio_cread_v48.i, align 4
  %304 = call i32 @llvm.bswap.i32(i32 %303) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v48.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v67.i) #8
  %305 = ptrtoint ptr %virtio_cread_v67.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 -1, ptr %virtio_cread_v67.i, align 4, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 181) #8
  %306 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %call7.i.i, align 8
  %config80.i = getelementptr inbounds %struct.virtio_device, ptr %307, i32 0, i32 8
  %308 = ptrtoint ptr %config80.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %config80.i, align 8
  %get81.i = getelementptr inbounds %struct.virtio_config_ops, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %get81.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %get81.i, align 4
  call void %311(ptr noundef %307, i32 noundef 20, ptr noundef nonnull %virtio_cread_v67.i, i32 noundef 4) #8
  %312 = ptrtoint ptr %virtio_cread_v67.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %virtio_cread_v67.i, align 4
  %314 = call i32 @llvm.bswap.i32(i32 %313) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v67.i) #8
  %315 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %idev, align 4
  call void @input_set_abs_params(ptr noundef %316, i32 noundef %abs.0373, i32 noundef %275, i32 noundef %285, i32 noundef %304, i32 noundef %314) #8
  %317 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %idev, align 4
  call void @input_alloc_absinfo(ptr noundef %318) #8
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %318, i32 0, i32 26
  %319 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i368 = icmp eq ptr %320, null
  br i1 %tobool.not.i.i368, label %if.end170.for.inc_crit_edge, label %if.then.i.i

if.end170.for.inc_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  %321 = call i32 @llvm.bswap.i32(i32 %294) #8
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %320, i32 %abs.0373, i32 5
  %322 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %321, ptr %resolution.i.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.end170.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %abs.0373, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %323 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %idev, align 4
  %arrayidx.i305 = getelementptr %struct.input_dev, ptr %324, i32 0, i32 8, i32 1
  %325 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load volatile i32, ptr %arrayidx.i305, align 4
  %327 = and i32 %326, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool175.not = icmp eq i32 %327, 0
  br i1 %tobool175.not, label %for.end.if.end185_crit_edge, label %if.then176

for.end.if.end185_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then176:                                       ; preds = %for.end
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %324, i32 0, i32 26
  %328 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i369 = icmp eq ptr %329, null
  br i1 %tobool.not.i369, label %if.then176.input_abs_get_max.exit_crit_edge, label %cond.true.i

if.then176.input_abs_get_max.exit_crit_edge:      ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_get_max.exit

cond.true.i:                                      ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  %maximum.i = getelementptr %struct.input_absinfo, ptr %329, i32 47, i32 2
  %330 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %maximum.i, align 4
  %phi.bo = add i32 %331, 1
  br label %input_abs_get_max.exit

input_abs_get_max.exit:                           ; preds = %cond.true.i, %if.then176.input_abs_get_max.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 1, %if.then176.input_abs_get_max.exit_crit_edge ]
  %call180 = call i32 @input_mt_init_slots(ptr noundef %324, i32 noundef %cond.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %input_abs_get_max.exit.if.end185_crit_edge, label %input_abs_get_max.exit.err_mt_init_slots_crit_edge

input_abs_get_max.exit.err_mt_init_slots_crit_edge: ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mt_init_slots

input_abs_get_max.exit.if.end185_crit_edge:       ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.end185:                                        ; preds = %input_abs_get_max.exit.if.end185_crit_edge, %for.end.if.end185_crit_edge, %if.end138.if.end185_crit_edge
  %config.i370 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %332 = ptrtoint ptr %config.i370 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %config.i370, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %333, i32 0, i32 4
  %334 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %get_status.i, align 4
  %call.i = call zeroext i8 %335(ptr noundef %vdev) #8
  %336 = ptrtoint ptr %config.i370 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %config.i370, align 8
  %338 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %337, align 4
  %tobool.not.i371 = icmp eq ptr %339, null
  br i1 %tobool.not.i371, label %if.end185.do.body.i_crit_edge, label %if.then.i

if.end185.do.body.i_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  call void %339(ptr noundef %vdev) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end185.do.body.i_crit_edge
  %340 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %340)
  %tobool4.not.i = icmp eq i8 %340, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !43

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %341 = ptrtoint ptr %config.i370 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %config.i370, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %342, i32 0, i32 5
  %343 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %set_status.i, align 4
  %or.i372 = or i8 %call.i, 4
  call void %344(ptr noundef %vdev, i8 noundef zeroext %or.i372) #8
  %ready = getelementptr inbounds %struct.virtio_input, ptr %call7.i.i, i32 0, i32 9
  %345 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 1, ptr %ready, align 4
  %346 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %idev, align 4
  %call187 = call i32 @input_register_device(ptr noundef %347) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %do.body192

if.end190:                                        ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @virtinput_fill_evt(ptr noundef %call7.i.i)
  br label %cleanup

do.body192:                                       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call200 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %348 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 0, ptr %ready, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call200) #8
  br label %err_mt_init_slots

err_mt_init_slots:                                ; preds = %do.body192, %input_abs_get_max.exit.err_mt_init_slots_crit_edge
  %err.0 = phi i32 [ %call180, %input_abs_get_max.exit.err_mt_init_slots_crit_edge ], [ %call187, %do.body192 ]
  %349 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %idev, align 4
  call void @input_free_device(ptr noundef %350) #8
  br label %err_input_alloc

err_input_alloc:                                  ; preds = %err_mt_init_slots, %if.end9.err_input_alloc_crit_edge
  %err.1 = phi i32 [ %err.0, %err_mt_init_slots ], [ -12, %if.end9.err_input_alloc_crit_edge ]
  %config208 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %351 = ptrtoint ptr %config208 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %config208, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %352, i32 0, i32 8
  %353 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %del_vqs, align 4
  call void %354(ptr noundef %vdev) #8
  br label %err_init_vq

err_init_vq:                                      ; preds = %err_input_alloc, %virtinput_init_vqs.exit
  %err.2 = phi i32 [ %call.i.i, %virtinput_init_vqs.exit ], [ %err.1, %err_input_alloc ]
  call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_init_vq, %if.end190, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_init_vq ], [ 0, %if.end190 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtinput_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ready = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ready, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %idev = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %idev, align 4
  tail call void @input_unregister_device(ptr noundef %4) #8
  tail call void @virtio_reset_device(ptr noundef %vdev) #8
  %sts = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sts, align 4
  %call617 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %6) #8
  %cmp7.not18 = icmp eq ptr %call617, null
  br i1 %cmp7.not18, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call619 = phi ptr [ %call6, %while.body.while.body_crit_edge ], [ %call617, %entry.while.body_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call619) #8
  %7 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sts, align 4
  %call6 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %8) #8
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %del_vqs, align 4
  tail call void %12(ptr noundef %vdev) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtinput_freeze(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ready = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ready, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %del_vqs, align 4
  tail call void %6(ptr noundef %vdev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtinput_restore(ptr noundef %vdev) #2 align 64 {
entry:
  %vqs.i = alloca [2 x ptr], align 4
  %cbs.i = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vqs.i) #8
  %2 = ptrtoint ptr %vqs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %vqs.i, align 4, !annotation !42
  %3 = getelementptr inbounds [2 x ptr], ptr %vqs.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cbs.i) #8
  %5 = load i64, ptr @__const.virtinput_init_vqs.cbs, align 8
  %6 = ptrtoint ptr %cbs.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %cbs.i, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i.i, align 8
  %find_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %find_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %find_vqs.i.i, align 4
  %call.i.i = call i32 %12(ptr noundef %8, i32 noundef 2, ptr noundef nonnull %vqs.i, ptr noundef nonnull %cbs.i, ptr noundef nonnull @virtinput_init_vqs.names, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %virtinput_init_vqs.exit

virtinput_init_vqs.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbs.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vqs.i, align 4
  %evt.i = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %evt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %evt.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %sts.i = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %sts.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %sts.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbs.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vqs.i) #8
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %19 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_status.i, align 4
  %call.i = call zeroext i8 %22(ptr noundef %vdev) #8
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i6 = icmp eq ptr %26, null
  br i1 %tobool.not.i6, label %if.end.do.body.i_crit_edge, label %if.then.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void %26(ptr noundef %vdev) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %27 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool4.not.i = icmp eq i8 %27, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !43

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i, 4
  call void %31(ptr noundef %vdev, i8 noundef zeroext %or.i) #8
  %ready = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %ready, align 4
  call fastcc void @virtinput_fill_evt(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %virtio_device_ready.exit, %virtinput_init_vqs.exit
  ret i32 %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtinput_cfg_bits(ptr nocapture noundef readonly %vi, i32 noundef %select, i32 noundef %subsel, ptr nocapture noundef %bits, i32 noundef %bitcount) unnamed_addr #2 align 64 {
entry:
  %virtio_cwrite_v.i = alloca i8, align 1
  %virtio_cwrite_v9.i = alloca i8, align 1
  %virtio_cread_v.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %select to i8
  %conv1 = trunc i32 %subsel to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v.i) #8
  %0 = ptrtoint ptr %virtio_cwrite_v.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %virtio_cwrite_v.i, align 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 132) #8
  %1 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vi, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config.i, align 8
  %set.i = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set.i, align 4
  call void %6(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %virtio_cwrite_v.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i) #8
  %7 = ptrtoint ptr %virtio_cwrite_v9.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %virtio_cwrite_v9.i, align 1
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 133) #8
  %8 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vi, align 4
  %config22.i = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %config22.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config22.i, align 8
  %set23.i = getelementptr inbounds %struct.virtio_config_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %set23.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set23.i, align 4
  call void %13(ptr noundef %9, i32 noundef 1, ptr noundef nonnull %virtio_cwrite_v9.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cwrite_v9.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %virtio_cread_v.i) #8
  %14 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %virtio_cread_v.i, align 1, !annotation !42
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 134) #8
  %15 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vi, align 4
  %config40.i = getelementptr inbounds %struct.virtio_device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %config40.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config40.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get.i, align 4
  call void %20(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 1) #8
  %21 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %virtio_cread_v.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %virtio_cread_v.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i8 %22 to i32
  %mul = shl nuw nsw i32 %conv2, 3
  %23 = call i32 @llvm.umin.i32(i32 %mul, i32 %bitcount)
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv2, i32 noundef 3520) #12
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %24 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vi, align 4
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i.i, align 8
  %generation.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %generation.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end12.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end12.cond.end.i.i_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 %29(ptr noundef %25) #8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end12.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ 0, %if.end12.cond.end.i.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 451) #8
  br label %do.body6.i.i

do.body6.i.i:                                     ; preds = %cond.end17.i.i.do.body6.i.i_crit_edge, %cond.end.i.i
  %gen.0.i.i = phi i32 [ %cond.i.i, %cond.end.i.i ], [ %cond18.i.i, %cond.end17.i.i.do.body6.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body6.i.i
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body6.i.i ]
  %30 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i.i, align 8
  %get.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get.i.i, align 4
  %add.i.i = add i32 %i.02.i.i, 8
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %i.02.i.i
  call void %33(ptr noundef %25, i32 noundef %add.i.i, ptr noundef %add.ptr.i.i, i32 noundef 1) #8
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv2
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %34 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config.i.i, align 8
  %generation10.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %generation10.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %generation10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %37, null
  br i1 %tobool11.not.i.i, label %for.end.i.i.cond.end17.i.i_crit_edge, label %cond.true12.i.i

for.end.i.i.cond.end17.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.i.i

cond.true12.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i.i = call i32 %37(ptr noundef %25) #8
  br label %cond.end17.i.i

cond.end17.i.i:                                   ; preds = %cond.true12.i.i, %for.end.i.i.cond.end17.i.i_crit_edge
  %cond18.i.i = phi i32 [ %call15.i.i, %cond.true12.i.i ], [ 0, %for.end.i.i.cond.end17.i.i_crit_edge ]
  %cmp20.not.i.i = icmp eq i32 %cond18.i.i, %gen.0.i.i
  br i1 %cmp20.not.i.i, label %for.cond.preheader, label %cond.end17.i.i.do.body6.i.i_crit_edge

cond.end17.i.i.do.body6.i.i_crit_edge:            ; preds = %cond.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6.i.i

for.cond.preheader:                               ; preds = %cond.end17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1449.not = icmp eq i32 %23, 0
  br i1 %cmp1449.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %bit.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %div42 = lshr i32 %bit.050, 3
  %arrayidx = getelementptr i8, ptr %call9.i.i, i32 %div42
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %39 to i32
  %rem = and i32 %bit.050, 7
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = and i32 %bit.050, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %bit.050, 5
  %add.ptr.i = getelementptr i32, ptr %bits, i32 %div2.i
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %41, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %bit.050, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %select)
  %cmp20 = icmp eq i32 %select, 17
  br i1 %cmp20, label %if.then22, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %idev = getelementptr inbounds %struct.virtio_input, ptr %vi, i32 0, i32 1
  %42 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idev, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 5
  %rem.i43 = and i32 %subsel, 31
  %shl.i44 = shl nuw i32 1, %rem.i43
  %div2.i45 = lshr i32 %subsel, 5
  %add.ptr.i46 = getelementptr i32, ptr %evbit, i32 %div2.i45
  %44 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i46, align 4
  %or.i47 = or i32 %45, %shl.i44
  store i32 %or.i47, ptr %add.ptr.i46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtinput_status(ptr nocapture noundef readonly %idev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = trunc i32 %type to i16
  %conv1 = trunc i32 %code to i16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %idev.i = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %3 = ptrtoint ptr %idev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %idev.i, align 4
  %mt.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %mt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mt.i, align 4
  %tobool.not.i = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %conv)
  %cmp.i = icmp eq i16 %conv, 4
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv1)
  %cmp4.i = icmp eq i16 %conv1, 5
  %or.cond48.i = and i1 %cmp4.i, %or.cond.i
  br i1 %or.cond48.i, label %entry.virtinput_send_status.exit_crit_edge, label %if.end.i

entry.virtinput_send_status.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtinput_send_status.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 8) #11
  %tobool6.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.virtinput_send_status.exit_crit_edge, label %if.end8.i

if.end.i.virtinput_send_status.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtinput_send_status.exit

if.end8.i:                                        ; preds = %if.end.i
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %call7.i.i.i, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv1) #8
  %code10.i = getelementptr inbounds %struct.virtio_input_event, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %code10.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %code10.i, align 2
  %12 = tail call i32 @llvm.bswap.i32(i32 %value) #8
  %value11.i = getelementptr inbounds %struct.virtio_input_event, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %value11.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value11.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 8) #8
  %lock.i = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 8
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %ready.i = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %ready.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ready.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not.i = icmp eq i8 %15, 0
  br i1 %tobool19.not.i, label %if.end25.thread.i, label %if.end25.i

if.end25.thread.i:                                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call16.i) #8
  br label %if.then29.i

if.end25.i:                                       ; preds = %if.end8.i
  %sts.i = getelementptr inbounds %struct.virtio_input, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %sts.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sts.i, align 4
  %call22.i = call i32 @virtqueue_add_outbuf(ptr noundef %17, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %call7.i.i.i, i32 noundef 2592) #8
  %18 = ptrtoint ptr %sts.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sts.i, align 4
  %call24.i = call zeroext i1 @virtqueue_kick(ptr noundef %19) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp27.not.i = icmp eq i32 %call22.i, 0
  br i1 %cmp27.not.i, label %if.end25.i.virtinput_send_status.exit_crit_edge, label %if.end25.i.if.then29.i_crit_edge

if.end25.i.if.then29.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29.i

if.end25.i.virtinput_send_status.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtinput_send_status.exit

if.then29.i:                                      ; preds = %if.end25.i.if.then29.i_crit_edge, %if.end25.thread.i
  %rc.051.i = phi i32 [ -19, %if.end25.thread.i ], [ %call22.i, %if.end25.i.if.then29.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %virtinput_send_status.exit

virtinput_send_status.exit:                       ; preds = %if.then29.i, %if.end25.i.virtinput_send_status.exit_crit_edge, %if.end.i.virtinput_send_status.exit_crit_edge, %entry.virtinput_send_status.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.virtinput_send_status.exit_crit_edge ], [ -12, %if.end.i.virtinput_send_status.exit_crit_edge ], [ %rc.051.i, %if.then29.i ], [ 0, %if.end25.i.virtinput_send_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtinput_fill_evt(ptr noundef %vi) unnamed_addr #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virtio_input, ptr %vi, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %evt = getelementptr inbounds %struct.virtio_input, ptr %vi, i32 0, i32 5
  %0 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %evt, align 4
  %call5 = tail call i32 @virtqueue_get_vring_size(ptr noundef %1) #8
  %2 = tail call i32 @llvm.umin.i32(i32 %call5, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp821.not = icmp eq i32 %2, 0
  br i1 %cmp821.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.virtio_input, ptr %vi, i32 0, i32 7, i32 %i.022
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %3 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %arrayidx, i32 noundef 8) #8
  %4 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %evt, align 4
  %call.i = call i32 @virtqueue_add_inbuf(ptr noundef %5, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef %arrayidx, i32 noundef 2592) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %evt, align 4
  %call11 = call zeroext i1 @virtqueue_kick(ptr noundef %7) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtinput_recv_events(ptr noundef %vq) #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !42
  %lock = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %ready = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ready, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %evt = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %evt, align 4
  %call539 = call ptr @virtqueue_get_buf(ptr noundef %8, ptr noundef nonnull %len) #8
  %cmp6.not40 = icmp eq ptr %call539, null
  br i1 %cmp6.not40, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %idev = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call542 = phi ptr [ %call539, %while.body.lr.ph ], [ %call5, %while.body.while.body_crit_edge ]
  %flags.041 = phi i32 [ %call2, %while.body.lr.ph ], [ %call20, %while.body.while.body_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.041) #8
  %9 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %idev, align 4
  %11 = ptrtoint ptr %call542 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %call542, align 4
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %conv9 = zext i16 %13 to i32
  %code = getelementptr inbounds %struct.virtio_input_event, ptr %call542, i32 0, i32 1
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %code, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv10 = zext i16 %16 to i32
  %value = getelementptr inbounds %struct.virtio_input_event, ptr %call542, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  call void @input_event(ptr noundef %10, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %19) #8
  %call20 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #8
  %20 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef nonnull %call542, i32 noundef 8) #8
  %21 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %evt, align 4
  %call.i = call i32 @virtqueue_add_inbuf(ptr noundef %22, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %call542, i32 noundef 2592) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #8
  %23 = ptrtoint ptr %evt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %evt, align 4
  %call5 = call ptr @virtqueue_get_buf(ptr noundef %24, ptr noundef nonnull %len) #8
  %cmp6.not = icmp eq ptr %call5, null
  br i1 %cmp6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %while.cond.preheader.while.end_crit_edge ], [ %call20, %while.body.while.end_crit_edge ]
  %call25 = call zeroext i1 @virtqueue_kick(ptr noundef %vq) #8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  %flags.1 = phi i32 [ %flags.0.lcssa, %while.end ], [ %call2, %entry.if.end_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtinput_recv_status(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !42
  %lock = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %sts = getelementptr inbounds %struct.virtio_input, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sts, align 4
  %call511 = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len) #8
  %cmp6.not12 = icmp eq ptr %call511, null
  br i1 %cmp6.not12, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call513 = phi ptr [ %call5, %while.body.while.body_crit_edge ], [ %call511, %entry.while.body_crit_edge ]
  call void @kfree(ptr noundef nonnull %call513) #8
  %7 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sts, align 4
  %call5 = call ptr @virtqueue_get_buf(ptr noundef %8, ptr noundef nonnull %len) #8
  %cmp6.not = icmp eq ptr %call5, null
  br i1 %cmp6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_virtio_input__235_409_virtio_input_driver_init6, !1, !"__initcall__kmod_virtio_input__235_409_virtio_input_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_input.c", i32 409, i32 1}
!2 = !{ptr @__exitcall_virtio_input_driver_exit, !1, !"__exitcall_virtio_input_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file236, !4, !"__UNIQUE_ID_file236", i1 false, i1 false}
!4 = !{!"../drivers/virtio/virtio_input.c", i32 412, i32 1}
!5 = !{ptr @__UNIQUE_ID_license237, !4, !"__UNIQUE_ID_license237", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description238, !7, !"__UNIQUE_ID_description238", i1 false, i1 false}
!7 = !{!"../drivers/virtio/virtio_input.c", i32 413, i32 1}
!8 = !{ptr @__UNIQUE_ID_author239, !9, !"__UNIQUE_ID_author239", i1 false, i1 false}
!9 = !{!"../drivers/virtio/virtio_input.c", i32 414, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/virtio/virtio_input.c", i32 396, i32 25}
!12 = !{ptr @virtio_input_driver, !13, !"virtio_input_driver", i1 false, i1 false}
!13 = !{!"../drivers/virtio/virtio_input.c", i32 395, i32 29}
!14 = !{ptr @id_table, !15, !"id_table", i1 false, i1 false}
!15 = !{!"../drivers/virtio/virtio_input.c", i32 390, i32 38}
!16 = !{ptr @features, !17, !"features", i1 false, i1 false}
!17 = !{!"../drivers/virtio/virtio_input.c", i32 387, i32 21}
!18 = !{ptr @virtinput_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/virtio/virtio_input.c", i32 234, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/virtio/virtio_input.c", i32 256, i32 4}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/virtio/virtio_input.c", i32 263, i32 3}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/virtio/virtio_input.c", i32 191, i32 40}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/virtio/virtio_input.c", i32 191, i32 50}
!29 = !{ptr @virtinput_init_vqs.names, !30, !"names", i1 false, i1 false}
!30 = !{!"../drivers/virtio/virtio_input.c", i32 191, i32 28}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/virtio_config.h", i32 451, i32 2}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2153848682, i64 2153849176, i64 2153848719, i64 2153848775, i64 2153848809, i64 2153848833, i64 2153848874, i64 2153848895, i64 2153848923, i64 2153848957}
!45 = !{i8 0, i8 2}
