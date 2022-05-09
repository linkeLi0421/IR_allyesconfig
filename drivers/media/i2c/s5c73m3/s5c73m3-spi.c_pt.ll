; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/s5c73m3/s5c73m3-spi.c_pt.bc'
source_filename = "../drivers/media/i2c/s5c73m3/s5c73m3-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.s5c73m3 = type { %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.spi_driver, ptr, ptr, i32, i32, [6 x %struct.regulator_bulk_data], [2 x %struct.s5c73m3_gpio], ptr, i32, i32, [2 x ptr], [2 x ptr], i32, ptr, %struct.v4l2_mbus_frame_desc, %struct.mutex, %struct.s5c73m3_ctrls, i8, i16, [8 x i8], [14 x i8], [2 x i8], i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.s5c73m3_gpio = type { i32, i32 }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.s5c73m3_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.92, %struct.anon.93, ptr, %struct.anon.94, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.92 = type { ptr, ptr, ptr }
%struct.anon.93 = type { ptr, ptr }
%struct.anon.94 = type { ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"S5C73M3-SPI\00", [20 x i8] zeroinitializer }, align 32
@s5c73m3_spi_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5c73m3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spi_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013SPI device is uninitialized\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi_xmit\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/i2c/s5c73m3/s5c73m3-spi.c\00", [56 x i8] zeroinitializer }, align 32
@spi_xmit._entry_ptr = internal global ptr @spi_xmit._entry, section ".printk_index", align 4
@spi_xmit._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 57, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s spi_sync failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_xmit._entry_ptr.8 = internal global ptr @spi_xmit._entry.4, section ".printk_index", align 4
@s5c73m3_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 121, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_setup() failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s5c73m3_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@s5c73m3_spi_probe._entry_ptr = internal global ptr @s5c73m3_spi_probe._entry, section ".printk_index", align 4
@s5c73m3_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: S5C73M3 SPI probed successfully\0A\00", [57 x i8] zeroinitializer }, align 32
@s5c73m3_spi_probe._entry_ptr.13 = internal global ptr @s5c73m3_spi_probe._entry.11, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 138, i32 24 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"s5c73m3_spi_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 22, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 48, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 57, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 121, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [43 x i8] c"../drivers/media/i2c/s5c73m3/s5c73m3-spi.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 129, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @s5c73m3_spi_probe._entry, ptr @s5c73m3_spi_probe._entry.11, ptr @s5c73m3_spi_probe._entry_ptr, ptr @s5c73m3_spi_probe._entry_ptr.13, ptr @spi_xmit._entry, ptr @spi_xmit._entry.4, ptr @spi_xmit._entry_ptr, ptr @spi_xmit._entry_ptr.8, ptr @.str, ptr @s5c73m3_spi_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_spi_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_xmit._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5c73m3_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5c73m3_spi_write(ptr nocapture noundef readonly %state, ptr noundef %addr, i32 noundef %len, i32 noundef %tx_size) local_unnamed_addr #0 align 64 {
entry:
  %msg.i53 = alloca %struct.spi_message, align 4
  %xfer.i54 = alloca %struct.spi_transfer, align 4
  %msg.i33 = alloca %struct.spi_message, align 4
  %xfer.i34 = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %padding = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_dev1 = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %spi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_dev1, align 4
  %div = udiv i32 %len, %tx_size
  %2 = mul i32 %div, %tx_size
  %rem.decomposed = sub i32 %len, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %padding) #5
  %3 = call ptr @memset(ptr %padding, i32 0, i32 32)
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_size, i32 %len)
  %cmp81.not = icmp ugt i32 %tx_size, %len
  br i1 %cmp81.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %cmp2.i = icmp eq ptr %1, null
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %5 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %j.083 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %addr, i32 %j.083
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tx_size, ptr %len1.i, align 4
  %8 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %xfer.i, align 4
  br i1 %cmp2.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %spi_xmit.exit.thread

