; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pwc/pwc-uncompress.c_pt.bc'
source_filename = "../drivers/media/usb/pwc/pwc-uncompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwc_frame_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pwc_device = type { %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [13 x i8], ptr, [3 x ptr], ptr, i32, i32, i32, i32, i32, %union.anon.114, i32, i32, i32, ptr, [64 x i8], %struct.v4l2_ctrl_handler, i16, ptr, ptr, ptr, ptr, %struct.anon.116, %struct.anon.117, %struct.anon.118, ptr, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.120, [3 x ptr] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.114 = type { %struct.pwc_dec23_private }
%struct.pwc_dec23_private = type { %struct.mutex, i8, i8, i32, i32, i32, i32, i32, ptr, [16 x i32], [16 x [1024 x i8]], [16 x [1024 x i8]], [16 x [256 x i8]], [16 x [256 x i8]], [256 x [12 x i32]], [8 x [256 x i8]], [256 x i32], [256 x i32] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.anon.116 = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.117 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.118 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr }
%struct.pwc_raw_frame = type { i16, i16, [4 x i8], [0 x i8] }

@pwc_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013pwc: This chipset is not supported for now\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwc_decompress\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/pwc/pwc-uncompress.c\00", [57 x i8] zeroinitializer }, align 32
@pwc_decompress._entry_ptr = internal global ptr @pwc_decompress._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.14 = private constant [42 x i8] c"../drivers/media/usb/pwc/pwc-uncompress.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 85, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 1163, i32 7 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @pwc_decompress._entry, ptr @pwc_decompress._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_decompress(ptr noundef %pdev, ptr noundef %fbuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %fbuf, i32 noundef 0) #4
  %data = getelementptr inbounds %struct.pwc_frame_buf, ptr %fbuf, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %frame_header_size = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 28
  %2 = ptrtoint ptr %frame_header_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame_header_size, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %pixfmt = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 15
  %4 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %5)
  %cmp.not = icmp eq i32 %5, 842093913
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  %conv = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %call, align 1
  %vbandlength = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 20
  %10 = ptrtoint ptr %vbandlength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vbandlength, align 8
  %conv2 = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %vbandlength3 = getelementptr inbounds %struct.pwc_raw_frame, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %vbandlength3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %vbandlength3, align 1
  %cmd = getelementptr inbounds %struct.pwc_raw_frame, ptr %call, i32 0, i32 2
  %cmd_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 24
  %14 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %cmd_buf, align 1
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %cmd, align 1
  %add.ptr5 = getelementptr %struct.pwc_raw_frame, ptr %call, i32 1
  %frame_size = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 30
  %17 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_size, align 8
  %19 = call ptr @memcpy(ptr %add.ptr5, ptr %add.ptr, i32 %18)
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %fbuf, i32 0, i32 4
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %22 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_size, align 8
  %add = add i32 %23, 8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %fbuf, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add)
  %cmp1.i = icmp ult i32 %25, %add
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !18

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1163, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %27, %if.then38.i ], [ %add, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %fbuf, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 35
  %height = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 36
  %num_planes.i95 = getelementptr inbounds %struct.vb2_buffer, ptr %fbuf, i32 0, i32 4
  %29 = ptrtoint ptr %num_planes.i95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_planes.i95, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i96 = icmp eq i32 %30, 0
  br i1 %cmp.not.i96, label %if.end.vb2_set_plane_payload.exit107_crit_edge, label %if.then.i99

if.end.vb2_set_plane_payload.exit107_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %vb2_set_plane_payload.exit107

if.then.i99:                                      ; preds = %if.end
  %31 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width, align 8
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %mul = mul i32 %32, 3
  %mul11 = mul i32 %mul, %34
  %div = sdiv i32 %mul11, 2
  %length.i97 = getelementptr inbounds %struct.vb2_buffer, ptr %fbuf, i32 0, i32 10, i32 0, i32 4
  %35 = ptrtoint ptr %length.i97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i97, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %div)
  %cmp1.i98 = icmp ult i32 %36, %div
  br i1 %cmp1.i98, label %land.rhs.i101, label %if.then.i99.if.end42.i106_crit_edge

