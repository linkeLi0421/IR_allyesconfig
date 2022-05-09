; ModuleID = '/llk/IR_all_yes/drivers/media/usb/go7007/go7007-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/go7007/go7007-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.go7007 = type { ptr, [32 x i8], ptr, i32, i32, i32, [64 x i8], %struct.video_device, ptr, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.mutex, i32, ptr, ptr, [16 x i8], i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, [4 x %struct.anon.97], [1624 x i8], [216 x i8], i32, %struct.mutex, %struct.vb2_queue, i32, i32, i16, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, %struct.i2c_adapter, ptr, ptr, i32, %struct.wait_queue_head, i16, i16 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.83 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.80], %struct.media_entity_enum, i32 }
%struct.anon.80 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.97 = type { i8, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.go7007_hpi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@go7007_adap_templ = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @go7007_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"WIS GO7007SB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@go7007_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"go7007-i2c: error: i2c_add_adapter failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"go7007_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/go7007/go7007-i2c.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@go7007_i2c_init._entry_ptr = internal global ptr @go7007_i2c_init._entry, section ".printk_index", align 4
@go7007_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @go7007_i2c_master_xfer, ptr null, ptr @go7007_smbus_xfer, ptr null, ptr @go7007_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@adlink_mpg24_i2c_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @adlink_mpg24_i2c_lock, i64 52), ptr getelementptr (i8, ptr @adlink_mpg24_i2c_lock, i64 52) }, ptr @adlink_mpg24_i2c_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@go7007_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"go7007-i2c: I2C adapter is hung\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"go7007_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@go7007_i2c_xfer._entry_ptr = internal global ptr @go7007_i2c_xfer._entry, section ".printk_index", align 4
@go7007_i2c_xfer._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@go7007_i2c_xfer._entry_ptr.8 = internal global ptr @go7007_i2c_xfer._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adlink_mpg24_i2c_lock.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adlink_mpg24_i2c_lock\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"go7007_adap_templ\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 192, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 205, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"go7007_algo\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 186, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"adlink_mpg24_i2c_lock\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 74, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [41 x i8] c"../drivers/media/usb/go7007/go7007-i2c.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 36, i32 8 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @go7007_i2c_init._entry, ptr @go7007_i2c_init._entry_ptr, ptr @go7007_i2c_xfer._entry, ptr @go7007_i2c_xfer._entry.7, ptr @go7007_i2c_xfer._entry_ptr, ptr @go7007_i2c_xfer._entry_ptr.8, ptr @go7007_adap_templ, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @go7007_algo, ptr @adlink_mpg24_i2c_lock, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_adap_templ to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adlink_mpg24_i2c_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_i2c_xfer._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @go7007_i2c_init(ptr noundef %go) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adapter = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 62
  %0 = call ptr @memcpy(ptr %i2c_adapter, ptr @go7007_adap_templ, i32 1360)
  %1 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %go, align 8
  %parent = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 62, i32 9, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 62, i32 9, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %go, ptr %driver_data.i.i, align 4
  %call = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #8
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_i2c_master_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp135 = icmp sgt i32 %num, 0
  br i1 %cmp135, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0136 = phi i32 [ %inc94, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0136
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0136, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %for.body.cleanup_crit_edge [
    i16 2, label %if.then
    i16 3, label %if.then55
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %i.0136, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp3 = icmp eq i32 %add, %num
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp11.not = icmp eq i16 %6, %8
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0136, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %lor.lhs.false16, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %flags19 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %12 = ptrtoint ptr %flags19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags19, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool22.not = icmp eq i16 %14, 0
  br i1 %tobool22.not, label %lor.lhs.false16.cleanup_crit_edge, label %lor.lhs.false23

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %len26 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %15 = ptrtoint ptr %len26 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len26, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp28.not = icmp eq i16 %16, 1
  br i1 %cmp28.not, label %if.end, label %lor.lhs.false23.cleanup_crit_edge

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false23
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0136, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv35 = zext i8 %20 to i16
  %shl = shl nuw i16 %conv35, 8
  %arrayidx38 = getelementptr i8, ptr %18, i32 1
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %22 to i16
  %or = or i16 %shl, %conv39
  %buf43 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %23 = ptrtoint ptr %buf43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf43, align 4
  %call45 = tail call fastcc i32 @go7007_i2c_xfer(ptr noundef %1, i16 noundef zeroext %6, i32 noundef 1, i16 noundef zeroext %or, i32 noundef 1, ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then55:                                        ; preds = %for.body
  %flags57 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0136, i32 1
  %25 = ptrtoint ptr %flags57 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags57, align 2
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool60.not = icmp eq i16 %27, 0
  br i1 %tobool60.not, label %if.end69, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.then55
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 4
  %buf73 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0136, i32 3
  %30 = ptrtoint ptr %buf73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf73, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv75 = zext i8 %33 to i16
  %shl76 = shl nuw i16 %conv75, 8
  %arrayidx79 = getelementptr i8, ptr %31, i32 1
  %34 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %35 to i16
  %or81 = or i16 %shl76, %conv80
  %arrayidx85 = getelementptr i8, ptr %31, i32 2
  %call86 = tail call fastcc i32 @go7007_i2c_xfer(ptr noundef %1, i16 noundef zeroext %29, i32 noundef 0, i16 noundef zeroext %or81, i32 noundef 1, ptr noundef %arrayidx85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end69.cleanup_crit_edge, label %if.end69.for.inc_crit_edge

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.end69.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %i.1 = phi i32 [ %i.0136, %if.end69.for.inc_crit_edge ], [ %add, %if.end.for.inc_crit_edge ]
  %inc94 = add i32 %i.1, 1
  %cmp = icmp slt i32 %inc94, %num
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then55.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %entry.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ], [ -5, %for.body.cleanup_crit_edge ], [ -5, %if.end69.cleanup_crit_edge ], [ -5, %if.then55.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.then.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %lor.lhs.false13.cleanup_crit_edge ], [ -5, %lor.lhs.false16.cleanup_crit_edge ], [ -5, %lor.lhs.false23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_smbus_xfer(ptr nocapture noundef readonly %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp.not = icmp eq i32 %size, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp1 = icmp eq i8 %read_write, 1
  %conv2 = zext i1 %cmp1 to i32
  %conv3 = zext i8 %command to i16
  %2 = and i16 %flags, -28672
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %call5 = tail call fastcc i32 @go7007_i2c_xfer(ptr noundef %1, i16 noundef zeroext %addr, i32 noundef %conv2, i16 noundef zeroext %conv3, i32 noundef %cond, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_functionality(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1572864
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @go7007_i2c_xfer(ptr noundef %go, i16 noundef zeroext %addr, i32 noundef %read, i16 noundef zeroext %command, i32 noundef %flags, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !33
  %status = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 20
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_lock = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #5
  %board_id = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 3
  %3 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %cmp1 = icmp eq i32 %4, 12
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @adlink_mpg24_i2c_lock, i32 noundef 0) #5
  %hpi_ops = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 63
  %5 = ptrtoint ptr %hpi_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hpi_ops, align 8
  %write_interrupt = getelementptr inbounds %struct.go7007_hpi_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_interrupt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_interrupt, align 4
  %call = tail call i32 %8(ptr noundef %go, i32 noundef 48258, i32 noundef 32) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call5 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.i2c_done_crit_edge, label %if.end8

if.end3.i2c_done_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %11 = and i16 %10, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.end8.if.end14_crit_edge, label %if.end10

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10:                                         ; preds = %if.end8
  call void @msleep(i32 noundef 100) #5
  %call5.1 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %cmp6.1 = icmp slt i32 %call5.1, 0
  br i1 %cmp6.1, label %if.end10.i2c_done_crit_edge, label %if.end8.1

if.end10.i2c_done_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.1:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 2
  %14 = and i16 %13, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.1 = icmp eq i16 %14, 0
  br i1 %tobool.not.1, label %if.end8.1.if.end14_crit_edge, label %if.end10.1

if.end8.1.if.end14_crit_edge:                     ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.1:                                       ; preds = %if.end8.1
  call void @msleep(i32 noundef 100) #5
  %call5.2 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %cmp6.2 = icmp slt i32 %call5.2, 0
  br i1 %cmp6.2, label %if.end10.1.i2c_done_crit_edge, label %if.end8.2

if.end10.1.i2c_done_crit_edge:                    ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.2:                                        ; preds = %if.end10.1
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val, align 2
  %17 = and i16 %16, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.2 = icmp eq i16 %17, 0
  br i1 %tobool.not.2, label %if.end8.2.if.end14_crit_edge, label %if.end10.2

if.end8.2.if.end14_crit_edge:                     ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.2:                                       ; preds = %if.end8.2
  call void @msleep(i32 noundef 100) #5
  %call5.3 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %cmp6.3 = icmp slt i32 %call5.3, 0
  br i1 %cmp6.3, label %if.end10.2.i2c_done_crit_edge, label %if.end8.3

if.end10.2.i2c_done_crit_edge:                    ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.3:                                        ; preds = %if.end10.2
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val, align 2
  %20 = and i16 %19, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.3 = icmp eq i16 %20, 0
  br i1 %tobool.not.3, label %if.end8.3.if.end14_crit_edge, label %if.end10.3

if.end8.3.if.end14_crit_edge:                     ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.3:                                       ; preds = %if.end8.3
  call void @msleep(i32 noundef 100) #5
  %call5.4 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %cmp6.4 = icmp slt i32 %call5.4, 0
  br i1 %cmp6.4, label %if.end10.3.i2c_done_crit_edge, label %if.end8.4

if.end10.3.i2c_done_crit_edge:                    ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.4:                                        ; preds = %if.end10.3
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val, align 2
  %23 = and i16 %22, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.4 = icmp eq i16 %23, 0
  br i1 %tobool.not.4, label %if.end8.4.if.end14_crit_edge, label %if.end10.4

if.end8.4.if.end14_crit_edge:                     ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.4:                                       ; preds = %if.end8.4
  call void @msleep(i32 noundef 100) #5
  %call5.5 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %cmp6.5 = icmp slt i32 %call5.5, 0
  br i1 %cmp6.5, label %if.end10.4.i2c_done_crit_edge, label %if.end8.5

if.end10.4.i2c_done_crit_edge:                    ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.5:                                        ; preds = %if.end10.4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %26 = and i16 %25, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.5 = icmp eq i16 %26, 0
  br i1 %tobool.not.5, label %if.end8.5.if.end14_crit_edge, label %if.end10.5

if.end8.5.if.end14_crit_edge:                     ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.5:                                       ; preds = %if.end8.5
  call void @msleep(i32 noundef 100) #5
  %call5.6 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %cmp6.6 = icmp slt i32 %call5.6, 0
  br i1 %cmp6.6, label %if.end10.5.i2c_done_crit_edge, label %if.end8.6

if.end10.5.i2c_done_crit_edge:                    ; preds = %if.end10.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.6:                                        ; preds = %if.end10.5
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %val, align 2
  %29 = and i16 %28, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.6 = icmp eq i16 %29, 0
  br i1 %tobool.not.6, label %if.end8.6.if.end14_crit_edge, label %if.end10.6

if.end8.6.if.end14_crit_edge:                     ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.6:                                       ; preds = %if.end8.6
  call void @msleep(i32 noundef 100) #5
  %call5.7 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %cmp6.7 = icmp slt i32 %call5.7, 0
  br i1 %cmp6.7, label %if.end10.6.i2c_done_crit_edge, label %if.end8.7

if.end10.6.i2c_done_crit_edge:                    ; preds = %if.end10.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.7:                                        ; preds = %if.end10.6
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %val, align 2
  %32 = and i16 %31, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.7 = icmp eq i16 %32, 0
  br i1 %tobool.not.7, label %if.end8.7.if.end14_crit_edge, label %if.end10.7

if.end8.7.if.end14_crit_edge:                     ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.7:                                       ; preds = %if.end8.7
  call void @msleep(i32 noundef 100) #5
  %call5.8 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %cmp6.8 = icmp slt i32 %call5.8, 0
  br i1 %cmp6.8, label %if.end10.7.i2c_done_crit_edge, label %if.end8.8

if.end10.7.i2c_done_crit_edge:                    ; preds = %if.end10.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.8:                                        ; preds = %if.end10.7
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %val, align 2
  %35 = and i16 %34, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.8 = icmp eq i16 %35, 0
  br i1 %tobool.not.8, label %if.end8.8.if.end14_crit_edge, label %if.end10.8

if.end8.8.if.end14_crit_edge:                     ; preds = %if.end8.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end10.8:                                       ; preds = %if.end8.8
  call void @msleep(i32 noundef 100) #5
  %call5.9 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.9)
  %cmp6.9 = icmp slt i32 %call5.9, 0
  br i1 %cmp6.9, label %if.end10.8.i2c_done_crit_edge, label %if.end8.9

if.end10.8.i2c_done_crit_edge:                    ; preds = %if.end10.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end8.9:                                        ; preds = %if.end10.8
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %val, align 2
  %38 = and i16 %37, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.9 = icmp eq i16 %38, 0
  br i1 %tobool.not.9, label %if.end8.9.if.end14_crit_edge, label %do.end

if.end8.9.if.end14_crit_edge:                     ; preds = %if.end8.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end:                                           ; preds = %if.end8.9
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 100) #5
  %39 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %go, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.5) #8
  br label %i2c_done

if.end14:                                         ; preds = %if.end8.9.if.end14_crit_edge, %if.end8.8.if.end14_crit_edge, %if.end8.7.if.end14_crit_edge, %if.end8.6.if.end14_crit_edge, %if.end8.5.if.end14_crit_edge, %if.end8.4.if.end14_crit_edge, %if.end8.3.if.end14_crit_edge, %if.end8.2.if.end14_crit_edge, %if.end8.1.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %hpi_ops15 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 63
  %41 = ptrtoint ptr %hpi_ops15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hpi_ops15, align 8
  %write_interrupt16 = getelementptr inbounds %struct.go7007_hpi_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_interrupt16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_interrupt16, align 4
  %call17 = call i32 %44(ptr noundef %go, i32 noundef 37894, i32 noundef %flags) #5
  %45 = ptrtoint ptr %hpi_ops15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hpi_ops15, align 8
  %write_interrupt19 = getelementptr inbounds %struct.go7007_hpi_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_interrupt19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_interrupt19, align 4
  %conv20 = zext i16 %command to i32
  %call21 = call i32 %48(ptr noundef %go, i32 noundef 37896, i32 noundef %conv20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read)
  %tobool22.not = icmp eq i32 %read, 0
  br i1 %tobool22.not, label %if.then23, label %if.end33

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %hpi_ops15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hpi_ops15, align 8
  %write_interrupt25 = getelementptr inbounds %struct.go7007_hpi_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_interrupt25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_interrupt25, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data, align 1
  %conv26 = zext i8 %54 to i32
  %call27 = call i32 %52(ptr noundef %go, i32 noundef 37897, i32 noundef %conv26) #5
  %55 = ptrtoint ptr %hpi_ops15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hpi_ops15, align 8
  %write_interrupt29 = getelementptr inbounds %struct.go7007_hpi_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_interrupt29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_interrupt29, align 4
  %conv30 = zext i16 %addr to i32
  %shl = shl nuw nsw i32 %conv30, 9
  %59 = lshr i32 %conv20, 8
  %or = or i32 %59, %shl
  %call32 = call i32 %58(ptr noundef %go, i32 noundef 37895, i32 noundef %or) #5
  br label %i2c_done

if.end33:                                         ; preds = %if.end14
  %call34 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5129, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.i2c_done_crit_edge, label %if.end38

if.end33.i2c_done_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end38:                                         ; preds = %if.end33
  %60 = ptrtoint ptr %hpi_ops15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hpi_ops15, align 8
  %write_interrupt40 = getelementptr inbounds %struct.go7007_hpi_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write_interrupt40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write_interrupt40, align 4
  %conv41 = zext i16 %addr to i32
  %shl42 = shl nuw nsw i32 %conv41, 9
  %64 = lshr i32 %conv20, 8
  %or43 = or i32 %64, %shl42
  %or46 = or i32 %or43, 256
  %call47 = call i32 %63(ptr noundef %go, i32 noundef 37895, i32 noundef %or46) #5
  %call52 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end38.i2c_done_crit_edge, label %if.end56

if.end38.i2c_done_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56:                                         ; preds = %if.end38
  %65 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %val, align 2
  %67 = and i16 %66, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool59.not = icmp eq i16 %67, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.if.end72_crit_edge

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61:                                         ; preds = %if.end56
  call void @msleep(i32 noundef 100) #5
  %call52.1 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.1)
  %cmp53.1 = icmp slt i32 %call52.1, 0
  br i1 %cmp53.1, label %if.end61.i2c_done_crit_edge, label %if.end56.1

if.end61.i2c_done_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.1:                                       ; preds = %if.end61
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %val, align 2
  %70 = and i16 %69, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool59.not.1 = icmp eq i16 %70, 0
  br i1 %tobool59.not.1, label %if.end61.1, label %if.end56.1.if.end72_crit_edge

if.end56.1.if.end72_crit_edge:                    ; preds = %if.end56.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.1:                                       ; preds = %if.end56.1
  call void @msleep(i32 noundef 100) #5
  %call52.2 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.2)
  %cmp53.2 = icmp slt i32 %call52.2, 0
  br i1 %cmp53.2, label %if.end61.1.i2c_done_crit_edge, label %if.end56.2

if.end61.1.i2c_done_crit_edge:                    ; preds = %if.end61.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.2:                                       ; preds = %if.end61.1
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool59.not.2 = icmp eq i16 %73, 0
  br i1 %tobool59.not.2, label %if.end61.2, label %if.end56.2.if.end72_crit_edge

if.end56.2.if.end72_crit_edge:                    ; preds = %if.end56.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.2:                                       ; preds = %if.end56.2
  call void @msleep(i32 noundef 100) #5
  %call52.3 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.3)
  %cmp53.3 = icmp slt i32 %call52.3, 0
  br i1 %cmp53.3, label %if.end61.2.i2c_done_crit_edge, label %if.end56.3

if.end61.2.i2c_done_crit_edge:                    ; preds = %if.end61.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.3:                                       ; preds = %if.end61.2
  %74 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %val, align 2
  %76 = and i16 %75, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool59.not.3 = icmp eq i16 %76, 0
  br i1 %tobool59.not.3, label %if.end61.3, label %if.end56.3.if.end72_crit_edge

if.end56.3.if.end72_crit_edge:                    ; preds = %if.end56.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.3:                                       ; preds = %if.end56.3
  call void @msleep(i32 noundef 100) #5
  %call52.4 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.4)
  %cmp53.4 = icmp slt i32 %call52.4, 0
  br i1 %cmp53.4, label %if.end61.3.i2c_done_crit_edge, label %if.end56.4