if.end4.i:                                        ; preds = %for.body
  %9 = call ptr @memset(ptr %4, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %13 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.spi_message_add_tail.exit.i_crit_edge

if.end4.i.spi_message_add_tail.exit.i_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end4.i.spi_message_add_tail.exit.i_crit_edge
  %call5.i = call i32 @spi_sync(ptr noundef nonnull %1, ptr noundef nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end

do.end10.i:                                       ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call5.i) #8
  br label %spi_xmit.exit.thread

spi_xmit.exit.thread:                             ; preds = %do.end10.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call5.i, %do.end10.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  %add = add i32 %j.083, %tx_size
  %inc = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp3.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp3.not, label %if.end10, label %if.then4

if.then4:                                         ; preds = %for.end
  %add.ptr5 = getelementptr i8, ptr %addr, i32 %j.0.lcssa
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i33) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i34) #5
  %18 = getelementptr inbounds i8, ptr %xfer.i34, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 92)
  %len1.i35 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i34, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem.decomposed, ptr %len1.i35, align 4
  %21 = ptrtoint ptr %xfer.i34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr5, ptr %xfer.i34, align 4
  %cmp2.i36 = icmp eq ptr %1, null
  br i1 %cmp2.i36, label %do.end.i38, label %if.end4.i44

do.end.i38:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %call.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %spi_xmit.exit52.thread

if.end4.i44:                                      ; preds = %if.then4
  %22 = getelementptr inbounds i8, ptr %msg.i33, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i33, ptr %msg.i33, align 4
  %prev.i.i.i.i39 = getelementptr inbounds %struct.list_head, ptr %msg.i33, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i33, ptr %prev.i.i.i.i39, align 4
  %resources.i.i.i40 = getelementptr inbounds %struct.spi_message, ptr %msg.i33, i32 0, i32 10
  %26 = ptrtoint ptr %resources.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i40, ptr %resources.i.i.i40, align 4
  %prev.i2.i.i.i41 = getelementptr inbounds %struct.spi_message, ptr %msg.i33, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i40, ptr %prev.i2.i.i.i41, align 4
  %transfer_list.i.i42 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i34, i32 0, i32 18
  %call.i.i.i.i43 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i42, ptr noundef nonnull %msg.i33, ptr noundef nonnull %msg.i33) #5
  br i1 %call.i.i.i.i43, label %if.end.i.i.i.i46, label %if.end4.i44.spi_message_add_tail.exit.i49_crit_edge

if.end4.i44.spi_message_add_tail.exit.i49_crit_edge: ; preds = %if.end4.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i49

if.end.i.i.i.i46:                                 ; preds = %if.end4.i44
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %prev.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i42, ptr %prev.i.i.i.i39, align 4
  %29 = ptrtoint ptr %transfer_list.i.i42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i33, ptr %transfer_list.i.i42, align 4
  %prev3.i.i.i.i45 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i34, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i33, ptr %prev3.i.i.i.i45, align 4
  %31 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i42, ptr %msg.i33, align 4
  br label %spi_message_add_tail.exit.i49

spi_message_add_tail.exit.i49:                    ; preds = %if.end.i.i.i.i46, %if.end4.i44.spi_message_add_tail.exit.i49_crit_edge
  %call5.i47 = call i32 @spi_sync(ptr noundef nonnull %1, ptr noundef nonnull %msg.i33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i47)
  %cmp6.i48 = icmp slt i32 %call5.i47, 0
  br i1 %cmp6.i48, label %do.end10.i50, label %if.end10.thread

do.end10.i50:                                     ; preds = %spi_message_add_tail.exit.i49
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call5.i47) #8
  br label %spi_xmit.exit52.thread

spi_xmit.exit52.thread:                           ; preds = %do.end10.i50, %do.end.i38
  %retval.0.i51.ph = phi i32 [ %call5.i47, %do.end10.i50 ], [ -19, %do.end.i38 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i34) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i33) #5
  br label %cleanup

