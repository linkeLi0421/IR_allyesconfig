; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx25821/cx25821-medusa-video.c_pt.bc'
source_filename = "../drivers/media/pci/cx25821/cx25821-medusa-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx25821_dev = type { %struct.v4l2_device, ptr, i8, i8, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32, [3 x %struct.cx25821_i2c], i32, %struct.mutex, [12 x %struct.cx25821_channel], i32, [32 x i8], i32, i64, i16, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.work_struct, ptr, %struct.spinlock, [2 x %struct.cx25821_video_out_data] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx25821_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx25821_channel = type { i32, ptr, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.cx25821_dmaqueue, %struct.vb2_queue, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.cx25821_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cx25821_video_out_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head }

@medusa_set_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016cx25821: %s(): width %d > MAX_WIDTH %d ! resetting to MAX_WIDTH\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"medusa_set_resolution\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/pci/cx25821/cx25821-medusa-video.c\00", [47 x i8] zeroinitializer }, align 32
@medusa_set_resolution._entry_ptr = internal global ptr @medusa_set_resolution._entry, section ".printk_index", align 4
@switch.table.medusa_video_init = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 300, i16 300, i16 304, i16 304, i16 308, i16 308], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.3 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 160, i64 176, i64 320, i64 352]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [52 x i8] c"../drivers/media/pci/cx25821/cx25821-medusa-video.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 417, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [31 x i8] c"switch.table.medusa_video_init\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @medusa_set_resolution._entry, ptr @medusa_set_resolution._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @switch.table.medusa_video_init], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @medusa_set_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.medusa_video_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @medusa_set_videostandard(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i27 = alloca i32, align 4
  %tmp.i28 = alloca i32, align 4
  %tmp.i3.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %tvnorm = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %tvnorm, align 8
  %3 = and i64 %2, 231
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tmp.i, align 4
  %i2c_bus.i = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %medusa_enable_bluefield_output.exit.i.for.body.i_crit_edge, %if.then
  %i.07.i = phi i32 [ 0, %if.then ], [ %inc.i, %medusa_enable_bluefield_output.exit.i.for.body.i_crit_edge ]
  %i.0.tr.i = trunc i32 %i.07.i to i16
  %6 = shl i16 %i.0.tr.i, 9
  %conv.i = add i16 %6, 4096
  %call.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv.i, ptr noundef nonnull %tmp.i) #4
  %and.i = and i32 %call.i, -65552
  %or.i = or i32 %and.i, 65540
  %call6.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv.i, i32 noundef %or.i) #4
  %conv11.i = add i16 %6, 4128
  %call12.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv11.i, ptr noundef nonnull %tmp.i) #4
  %and13.i = and i32 %call12.i, 12585984
  %or14.i = or i32 %and13.i, 1663893629
  %call20.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv11.i, i32 noundef %or14.i) #4
  %conv25.i = add i16 %6, 4132
  %call26.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv25.i, ptr noundef nonnull %tmp.i) #4
  %and27.i = and i32 %call26.i, 12585984
  %or28.i = or i32 %and27.i, 673447974
  %call34.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv25.i, i32 noundef %or28.i) #4
  %conv39.i = add i16 %6, 4188
  %call40.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv39.i, i32 noundef 1410458320) #4
  %conv45.i = add i16 %6, 4104
  %call46.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv45.i, ptr noundef nonnull %tmp.i) #4
  %or48.i = or i32 %call46.i, 262144
  %call54.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv45.i, i32 noundef %or48.i) #4
  %conv59.i = add i16 %6, 4100
  %call60.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv59.i, ptr noundef nonnull %tmp.i) #4
  %or62.i = or i32 %call60.i, 262144
  %call68.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv59.i, i32 noundef %or62.i) #4
  %conv73.i = add i16 %6, 4136
  %call74.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv73.i, ptr noundef nonnull %tmp.i) #4
  %or.i.i = and i32 %call74.i, -49153
  %and.i.i = or i32 %or.i.i, 16384
  %call82.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv73.i, i32 noundef %and.i.i) #4
  %conv87.i = add i16 %6, 4160
  %call88.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv87.i, ptr noundef nonnull %tmp.i) #4
  %and.i1.i = and i32 %call88.i, -536870913
  %call95.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv87.i, i32 noundef %and.i1.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #4
  %7 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tmp.i.i, align 4
  %conv.i.i = add i16 %6, 4200
  %call.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv.i.i, i32 noundef 536881249) #4
  %conv5.i.i = add i16 %6, 4204
  %call6.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv5.i.i, i32 noundef 536881249) #4
  %conv11.i.i = add i16 %6, 4208
  %call12.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv11.i.i, i32 noundef 537530403) #4
  %conv17.i.i = add i16 %6, 4220
  %call18.i.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv17.i.i, ptr noundef nonnull %tmp.i.i) #4
  %and.i2.i = and i32 %call18.i.i, 102957056
  %call24.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv17.i.i, i32 noundef %and.i2.i) #4
  %conv29.i.i = add i16 %6, 4212
  %call30.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv29.i.i, i32 noundef 554635023) #4
  %conv35.i.i = add i16 %6, 4216
  %call36.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %conv35.i.i, i32 noundef 1091701375) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i3.i) #4
  %8 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tmp.i3.i, align 4
  %9 = zext i32 %i.07.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.07.i, label %for.body.i.sw.epilog.i.i_crit_edge [
    i32 7, label %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
    i32 3, label %sw.bb2.i.i
    i32 4, label %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge82
    i32 5, label %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge83
    i32 6, label %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge84
  ]