if.end61.3.i2c_done_crit_edge:                    ; preds = %if.end61.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.4:                                       ; preds = %if.end61.3
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %val, align 2
  %79 = and i16 %78, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool59.not.4 = icmp eq i16 %79, 0
  br i1 %tobool59.not.4, label %if.end61.4, label %if.end56.4.if.end72_crit_edge

if.end56.4.if.end72_crit_edge:                    ; preds = %if.end56.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.4:                                       ; preds = %if.end56.4
  call void @msleep(i32 noundef 100) #5
  %call52.5 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.5)
  %cmp53.5 = icmp slt i32 %call52.5, 0
  br i1 %cmp53.5, label %if.end61.4.i2c_done_crit_edge, label %if.end56.5

if.end61.4.i2c_done_crit_edge:                    ; preds = %if.end61.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.5:                                       ; preds = %if.end61.4
  %80 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %val, align 2
  %82 = and i16 %81, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool59.not.5 = icmp eq i16 %82, 0
  br i1 %tobool59.not.5, label %if.end61.5, label %if.end56.5.if.end72_crit_edge

if.end56.5.if.end72_crit_edge:                    ; preds = %if.end56.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.5:                                       ; preds = %if.end56.5
  call void @msleep(i32 noundef 100) #5
  %call52.6 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.6)
  %cmp53.6 = icmp slt i32 %call52.6, 0
  br i1 %cmp53.6, label %if.end61.5.i2c_done_crit_edge, label %if.end56.6