if.then.i99.if.end42.i106_crit_edge:              ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i106

land.rhs.i101:                                    ; preds = %if.then.i99
  %.b1.i100 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i100, label %land.rhs.i101.if.then38.i103_crit_edge, label %if.then8.i102, !prof !18

land.rhs.i101.if.then38.i103_crit_edge:           ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i103

if.then8.i102:                                    ; preds = %land.rhs.i101
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1163, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i103

if.then38.i103:                                   ; preds = %if.then8.i102, %land.rhs.i101.if.then38.i103_crit_edge
  %37 = ptrtoint ptr %length.i97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length.i97, align 8
  br label %if.end42.i106

if.end42.i106:                                    ; preds = %if.then38.i103, %if.then.i99.if.end42.i106_crit_edge
  %size.addr.0.i104 = phi i32 [ %38, %if.then38.i103 ], [ %div, %if.then.i99.if.end42.i106_crit_edge ]
  %bytesused.i105 = getelementptr inbounds %struct.vb2_buffer, ptr %fbuf, i32 0, i32 10, i32 0, i32 3
  %39 = ptrtoint ptr %bytesused.i105 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %size.addr.0.i104, ptr %bytesused.i105, align 4
  br label %vb2_set_plane_payload.exit107

vb2_set_plane_payload.exit107:                    ; preds = %if.end42.i106, %if.end.vb2_set_plane_payload.exit107_crit_edge
  %vbandlength12 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 20
  %40 = ptrtoint ptr %vbandlength12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vbandlength12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp13 = icmp eq i32 %41, 0
  br i1 %cmp13, label %if.then15, label %if.end43

if.then15:                                        ; preds = %vb2_set_plane_payload.exit107
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp24117 = icmp sgt i32 %43, 0
  br i1 %cmp24117, label %for.cond26.preheader.preheader, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond26.preheader.preheader:                   ; preds = %if.then15
  %44 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width, align 8
  %mul18 = mul i32 %43, %45
  %add.ptr19 = getelementptr i8, ptr %call, i32 %mul18
  %div21 = sdiv i32 %mul18, 4
  %add.ptr22 = getelementptr i8, ptr %add.ptr19, i32 %div21
  br label %for.cond26.preheader

