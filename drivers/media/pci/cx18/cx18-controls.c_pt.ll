; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-controls.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-controls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cx2341x_handler_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.166, i16, i16, i16, [10 x i16] }
%union.anon.166 = type { i16 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.111, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.111 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.112 = type { ptr, ptr }
%struct.anon.113 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr, ptr }
%struct.anon.115 = type { ptr, ptr, ptr }
%struct.anon.116 = type { ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.109 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.1, %union.anon.2, i32, ptr, i32, %struct.anon, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.1 = type { i64 }
%union.anon.2 = type { ptr }
%struct.anon = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@cx18_cxhdl_ops = dso_local constant { %struct.cx2341x_handler_ops, [16 x i8] } { %struct.cx2341x_handler_ops { ptr @cx18_s_audio_sampling_freq, ptr @cx18_s_audio_mode, ptr @cx18_s_video_encoding, ptr @cx18_s_stream_vbi_fmt }, [16 x i8] zeroinitializer }, align 32
@cx18_s_audio_sampling_freq.freqs = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 32000], [20 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_s_stream_vbi_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016%s:  info: disabled insertion of sliced VBI data into the MPEG stream\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx18_s_stream_vbi_fmt\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/cx18/cx18-controls.c\00", [57 x i8] zeroinitializer }, align 32
@cx18_s_stream_vbi_fmt._entry_ptr = internal global ptr @cx18_s_stream_vbi_fmt._entry, section ".printk_index", align 4
@cx18_s_stream_vbi_fmt._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: Unable to allocate buffers for sliced VBI data insertion\0A\00", [32 x i8] zeroinitializer }, align 32
@cx18_s_stream_vbi_fmt._entry_ptr.5 = internal global ptr @cx18_s_stream_vbi_fmt._entry.3, section ".printk_index", align 4
@cx18_s_stream_vbi_fmt._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016%s:  info: enabled insertion of sliced VBI data into the MPEG PS,when sliced VBI is enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@cx18_s_stream_vbi_fmt._entry_ptr.8 = internal global ptr @cx18_s_stream_vbi_fmt._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"cx18_cxhdl_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 112, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"freqs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 94, i32 19 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 33, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 51, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [42 x i8] c"../drivers/media/pci/cx18/cx18-controls.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 58, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @cx18_s_stream_vbi_fmt._entry, ptr @cx18_s_stream_vbi_fmt._entry.3, ptr @cx18_s_stream_vbi_fmt._entry.6, ptr @cx18_s_stream_vbi_fmt._entry_ptr, ptr @cx18_s_stream_vbi_fmt._entry_ptr.5, ptr @cx18_s_stream_vbi_fmt._entry_ptr.8, ptr @cx18_cxhdl_ops, ptr @cx18_s_audio_sampling_freq.freqs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_cxhdl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_audio_sampling_freq.freqs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_stream_vbi_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_stream_vbi_fmt._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_s_stream_vbi_fmt._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_audio_sampling_freq(ptr noundef readonly %cxhdl, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp ult i32 %idx, 3
  br i1 %cmp, label %do.body, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.body:                                          ; preds = %entry
  %subdevs = getelementptr i8, ptr %cxhdl, i32 -776
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn31 = load ptr, ptr %subdevs, align 4
  %cmp7.not33 = icmp eq ptr %.pn31, %subdevs
  br i1 %cmp7.not33, label %do.body.if.end22_crit_edge, label %for.body.lr.ph

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

for.body.lr.ph:                                   ; preds = %do.body
  %arrayidx = getelementptr [3 x i32], ptr @cx18_s_audio_sampling_freq.freqs, i32 0, i32 %idx
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn34 = phi ptr [ %.pn31, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %audio, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 %6(ptr noundef %__sd.035, i32 noundef %8) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp7.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp7.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cx18_s_audio_mode(ptr nocapture noundef writeonly %cxhdl, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dualwatch_stereo_mode = getelementptr i8, ptr %cxhdl, i32 348
  %0 = ptrtoint ptr %dualwatch_stereo_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %dualwatch_stereo_mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_video_encoding(ptr nocapture noundef readonly %cxhdl, i32 noundef %val) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp eq i32 %val, 0
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #6
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %width = getelementptr inbounds %struct.cx2341x_handler, ptr %cxhdl, i32 0, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %width, align 4
  %conv2 = zext i16 %4 to i32
  %5 = zext i1 %cmp to i32
  %div39 = lshr i32 %conv2, %5
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div39, ptr %format1, align 4
  %height = getelementptr inbounds %struct.cx2341x_handler, ptr %cxhdl, i32 0, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %height, align 2
  %conv4 = zext i16 %8 to i32
  %height5 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %height5, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %code, align 4
  %sd_av = getelementptr i8, ptr %cxhdl, i32 -656
  %11 = ptrtoint ptr %sd_av to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_av, align 8
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %entry.if.end25_crit_edge, label %if.else

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pad, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.else.if.end25_crit_edge, label %land.lhs.true

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_fmt, align 4
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %land.lhs.true.if.end25_crit_edge, label %if.else12

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %if.else12.if.else19_crit_edge, label %land.lhs.true14

if.else12.if.else19_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else19

land.lhs.true14:                                  ; preds = %if.else12
  %set_fmt15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %set_fmt15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_fmt15, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else19_crit_edge, label %land.lhs.true14.if.end25.sink.split_crit_edge

land.lhs.true14.if.end25.sink.split_crit_edge:    ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

land.lhs.true14.if.else19_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true14.if.else19_crit_edge, %if.else12.if.else19_crit_edge
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else19, %land.lhs.true14.if.end25.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.else19 ], [ %21, %land.lhs.true14.if.end25.sink.split_crit_edge ]
  %call23 = call i32 %.sink(ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull %format) #6
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %land.lhs.true.if.end25_crit_edge, %if.else.if.end25_crit_edge, %entry.if.end25_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_s_stream_vbi_fmt(ptr noundef %cxhdl, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.cx2341x_handler, ptr %cxhdl, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %ana_capturing = getelementptr i8, ptr %cxhdl, i32 16292
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ana_capturing, i32 noundef 4) #6
  %5 = ptrtoint ptr %ana_capturing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ana_capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %entry.cleanup82_crit_edge, label %if.end

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fmt)
  %cmp1.not = icmp eq i32 %fmt, 1
  br i1 %cmp1.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %7 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %lor.lhs.false.if.then7_crit_edge [
    i32 0, label %lor.lhs.false.if.end15_crit_edge
    i32 3, label %lor.lhs.false.if.end15_crit_edge121
    i32 5, label %lor.lhs.false.if.end15_crit_edge122
  ]

lor.lhs.false.if.end15_crit_edge122:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

lor.lhs.false.if.end15_crit_edge121:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %insert_mpeg = getelementptr i8, ptr %cxhdl, i32 16548
  %8 = ptrtoint ptr %insert_mpeg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %insert_mpeg, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %9 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then7.cleanup82_crit_edge, label %do.end

if.then7.cleanup82_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr i8, ptr %cxhdl, i32 -724
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %cleanup82

if.end15:                                         ; preds = %lor.lhs.false.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge121, %lor.lhs.false.if.end15_crit_edge122
  %sliced_mpeg_data = getelementptr i8, ptr %cxhdl, i32 18856
  %10 = ptrtoint ptr %sliced_mpeg_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sliced_mpeg_data, align 4
  %cmp17 = icmp eq ptr %11, null
  br i1 %cmp17, label %if.end15.for.body_crit_edge, label %if.end15.if.end47_crit_edge

if.end15.if.end47_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 1592) #10
  %arrayidx23 = getelementptr [32 x ptr], ptr %sliced_mpeg_data, i32 0, i32 %i.0112
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %arrayidx23, align 4
  %cmp27 = icmp eq ptr %call7.i, null
  br i1 %cmp27, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0112)
  %cmp29114.not = icmp eq i32 %i.0112, 0
  br i1 %cmp29114.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec115.in = phi i32 [ %dec115, %while.body.while.body_crit_edge ], [ %i.0112, %while.cond.preheader.while.body_crit_edge ]
  %dec115 = add nsw i32 %dec115.in, -1
  %arrayidx32 = getelementptr [32 x ptr], ptr %sliced_mpeg_data, i32 0, i32 %dec115
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx32, align 4
  tail call void @kfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx32, align 4
  %cmp29 = icmp sgt i32 %dec115.in, 1
  br i1 %cmp29, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %insert_mpeg37 = getelementptr i8, ptr %cxhdl, i32 16548
  %17 = ptrtoint ptr %insert_mpeg37 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %insert_mpeg37, align 4
  %name43 = getelementptr i8, ptr %cxhdl, i32 -724
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name43) #9
  br label %cleanup82

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.end47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end47_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end47:                                         ; preds = %for.inc.if.end47_crit_edge, %if.end15.if.end47_crit_edge
  %insert_mpeg49 = getelementptr i8, ptr %cxhdl, i32 16548
  %18 = ptrtoint ptr %insert_mpeg49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %insert_mpeg49, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %19 = load i32, ptr @cx18_debug, align 4
  %and51 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end47.do.end64_crit_edge, label %do.end56