if.end61.5.i2c_done_crit_edge:                    ; preds = %if.end61.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.6:                                       ; preds = %if.end61.5
  %83 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %val, align 2
  %85 = and i16 %84, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool59.not.6 = icmp eq i16 %85, 0
  br i1 %tobool59.not.6, label %if.end61.6, label %if.end56.6.if.end72_crit_edge

if.end56.6.if.end72_crit_edge:                    ; preds = %if.end56.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.6:                                       ; preds = %if.end56.6
  call void @msleep(i32 noundef 100) #5
  %call52.7 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.7)
  %cmp53.7 = icmp slt i32 %call52.7, 0
  br i1 %cmp53.7, label %if.end61.6.i2c_done_crit_edge, label %if.end56.7

if.end61.6.i2c_done_crit_edge:                    ; preds = %if.end61.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.7:                                       ; preds = %if.end61.6
  %86 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %val, align 2
  %88 = and i16 %87, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool59.not.7 = icmp eq i16 %88, 0
  br i1 %tobool59.not.7, label %if.end61.7, label %if.end56.7.if.end72_crit_edge

if.end56.7.if.end72_crit_edge:                    ; preds = %if.end56.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.7:                                       ; preds = %if.end56.7
  call void @msleep(i32 noundef 100) #5
  %call52.8 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.8)
  %cmp53.8 = icmp slt i32 %call52.8, 0
  br i1 %cmp53.8, label %if.end61.7.i2c_done_crit_edge, label %if.end56.8