for.cond26.preheaderthread-pre-split:             ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %width, align 8
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond26.preheaderthread-pre-split, %for.cond26.preheader.preheader
  %47 = phi i32 [ %.pr, %for.cond26.preheaderthread-pre-split ], [ %45, %for.cond26.preheader.preheader ]
  %dstv.0123 = phi ptr [ %dstv.1.lcssa, %for.cond26.preheaderthread-pre-split ], [ %add.ptr22, %for.cond26.preheader.preheader ]
  %dstu.0122 = phi ptr [ %dstu.1.lcssa, %for.cond26.preheaderthread-pre-split ], [ %add.ptr19, %for.cond26.preheader.preheader ]
  %dsty.0121 = phi ptr [ %dsty.1.lcssa, %for.cond26.preheaderthread-pre-split ], [ %call, %for.cond26.preheader.preheader ]
  %src.0120 = phi ptr [ %src.1.lcssa, %for.cond26.preheaderthread-pre-split ], [ %add.ptr, %for.cond26.preheader.preheader ]
  %line.0118 = phi i32 [ %inc, %for.cond26.preheaderthread-pre-split ], [ 0, %for.cond26.preheader.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp28108 = icmp sgt i32 %47, 0
  br i1 %cmp28108, label %for.body30.lr.ph, label %for.cond26.preheader.for.inc41_crit_edge

for.cond26.preheader.for.inc41_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc41

for.body30.lr.ph:                                 ; preds = %for.cond26.preheader
  %and = and i32 %line.0118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %48 = xor i32 %and, 1
  %not.tobool.not = xor i1 %tobool.not, true
  %dstv.2.idx = zext i1 %not.tobool.not to i32
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body30.lr.ph
  %dstv.1113 = phi ptr [ %dstv.0123, %for.body30.lr.ph ], [ %dstv.2, %for.body30.for.body30_crit_edge ]
  %dstu.1112 = phi ptr [ %dstu.0122, %for.body30.lr.ph ], [ %dstu.2, %for.body30.for.body30_crit_edge ]
  %dsty.1111 = phi ptr [ %dsty.0121, %for.body30.lr.ph ], [ %incdec.ptr33, %for.body30.for.body30_crit_edge ]
  %src.1110 = phi ptr [ %src.0120, %for.body30.lr.ph ], [ %src.2, %for.body30.for.body30_crit_edge ]
  %col.0109 = phi i32 [ 0, %for.body30.lr.ph ], [ %add40, %for.body30.for.body30_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %src.1110, i32 1
  %49 = ptrtoint ptr %src.1110 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %src.1110, align 2
  %incdec.ptr31 = getelementptr i16, ptr %dsty.1111, i32 1
  %51 = ptrtoint ptr %dsty.1111 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %dsty.1111, align 2
  %incdec.ptr32 = getelementptr i16, ptr %src.1110, i32 2
  %52 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %incdec.ptr, align 2
  %incdec.ptr33 = getelementptr i16, ptr %dsty.1111, i32 2
  %54 = ptrtoint ptr %incdec.ptr31 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %incdec.ptr31, align 2
  %55 = ptrtoint ptr %incdec.ptr32 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %incdec.ptr32, align 2
  %dstv.1113.sink = select i1 %tobool.not, ptr %dstu.1112, ptr %dstv.1113
  %dstu.2 = getelementptr i16, ptr %dstu.1112, i32 %48
  %dstv.2 = getelementptr i16, ptr %dstv.1113, i32 %dstv.2.idx
  %57 = ptrtoint ptr %dstv.1113.sink to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %dstv.1113.sink, align 2
  %src.2 = getelementptr i16, ptr %src.1110, i32 3
  %add40 = add i32 %col.0109, 4
  %58 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %width, align 8
  %cmp28 = icmp slt i32 %add40, %59
  br i1 %cmp28, label %for.body30.for.body30_crit_edge, label %for.body30.for.inc41_crit_edge

for.body30.for.inc41_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc41

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body30

for.inc41:                                        ; preds = %for.body30.for.inc41_crit_edge, %for.cond26.preheader.for.inc41_crit_edge
  %src.1.lcssa = phi ptr [ %src.0120, %for.cond26.preheader.for.inc41_crit_edge ], [ %src.2, %for.body30.for.inc41_crit_edge ]
  %dsty.1.lcssa = phi ptr [ %dsty.0121, %for.cond26.preheader.for.inc41_crit_edge ], [ %incdec.ptr33, %for.body30.for.inc41_crit_edge ]
  %dstu.1.lcssa = phi ptr [ %dstu.0122, %for.cond26.preheader.for.inc41_crit_edge ], [ %dstu.2, %for.body30.for.inc41_crit_edge ]
  %dstv.1.lcssa = phi ptr [ %dstv.0123, %for.cond26.preheader.for.inc41_crit_edge ], [ %dstv.2, %for.body30.for.inc41_crit_edge ]
  %inc = add nuw nsw i32 %line.0118, 1
  %60 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height, align 4
  %cmp24 = icmp slt i32 %inc, %61
  br i1 %cmp24, label %for.cond26.preheaderthread-pre-split, label %for.inc41.cleanup_crit_edge

for.inc41.cleanup_crit_edge:                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end43:                                         ; preds = %vb2_set_plane_payload.exit107
  %type44 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %62 = ptrtoint ptr %type44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %63)
  %cmp45 = icmp slt i32 %63, 675
  br i1 %cmp45, label %do.end, label %if.else49

do.end:                                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.else49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pwc_dec23_decompress(ptr noundef %pdev, ptr noundef %add.ptr, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else49, %do.end, %for.inc41.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end42.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.else49 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end42.i ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %for.inc41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwc_dec23_decompress(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pwc/pwc-uncompress.c", i32 85, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pwc_decompress._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pwc_decompress._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