for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge84: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i

for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge83: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i

for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge82: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i

for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i

for.body.i.sw.epilog.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i, %for.body.i.sw.epilog.i.i_crit_edge
  %out_ctrl.0.i.i = phi i16 [ 4100, %for.body.i.sw.epilog.i.i_crit_edge ], [ 5636, %sw.bb2.i.i ], [ 5124, %sw.bb1.i.i ], [ 4612, %sw.bb.i.i ]
  %out_ctrl_ns.0.i.i = phi i16 [ 4104, %for.body.i.sw.epilog.i.i_crit_edge ], [ 5640, %sw.bb2.i.i ], [ 5128, %sw.bb1.i.i ], [ 4616, %sw.bb.i.i ]
  %call.i5.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %out_ctrl.0.i.i, ptr noundef nonnull %tmp.i3.i) #4
  %or.i6.i = or i32 %call.i5.i, 128
  %call10.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %out_ctrl.0.i.i, i32 noundef %or.i6.i) #4
  %call14.i.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext %out_ctrl_ns.0.i.i, ptr noundef nonnull %tmp.i3.i) #4
  %or18.i.i = or i32 %call14.i.i, 128
  %call23.i.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext %out_ctrl_ns.0.i.i, i32 noundef %or18.i.i) #4
  br label %medusa_enable_bluefield_output.exit.i

medusa_enable_bluefield_output.exit.i:            ; preds = %sw.epilog.i.i, %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge, %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge82, %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge83, %for.body.i.medusa_enable_bluefield_output.exit.i_crit_edge84
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i3.i) #4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %medusa_initialize_pal.exit, label %medusa_enable_bluefield_output.exit.i.for.body.i_crit_edge

medusa_enable_bluefield_output.exit.i.for.body.i_crit_edge: ; preds = %medusa_enable_bluefield_output.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

