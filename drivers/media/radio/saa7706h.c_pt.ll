; ModuleID = '/llk/IR_all_yes/drivers/media/radio/saa7706h.c_pt.bc'
source_filename = "../drivers/media/radio/saa7706h.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7706h_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_saa7706h__292_415_saa7706h_driver_init6 = internal global ptr @saa7706h_driver_init, section ".initcall6.init", align 4
@saa7706h_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa7706h_probe, ptr @saa7706h_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa7706h_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa7706h_driver_exit = internal global ptr @saa7706h_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [51 x i8] c"saa7706h.description=SAA7706H Car Radio DSP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [36 x i8] c"saa7706h.author=Mocean Laboratories\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [43 x i8] c"saa7706h.file=drivers/media/radio/saa7706h\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [24 x i8] c"saa7706h.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"saa7706h\00", [23 x i8] zeroinitializer }, align 32
@saa7706h_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa7706h\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@saa7706h_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: chip found @ 0x%02x (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"saa7706h_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/radio/saa7706h.c\00", [33 x i8] zeroinitializer }, align 32
@saa7706h_probe._entry_ptr = internal global ptr @saa7706h_probe._entry, section ".printk_index", align 4
@empty_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@saa7706h_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"saa7706h:354:(&state->hdl)->_lock\00", [62 x i8] zeroinitializer }, align 32
@saa7706h_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @saa7706h_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@saa7706h_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: Unknown DSP1 ROM code version: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7706h_probe._entry_ptr.7 = internal global ptr @saa7706h_probe._entry.5, section ".printk_index", align 4
@saa7706h_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013saa7706h: Failed to probe: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7706h_probe._entry_ptr.10 = internal global ptr @saa7706h_probe._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"saa7706h_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 406, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 408, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"saa7706h_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 399, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 345, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"empty_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 327, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 354, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"saa7706h_ctrl_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 323, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 367, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [34 x i8] c"../drivers/media/radio/saa7706h.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 382, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_saa7706h_driver_exit, ptr @__initcall__kmod_saa7706h__292_415_saa7706h_driver_init6, ptr @saa7706h_driver_exit, ptr @saa7706h_probe._entry, ptr @saa7706h_probe._entry.5, ptr @saa7706h_probe._entry.8, ptr @saa7706h_probe._entry_ptr, ptr @saa7706h_probe._entry_ptr.10, ptr @saa7706h_probe._entry_ptr.7, ptr @saa7706h_driver, ptr @.str, ptr @saa7706h_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @empty_ops, ptr @saa7706h_probe._key, ptr @.str.4, ptr @saa7706h_ctrl_ops, ptr @.str.6, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7706h_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7706h_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7706h_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7706h_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7706h_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7706h_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7706h_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7706h_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa7706h_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa7706h_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @saa7706h_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7706h_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf.i.i = alloca [4 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %regaddr.i = alloca [2 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name6 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 384) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call7.i.i, ptr noundef %client, ptr noundef nonnull @empty_ops) #6
  %hdl = getelementptr inbounds %struct.saa7706h_state, ptr %call7.i.i, i32 0, i32 1
  %call14 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @saa7706h_probe._key, ptr noundef nonnull @.str.4) #6
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @saa7706h_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %error = getelementptr inbounds %struct.saa7706h_state, ptr %call7.i.i, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  br i1 %tobool19.not, label %if.end21, label %if.end11.err42_crit_edge

if.end11.err42_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err42

if.end21:                                         ; preds = %if.end11
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %buf.i, align 1, !annotation !46
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regaddr.i) #6
  %25 = getelementptr inbounds [2 x i8], ptr %regaddr.i, i32 0, i32 1
  %26 = ptrtoint ptr %regaddr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 9, ptr %regaddr.i, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 127, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %28 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %addr4.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %addr4.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr4.i, align 2
  %32 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %28, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %regaddr.i, ptr %buf5.i, align 4
  %arrayinit.element6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %36 = load i16, ptr %addr4.i, align 2
  %37 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %arrayinit.element6.i, align 4
  %flags9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %38 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags9.i, align 2
  %len10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %39 = ptrtoint ptr %len10.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %len10.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %40 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i, ptr %buf11.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %41 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i77 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i77)
  %cmp.i.i = icmp eq i32 %call.i.i77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp1.i.i = icmp sgt i32 %call.i.i77, 0
  %spec.select.i.i = select i1 %cmp1.i.i, i32 -5, i32 %call.i.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool.not1.i = icmp eq i32 %spec.select.i.i, 0
  %tobool.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not1.i
  br i1 %tobool.not.i, label %saa7706h_get_reg16.exit, label %saa7706h_get_reg16.exit.thread

saa7706h_get_reg16.exit.thread:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regaddr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %err42

saa7706h_get_reg16.exit:                          ; preds = %if.end21
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %buf.i, align 1
  %conv15.i = zext i8 %44 to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 8
  %45 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %23, align 1
  %conv17.i = zext i8 %46 to i32
  %or.i = or i32 %shl.i, %conv17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regaddr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1639, i32 %or.i)
  %cmp27.not = icmp eq i32 %or.i, 1639
  br i1 %cmp27.not, label %saa7706h_get_reg16.exit.if.end37_crit_edge, label %do.end32

saa7706h_get_reg16.exit.if.end37_crit_edge:       ; preds = %saa7706h_get_reg16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end32:                                         ; preds = %saa7706h_get_reg16.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name34 = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 9
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name34, i32 noundef %or.i) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end32, %saa7706h_get_reg16.exit.if.end37_crit_edge
  %muted = getelementptr inbounds %struct.saa7706h_state, ptr %call7.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %muted to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %muted, align 4
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #6
  %50 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %51 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %52 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 15, ptr %buf.i.i, align 1
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %50, align 1
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %51, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -66, ptr %52, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %49, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp1.i.i.i = icmp sgt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp1.i.i.i, i32 -5, i32 %call.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %tobool.not.i7882 = icmp eq i32 %spec.select.i.i.i, 0
  %tobool.not.i78 = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i7882
  br i1 %tobool.not.i78, label %saa7706h_mute.exit.thread, label %if.end37.err42_crit_edge

if.end37.err42_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %err42

saa7706h_mute.exit.thread:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %muted to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %muted, align 4
  br label %cleanup

err42:                                            ; preds = %if.end37.err42_crit_edge, %saa7706h_get_reg16.exit.thread, %if.end11.err42_crit_edge
  %err.0 = phi i32 [ %19, %if.end11.err42_crit_edge ], [ %spec.select.i.i, %saa7706h_get_reg16.exit.thread ], [ %spec.select.i.i.i, %if.end37.err42_crit_edge ]
  call void @v4l2_device_unregister_subdev(ptr noundef nonnull %call7.i.i) #6
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %err.0) #9
  br label %cleanup

cleanup:                                          ; preds = %err42, %saa7706h_mute.exit.thread, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err42 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %saa7706h_mute.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7706h_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %buf.i.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #6
  %4 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 15, ptr %buf.i.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %5, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -66, ptr %6, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #6
  %11 = and i32 %call.i.i.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.then.i, label %entry.saa7706h_mute.exit_crit_edge

entry.saa7706h_mute.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7706h_mute.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %muted.i = getelementptr inbounds %struct.saa7706h_state, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %muted.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %muted.i, align 4
  br label %saa7706h_mute.exit