if.end10.thread:                                  ; preds = %spi_message_add_tail.exit.i49
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i34) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i33) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i53) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i54) #5
  %32 = getelementptr inbounds i8, ptr %xfer.i54, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 92)
  %len1.i5577 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i54, i32 0, i32 2
  %34 = ptrtoint ptr %len1.i5577 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %len1.i5577, align 4
  %35 = ptrtoint ptr %xfer.i54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %padding, ptr %xfer.i54, align 4
  br label %if.end4.i64

if.end10:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i53) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i54) #5
  %36 = getelementptr inbounds i8, ptr %xfer.i54, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 92)
  %len1.i55 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i54, i32 0, i32 2
  %38 = ptrtoint ptr %len1.i55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32, ptr %len1.i55, align 4
  %39 = ptrtoint ptr %xfer.i54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %padding, ptr %xfer.i54, align 4
  %cmp2.i56 = icmp eq ptr %1, null
  br i1 %cmp2.i56, label %do.end.i58, label %if.end10.if.end4.i64_crit_edge

if.end10.if.end4.i64_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i64

do.end.i58:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %call.i57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %spi_xmit.exit72

if.end4.i64:                                      ; preds = %if.end10.if.end4.i64_crit_edge, %if.end10.thread
  %40 = getelementptr inbounds i8, ptr %msg.i53, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i53, ptr %msg.i53, align 4
  %prev.i.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %msg.i53, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i53, ptr %prev.i.i.i.i59, align 4
  %resources.i.i.i60 = getelementptr inbounds %struct.spi_message, ptr %msg.i53, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i60, ptr %resources.i.i.i60, align 4
  %prev.i2.i.i.i61 = getelementptr inbounds %struct.spi_message, ptr %msg.i53, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i60, ptr %prev.i2.i.i.i61, align 4
  %transfer_list.i.i62 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i54, i32 0, i32 18
  %call.i.i.i.i63 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i62, ptr noundef nonnull %msg.i53, ptr noundef nonnull %msg.i53) #5
  br i1 %call.i.i.i.i63, label %if.end.i.i.i.i66, label %if.end4.i64.spi_message_add_tail.exit.i69_crit_edge

if.end4.i64.spi_message_add_tail.exit.i69_crit_edge: ; preds = %if.end4.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i69

if.end.i.i.i.i66:                                 ; preds = %if.end4.i64
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %prev.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i62, ptr %prev.i.i.i.i59, align 4
  %47 = ptrtoint ptr %transfer_list.i.i62 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i53, ptr %transfer_list.i.i62, align 4
  %prev3.i.i.i.i65 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i54, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i53, ptr %prev3.i.i.i.i65, align 4
  %49 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i62, ptr %msg.i53, align 4
  br label %spi_message_add_tail.exit.i69

spi_message_add_tail.exit.i69:                    ; preds = %if.end.i.i.i.i66, %if.end4.i64.spi_message_add_tail.exit.i69_crit_edge
  %call5.i67 = call i32 @spi_sync(ptr noundef nonnull %1, ptr noundef nonnull %msg.i53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i67)
  %cmp6.i68 = icmp slt i32 %call5.i67, 0
  br i1 %cmp6.i68, label %do.end10.i70, label %spi_message_add_tail.exit.i69.spi_xmit.exit72_crit_edge

spi_message_add_tail.exit.i69.spi_xmit.exit72_crit_edge: ; preds = %spi_message_add_tail.exit.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_xmit.exit72

do.end10.i70:                                     ; preds = %spi_message_add_tail.exit.i69
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call5.i67) #8
  br label %spi_xmit.exit72