medusa_initialize_pal.exit:                       ; preds = %medusa_enable_bluefield_output.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call106.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 512, ptr noundef nonnull %tmp.i) #4
  %and107.i = and i32 %call106.i, -268370944
  %or108.i = or i32 %and107.i, 113246928
  %call114.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 512, i32 noundef %or108.i) #4
  %call120.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 516, ptr noundef nonnull %tmp.i) #4
  %and121.i = and i32 %call120.i, -16777216
  %or122.i = or i32 %and121.i, 8296276
  %call128.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 516, i32 noundef %or122.i) #4
  %call134.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 520, ptr noundef nonnull %tmp.i) #4
  %and135.i = and i32 %call134.i, -67043840
  %or136.i = or i32 %and135.i, 16515360
  %call142.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 520, i32 noundef %or136.i) #4
  %call148.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 524, ptr noundef nonnull %tmp.i) #4
  %and149.i = and i32 %call148.i, 16580607
  %or150.i = or i32 %and149.i, 335609856
  %call156.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 524, i32 noundef %or150.i) #4
  %call162.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 528, ptr noundef nonnull %tmp.i) #4
  %and163.i = and i32 %call162.i, -65536
  %or164.i = or i32 %and163.i, 61560
  %call170.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 528, i32 noundef %or164.i) #4
  %call176.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 532, i32 noundef 10785743) #4
  %call182.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 536, i32 noundef 705268427) #4
  %call106.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 768, ptr noundef nonnull %tmp.i) #4
  %and107.1.i = and i32 %call106.1.i, -268370944
  %or108.1.i = or i32 %and107.1.i, 113246928
  %call114.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 768, i32 noundef %or108.1.i) #4
  %call120.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 772, ptr noundef nonnull %tmp.i) #4
  %and121.1.i = and i32 %call120.1.i, -16777216
  %or122.1.i = or i32 %and121.1.i, 8296276
  %call128.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 772, i32 noundef %or122.1.i) #4
  %call134.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 776, ptr noundef nonnull %tmp.i) #4
  %and135.1.i = and i32 %call134.1.i, -67043840
  %or136.1.i = or i32 %and135.1.i, 16515360
  %call142.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 776, i32 noundef %or136.1.i) #4
  %call148.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 780, ptr noundef nonnull %tmp.i) #4
  %and149.1.i = and i32 %call148.1.i, 16580607
  %or150.1.i = or i32 %and149.1.i, 335609856
  %call156.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 780, i32 noundef %or150.1.i) #4
  %call162.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 784, ptr noundef nonnull %tmp.i) #4
  %and163.1.i = and i32 %call162.1.i, -65536
  %or164.1.i = or i32 %and163.1.i, 61560
  %call170.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 784, i32 noundef %or164.1.i) #4
  %call176.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 788, i32 noundef 10785743) #4
  %call182.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 792, i32 noundef 705268427) #4
  %call188.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 4144, i32 noundef 0) #4
  %call191.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 4148, i32 noundef 0) #4
  %call194.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i, i16 noundef zeroext 280, ptr noundef nonnull %tmp.i) #4
  %and195.i = and i32 %call194.i, -524801
  %call198.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i, i16 noundef zeroext 280, i32 noundef %and195.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28) #4
  %10 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tmp.i28, align 4
  %i2c_bus.i29 = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  br label %for.body.i65

for.body.i65:                                     ; preds = %medusa_enable_bluefield_output.exit.i79.for.body.i65_crit_edge, %if.else
  %i.03.i = phi i32 [ 0, %if.else ], [ %inc.i77, %medusa_enable_bluefield_output.exit.i79.for.body.i65_crit_edge ]
  %i.0.tr.i30 = trunc i32 %i.03.i to i16
  %11 = shl i16 %i.0.tr.i30, 9
  %conv.i31 = add i16 %11, 4096
  %call.i32 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv.i31, ptr noundef nonnull %tmp.i28) #4
  %and.i33 = and i32 %call.i32, -65552
  %or.i34 = or i32 %and.i33, 65537
  %call6.i35 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv.i31, i32 noundef %or.i34) #4
  %conv11.i36 = add i16 %11, 4128
  %call12.i37 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv11.i36, ptr noundef nonnull %tmp.i28) #4
  %and13.i38 = and i32 %call12.i37, 12585984
  %or14.i39 = or i32 %and13.i38, 1630339188
  %call20.i40 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv11.i36, i32 noundef %or14.i39) #4
  %conv25.i41 = add i16 %11, 4132
  %call26.i42 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv25.i41, ptr noundef nonnull %tmp.i28) #4
  %and27.i43 = and i32 %call26.i42, 12585984
  %or28.i44 = or i32 %and27.i43, 471728154
  %call34.i45 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv25.i41, i32 noundef %or28.i44) #4
  %conv39.i46 = add i16 %11, 4188
  %call40.i47 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv39.i46, i32 noundef 1138753536) #4
  %conv45.i48 = add i16 %11, 4104
  %call46.i49 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv45.i48, ptr noundef nonnull %tmp.i28) #4
  %or48.i50 = or i32 %call46.i49, 262144
  %call54.i51 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv45.i48, i32 noundef %or48.i50) #4
  %conv59.i52 = add i16 %11, 4100
  %call60.i53 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv59.i52, ptr noundef nonnull %tmp.i28) #4
  %or62.i54 = or i32 %call60.i53, 262144
  %call68.i55 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv59.i52, i32 noundef %or62.i54) #4
  %conv73.i56 = add i16 %11, 4136
  %call74.i57 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv73.i56, ptr noundef nonnull %tmp.i28) #4
  %or.i.i58 = and i32 %call74.i57, -49153
  %and.i.i59 = or i32 %or.i.i58, 16384
  %call82.i60 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv73.i56, i32 noundef %and.i.i59) #4
  %conv87.i61 = add i16 %11, 4160
  %call88.i62 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv87.i61, ptr noundef nonnull %tmp.i28) #4
  %and.i1.i63 = and i32 %call88.i62, -536870913
  %call95.i64 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %conv87.i61, i32 noundef %and.i1.i63) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i27) #4
  %12 = ptrtoint ptr %tmp.i.i27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tmp.i.i27, align 4
  %13 = zext i32 %i.03.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %i.03.i, label %for.body.i65.sw.epilog.i.i76_crit_edge [
    i32 7, label %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge
    i32 1, label %sw.bb.i.i66
    i32 2, label %sw.bb1.i.i67
    i32 3, label %sw.bb2.i.i68
    i32 4, label %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge85
    i32 5, label %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge86
    i32 6, label %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge87
  ]