saa7706h_mute.exit:                               ; preds = %if.then.i, %entry.saa7706h_mute.exit_crit_edge
  call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  %hdl = getelementptr inbounds %struct.saa7706h_state, ptr %1, i32 0, i32 1
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7706h_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %buf.i.i342.i = alloca [5 x i8], align 1
  %buf.i.i331.i = alloca [4 x i8], align 1
  %buf.i.i320.i = alloca [4 x i8], align 1
  %buf.i.i309.i = alloca [4 x i8], align 1
  %buf.i.i298.i = alloca [5 x i8], align 1
  %buf.i.i287.i = alloca [5 x i8], align 1
  %buf.i.i276.i = alloca [5 x i8], align 1
  %buf.i.i265.i = alloca [5 x i8], align 1
  %buf.i.i254.i = alloca [5 x i8], align 1
  %buf.i.i243.i = alloca [5 x i8], align 4
  %buf.i.i232.i = alloca [5 x i8], align 1
  %buf.i.i221.i = alloca [5 x i8], align 1
  %buf.i.i210.i = alloca [4 x i8], align 1
  %buf.i.i199.i = alloca [5 x i8], align 1
  %buf.i.i188.i = alloca [5 x i8], align 1
  %buf.i.i177.i = alloca [5 x i8], align 1
  %buf.i.i166.i = alloca [5 x i8], align 1
  %buf.i.i155.i = alloca [5 x i8], align 1
  %buf.i.i144.i = alloca [5 x i8], align 1
  %buf.i.i133.i = alloca [5 x i8], align 1
  %buf.i.i122.i = alloca [5 x i8], align 1
  %buf.i.i111.i = alloca [5 x i8], align 1
  %buf.i.i100.i = alloca [5 x i8], align 1
  %buf.i.i89.i = alloca [5 x i8], align 1
  %buf.i.i78.i = alloca [5 x i8], align 1
  %buf.i.i68.i = alloca [5 x i8], align 1
  %buf.i.i57.i = alloca [4 x i8], align 1
  %buf.i.i.i = alloca [4 x i8], align 1
  %buf.i.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963785, i32 %3)
  %cond = icmp eq i32 %3, 9963785
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %dev_priv.i.i.i.i = getelementptr i8, ptr %1, i32 -44
  %6 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #6
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %buf.i.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %8, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %9, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -66, ptr %10, align 1
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp1.i.i.i = icmp sgt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp1.i.i.i, i32 -5, i32 %call.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %tobool.not.i9 = icmp eq i32 %spec.select.i.i.i, 0
  %tobool.not.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i9
  br i1 %tobool.not.i, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i.i) #6
  %15 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %16 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %17 = getelementptr inbounds [4 x i8], ptr %buf.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 15, ptr %buf.i.i.i, align 1
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %15, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %16, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -66, ptr %17, align 1
  %call.i.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buf.i.i.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp1.i.i.i.i = icmp sgt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp1.i.i.i.i, i32 -5, i32 %call.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i.i) #6
  call void @msleep(i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i.i)
  %tobool.not.i58570.i = icmp eq i32 %spec.select.i.i.i.i, 0
  %tobool.not.i58.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not.i58570.i
  br i1 %tobool.not.i58.i, label %cond.false.i65.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i65.i:                                 ; preds = %if.end
  %22 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i57.i) #6
  %24 = getelementptr inbounds [4 x i8], ptr %buf.i.i57.i, i32 0, i32 1
  %25 = getelementptr inbounds [4 x i8], ptr %buf.i.i57.i, i32 0, i32 2
  %26 = getelementptr inbounds [4 x i8], ptr %buf.i.i57.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 15, ptr %buf.i.i57.i, align 1
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %24, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %25, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 62, ptr %26, align 1
  %call.i.i.i.i60.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buf.i.i57.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i60.i)
  %cmp.i.i.i61.i = icmp eq i32 %call.i.i.i.i60.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i60.i)
  %cmp1.i.i.i62.i = icmp sgt i32 %call.i.i.i.i60.i, 0
  %spec.select.i.i.i63.i = select i1 %cmp1.i.i.i62.i, i32 -5, i32 %call.i.i.i.i60.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i57.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i63.i)
  %tobool.not.i69.i = icmp eq i32 %spec.select.i.i.i63.i, 0
  %or.cond.i = select i1 %cmp.i.i.i61.i, i1 true, i1 %tobool.not.i69.i
  br i1 %or.cond.i, label %cond.false.i76.i, label %cond.false.i65.i.cleanup_crit_edge

cond.false.i65.i.cleanup_crit_edge:               ; preds = %cond.false.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i76.i:                                 ; preds = %cond.false.i65.i
  %31 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i68.i) #6
  %33 = getelementptr inbounds [5 x i8], ptr %buf.i.i68.i, i32 0, i32 1
  %34 = getelementptr inbounds [5 x i8], ptr %buf.i.i68.i, i32 0, i32 2
  %35 = getelementptr inbounds [5 x i8], ptr %buf.i.i68.i, i32 0, i32 3
  %36 = getelementptr inbounds [5 x i8], ptr %buf.i.i68.i, i32 0, i32 4
  %37 = ptrtoint ptr %buf.i.i68.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 31, ptr %buf.i.i68.i, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -16, ptr %33, align 1
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %34, align 1
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %35, align 1
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %36, align 1
  %call.i.i.i.i71.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buf.i.i68.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i71.i)
  %cmp.i.i.i72.i = icmp eq i32 %call.i.i.i.i71.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i71.i)
  %cmp1.i.i.i73.i = icmp sgt i32 %call.i.i.i.i71.i, 0
  %spec.select.i.i.i74.i = select i1 %cmp1.i.i.i73.i, i32 -5, i32 %call.i.i.i.i71.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i68.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i74.i)
  %tobool.not.i79.i = icmp eq i32 %spec.select.i.i.i74.i, 0
  %or.cond544.i = select i1 %cmp.i.i.i72.i, i1 true, i1 %tobool.not.i79.i
  br i1 %or.cond544.i, label %cond.false.i86.i, label %cond.false.i76.i.cleanup_crit_edge

cond.false.i76.i.cleanup_crit_edge:               ; preds = %cond.false.i76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i86.i:                                 ; preds = %cond.false.i76.i
  %42 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i78.i) #6
  %44 = getelementptr inbounds [5 x i8], ptr %buf.i.i78.i, i32 0, i32 1
  %45 = getelementptr inbounds [5 x i8], ptr %buf.i.i78.i, i32 0, i32 2
  %46 = getelementptr inbounds [5 x i8], ptr %buf.i.i78.i, i32 0, i32 3
  %47 = getelementptr inbounds [5 x i8], ptr %buf.i.i78.i, i32 0, i32 4
  %48 = ptrtoint ptr %buf.i.i78.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 31, ptr %buf.i.i78.i, align 1
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -13, ptr %44, align 1
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 4, ptr %45, align 1
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %46, align 1
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 34, ptr %47, align 1
  %call.i.i.i.i81.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef nonnull %buf.i.i78.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i81.i)
  %cmp.i.i.i82.i = icmp eq i32 %call.i.i.i.i81.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i81.i)
  %cmp1.i.i.i83.i = icmp sgt i32 %call.i.i.i.i81.i, 0
  %spec.select.i.i.i84.i = select i1 %cmp1.i.i.i83.i, i32 -5, i32 %call.i.i.i.i81.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i78.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i84.i)
  %tobool.not.i90.i = icmp eq i32 %spec.select.i.i.i84.i, 0
  %or.cond545.i = select i1 %cmp.i.i.i82.i, i1 true, i1 %tobool.not.i90.i
  br i1 %or.cond545.i, label %cond.false.i97.i, label %cond.false.i86.i.cleanup_crit_edge