if.end61.7.i2c_done_crit_edge:                    ; preds = %if.end61.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.8:                                       ; preds = %if.end61.7
  %89 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %val, align 2
  %91 = and i16 %90, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool59.not.8 = icmp eq i16 %91, 0
  br i1 %tobool59.not.8, label %if.end61.8, label %if.end56.8.if.end72_crit_edge

if.end56.8.if.end72_crit_edge:                    ; preds = %if.end56.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end61.8:                                       ; preds = %if.end56.8
  call void @msleep(i32 noundef 100) #5
  %call52.9 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5122, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.9)
  %cmp53.9 = icmp slt i32 %call52.9, 0
  br i1 %cmp53.9, label %if.end61.8.i2c_done_crit_edge, label %if.end56.9

if.end61.8.i2c_done_crit_edge:                    ; preds = %if.end61.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end56.9:                                       ; preds = %if.end61.8
  %92 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %val, align 2
  %94 = and i16 %93, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %tobool59.not.9 = icmp eq i16 %94, 0
  br i1 %tobool59.not.9, label %do.end70, label %if.end56.9.if.end72_crit_edge

if.end56.9.if.end72_crit_edge:                    ; preds = %if.end56.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.end70:                                         ; preds = %if.end56.9
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 100) #5
  %95 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %go, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.5) #8
  br label %i2c_done