for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge87: ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i79

for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge86: ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i79

for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge85: ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i79

for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge: ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_enable_bluefield_output.exit.i79

for.body.i65.sw.epilog.i.i76_crit_edge:           ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i76

sw.bb.i.i66:                                      ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i76

sw.bb1.i.i67:                                     ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i76

sw.bb2.i.i68:                                     ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i76

sw.epilog.i.i76:                                  ; preds = %sw.bb2.i.i68, %sw.bb1.i.i67, %sw.bb.i.i66, %for.body.i65.sw.epilog.i.i76_crit_edge
  %out_ctrl.0.i.i69 = phi i16 [ 4100, %for.body.i65.sw.epilog.i.i76_crit_edge ], [ 5636, %sw.bb2.i.i68 ], [ 5124, %sw.bb1.i.i67 ], [ 4612, %sw.bb.i.i66 ]
  %out_ctrl_ns.0.i.i70 = phi i16 [ 4104, %for.body.i65.sw.epilog.i.i76_crit_edge ], [ 5640, %sw.bb2.i.i68 ], [ 5128, %sw.bb1.i.i67 ], [ 4616, %sw.bb.i.i66 ]
  %call.i.i71 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %out_ctrl.0.i.i69, ptr noundef nonnull %tmp.i.i27) #4
  %or.i2.i = or i32 %call.i.i71, 128
  %call10.i.i72 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %out_ctrl.0.i.i69, i32 noundef %or.i2.i) #4
  %call14.i.i73 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext %out_ctrl_ns.0.i.i70, ptr noundef nonnull %tmp.i.i27) #4
  %or18.i.i74 = or i32 %call14.i.i73, 128
  %call23.i.i75 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext %out_ctrl_ns.0.i.i70, i32 noundef %or18.i.i74) #4
  br label %medusa_enable_bluefield_output.exit.i79

medusa_enable_bluefield_output.exit.i79:          ; preds = %sw.epilog.i.i76, %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge, %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge85, %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge86, %for.body.i65.medusa_enable_bluefield_output.exit.i79_crit_edge87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i27) #4
  %inc.i77 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i78 = icmp eq i32 %inc.i77, 8
  br i1 %exitcond.not.i78, label %medusa_initialize_ntsc.exit, label %medusa_enable_bluefield_output.exit.i79.for.body.i65_crit_edge

medusa_enable_bluefield_output.exit.i79.for.body.i65_crit_edge: ; preds = %medusa_enable_bluefield_output.exit.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i65