cond.false.i86.i.cleanup_crit_edge:               ; preds = %cond.false.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i97.i:                                 ; preds = %cond.false.i86.i
  %53 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i89.i) #6
  %55 = getelementptr inbounds [5 x i8], ptr %buf.i.i89.i, i32 0, i32 1
  %56 = getelementptr inbounds [5 x i8], ptr %buf.i.i89.i, i32 0, i32 2
  %57 = getelementptr inbounds [5 x i8], ptr %buf.i.i89.i, i32 0, i32 3
  %58 = getelementptr inbounds [5 x i8], ptr %buf.i.i89.i, i32 0, i32 4
  %59 = ptrtoint ptr %buf.i.i89.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 31, ptr %buf.i.i89.i, align 1
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -12, ptr %55, align 1
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %56, align 1
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %57, align 1
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %58, align 1
  %call.i.i.i.i92.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %54, ptr noundef nonnull %buf.i.i89.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i92.i)
  %cmp.i.i.i93.i = icmp eq i32 %call.i.i.i.i92.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i92.i)
  %cmp1.i.i.i94.i = icmp sgt i32 %call.i.i.i.i92.i, 0
  %spec.select.i.i.i95.i = select i1 %cmp1.i.i.i94.i, i32 -5, i32 %call.i.i.i.i92.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i89.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i95.i)
  %tobool.not.i101.i = icmp eq i32 %spec.select.i.i.i95.i, 0
  %or.cond546.i = select i1 %cmp.i.i.i93.i, i1 true, i1 %tobool.not.i101.i
  br i1 %or.cond546.i, label %cond.false.i108.i, label %cond.false.i97.i.cleanup_crit_edge

cond.false.i97.i.cleanup_crit_edge:               ; preds = %cond.false.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i108.i:                                ; preds = %cond.false.i97.i
  %64 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i100.i) #6
  %66 = getelementptr inbounds [5 x i8], ptr %buf.i.i100.i, i32 0, i32 1
  %67 = getelementptr inbounds [5 x i8], ptr %buf.i.i100.i, i32 0, i32 2
  %68 = getelementptr inbounds [5 x i8], ptr %buf.i.i100.i, i32 0, i32 3
  %69 = getelementptr inbounds [5 x i8], ptr %buf.i.i100.i, i32 0, i32 4
  %70 = ptrtoint ptr %buf.i.i100.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 31, ptr %buf.i.i100.i, align 1
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -10, ptr %66, align 1
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %67, align 1
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 64, ptr %68, align 1
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -128, ptr %69, align 1
  %call.i.i.i.i103.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %65, ptr noundef nonnull %buf.i.i100.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i103.i)
  %cmp.i.i.i104.i = icmp eq i32 %call.i.i.i.i103.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i103.i)
  %cmp1.i.i.i105.i = icmp sgt i32 %call.i.i.i.i103.i, 0
  %spec.select.i.i.i106.i = select i1 %cmp1.i.i.i105.i, i32 -5, i32 %call.i.i.i.i103.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i100.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i106.i)
  %tobool.not.i112.i = icmp eq i32 %spec.select.i.i.i106.i, 0
  %or.cond547.i = select i1 %cmp.i.i.i104.i, i1 true, i1 %tobool.not.i112.i
  br i1 %or.cond547.i, label %cond.false.i119.i, label %cond.false.i108.i.cleanup_crit_edge

cond.false.i108.i.cleanup_crit_edge:              ; preds = %cond.false.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i119.i:                                ; preds = %cond.false.i108.i
  %75 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i111.i) #6
  %77 = getelementptr inbounds [5 x i8], ptr %buf.i.i111.i, i32 0, i32 1
  %78 = getelementptr inbounds [5 x i8], ptr %buf.i.i111.i, i32 0, i32 2
  %79 = getelementptr inbounds [5 x i8], ptr %buf.i.i111.i, i32 0, i32 3
  %80 = getelementptr inbounds [5 x i8], ptr %buf.i.i111.i, i32 0, i32 4
  %81 = ptrtoint ptr %buf.i.i111.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 31, ptr %buf.i.i111.i, align 1
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -9, ptr %77, align 1
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 32, ptr %78, align 1
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %79, align 1
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -128, ptr %80, align 1
  %call.i.i.i.i114.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %76, ptr noundef nonnull %buf.i.i111.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i114.i)
  %cmp.i.i.i115.i = icmp eq i32 %call.i.i.i.i114.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i114.i)
  %cmp1.i.i.i116.i = icmp sgt i32 %call.i.i.i.i114.i, 0
  %spec.select.i.i.i117.i = select i1 %cmp1.i.i.i116.i, i32 -5, i32 %call.i.i.i.i114.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i111.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i117.i)
  %tobool.not.i123.i = icmp eq i32 %spec.select.i.i.i117.i, 0
  %or.cond548.i = select i1 %cmp.i.i.i115.i, i1 true, i1 %tobool.not.i123.i
  br i1 %or.cond548.i, label %cond.false.i130.i, label %cond.false.i119.i.cleanup_crit_edge

cond.false.i119.i.cleanup_crit_edge:              ; preds = %cond.false.i119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i130.i:                                ; preds = %cond.false.i119.i
  %86 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i122.i) #6
  %88 = getelementptr inbounds [5 x i8], ptr %buf.i.i122.i, i32 0, i32 1
  %89 = getelementptr inbounds [5 x i8], ptr %buf.i.i122.i, i32 0, i32 2
  %90 = getelementptr inbounds [5 x i8], ptr %buf.i.i122.i, i32 0, i32 3
  %91 = getelementptr inbounds [5 x i8], ptr %buf.i.i122.i, i32 0, i32 4
  %92 = ptrtoint ptr %buf.i.i122.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 31, ptr %buf.i.i122.i, align 1
  %93 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -8, ptr %88, align 1
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -12, ptr %89, align 1
  %95 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -54, ptr %90, align 1
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -19, ptr %91, align 1
  %call.i.i.i.i125.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %87, ptr noundef nonnull %buf.i.i122.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i125.i)
  %cmp.i.i.i126.i = icmp eq i32 %call.i.i.i.i125.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i125.i)
  %cmp1.i.i.i127.i = icmp sgt i32 %call.i.i.i.i125.i, 0
  %spec.select.i.i.i128.i = select i1 %cmp1.i.i.i127.i, i32 -5, i32 %call.i.i.i.i125.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i122.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i128.i)
  %tobool.not.i134.i = icmp eq i32 %spec.select.i.i.i128.i, 0
  %or.cond549.i = select i1 %cmp.i.i.i126.i, i1 true, i1 %tobool.not.i134.i
  br i1 %or.cond549.i, label %cond.false.i141.i, label %cond.false.i130.i.cleanup_crit_edge

cond.false.i130.i.cleanup_crit_edge:              ; preds = %cond.false.i130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i141.i:                                ; preds = %cond.false.i130.i
  %97 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i133.i) #6
  %99 = getelementptr inbounds [5 x i8], ptr %buf.i.i133.i, i32 0, i32 1
  %100 = getelementptr inbounds [5 x i8], ptr %buf.i.i133.i, i32 0, i32 2
  %101 = getelementptr inbounds [5 x i8], ptr %buf.i.i133.i, i32 0, i32 3
  %102 = getelementptr inbounds [5 x i8], ptr %buf.i.i133.i, i32 0, i32 4
  %103 = ptrtoint ptr %buf.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 31, ptr %buf.i.i133.i, align 1
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -7, ptr %99, align 1
  %105 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 18, ptr %100, align 1
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 67, ptr %101, align 1
  %107 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 52, ptr %102, align 1
  %call.i.i.i.i136.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %98, ptr noundef nonnull %buf.i.i133.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i136.i)
  %cmp.i.i.i137.i = icmp eq i32 %call.i.i.i.i136.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i136.i)
  %cmp1.i.i.i138.i = icmp sgt i32 %call.i.i.i.i136.i, 0
  %spec.select.i.i.i139.i = select i1 %cmp1.i.i.i138.i, i32 -5, i32 %call.i.i.i.i136.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i133.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i139.i)
  %tobool.not.i145.i = icmp eq i32 %spec.select.i.i.i139.i, 0
  %or.cond550.i = select i1 %cmp.i.i.i137.i, i1 true, i1 %tobool.not.i145.i
  br i1 %or.cond550.i, label %cond.false.i152.i, label %cond.false.i141.i.cleanup_crit_edge