if.end72:                                         ; preds = %if.end56.9.if.end72_crit_edge, %if.end56.8.if.end72_crit_edge, %if.end56.7.if.end72_crit_edge, %if.end56.6.if.end72_crit_edge, %if.end56.5.if.end72_crit_edge, %if.end56.4.if.end72_crit_edge, %if.end56.3.if.end72_crit_edge, %if.end56.2.if.end72_crit_edge, %if.end56.1.if.end72_crit_edge, %if.end56.if.end72_crit_edge
  %call73 = call i32 @go7007_read_addr(ptr noundef %go, i16 noundef zeroext 5129, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end72.i2c_done_crit_edge, label %if.end77

if.end72.i2c_done_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_done

if.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %val, align 2
  %conv78 = trunc i16 %98 to i8
  %99 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv78, ptr %data, align 1
  br label %i2c_done

i2c_done:                                         ; preds = %if.end77, %if.end72.i2c_done_crit_edge, %do.end70, %if.end61.8.i2c_done_crit_edge, %if.end61.7.i2c_done_crit_edge, %if.end61.6.i2c_done_crit_edge, %if.end61.5.i2c_done_crit_edge, %if.end61.4.i2c_done_crit_edge, %if.end61.3.i2c_done_crit_edge, %if.end61.2.i2c_done_crit_edge, %if.end61.1.i2c_done_crit_edge, %if.end61.i2c_done_crit_edge, %if.end38.i2c_done_crit_edge, %if.end33.i2c_done_crit_edge, %if.then23, %do.end, %if.end10.8.i2c_done_crit_edge, %if.end10.7.i2c_done_crit_edge, %if.end10.6.i2c_done_crit_edge, %if.end10.5.i2c_done_crit_edge, %if.end10.4.i2c_done_crit_edge, %if.end10.3.i2c_done_crit_edge, %if.end10.2.i2c_done_crit_edge, %if.end10.1.i2c_done_crit_edge, %if.end10.i2c_done_crit_edge, %if.end3.i2c_done_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ -5, %if.end33.i2c_done_crit_edge ], [ -5, %do.end70 ], [ -5, %if.end72.i2c_done_crit_edge ], [ 0, %if.end77 ], [ 0, %if.then23 ], [ -5, %if.end61.8.i2c_done_crit_edge ], [ -5, %if.end61.7.i2c_done_crit_edge ], [ -5, %if.end61.6.i2c_done_crit_edge ], [ -5, %if.end61.5.i2c_done_crit_edge ], [ -5, %if.end61.4.i2c_done_crit_edge ], [ -5, %if.end61.3.i2c_done_crit_edge ], [ -5, %if.end61.2.i2c_done_crit_edge ], [ -5, %if.end61.1.i2c_done_crit_edge ], [ -5, %if.end61.i2c_done_crit_edge ], [ -5, %if.end38.i2c_done_crit_edge ], [ -5, %if.end10.8.i2c_done_crit_edge ], [ -5, %if.end10.7.i2c_done_crit_edge ], [ -5, %if.end10.6.i2c_done_crit_edge ], [ -5, %if.end10.5.i2c_done_crit_edge ], [ -5, %if.end10.4.i2c_done_crit_edge ], [ -5, %if.end10.3.i2c_done_crit_edge ], [ -5, %if.end10.2.i2c_done_crit_edge ], [ -5, %if.end10.1.i2c_done_crit_edge ], [ -5, %if.end10.i2c_done_crit_edge ], [ -5, %if.end3.i2c_done_crit_edge ]
  %100 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %board_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %101)
  %cmp80 = icmp eq i32 %101, 12
  br i1 %cmp80, label %if.then82, label %i2c_done.if.end86_crit_edge