medusa_initialize_ntsc.exit:                      ; preds = %medusa_enable_bluefield_output.exit.i79
  call void @__sanitizer_cov_trace_pc() #6
  %call105.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 512, ptr noundef nonnull %tmp.i28) #4
  %and106.i = and i32 %call105.i, -268370944
  %or107.i = or i32 %and106.i, 112460496
  %call113.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 512, i32 noundef %or107.i) #4
  %call119.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 516, ptr noundef nonnull %tmp.i28) #4
  %and120.i = and i32 %call119.i, -16777216
  %or121.i = or i32 %and120.i, 8294484
  %call127.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 516, i32 noundef %or121.i) #4
  %call133.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 520, ptr noundef nonnull %tmp.i28) #4
  %and134.i = and i32 %call133.i, -67043840
  %or135.i = or i32 %and134.i, 15466736
  %call141.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 520, i32 noundef %or135.i) #4
  %call147.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 524, ptr noundef nonnull %tmp.i28) #4
  %and148.i = and i32 %call147.i, 16580607
  %or149.i = or i32 %and148.i, 318898176
  %call155.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 524, i32 noundef %or149.i) #4
  %call161.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 528, ptr noundef nonnull %tmp.i28) #4
  %and162.i = and i32 %call161.i, -65536
  %or163.i = or i32 %and162.i, 58741
  %call169.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 528, i32 noundef %or163.i) #4
  %call175.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 532, i32 noundef 10127809) #4
  %call181.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 536, i32 noundef 569408543) #4
  %call105.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 768, ptr noundef nonnull %tmp.i28) #4
  %and106.1.i = and i32 %call105.1.i, -268370944
  %or107.1.i = or i32 %and106.1.i, 112460496
  %call113.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 768, i32 noundef %or107.1.i) #4
  %call119.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 772, ptr noundef nonnull %tmp.i28) #4
  %and120.1.i = and i32 %call119.1.i, -16777216
  %or121.1.i = or i32 %and120.1.i, 8294484
  %call127.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 772, i32 noundef %or121.1.i) #4
  %call133.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 776, ptr noundef nonnull %tmp.i28) #4
  %and134.1.i = and i32 %call133.1.i, -67043840
  %or135.1.i = or i32 %and134.1.i, 15466736
  %call141.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 776, i32 noundef %or135.1.i) #4
  %call147.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 780, ptr noundef nonnull %tmp.i28) #4
  %and148.1.i = and i32 %call147.1.i, 16580607
  %or149.1.i = or i32 %and148.1.i, 318898176
  %call155.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 780, i32 noundef %or149.1.i) #4
  %call161.1.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 784, ptr noundef nonnull %tmp.i28) #4
  %and162.1.i = and i32 %call161.1.i, -65536
  %or163.1.i = or i32 %and162.1.i, 58741
  %call169.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 784, i32 noundef %or163.1.i) #4
  %call175.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 788, i32 noundef 10127809) #4
  %call181.1.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 792, i32 noundef 569408543) #4
  %call187.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 4144, i32 noundef 0) #4
  %call190.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 4148, i32 noundef 0) #4
  %call193.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus.i29, i16 noundef zeroext 280, ptr noundef nonnull %tmp.i28) #4
  %or194.i = or i32 %call193.i, 524800
  %call197.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus.i29, i16 noundef zeroext 280, i32 noundef %or194.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28) #4
  br label %if.end