cond.false.i141.i.cleanup_crit_edge:              ; preds = %cond.false.i141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i152.i:                                ; preds = %cond.false.i141.i
  %108 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i144.i) #6
  %110 = getelementptr inbounds [5 x i8], ptr %buf.i.i144.i, i32 0, i32 1
  %111 = getelementptr inbounds [5 x i8], ptr %buf.i.i144.i, i32 0, i32 2
  %112 = getelementptr inbounds [5 x i8], ptr %buf.i.i144.i, i32 0, i32 3
  %113 = getelementptr inbounds [5 x i8], ptr %buf.i.i144.i, i32 0, i32 4
  %114 = ptrtoint ptr %buf.i.i144.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 31, ptr %buf.i.i144.i, align 1
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -6, ptr %110, align 1
  %116 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %111, align 1
  %117 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 74, ptr %112, align 1
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 26, ptr %113, align 1
  %call.i.i.i.i147.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %109, ptr noundef nonnull %buf.i.i144.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i147.i)
  %cmp.i.i.i148.i = icmp eq i32 %call.i.i.i.i147.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i147.i)
  %cmp1.i.i.i149.i = icmp sgt i32 %call.i.i.i.i147.i, 0
  %spec.select.i.i.i150.i = select i1 %cmp1.i.i.i149.i, i32 -5, i32 %call.i.i.i.i147.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i144.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i150.i)
  %tobool.not.i156.i = icmp eq i32 %spec.select.i.i.i150.i, 0
  %or.cond551.i = select i1 %cmp.i.i.i148.i, i1 true, i1 %tobool.not.i156.i
  br i1 %or.cond551.i, label %cond.false.i163.i, label %cond.false.i152.i.cleanup_crit_edge

cond.false.i152.i.cleanup_crit_edge:              ; preds = %cond.false.i152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i163.i:                                ; preds = %cond.false.i152.i
  %119 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i155.i) #6
  %121 = getelementptr inbounds [5 x i8], ptr %buf.i.i155.i, i32 0, i32 1
  %122 = getelementptr inbounds [5 x i8], ptr %buf.i.i155.i, i32 0, i32 2
  %123 = getelementptr inbounds [5 x i8], ptr %buf.i.i155.i, i32 0, i32 3
  %124 = getelementptr inbounds [5 x i8], ptr %buf.i.i155.i, i32 0, i32 4
  %125 = ptrtoint ptr %buf.i.i155.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 31, ptr %buf.i.i155.i, align 1
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -5, ptr %121, align 1
  %127 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %122, align 1
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 113, ptr %123, align 1
  %129 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -57, ptr %124, align 1
  %call.i.i.i.i158.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %120, ptr noundef nonnull %buf.i.i155.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i158.i)
  %cmp.i.i.i159.i = icmp eq i32 %call.i.i.i.i158.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i158.i)
  %cmp1.i.i.i160.i = icmp sgt i32 %call.i.i.i.i158.i, 0
  %spec.select.i.i.i161.i = select i1 %cmp1.i.i.i160.i, i32 -5, i32 %call.i.i.i.i158.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i155.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i161.i)
  %tobool.not.i167.i = icmp eq i32 %spec.select.i.i.i161.i, 0
  %or.cond552.i = select i1 %cmp.i.i.i159.i, i1 true, i1 %tobool.not.i167.i
  br i1 %or.cond552.i, label %cond.false.i174.i, label %cond.false.i163.i.cleanup_crit_edge

cond.false.i163.i.cleanup_crit_edge:              ; preds = %cond.false.i163.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i174.i:                                ; preds = %cond.false.i163.i
  %130 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i166.i) #6
  %132 = getelementptr inbounds [5 x i8], ptr %buf.i.i166.i, i32 0, i32 1
  %133 = getelementptr inbounds [5 x i8], ptr %buf.i.i166.i, i32 0, i32 2
  %134 = getelementptr inbounds [5 x i8], ptr %buf.i.i166.i, i32 0, i32 3
  %135 = getelementptr inbounds [5 x i8], ptr %buf.i.i166.i, i32 0, i32 4
  %136 = ptrtoint ptr %buf.i.i166.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 31, ptr %buf.i.i166.i, align 1
  %137 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 -4, ptr %132, align 1
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 14, ptr %133, align 1
  %139 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 34, ptr %134, align 1
  %140 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -1, ptr %135, align 1
  %call.i.i.i.i169.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %131, ptr noundef nonnull %buf.i.i166.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i169.i)
  %cmp.i.i.i170.i = icmp eq i32 %call.i.i.i.i169.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i169.i)
  %cmp1.i.i.i171.i = icmp sgt i32 %call.i.i.i.i169.i, 0
  %spec.select.i.i.i172.i = select i1 %cmp1.i.i.i171.i, i32 -5, i32 %call.i.i.i.i169.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i166.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i172.i)
  %tobool.not.i178.i = icmp eq i32 %spec.select.i.i.i172.i, 0
  %or.cond553.i = select i1 %cmp.i.i.i170.i, i1 true, i1 %tobool.not.i178.i
  br i1 %or.cond553.i, label %cond.false.i185.i, label %cond.false.i174.i.cleanup_crit_edge

cond.false.i174.i.cleanup_crit_edge:              ; preds = %cond.false.i174.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i185.i:                                ; preds = %cond.false.i174.i
  %141 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i177.i) #6
  %143 = getelementptr inbounds [5 x i8], ptr %buf.i.i177.i, i32 0, i32 1
  %144 = getelementptr inbounds [5 x i8], ptr %buf.i.i177.i, i32 0, i32 2
  %145 = getelementptr inbounds [5 x i8], ptr %buf.i.i177.i, i32 0, i32 3
  %146 = getelementptr inbounds [5 x i8], ptr %buf.i.i177.i, i32 0, i32 4
  %147 = ptrtoint ptr %buf.i.i177.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 31, ptr %buf.i.i177.i, align 1
  %148 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -3, ptr %143, align 1
  %149 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %144, align 1
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 31, ptr %145, align 1
  %151 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -8, ptr %146, align 1
  %call.i.i.i.i180.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %142, ptr noundef nonnull %buf.i.i177.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i180.i)
  %cmp.i.i.i181.i = icmp eq i32 %call.i.i.i.i180.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i180.i)
  %cmp1.i.i.i182.i = icmp sgt i32 %call.i.i.i.i180.i, 0
  %spec.select.i.i.i183.i = select i1 %cmp1.i.i.i182.i, i32 -5, i32 %call.i.i.i.i180.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i177.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i183.i)
  %tobool.not.i189.i = icmp eq i32 %spec.select.i.i.i183.i, 0
  %or.cond554.i = select i1 %cmp.i.i.i181.i, i1 true, i1 %tobool.not.i189.i
  br i1 %or.cond554.i, label %cond.false.i196.i, label %cond.false.i185.i.cleanup_crit_edge