i2c_done.if.end86_crit_edge:                      ; preds = %i2c_done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then82:                                        ; preds = %i2c_done
  call void @__sanitizer_cov_trace_pc() #7
  %hpi_ops83 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 63
  %102 = ptrtoint ptr %hpi_ops83 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hpi_ops83, align 8
  %write_interrupt84 = getelementptr inbounds %struct.go7007_hpi_ops, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %write_interrupt84 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write_interrupt84, align 4
  %call85 = call i32 %105(ptr noundef %go, i32 noundef 48258, i32 noundef 0) #5
  call void @mutex_unlock(ptr noundef nonnull @adlink_mpg24_i2c_lock) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %i2c_done.if.end86_crit_edge
  call void @mutex_unlock(ptr noundef %hw_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end86 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @go7007_read_addr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/go7007/go7007-i2c.c", i32 205, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @go7007_i2c_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @go7007_i2c_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @go7007_adap_templ, !9, !"go7007_adap_templ", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/go7007/go7007-i2c.c", i32 192, i32 27}
!10 = !{ptr @go7007_algo, !11, !"go7007_algo", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/go7007/go7007-i2c.c", i32 186, i32 35}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/go7007/go7007-i2c.c", i32 74, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @go7007_i2c_xfer._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @go7007_i2c_xfer._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @go7007_i2c_xfer._entry.7, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/go7007/go7007-i2c.c", i32 108, i32 3}
!19 = !{ptr @go7007_i2c_xfer._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/go7007/go7007-i2c.c", i32 36, i32 8}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @adlink_mpg24_i2c_lock, !21, !"adlink_mpg24_i2c_lock", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