if.end:                                           ; preds = %medusa_initialize_ntsc.exit, %medusa_initialize_pal.exit
  %i2c_bus = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  %call5 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 524, ptr noundef nonnull %tmp) #4
  %or.i80 = or i32 %call5, 16
  %call9 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 524, i32 noundef %or.i80) #4
  %call12 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 780, ptr noundef nonnull %tmp) #4
  %or.i81 = or i32 %call12, 16
  %call16 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 780, i32 noundef %or.i81) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %call16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25821_i2c_read(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25821_i2c_write(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @medusa_set_resolution(ptr noundef %dev, i32 noundef %width, i32 noundef %decoder_select) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %width)
  %cmp = icmp sgt i32 %width, 720
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %width, i32 noundef 720) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %width.addr.0 = phi i32 [ 720, %do.end ], [ %width, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %decoder_select)
  %0 = icmp ult i32 %decoder_select, 8
  br i1 %0, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add = add nuw nsw i32 %decoder_select, 1
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %_max_num_decoders = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %_max_num_decoders to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %_max_num_decoders, align 8
  %conv = zext i16 %2 to i32
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %decoder_count.0 = phi i32 [ %add, %if.then3 ], [ %conv, %if.else ]
  %decoder.0 = phi i32 [ %decoder_select, %if.then3 ], [ 0, %if.else ]
  %3 = zext i32 %width.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %width.addr.0, label %sw.default [
    i32 320, label %if.end4.sw.epilog_crit_edge
    i32 352, label %sw.bb5
    i32 176, label %sw.bb6
    i32 160, label %sw.bb7
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %if.end4.sw.epilog_crit_edge
  %hscale.0 = phi i32 [ 0, %sw.default ], [ 3640708, %sw.bb7 ], [ 3216818, %sw.bb6 ], [ 1090163, %sw.bb5 ], [ 1303371, %if.end4.sw.epilog_crit_edge ]
  %vscale.0 = phi i32 [ 0, %sw.default ], [ 7680, %sw.bb7 ], [ 7680, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %if.end4.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %decoder.0, i32 %decoder_count.0)
  %cmp829 = icmp ult i32 %decoder.0, %decoder_count.0
  br i1 %cmp829, label %for.body.lr.ph, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %i2c_bus = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %decoder.130 = phi i32 [ %decoder.0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %decoder.1.tr = trunc i32 %decoder.130 to i16
  %4 = shl i16 %decoder.1.tr, 9
  %conv11 = add i16 %4, 4144
  %call12 = tail call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %conv11, i32 noundef %hscale.0) #4
  %conv17 = add i16 %4, 4148
  %call18 = tail call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %conv17, i32 noundef %vscale.0) #4
  %inc = add i32 %decoder.130, 1
  %exitcond.not = icmp eq i32 %inc, %decoder_count.0
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @medusa_set_brightness(ptr noundef %dev, i32 noundef %brightness, i32 noundef %decoder) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %brightness)
  %1 = icmp ugt i32 %brightness, 10000
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul nuw nsw i32 %brightness, 255
  %mul.i.frozen = freeze i32 %mul.i
  %div.i21 = udiv i32 %mul.i.frozen, 10000
  %2 = mul i32 %div.i21, 10000
  %rem.i22.decomposed = sub i32 %mul.i.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999, i32 %rem.i22.decomposed)
  %cmp7.i = icmp ugt i32 %rem.i22.decomposed, 4999
  %inc.i = zext i1 %cmp7.i to i32
  %quotient.0.i = add nsw i32 %div.i21, -128
  %add.i = add nsw i32 %quotient.0.i, %inc.i
  %conv4.i = and i32 %add.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp1.i = icmp slt i32 %add.i, 0
  %retval.0.i = select i1 %cmp1.i, i32 %conv4.i, i32 %add.i
  %i2c_bus = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  %decoder.tr = trunc i32 %decoder to i16
  %3 = shl i16 %decoder.tr, 9
  %conv = add i16 %3, 4116
  %call3 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext %conv, ptr noundef nonnull %tmp) #4
  %and = and i32 %call3, -256
  %or = or i32 %and, %retval.0.i
  %call9 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %conv, i32 noundef %or) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @medusa_set_contrast(ptr noundef %dev, i32 noundef %contrast, i32 noundef %decoder) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %contrast)
  %1 = icmp ugt i32 %contrast, 10000
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul nuw nsw i32 %contrast, 255
  %mul.i.frozen = freeze i32 %mul.i
  %div.i19 = udiv i32 %mul.i.frozen, 10000
  %2 = mul i32 %div.i19, 10000
  %rem.i20.decomposed = sub i32 %mul.i.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999, i32 %rem.i20.decomposed)
  %cmp7.i = icmp ugt i32 %rem.i20.decomposed, 4999
  %inc.i = zext i1 %cmp7.i to i32
  %add.i = add nuw nsw i32 %div.i19, %inc.i
  %i2c_bus = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  %decoder.tr = trunc i32 %decoder to i16
  %3 = shl i16 %decoder.tr, 9
  %conv = add i16 %3, 4117
  %call2 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext %conv, ptr noundef nonnull %tmp) #4
  %and = and i32 %call2, -256
  %or = or i32 %and, %add.i
  %call8 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %conv, i32 noundef %or) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @medusa_set_hue(ptr noundef %dev, i32 noundef %hue, i32 noundef %decoder) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %hue)
  %1 = icmp ugt i32 %hue, 10000
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul nuw nsw i32 %hue, 255
  %mul.i.frozen = freeze i32 %mul.i
  %div.i21 = udiv i32 %mul.i.frozen, 10000
  %2 = mul i32 %div.i21, 10000
  %rem.i22.decomposed = sub i32 %mul.i.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999, i32 %rem.i22.decomposed)
  %cmp7.i = icmp ugt i32 %rem.i22.decomposed, 4999
  %inc.i = zext i1 %cmp7.i to i32
  %quotient.0.i = add nsw i32 %div.i21, -128
  %add.i = add nsw i32 %quotient.0.i, %inc.i
  %conv4.i = and i32 %add.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp1.i = icmp slt i32 %add.i, 0
  %retval.0.i = select i1 %cmp1.i, i32 %conv4.i, i32 %add.i
  %i2c_bus = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  %decoder.tr = trunc i32 %decoder to i16
  %3 = shl i16 %decoder.tr, 9
  %conv = add i16 %3, 4122
  %call3 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext %conv, ptr noundef nonnull %tmp) #4
  %and = and i32 %call3, -256
  %or = or i32 %and, %retval.0.i
  %call9 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %conv, i32 noundef %or) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @medusa_set_saturation(ptr noundef %dev, i32 noundef %saturation, i32 noundef %decoder) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %saturation)
  %1 = icmp ugt i32 %saturation, 10000
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul nuw nsw i32 %saturation, 255
  %mul.i.frozen = freeze i32 %mul.i
  %div.i42 = udiv i32 %mul.i.frozen, 10000
  %2 = mul i32 %div.i42, 10000
  %rem.i43.decomposed = sub i32 %mul.i.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999, i32 %rem.i43.decomposed)
  %cmp7.i = icmp ugt i32 %rem.i43.decomposed, 4999
  %inc.i = zext i1 %cmp7.i to i32
  %add.i = add nuw nsw i32 %div.i42, %inc.i
  %i2c_bus = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  %decoder.tr = trunc i32 %decoder to i16
  %3 = shl i16 %decoder.tr, 9
  %conv = add i16 %3, 4120
  %call2 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext %conv, ptr noundef nonnull %tmp) #4
  %and = and i32 %call2, -256
  %or = or i32 %and, %add.i
  %call8 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %conv, i32 noundef %or) #4
  %conv14 = add i16 %3, 4121
  %call15 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext %conv14, ptr noundef nonnull %tmp) #4
  %and16 = and i32 %call15, -256
  %or22 = or i32 %and16, %add.i
  %call23 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %conv14, i32 noundef %or22) #4
  %or24 = or i32 %call23, %call8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or24, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @medusa_video_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tmp, align 4
  %i2c_bus = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 13
  %call = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 284, ptr noundef nonnull %tmp) #4
  %and = and i32 %call, -3841
  %call3 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 284, i32 noundef %and) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end:                                           ; preds = %entry
  %call6 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 284, ptr noundef nonnull %tmp) #4
  %and7 = and i32 %call6, -33
  %call10 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 284, i32 noundef %and7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.error_crit_edge, label %for.cond.preheader

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.preheader:                               ; preds = %if.end
  %_max_num_decoders = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 21
  %1 = ptrtoint ptr %_max_num_decoders to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %_max_num_decoders, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp14110.not = icmp eq i16 %2, 0
  br i1 %cmp14110.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %medusa_set_decoderduration.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0111 = phi i32 [ %inc, %medusa_set_decoderduration.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0111)
  %4 = icmp ugt i32 %i.0111, 7
  br i1 %4, label %for.body.medusa_set_decoderduration.exit_crit_edge, label %if.end.i