cond.false.i185.i.cleanup_crit_edge:              ; preds = %cond.false.i185.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i196.i:                                ; preds = %cond.false.i185.i
  %152 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i188.i) #6
  %154 = getelementptr inbounds [5 x i8], ptr %buf.i.i188.i, i32 0, i32 1
  %155 = getelementptr inbounds [5 x i8], ptr %buf.i.i188.i, i32 0, i32 2
  %156 = getelementptr inbounds [5 x i8], ptr %buf.i.i188.i, i32 0, i32 3
  %157 = getelementptr inbounds [5 x i8], ptr %buf.i.i188.i, i32 0, i32 4
  %158 = ptrtoint ptr %buf.i.i188.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 31, ptr %buf.i.i188.i, align 1
  %159 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -2, ptr %154, align 1
  %160 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 8, ptr %155, align 1
  %161 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %156, align 1
  %162 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 3, ptr %157, align 1
  %call.i.i.i.i191.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %153, ptr noundef nonnull %buf.i.i188.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i191.i)
  %cmp.i.i.i192.i = icmp eq i32 %call.i.i.i.i191.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i191.i)
  %cmp1.i.i.i193.i = icmp sgt i32 %call.i.i.i.i191.i, 0
  %spec.select.i.i.i194.i = select i1 %cmp1.i.i.i193.i, i32 -5, i32 %call.i.i.i.i191.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i188.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i194.i)
  %tobool.not.i200.i = icmp eq i32 %spec.select.i.i.i194.i, 0
  %or.cond555.i = select i1 %cmp.i.i.i192.i, i1 true, i1 %tobool.not.i200.i
  br i1 %or.cond555.i, label %cond.false.i207.i, label %cond.false.i196.i.cleanup_crit_edge

cond.false.i196.i.cleanup_crit_edge:              ; preds = %cond.false.i196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i207.i:                                ; preds = %cond.false.i196.i
  %163 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i199.i) #6
  %165 = getelementptr inbounds [5 x i8], ptr %buf.i.i199.i, i32 0, i32 1
  %166 = getelementptr inbounds [5 x i8], ptr %buf.i.i199.i, i32 0, i32 2
  %167 = getelementptr inbounds [5 x i8], ptr %buf.i.i199.i, i32 0, i32 3
  %168 = getelementptr inbounds [5 x i8], ptr %buf.i.i199.i, i32 0, i32 4
  %169 = ptrtoint ptr %buf.i.i199.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 31, ptr %buf.i.i199.i, align 1
  %170 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -1, ptr %165, align 1
  %171 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %166, align 1
  %172 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %167, align 1
  %173 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 4, ptr %168, align 1
  %call.i.i.i.i202.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %164, ptr noundef nonnull %buf.i.i199.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i202.i)
  %cmp.i.i.i203.i = icmp eq i32 %call.i.i.i.i202.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i202.i)
  %cmp1.i.i.i204.i = icmp sgt i32 %call.i.i.i.i202.i, 0
  %spec.select.i.i.i205.i = select i1 %cmp1.i.i.i204.i, i32 -5, i32 %call.i.i.i.i202.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i199.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i205.i)
  %tobool.not.i211.i = icmp eq i32 %spec.select.i.i.i205.i, 0
  %or.cond556.i = select i1 %cmp.i.i.i203.i, i1 true, i1 %tobool.not.i211.i
  br i1 %or.cond556.i, label %cond.false.i218.i, label %cond.false.i207.i.cleanup_crit_edge

cond.false.i207.i.cleanup_crit_edge:              ; preds = %cond.false.i207.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i218.i:                                ; preds = %cond.false.i207.i
  %174 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i210.i) #6
  %176 = getelementptr inbounds [4 x i8], ptr %buf.i.i210.i, i32 0, i32 1
  %177 = getelementptr inbounds [4 x i8], ptr %buf.i.i210.i, i32 0, i32 2
  %178 = getelementptr inbounds [4 x i8], ptr %buf.i.i210.i, i32 0, i32 3
  %179 = ptrtoint ptr %buf.i.i210.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 8, ptr %buf.i.i210.i, align 1
  %180 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %176, align 1
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 12, ptr %177, align 1
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 108, ptr %178, align 1
  %call.i.i.i.i213.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %175, ptr noundef nonnull %buf.i.i210.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i213.i)
  %cmp.i.i.i214.i = icmp eq i32 %call.i.i.i.i213.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i213.i)
  %cmp1.i.i.i215.i = icmp sgt i32 %call.i.i.i.i213.i, 0
  %spec.select.i.i.i216.i = select i1 %cmp1.i.i.i215.i, i32 -5, i32 %call.i.i.i.i213.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i210.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i216.i)
  %tobool.not.i222.i = icmp eq i32 %spec.select.i.i.i216.i, 0
  %or.cond557.i = select i1 %cmp.i.i.i214.i, i1 true, i1 %tobool.not.i222.i
  br i1 %or.cond557.i, label %cond.false.i229.i, label %cond.false.i218.i.cleanup_crit_edge

cond.false.i218.i.cleanup_crit_edge:              ; preds = %cond.false.i218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i229.i:                                ; preds = %cond.false.i218.i
  %183 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i221.i) #6
  %185 = getelementptr inbounds [5 x i8], ptr %buf.i.i221.i, i32 0, i32 1
  %186 = getelementptr inbounds [5 x i8], ptr %buf.i.i221.i, i32 0, i32 2
  %187 = getelementptr inbounds [5 x i8], ptr %buf.i.i221.i, i32 0, i32 3
  %188 = getelementptr inbounds [5 x i8], ptr %buf.i.i221.i, i32 0, i32 4
  %189 = ptrtoint ptr %buf.i.i221.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 16, ptr %buf.i.i221.i, align 1
  %190 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %185, align 1
  %191 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 0, ptr %186, align 1
  %192 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 11, ptr %187, align 1
  %193 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 75, ptr %188, align 1
  %call.i.i.i.i224.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %184, ptr noundef nonnull %buf.i.i221.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i224.i)
  %cmp.i.i.i225.i = icmp eq i32 %call.i.i.i.i224.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i224.i)
  %cmp1.i.i.i226.i = icmp sgt i32 %call.i.i.i.i224.i, 0
  %spec.select.i.i.i227.i = select i1 %cmp1.i.i.i226.i, i32 -5, i32 %call.i.i.i.i224.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i221.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i227.i)
  %tobool.not.i233.i = icmp eq i32 %spec.select.i.i.i227.i, 0
  %or.cond558.i = select i1 %cmp.i.i.i225.i, i1 true, i1 %tobool.not.i233.i
  br i1 %or.cond558.i, label %cond.false.i240.i, label %cond.false.i229.i.cleanup_crit_edge

cond.false.i229.i.cleanup_crit_edge:              ; preds = %cond.false.i229.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i240.i:                                ; preds = %cond.false.i229.i
  %194 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i232.i) #6
  %196 = getelementptr inbounds [5 x i8], ptr %buf.i.i232.i, i32 0, i32 1
  %197 = getelementptr inbounds [5 x i8], ptr %buf.i.i232.i, i32 0, i32 2
  %198 = getelementptr inbounds [5 x i8], ptr %buf.i.i232.i, i32 0, i32 3
  %199 = getelementptr inbounds [5 x i8], ptr %buf.i.i232.i, i32 0, i32 4
  %200 = ptrtoint ptr %buf.i.i232.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %buf.i.i232.i, align 1
  %201 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %196, align 1
  %202 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %197, align 1
  %203 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 6, ptr %198, align 1
  %204 = ptrtoint ptr %199 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %199, align 1
  %call.i.i.i.i235.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %195, ptr noundef nonnull %buf.i.i232.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i235.i)
  %cmp.i.i.i236.i = icmp eq i32 %call.i.i.i.i235.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i235.i)
  %cmp1.i.i.i237.i = icmp sgt i32 %call.i.i.i.i235.i, 0
  %spec.select.i.i.i238.i = select i1 %cmp1.i.i.i237.i, i32 -5, i32 %call.i.i.i.i235.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i232.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i238.i)
  %tobool.not.i244.i = icmp eq i32 %spec.select.i.i.i238.i, 0
  %or.cond559.i = select i1 %cmp.i.i.i236.i, i1 true, i1 %tobool.not.i244.i
  br i1 %or.cond559.i, label %cond.false.i251.i, label %cond.false.i240.i.cleanup_crit_edge