spi_xmit.exit72:                                  ; preds = %do.end10.i70, %spi_message_add_tail.exit.i69.spi_xmit.exit72_crit_edge, %do.end.i58
  %retval.0.i71 = phi i32 [ -19, %do.end.i58 ], [ %call5.i67, %do.end10.i70 ], [ %call5.i67, %spi_message_add_tail.exit.i69.spi_xmit.exit72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i54) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i53) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_xmit.exit72, %spi_xmit.exit52.thread, %spi_xmit.exit.thread
  %retval.0 = phi i32 [ %retval.0.i71, %spi_xmit.exit72 ], [ %retval.0.i.ph, %spi_xmit.exit.thread ], [ %retval.0.i51.ph, %spi_xmit.exit52.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %padding) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5c73m3_spi_read(ptr nocapture noundef readonly %state, ptr noundef %addr, i32 noundef %len, i32 noundef %tx_size) local_unnamed_addr #0 align 64 {
entry:
  %msg.i24 = alloca %struct.spi_message, align 4
  %xfer.i25 = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_dev1 = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %spi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_dev1, align 4
  %div = udiv i32 %len, %tx_size
  %2 = mul i32 %div, %tx_size
  %rem.decomposed = sub i32 %len, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_size, i32 %len)
  %cmp49.not = icmp ugt i32 %tx_size, %len
  br i1 %cmp49.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %cmp2.i = icmp eq ptr %1, null
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %j.051 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %addr, i32 %j.051
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %4 = call ptr @memset(ptr %xfer.i, i32 0, i32 96)
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %tx_size, ptr %len1.i, align 4
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %rx_buf.i, align 4
  br i1 %cmp2.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %spi_xmit.exit.thread

if.end4.i:                                        ; preds = %for.body
  %7 = call ptr @memset(ptr %3, i32 0, i32 40)
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %10 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %11 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end4.i.spi_message_add_tail.exit.i_crit_edge

if.end4.i.spi_message_add_tail.exit.i_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end4.i.spi_message_add_tail.exit.i_crit_edge
  %call5.i = call i32 @spi_sync(ptr noundef nonnull %1, ptr noundef nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end

do.end10.i:                                       ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call5.i) #8
  br label %spi_xmit.exit.thread

spi_xmit.exit.thread:                             ; preds = %do.end10.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call5.i, %do.end10.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  %add = add i32 %j.051, %tx_size
  %inc = add nuw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp3.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp3.not, label %for.end.cleanup_crit_edge, label %if.then4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %for.end
  %add.ptr5 = getelementptr i8, ptr %addr, i32 %j.0.lcssa
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i24) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i25) #5
  %16 = call ptr @memset(ptr %xfer.i25, i32 0, i32 96)
  %len1.i26 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i25, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rem.decomposed, ptr %len1.i26, align 4
  %rx_buf.i27 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i25, i32 0, i32 1
  %18 = ptrtoint ptr %rx_buf.i27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr5, ptr %rx_buf.i27, align 4
  %cmp2.i28 = icmp eq ptr %1, null
  br i1 %cmp2.i28, label %do.end.i30, label %if.end4.i36

do.end.i30:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %call.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %spi_xmit.exit44

if.end4.i36:                                      ; preds = %if.then4
  %19 = getelementptr inbounds i8, ptr %msg.i24, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i24, ptr %msg.i24, align 4
  %prev.i.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %msg.i24, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i24, ptr %prev.i.i.i.i31, align 4
  %resources.i.i.i32 = getelementptr inbounds %struct.spi_message, ptr %msg.i24, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i32, ptr %resources.i.i.i32, align 4
  %prev.i2.i.i.i33 = getelementptr inbounds %struct.spi_message, ptr %msg.i24, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i32, ptr %prev.i2.i.i.i33, align 4
  %transfer_list.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i25, i32 0, i32 18
  %call.i.i.i.i35 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i34, ptr noundef nonnull %msg.i24, ptr noundef nonnull %msg.i24) #5
  br i1 %call.i.i.i.i35, label %if.end.i.i.i.i38, label %if.end4.i36.spi_message_add_tail.exit.i41_crit_edge