for.body.medusa_set_decoderduration.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %medusa_set_decoderduration.exit

if.end.i:                                         ; preds = %for.body
  %switch.tableidx = add nsw i32 %i.0111, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 6
  br i1 %5, label %switch.lookup, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.medusa_video_init, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end.i.sw.epilog.i_crit_edge
  %disp_cnt_reg.0.i = phi i16 [ 296, %if.end.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %call.i = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext %disp_cnt_reg.0.i, ptr noundef nonnull %tmp.i) #4
  %7 = and i32 %i.0111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %fld_cnt.0.v.i = select i1 %tobool.not.i, i32 -65536, i32 65535
  %fld_cnt.0.i = and i32 %call.i, %fld_cnt.0.v.i
  %call11.i = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext %disp_cnt_reg.0.i, i32 noundef %fld_cnt.0.i) #4
  br label %medusa_set_decoderduration.exit

medusa_set_decoderduration.exit:                  ; preds = %sw.epilog.i, %for.body.medusa_set_decoderduration.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  %inc = add nuw nsw i32 %i.0111, 1
  %8 = ptrtoint ptr %_max_num_decoders to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %_max_num_decoders, align 8
  %conv = zext i16 %9 to i32
  %cmp14 = icmp ult i32 %inc, %conv
  br i1 %cmp14, label %medusa_set_decoderduration.exit.for.body_crit_edge, label %medusa_set_decoderduration.exit.for.end_crit_edge