cond.false.i240.i.cleanup_crit_edge:              ; preds = %cond.false.i240.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i251.i:                                ; preds = %cond.false.i240.i
  %205 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i243.i) #6
  %207 = getelementptr inbounds [5 x i8], ptr %buf.i.i243.i, i32 0, i32 4
  %208 = ptrtoint ptr %buf.i.i243.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %buf.i.i243.i, align 4
  %209 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -64, ptr %207, align 4
  %call.i.i.i.i246.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %206, ptr noundef nonnull %buf.i.i243.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i246.i)
  %cmp.i.i.i247.i = icmp eq i32 %call.i.i.i.i246.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i246.i)
  %cmp1.i.i.i248.i = icmp sgt i32 %call.i.i.i.i246.i, 0
  %spec.select.i.i.i249.i = select i1 %cmp1.i.i.i248.i, i32 -5, i32 %call.i.i.i.i246.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i243.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i249.i)
  %tobool.not.i255.i = icmp eq i32 %spec.select.i.i.i249.i, 0
  %or.cond560.i = select i1 %cmp.i.i.i247.i, i1 true, i1 %tobool.not.i255.i
  br i1 %or.cond560.i, label %cond.false.i262.i, label %cond.false.i251.i.cleanup_crit_edge

cond.false.i251.i.cleanup_crit_edge:              ; preds = %cond.false.i251.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i262.i:                                ; preds = %cond.false.i251.i
  %210 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i254.i) #6
  %212 = getelementptr inbounds [5 x i8], ptr %buf.i.i254.i, i32 0, i32 1
  %213 = getelementptr inbounds [5 x i8], ptr %buf.i.i254.i, i32 0, i32 2
  %214 = getelementptr inbounds [5 x i8], ptr %buf.i.i254.i, i32 0, i32 3
  %215 = getelementptr inbounds [5 x i8], ptr %buf.i.i254.i, i32 0, i32 4
  %216 = ptrtoint ptr %buf.i.i254.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 17, ptr %buf.i.i254.i, align 1
  %217 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 62, ptr %212, align 1
  %218 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %213, align 1
  %219 = ptrtoint ptr %214 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 8, ptr %214, align 1
  %220 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 25, ptr %215, align 1
  %call.i.i.i.i257.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %211, ptr noundef nonnull %buf.i.i254.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i257.i)
  %cmp.i.i.i258.i = icmp eq i32 %call.i.i.i.i257.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i257.i)
  %cmp1.i.i.i259.i = icmp sgt i32 %call.i.i.i.i257.i, 0
  %spec.select.i.i.i260.i = select i1 %cmp1.i.i.i259.i, i32 -5, i32 %call.i.i.i.i257.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i254.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i260.i)
  %tobool.not.i266.i = icmp eq i32 %spec.select.i.i.i260.i, 0
  %or.cond561.i = select i1 %cmp.i.i.i258.i, i1 true, i1 %tobool.not.i266.i
  br i1 %or.cond561.i, label %cond.false.i273.i, label %cond.false.i262.i.cleanup_crit_edge

cond.false.i262.i.cleanup_crit_edge:              ; preds = %cond.false.i262.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i273.i:                                ; preds = %cond.false.i262.i
  %221 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i265.i) #6
  %223 = getelementptr inbounds [5 x i8], ptr %buf.i.i265.i, i32 0, i32 1
  %224 = getelementptr inbounds [5 x i8], ptr %buf.i.i265.i, i32 0, i32 2
  %225 = getelementptr inbounds [5 x i8], ptr %buf.i.i265.i, i32 0, i32 3
  %226 = getelementptr inbounds [5 x i8], ptr %buf.i.i265.i, i32 0, i32 4
  %227 = ptrtoint ptr %buf.i.i265.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 17, ptr %buf.i.i265.i, align 1
  %228 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 62, ptr %223, align 1
  %229 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %224, align 1
  %230 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 8, ptr %225, align 1
  %231 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 90, ptr %226, align 1
  %call.i.i.i.i268.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %222, ptr noundef nonnull %buf.i.i265.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i268.i)
  %cmp.i.i.i269.i = icmp eq i32 %call.i.i.i.i268.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i268.i)
  %cmp1.i.i.i270.i = icmp sgt i32 %call.i.i.i.i268.i, 0
  %spec.select.i.i.i271.i = select i1 %cmp1.i.i.i270.i, i32 -5, i32 %call.i.i.i.i268.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i265.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i271.i)
  %tobool.not.i277.i = icmp eq i32 %spec.select.i.i.i271.i, 0
  %or.cond562.i = select i1 %cmp.i.i.i269.i, i1 true, i1 %tobool.not.i277.i
  br i1 %or.cond562.i, label %cond.false.i284.i, label %cond.false.i273.i.cleanup_crit_edge

cond.false.i273.i.cleanup_crit_edge:              ; preds = %cond.false.i273.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i284.i:                                ; preds = %cond.false.i273.i
  %232 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i276.i) #6
  %234 = getelementptr inbounds [5 x i8], ptr %buf.i.i276.i, i32 0, i32 1
  %235 = getelementptr inbounds [5 x i8], ptr %buf.i.i276.i, i32 0, i32 2
  %236 = getelementptr inbounds [5 x i8], ptr %buf.i.i276.i, i32 0, i32 3
  %237 = getelementptr inbounds [5 x i8], ptr %buf.i.i276.i, i32 0, i32 4
  %238 = ptrtoint ptr %buf.i.i276.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 17, ptr %buf.i.i276.i, align 1
  %239 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 74, ptr %234, align 1
  %240 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 127, ptr %235, align 1
  %241 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 -1, ptr %236, align 1
  %242 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 -1, ptr %237, align 1
  %call.i.i.i.i279.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %233, ptr noundef nonnull %buf.i.i276.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i279.i)
  %cmp.i.i.i280.i = icmp eq i32 %call.i.i.i.i279.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i279.i)
  %cmp1.i.i.i281.i = icmp sgt i32 %call.i.i.i.i279.i, 0
  %spec.select.i.i.i282.i = select i1 %cmp1.i.i.i281.i, i32 -5, i32 %call.i.i.i.i279.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i276.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i282.i)
  %tobool.not.i288.i = icmp eq i32 %spec.select.i.i.i282.i, 0
  %or.cond563.i = select i1 %cmp.i.i.i280.i, i1 true, i1 %tobool.not.i288.i
  br i1 %or.cond563.i, label %cond.false.i295.i, label %cond.false.i284.i.cleanup_crit_edge

cond.false.i284.i.cleanup_crit_edge:              ; preds = %cond.false.i284.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i295.i:                                ; preds = %cond.false.i284.i
  %243 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i287.i) #6
  %245 = getelementptr inbounds [5 x i8], ptr %buf.i.i287.i, i32 0, i32 1
  %246 = getelementptr inbounds [5 x i8], ptr %buf.i.i287.i, i32 0, i32 2
  %247 = getelementptr inbounds [5 x i8], ptr %buf.i.i287.i, i32 0, i32 3
  %248 = getelementptr inbounds [5 x i8], ptr %buf.i.i287.i, i32 0, i32 4
  %249 = ptrtoint ptr %buf.i.i287.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 17, ptr %buf.i.i287.i, align 1
  %250 = ptrtoint ptr %245 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 -7, ptr %245, align 1
  %251 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 32, ptr %246, align 1
  %252 = ptrtoint ptr %247 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 0, ptr %247, align 1
  %253 = ptrtoint ptr %248 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 -53, ptr %248, align 1
  %call.i.i.i.i290.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %244, ptr noundef nonnull %buf.i.i287.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i290.i)
  %cmp.i.i.i291.i = icmp eq i32 %call.i.i.i.i290.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i290.i)
  %cmp1.i.i.i292.i = icmp sgt i32 %call.i.i.i.i290.i, 0
  %spec.select.i.i.i293.i = select i1 %cmp1.i.i.i292.i, i32 -5, i32 %call.i.i.i.i290.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i287.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i293.i)
  %tobool.not.i299.i = icmp eq i32 %spec.select.i.i.i293.i, 0
  %or.cond564.i = select i1 %cmp.i.i.i291.i, i1 true, i1 %tobool.not.i299.i
  br i1 %or.cond564.i, label %cond.false.i306.i, label %cond.false.i295.i.cleanup_crit_edge