if.end4.i36.spi_message_add_tail.exit.i41_crit_edge: ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i41

if.end.i.i.i.i38:                                 ; preds = %if.end4.i36
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i34, ptr %prev.i.i.i.i31, align 4
  %26 = ptrtoint ptr %transfer_list.i.i34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i24, ptr %transfer_list.i.i34, align 4
  %prev3.i.i.i.i37 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i25, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i24, ptr %prev3.i.i.i.i37, align 4
  %28 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i34, ptr %msg.i24, align 4
  br label %spi_message_add_tail.exit.i41

spi_message_add_tail.exit.i41:                    ; preds = %if.end.i.i.i.i38, %if.end4.i36.spi_message_add_tail.exit.i41_crit_edge
  %call5.i39 = call i32 @spi_sync(ptr noundef nonnull %1, ptr noundef nonnull %msg.i24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i39)
  %cmp6.i40 = icmp slt i32 %call5.i39, 0
  br i1 %cmp6.i40, label %do.end10.i42, label %spi_message_add_tail.exit.i41.spi_xmit.exit44_crit_edge

spi_message_add_tail.exit.i41.spi_xmit.exit44_crit_edge: ; preds = %spi_message_add_tail.exit.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_xmit.exit44

do.end10.i42:                                     ; preds = %spi_message_add_tail.exit.i41
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %call5.i39) #8
  br label %spi_xmit.exit44

spi_xmit.exit44:                                  ; preds = %do.end10.i42, %spi_message_add_tail.exit.i41.spi_xmit.exit44_crit_edge, %do.end.i30
  %retval.0.i43 = phi i32 [ -19, %do.end.i30 ], [ %call5.i39, %do.end10.i42 ], [ %call5.i39, %spi_message_add_tail.exit.i41.spi_xmit.exit44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i25) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i24) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_xmit.exit44, %for.end.cleanup_crit_edge, %spi_xmit.exit.thread
  %retval.0 = phi i32 [ %retval.0.i43, %spi_xmit.exit44 ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.i.ph, %spi_xmit.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5c73m3_register_spi_driver(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spidrv1 = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 4
  %probe = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @s5c73m3_spi_probe, ptr %probe, align 4
  %driver = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 4, i32 4, i32 6
  %2 = ptrtoint ptr %of_match_table to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @s5c73m3_spi_ids, ptr %of_match_table, align 4
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef %spidrv1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5c73m3_spi_probe(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr i8, ptr %1, i32 268
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %spi_dev = getelementptr i8, ptr %1, i32 76
  %3 = ptrtoint ptr %spi_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %spi_dev, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %name = getelementptr i8, ptr %1, i32 -452
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5c73m3_unregister_spi_driver(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spidrv = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %spidrv, null
  br i1 %tobool.not.i, label %entry.spi_unregister_driver.exit_crit_edge, label %if.then.i

entry.spi_unregister_driver.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_unregister_driver.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver.i = getelementptr inbounds %struct.s5c73m3, ptr %state, i32 0, i32 4, i32 4
  tail call void @driver_unregister(ptr noundef %driver.i) #5
  br label %spi_unregister_driver.exit

spi_unregister_driver.exit:                       ; preds = %if.then.i, %entry.spi_unregister_driver.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-spi.c", i32 138, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-spi.c", i32 48, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @spi_xmit._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @spi_xmit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-spi.c", i32 57, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @spi_xmit._entry.4, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @spi_xmit._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-spi.c", i32 121, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @s5c73m3_spi_probe._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @s5c73m3_spi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-spi.c", i32 129, i32 2}
!21 = !{ptr @s5c73m3_spi_probe._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @s5c73m3_spi_probe._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @s5c73m3_spi_ids, !24, !"s5c73m3_spi_ids", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/s5c73m3/s5c73m3-spi.c", i32 22, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