if.end47.do.end64_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

do.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %name59 = getelementptr i8, ptr %cxhdl, i32 -724
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name59) #9
  br label %do.end64

do.end64:                                         ; preds = %do.end56, %if.end47.do.end64_crit_edge
  %sliced_in = getelementptr i8, ptr %cxhdl, i32 16528
  %20 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sliced_in, align 4
  %call66 = tail call zeroext i16 @cx18_get_service_set(ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call66)
  %cmp67 = icmp eq i16 %call66, 0
  br i1 %cmp67, label %if.then69, label %do.end64.cleanup82_crit_edge

do.end64.cleanup82_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.then69:                                        ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  %is_60hz = getelementptr i8, ptr %cxhdl, i32 -635
  %22 = ptrtoint ptr %is_60hz to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_60hz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool70.not = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %sliced_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sliced_in, align 4
  %. = select i1 %tobool70.not, i16 16384, i16 4096
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %., ptr %25, align 4
  %27 = load ptr, ptr %sliced_in, align 4
  %is_50hz = getelementptr i8, ptr %cxhdl, i32 -636
  %28 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_50hz, align 4
  %conv80 = zext i8 %29 to i32
  tail call void @cx18_expand_service_set(ptr noundef %27, i32 noundef %conv80) #6
  br label %cleanup82

cleanup82:                                        ; preds = %if.then69, %do.end64.cleanup82_crit_edge, %while.end, %do.end, %if.then7.cleanup82_crit_edge, %entry.cleanup82_crit_edge
  %retval.1 = phi i32 [ -12, %while.end ], [ -16, %entry.cleanup82_crit_edge ], [ 0, %do.end ], [ 0, %if.then7.cleanup82_crit_edge ], [ 0, %if.then69 ], [ 0, %do.end64.cleanup82_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cx18_get_service_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_expand_service_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @cx18_cxhdl_ops, !1, !"cx18_cxhdl_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-controls.c", i32 112, i32 34}
!2 = !{ptr @cx18_s_audio_sampling_freq.freqs, !3, !"freqs", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx18/cx18-controls.c", i32 94, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx18/cx18-controls.c", i32 33, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cx18_s_stream_vbi_fmt._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @cx18_s_stream_vbi_fmt._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-controls.c", i32 51, i32 5}
!12 = !{ptr @cx18_s_stream_vbi_fmt._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cx18_s_stream_vbi_fmt._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx18/cx18-controls.c", i32 58, i32 2}
!16 = !{ptr @cx18_s_stream_vbi_fmt._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cx18_s_stream_vbi_fmt._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