medusa_set_decoderduration.exit.for.end_crit_edge: ; preds = %medusa_set_decoderduration.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

medusa_set_decoderduration.exit.for.body_crit_edge: ; preds = %medusa_set_decoderduration.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %medusa_set_decoderduration.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call18 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 276, ptr noundef nonnull %tmp) #4
  %and19 = and i32 %call18, -9371792
  %or = or i32 %and19, 589832
  %call22 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 276, i32 noundef %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %for.end.error_crit_edge, label %if.end26

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end26:                                         ; preds = %for.end
  %call29 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 280, ptr noundef nonnull %tmp) #4
  %or30 = or i32 %call29, 262400
  %call33 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 280, i32 noundef %or30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end26.error_crit_edge, label %if.end37

if.end26.error_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end37:                                         ; preds = %if.end26
  %call40 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 356, ptr noundef nonnull %tmp) #4
  %and41 = and i32 %call40, -2080374785
  %or44 = or i32 %and41, 268435456
  %call45 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 356, i32 noundef %or44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end37.error_crit_edge, label %if.end49

if.end37.error_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end49:                                         ; preds = %if.end37
  %call52 = call i32 @cx25821_i2c_read(ptr noundef %i2c_bus, i16 noundef zeroext 316, ptr noundef nonnull %tmp) #4
  %and53 = and i32 %call52, -17760768
  %10 = ptrtoint ptr %_max_num_decoders to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %_max_num_decoders, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp56 = icmp eq i16 %11, 8
  %value.0.v = select i1 %cmp56, i32 16777720, i32 17760520
  %value.0 = or i32 %and53, %value.0.v
  %or62 = or i32 %value.0, 7
  %call65 = call i32 @cx25821_i2c_write(ptr noundef %i2c_bus, i16 noundef zeroext 316, i32 noundef %or62) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end49.error_crit_edge, label %if.end69

if.end49.error_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end69:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  %call70 = call i32 @medusa_set_videostandard(ptr noundef %dev)
  br label %error

error:                                            ; preds = %if.end69, %if.end49.error_crit_edge, %if.end37.error_crit_edge, %if.end26.error_crit_edge, %for.end.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret_val.0 = phi i32 [ %call3, %entry.error_crit_edge ], [ %call10, %if.end.error_crit_edge ], [ %call22, %for.end.error_crit_edge ], [ %call33, %if.end26.error_crit_edge ], [ %call45, %if.end37.error_crit_edge ], [ %call65, %if.end49.error_crit_edge ], [ %call70, %if.end69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %ret_val.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx25821/cx25821-medusa-video.c", i32 417, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @medusa_set_resolution._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @medusa_set_resolution._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