cond.false.i295.i.cleanup_crit_edge:              ; preds = %cond.false.i295.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i306.i:                                ; preds = %cond.false.i295.i
  %254 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i298.i) #6
  %256 = getelementptr inbounds [5 x i8], ptr %buf.i.i298.i, i32 0, i32 1
  %257 = getelementptr inbounds [5 x i8], ptr %buf.i.i298.i, i32 0, i32 2
  %258 = getelementptr inbounds [5 x i8], ptr %buf.i.i298.i, i32 0, i32 3
  %259 = getelementptr inbounds [5 x i8], ptr %buf.i.i298.i, i32 0, i32 4
  %260 = ptrtoint ptr %buf.i.i298.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 17, ptr %buf.i.i298.i, align 1
  %261 = ptrtoint ptr %256 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 -5, ptr %256, align 1
  %262 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 32, ptr %257, align 1
  %263 = ptrtoint ptr %258 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %258, align 1
  %264 = ptrtoint ptr %259 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 -53, ptr %259, align 1
  %call.i.i.i.i301.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %255, ptr noundef nonnull %buf.i.i298.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i301.i)
  %cmp.i.i.i302.i = icmp eq i32 %call.i.i.i.i301.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i301.i)
  %cmp1.i.i.i303.i = icmp sgt i32 %call.i.i.i.i301.i, 0
  %spec.select.i.i.i304.i = select i1 %cmp1.i.i.i303.i, i32 -5, i32 %call.i.i.i.i301.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i298.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i304.i)
  %tobool.not.i310.i = icmp eq i32 %spec.select.i.i.i304.i, 0
  %or.cond565.i = select i1 %cmp.i.i.i302.i, i1 true, i1 %tobool.not.i310.i
  br i1 %or.cond565.i, label %cond.false.i317.i, label %cond.false.i306.i.cleanup_crit_edge

cond.false.i306.i.cleanup_crit_edge:              ; preds = %cond.false.i306.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i317.i:                                ; preds = %cond.false.i306.i
  %265 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i309.i) #6
  %267 = getelementptr inbounds [4 x i8], ptr %buf.i.i309.i, i32 0, i32 1
  %268 = getelementptr inbounds [4 x i8], ptr %buf.i.i309.i, i32 0, i32 2
  %269 = getelementptr inbounds [4 x i8], ptr %buf.i.i309.i, i32 0, i32 3
  %270 = ptrtoint ptr %buf.i.i309.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 33, ptr %buf.i.i309.i, align 1
  %271 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 42, ptr %267, align 1
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 15, ptr %268, align 1
  %273 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -128, ptr %269, align 1
  %call.i.i.i.i312.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %266, ptr noundef nonnull %buf.i.i309.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i312.i)
  %cmp.i.i.i313.i = icmp eq i32 %call.i.i.i.i312.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i312.i)
  %cmp1.i.i.i314.i = icmp sgt i32 %call.i.i.i.i312.i, 0
  %spec.select.i.i.i315.i = select i1 %cmp1.i.i.i314.i, i32 -5, i32 %call.i.i.i.i312.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i309.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i315.i)
  %tobool.not.i321.i = icmp eq i32 %spec.select.i.i.i315.i, 0
  %or.cond566.i = select i1 %cmp.i.i.i313.i, i1 true, i1 %tobool.not.i321.i
  br i1 %or.cond566.i, label %cond.false.i328.i, label %cond.false.i317.i.cleanup_crit_edge

cond.false.i317.i.cleanup_crit_edge:              ; preds = %cond.false.i317.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i328.i:                                ; preds = %cond.false.i317.i
  %274 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i320.i) #6
  %276 = getelementptr inbounds [4 x i8], ptr %buf.i.i320.i, i32 0, i32 1
  %277 = getelementptr inbounds [4 x i8], ptr %buf.i.i320.i, i32 0, i32 2
  %278 = getelementptr inbounds [4 x i8], ptr %buf.i.i320.i, i32 0, i32 3
  %279 = ptrtoint ptr %buf.i.i320.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 33, ptr %buf.i.i320.i, align 1
  %280 = ptrtoint ptr %276 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 43, ptr %276, align 1
  %281 = ptrtoint ptr %277 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 8, ptr %277, align 1
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %278, align 1
  %call.i.i.i.i323.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %275, ptr noundef nonnull %buf.i.i320.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i323.i)
  %cmp.i.i.i324.i = icmp eq i32 %call.i.i.i.i323.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i323.i)
  %cmp1.i.i.i325.i = icmp sgt i32 %call.i.i.i.i323.i, 0
  %spec.select.i.i.i326.i = select i1 %cmp1.i.i.i325.i, i32 -5, i32 %call.i.i.i.i323.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i320.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i326.i)
  %tobool.not.i332.i = icmp eq i32 %spec.select.i.i.i326.i, 0
  %or.cond567.i = select i1 %cmp.i.i.i324.i, i1 true, i1 %tobool.not.i332.i
  br i1 %or.cond567.i, label %cond.false.i339.i, label %cond.false.i328.i.cleanup_crit_edge

cond.false.i328.i.cleanup_crit_edge:              ; preds = %cond.false.i328.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i339.i:                                ; preds = %cond.false.i328.i
  %283 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i331.i) #6
  %285 = getelementptr inbounds [4 x i8], ptr %buf.i.i331.i, i32 0, i32 1
  %286 = getelementptr inbounds [4 x i8], ptr %buf.i.i331.i, i32 0, i32 2
  %287 = getelementptr inbounds [4 x i8], ptr %buf.i.i331.i, i32 0, i32 3
  %288 = ptrtoint ptr %buf.i.i331.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 33, ptr %buf.i.i331.i, align 1
  %289 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 44, ptr %285, align 1
  %290 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 8, ptr %286, align 1
  %291 = ptrtoint ptr %287 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %287, align 1
  %call.i.i.i.i334.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %284, ptr noundef nonnull %buf.i.i331.i, i32 noundef 4, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i334.i)
  %cmp.i.i.i335.i = icmp eq i32 %call.i.i.i.i334.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i334.i)
  %cmp1.i.i.i336.i = icmp sgt i32 %call.i.i.i.i334.i, 0
  %spec.select.i.i.i337.i = select i1 %cmp1.i.i.i336.i, i32 -5, i32 %call.i.i.i.i334.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i331.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i337.i)
  %tobool.not.i343.i = icmp eq i32 %spec.select.i.i.i337.i, 0
  %or.cond568.i = select i1 %cmp.i.i.i335.i, i1 true, i1 %tobool.not.i343.i
  br i1 %or.cond568.i, label %cond.false.i350.i, label %cond.false.i339.i.cleanup_crit_edge

cond.false.i339.i.cleanup_crit_edge:              ; preds = %cond.false.i339.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i350.i:                                ; preds = %cond.false.i339.i
  %292 = ptrtoint ptr %dev_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev_priv.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i.i342.i) #6
  %294 = getelementptr inbounds [5 x i8], ptr %buf.i.i342.i, i32 0, i32 1
  %295 = getelementptr inbounds [5 x i8], ptr %buf.i.i342.i, i32 0, i32 2
  %296 = getelementptr inbounds [5 x i8], ptr %buf.i.i342.i, i32 0, i32 3
  %297 = getelementptr inbounds [5 x i8], ptr %buf.i.i342.i, i32 0, i32 4
  %298 = ptrtoint ptr %buf.i.i342.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 17, ptr %buf.i.i342.i, align 1
  %299 = ptrtoint ptr %294 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 62, ptr %294, align 1
  %300 = ptrtoint ptr %295 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 0, ptr %295, align 1
  %301 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 9, ptr %296, align 1
  %302 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 5, ptr %297, align 1
  %call.i.i.i.i345.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %293, ptr noundef nonnull %buf.i.i342.i, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i345.i)
  %cmp.i.i.i346.i = icmp eq i32 %call.i.i.i.i345.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i345.i)
  %cmp1.i.i.i347.i = icmp sgt i32 %call.i.i.i.i345.i, 0
  %spec.select.i.i.i348.i = select i1 %cmp1.i.i.i347.i, i32 -5, i32 %call.i.i.i.i345.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i.i342.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i348.i)
  %tobool.not.i6 = icmp eq i32 %spec.select.i.i.i348.i, 0
  %or.cond569.i = select i1 %cmp.i.i.i346.i, i1 true, i1 %tobool.not.i6
  br i1 %or.cond569.i, label %cond.false.i350.i.cleanup.sink.split_crit_edge, label %cond.false.i350.i.cleanup_crit_edge

cond.false.i350.i.cleanup_crit_edge:              ; preds = %cond.false.i350.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i350.i.cleanup.sink.split_crit_edge:   ; preds = %cond.false.i350.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.false.i350.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then.cleanup.sink.split_crit_edge ], [ 0, %cond.false.i350.i.cleanup.sink.split_crit_edge ]
  %muted.i7 = getelementptr i8, ptr %1, i32 184
  %303 = ptrtoint ptr %muted.i7 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %.sink, ptr %muted.i7, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.false.i350.i.cleanup_crit_edge, %cond.false.i339.i.cleanup_crit_edge, %cond.false.i328.i.cleanup_crit_edge, %cond.false.i317.i.cleanup_crit_edge, %cond.false.i306.i.cleanup_crit_edge, %cond.false.i295.i.cleanup_crit_edge, %cond.false.i284.i.cleanup_crit_edge, %cond.false.i273.i.cleanup_crit_edge, %cond.false.i262.i.cleanup_crit_edge, %cond.false.i251.i.cleanup_crit_edge, %cond.false.i240.i.cleanup_crit_edge, %cond.false.i229.i.cleanup_crit_edge, %cond.false.i218.i.cleanup_crit_edge, %cond.false.i207.i.cleanup_crit_edge, %cond.false.i196.i.cleanup_crit_edge, %cond.false.i185.i.cleanup_crit_edge, %cond.false.i174.i.cleanup_crit_edge, %cond.false.i163.i.cleanup_crit_edge, %cond.false.i152.i.cleanup_crit_edge, %cond.false.i141.i.cleanup_crit_edge, %cond.false.i130.i.cleanup_crit_edge, %cond.false.i119.i.cleanup_crit_edge, %cond.false.i108.i.cleanup_crit_edge, %cond.false.i97.i.cleanup_crit_edge, %cond.false.i86.i.cleanup_crit_edge, %cond.false.i76.i.cleanup_crit_edge, %cond.false.i65.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select.i.i.i, %if.then.cleanup_crit_edge ], [ %spec.select.i.i.i.i, %if.end.cleanup_crit_edge ], [ %spec.select.i.i.i63.i, %cond.false.i65.i.cleanup_crit_edge ], [ %spec.select.i.i.i74.i, %cond.false.i76.i.cleanup_crit_edge ], [ %spec.select.i.i.i84.i, %cond.false.i86.i.cleanup_crit_edge ], [ %spec.select.i.i.i95.i, %cond.false.i97.i.cleanup_crit_edge ], [ %spec.select.i.i.i106.i, %cond.false.i108.i.cleanup_crit_edge ], [ %spec.select.i.i.i117.i, %cond.false.i119.i.cleanup_crit_edge ], [ %spec.select.i.i.i128.i, %cond.false.i130.i.cleanup_crit_edge ], [ %spec.select.i.i.i139.i, %cond.false.i141.i.cleanup_crit_edge ], [ %spec.select.i.i.i150.i, %cond.false.i152.i.cleanup_crit_edge ], [ %spec.select.i.i.i161.i, %cond.false.i163.i.cleanup_crit_edge ], [ %spec.select.i.i.i172.i, %cond.false.i174.i.cleanup_crit_edge ], [ %spec.select.i.i.i183.i, %cond.false.i185.i.cleanup_crit_edge ], [ %spec.select.i.i.i194.i, %cond.false.i196.i.cleanup_crit_edge ], [ %spec.select.i.i.i205.i, %cond.false.i207.i.cleanup_crit_edge ], [ %spec.select.i.i.i216.i, %cond.false.i218.i.cleanup_crit_edge ], [ %spec.select.i.i.i227.i, %cond.false.i229.i.cleanup_crit_edge ], [ %spec.select.i.i.i238.i, %cond.false.i240.i.cleanup_crit_edge ], [ %spec.select.i.i.i249.i, %cond.false.i251.i.cleanup_crit_edge ], [ %spec.select.i.i.i260.i, %cond.false.i262.i.cleanup_crit_edge ], [ %spec.select.i.i.i271.i, %cond.false.i273.i.cleanup_crit_edge ], [ %spec.select.i.i.i282.i, %cond.false.i284.i.cleanup_crit_edge ], [ %spec.select.i.i.i293.i, %cond.false.i295.i.cleanup_crit_edge ], [ %spec.select.i.i.i304.i, %cond.false.i306.i.cleanup_crit_edge ], [ %spec.select.i.i.i315.i, %cond.false.i317.i.cleanup_crit_edge ], [ %spec.select.i.i.i326.i, %cond.false.i328.i.cleanup_crit_edge ], [ %spec.select.i.i.i337.i, %cond.false.i339.i.cleanup_crit_edge ], [ %spec.select.i.i.i348.i, %cond.false.i350.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_saa7706h__292_415_saa7706h_driver_init6, !1, !"__initcall__kmod_saa7706h__292_415_saa7706h_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/saa7706h.c", i32 415, i32 1}
!2 = !{ptr @__exitcall_saa7706h_driver_exit, !1, !"__exitcall_saa7706h_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/saa7706h.c", i32 417, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/saa7706h.c", i32 418, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/saa7706h.c", i32 419, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/saa7706h.c", i32 408, i32 11}
!12 = !{ptr @saa7706h_driver, !13, !"saa7706h_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/radio/saa7706h.c", i32 406, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/radio/saa7706h.c", i32 345, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @saa7706h_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @saa7706h_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @saa7706h_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/media/radio/saa7706h.c", i32 354, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/saa7706h.c", i32 367, i32 3}
!25 = !{ptr @saa7706h_probe._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @saa7706h_probe._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/saa7706h.c", i32 382, i32 2}
!29 = !{ptr @saa7706h_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @saa7706h_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @empty_ops, !32, !"empty_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/radio/saa7706h.c", i32 327, i32 37}
!33 = !{ptr @saa7706h_ctrl_ops, !34, !"saa7706h_ctrl_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/radio/saa7706h.c", i32 323, i32 35}
!35 = !{ptr @saa7706h_id, !36, !"saa7706h_id", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/saa7706h.c", i32 399, i32 35}
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
