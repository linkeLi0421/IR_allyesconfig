; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-av-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-av-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.161, %struct.anon.162, %struct.anon.163, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168 }
%struct.anon.161 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.162 = type { ptr, ptr }
%struct.anon.163 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.164 = type { ptr, ptr }
%struct.anon.165 = type { ptr, ptr, ptr }
%struct.anon.166 = type { ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.103], %struct.media_entity_enum, i32 }
%struct.anon.103 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.115 }
%union.anon.115 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.117, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.117 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_decode_vbi_line = type { i32, ptr, i32, i32 }
%struct.vbi_anc_data = type { [3 x i8], i8, i8, i8, [2 x i8], [1 x i8] }

@cx18_av_g_sliced_fmt.lcr2vbi = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 1, i16 0, i16 0, i16 16384, i16 0, i16 4096, i16 0, i16 0, i16 1024, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [32 x i8] zeroinitializer }, align 32
@decode_vps.biphase_tbl = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\D2ZR\D2\96\1E\16\96\92\1A\12\92\D2ZR\D2\D0XP\D0\94\1C\14\94\90\18\10\90\D0XP\D0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\E1ia\E1\A5-%\A5\A1)!\A1\E1ia\E1\C3KC\C3\87\0F\07\87\83\0B\03\83\C3KC\C3\C1IA\C1\85\0D\05\85\81\09\01\81\C1IA\C1\E1ia\E1\A5-%\A5\A1)!\A1\E1ia\E1\E0h`\E0\A4,$\A4\A0( \A0\E0h`\E0\C2JB\C2\86\0E\06\86\82\0A\02\82\C2JB\C2\C0H@\C0\84\0C\04\84\80\08\00\80\C0H@\C0\E0h`\E0\A4,$\A4\A0( \A0\E0h`\E0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\D2ZR\D2\96\1E\16\96\92\1A\12\92\D2ZR\D2\D0XP\D0\94\1C\14\94\90\18\10\90\D0XP\D0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0", [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 85, i64 145]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 6, i64 9]
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"lcr2vbi\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 122, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"biphase_tbl\00", align 1
@___asan_gen_.8 = private constant [40 x i8] c"../drivers/media/pci/cx18/cx18-av-vbi.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 70, i32 18 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @cx18_av_g_sliced_fmt.lcr2vbi, ptr @decode_vps.biphase_tbl], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_g_sliced_fmt.lcr2vbi to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_vps.biphase_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_g_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef %svbi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %std = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1
  %4 = call ptr @memset(ptr %svbi, i32 0, i32 98)
  %call1 = tail call zeroext i8 @cx18_av_read(ptr noundef %1, i16 noundef zeroext 1028) #5
  %5 = and i8 %call1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.for.body_crit_edge, label %if.end.for.body35_crit_edge

if.end.for.body35_crit_edge:                      ; preds = %if.end
  br label %for.body35

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0108 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 7, %if.end.for.body_crit_edge ]
  %6 = trunc i32 %i.0108 to i16
  %conv8 = add i16 %6, 1053
  %call9 = tail call zeroext i8 @cx18_av_read(ptr noundef %1, i16 noundef zeroext %conv8) #5
  %conv10 = zext i8 %call9 to i32
  %7 = lshr i32 %conv10, 4
  %arrayidx = getelementptr [16 x i16], ptr @cx18_av_g_sliced_fmt.lcr2vbi, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %arrayidx13 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %i.0108
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx13, align 2
  %and15 = and i32 %conv10, 15
  %arrayidx16 = getelementptr [16 x i16], ptr @cx18_av_g_sliced_fmt.lcr2vbi, i32 0, i32 %and15
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx16, align 2
  %arrayidx19 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 %i.0108
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx19, align 2
  %or104 = or i16 %12, %9
  %14 = ptrtoint ptr %svbi to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %svbi, align 4
  %or30105 = or i16 %or104, %15
  store i16 %or30105, ptr %svbi, align 4
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond110.not = icmp eq i32 %inc, 24
  br i1 %exitcond110.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %if.end.for.body35_crit_edge
  %i.1107 = phi i32 [ %inc67, %for.body35.for.body35_crit_edge ], [ 10, %if.end.for.body35_crit_edge ]
  %16 = trunc i32 %i.1107 to i16
  %conv39 = add i16 %16, 1050
  %call40 = tail call zeroext i8 @cx18_av_read(ptr noundef %1, i16 noundef zeroext %conv39) #5
  %conv41 = zext i8 %call40 to i32
  %17 = lshr i32 %conv41, 4
  %arrayidx43 = getelementptr [16 x i16], ptr @cx18_av_g_sliced_fmt.lcr2vbi, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx43, align 2
  %arrayidx46 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %i.1107
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx46, align 2
  %and48 = and i32 %conv41, 15
  %arrayidx49 = getelementptr [16 x i16], ptr @cx18_av_g_sliced_fmt.lcr2vbi, i32 0, i32 %and48
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx49, align 2
  %arrayidx52 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 %i.1107
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx52, align 2
  %or61102 = or i16 %22, %19
  %24 = ptrtoint ptr %svbi to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %svbi, align 4
  %or64103 = or i16 %or61102, %25
  store i16 %or64103, ptr %svbi, align 4
  %inc67 = add nuw nsw i32 %i.1107, 1
  %exitcond.not = icmp eq i32 %inc67, 22
  br i1 %exitcond.not, label %for.body35.cleanup_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35

for.body35.cleanup_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body35.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cx18_av_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_s_raw_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  tail call void @cx18_av_std_setup(ptr noundef %1) #5
  %slicer_line_delay = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 11
  %2 = ptrtoint ptr %slicer_line_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slicer_line_delay, align 8
  %conv = trunc i32 %3 to i8
  %call1 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1151, i8 noundef zeroext %conv) #5
  %call2 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1028, i8 noundef zeroext 46) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_av_std_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_s_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef %svbi) local_unnamed_addr #0 align 64 {
entry:
  %lcr = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %std = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %and = and i64 %3, 63744
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lcr) #5
  %4 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 7
  %5 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 8
  %6 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 9
  %7 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 10
  %8 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 11
  %9 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 12
  %10 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 13
  %11 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 14
  %12 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 15
  %13 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 16
  %14 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 17
  %15 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 18
  %16 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 19
  %17 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 20
  %18 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 21
  %19 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 22
  %20 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 23
  %21 = call ptr @memset(ptr %lcr, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  tail call void @cx18_av_std_setup(ptr noundef %1) #5
  %call1 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1028, i8 noundef zeroext 50) #5
  %call2 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1030, i8 noundef zeroext 19) #5
  %slicer_line_delay = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 11
  %22 = ptrtoint ptr %slicer_line_delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slicer_line_delay, align 8
  %conv = trunc i32 %23 to i8
  %call3 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1151, i8 noundef zeroext %conv) #5
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1
  br i1 %tobool.not, label %for.cond5.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx36 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 22
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %arrayidx36, align 2
  %arrayidx39 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 0, i32 22
  %arrayidx36.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 23
  %25 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %arrayidx36.1, align 2
  %26 = call ptr @memset(ptr %service_lines, i32 0, i32 20)
  %27 = call ptr @memset(ptr %arrayidx39, i32 0, i32 24)
  br label %for.cond47.preheader.preheader

for.cond5.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx10 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 0
  %28 = call ptr @memset(ptr %service_lines, i32 0, i32 14)
  %29 = call ptr @memset(ptr %arrayidx10, i32 0, i32 14)
  br label %for.cond47.preheader.preheader

for.cond47.preheader.preheader:                   ; preds = %for.cond5.preheader, %for.cond17.preheader
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.inc79.1.for.cond47.preheader_crit_edge, %for.cond47.preheader.preheader
  %i.3191 = phi i32 [ %inc83, %for.inc79.1.for.cond47.preheader_crit_edge ], [ 7, %for.cond47.preheader.preheader ]
  %arrayidx75 = getelementptr [24 x i8], ptr %lcr, i32 0, i32 %i.3191
  %arrayidx53 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 1, i32 %i.3191
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx53, align 2
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i16 %31, label %for.cond47.preheader.for.inc79_crit_edge [
    i16 1, label %for.cond47.preheader.for.inc79.sink.split_crit_edge
    i16 16384, label %sw.bb58
    i16 4096, label %sw.bb65
    i16 1024, label %sw.bb72
  ]

for.cond47.preheader.for.inc79.sink.split_crit_edge: ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.sink.split

for.cond47.preheader.for.inc79_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79

sw.bb58:                                          ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.sink.split

sw.bb65:                                          ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.sink.split

sw.bb72:                                          ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.sink.split

for.inc79.sink.split:                             ; preds = %sw.bb72, %sw.bb65, %sw.bb58, %for.cond47.preheader.for.inc79.sink.split_crit_edge
  %.sink202 = phi i8 [ 4, %sw.bb58 ], [ 6, %sw.bb65 ], [ 9, %sw.bb72 ], [ 1, %for.cond47.preheader.for.inc79.sink.split_crit_edge ]
  %33 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx75, align 1
  %conv57 = or i8 %34, %.sink202
  store i8 %conv57, ptr %arrayidx75, align 1
  br label %for.inc79

for.inc79:                                        ; preds = %for.inc79.sink.split, %for.cond47.preheader.for.inc79_crit_edge
  %arrayidx53.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %svbi, i32 0, i32 1, i32 0, i32 %i.3191
  %35 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx53.1, align 2
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %36, label %for.inc79.for.inc79.1_crit_edge [
    i16 1, label %sw.bb.1
    i16 16384, label %sw.bb58.1
    i16 4096, label %sw.bb65.1
    i16 1024, label %for.inc79.for.inc79.1.sink.split_crit_edge
  ]

for.inc79.for.inc79.1.sink.split_crit_edge:       ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.1.sink.split

for.inc79.for.inc79.1_crit_edge:                  ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.1

sw.bb65.1:                                        ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.1.sink.split

sw.bb58.1:                                        ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.1.sink.split

sw.bb.1:                                          ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79.1.sink.split

for.inc79.1.sink.split:                           ; preds = %sw.bb.1, %sw.bb58.1, %sw.bb65.1, %for.inc79.for.inc79.1.sink.split_crit_edge
  %.sink203 = phi i8 [ 16, %sw.bb.1 ], [ 64, %sw.bb58.1 ], [ 96, %sw.bb65.1 ], [ -112, %for.inc79.for.inc79.1.sink.split_crit_edge ]
  %38 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx75, align 1
  %conv57.1 = or i8 %39, %.sink203
  store i8 %conv57.1, ptr %arrayidx75, align 1
  br label %for.inc79.1

for.inc79.1:                                      ; preds = %for.inc79.1.sink.split, %for.inc79.for.inc79.1_crit_edge
  %inc83 = add nuw nsw i32 %i.3191, 1
  %exitcond.not = icmp eq i32 %inc83, 24
  br i1 %exitcond.not, label %for.end84, label %for.inc79.1.for.cond47.preheader_crit_edge

for.inc79.1.for.cond47.preheader_crit_edge:       ; preds = %for.inc79.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond47.preheader

for.end84:                                        ; preds = %for.inc79.1
  br i1 %tobool.not, label %for.body90.preheader, label %for.body102.preheader

for.body102.preheader:                            ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %7, align 1
  %call106 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1060, i8 noundef zeroext %41) #5
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %8, align 1
  %call106.1 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1061, i8 noundef zeroext %43) #5
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %9, align 1
  %call106.2 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1062, i8 noundef zeroext %45) #5
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %10, align 1
  %call106.3 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1063, i8 noundef zeroext %47) #5
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %11, align 1
  %call106.4 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1064, i8 noundef zeroext %49) #5
  %50 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %12, align 1
  %call106.5 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1065, i8 noundef zeroext %51) #5
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %13, align 1
  %call106.6 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1066, i8 noundef zeroext %53) #5
  %54 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %14, align 1
  %call106.7 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1067, i8 noundef zeroext %55) #5
  %56 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %15, align 1
  %call106.8 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1068, i8 noundef zeroext %57) #5
  %58 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %16, align 1
  %call106.9 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1069, i8 noundef zeroext %59) #5
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %17, align 1
  %call106.10 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1070, i8 noundef zeroext %61) #5
  %62 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %18, align 1
  %call106.11 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1071, i8 noundef zeroext %63) #5
  %64 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %19, align 1
  %call106.12 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1072, i8 noundef zeroext %65) #5
  %call116 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1073, i8 noundef zeroext 0) #5
  %call116.1 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1074, i8 noundef zeroext 0) #5
  %call116.2 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1075, i8 noundef zeroext 0) #5
  br label %if.end120

for.body90.preheader:                             ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %4, align 1
  %call93 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1060, i8 noundef zeroext %67) #5
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %5, align 1
  %call93.1 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1061, i8 noundef zeroext %69) #5
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %6, align 1
  %call93.2 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1062, i8 noundef zeroext %71) #5
  %72 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %7, align 1
  %call93.3 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1063, i8 noundef zeroext %73) #5
  %74 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %8, align 1
  %call93.4 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1064, i8 noundef zeroext %75) #5
  %76 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %9, align 1
  %call93.5 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1065, i8 noundef zeroext %77) #5
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %10, align 1
  %call93.6 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1066, i8 noundef zeroext %79) #5
  %80 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %11, align 1
  %call93.7 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1067, i8 noundef zeroext %81) #5
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %12, align 1
  %call93.8 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1068, i8 noundef zeroext %83) #5
  %84 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %13, align 1
  %call93.9 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1069, i8 noundef zeroext %85) #5
  %86 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %14, align 1
  %call93.10 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1070, i8 noundef zeroext %87) #5
  %88 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %15, align 1
  %call93.11 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1071, i8 noundef zeroext %89) #5
  %90 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %16, align 1
  %call93.12 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1072, i8 noundef zeroext %91) #5
  %92 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %17, align 1
  %call93.13 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1073, i8 noundef zeroext %93) #5
  %94 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %18, align 1
  %call93.14 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1074, i8 noundef zeroext %95) #5
  %96 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %19, align 1
  %call93.15 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1075, i8 noundef zeroext %97) #5
  %98 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %20, align 1
  br label %if.end120

if.end120:                                        ; preds = %for.body90.preheader, %for.body102.preheader
  %.sink = phi i8 [ 0, %for.body102.preheader ], [ %99, %for.body90.preheader ]
  %cond = phi i8 [ 26, %for.body102.preheader ], [ 38, %for.body90.preheader ]
  %call116.3 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1076, i8 noundef zeroext %.sink) #5
  %call121 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1084, i8 noundef zeroext 22) #5
  %call124 = tail call i32 @cx18_av_write(ptr noundef %1, i16 noundef zeroext 1140, i8 noundef zeroext %cond) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lcr) #5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_decode_vbi_line(ptr nocapture noundef readonly %sd, ptr nocapture noundef %vbi) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %p = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 1
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr [3 x i8], ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.not = icmp eq i8 %7, -1
  br i1 %cmp.not, label %lor.lhs.false6, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr [3 x i8], ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp10.not = icmp eq i8 %9, -1
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false6.if.then_crit_edge

lor.lhs.false6.if.then_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false12:                                  ; preds = %lor.lhs.false6
  %did13 = getelementptr inbounds %struct.vbi_anc_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %did13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %did13, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %11, label %lor.lhs.false12.if.then_crit_edge [
    i8 -111, label %lor.lhs.false12.if.end_crit_edge
    i8 85, label %lor.lhs.false12.if.end_crit_edge114
  ]

lor.lhs.false12.if.end_crit_edge114:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false12.if.end_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false12.if.then_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false12.if.then_crit_edge, %lor.lhs.false6.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %type = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 2
  %14 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %line, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12.if.end_crit_edge, %lor.lhs.false12.if.end_crit_edge114
  %sdid25 = getelementptr inbounds %struct.vbi_anc_data, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %sdid25 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sdid25, align 1
  %17 = and i8 %16, 15
  %and = zext i8 %17 to i32
  %idid = getelementptr inbounds %struct.vbi_anc_data, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %idid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %idid, align 1
  %20 = and i8 %19, 63
  %and29 = zext i8 %20 to i32
  %slicer_line_offset = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 18, i32 12
  %21 = ptrtoint ptr %slicer_line_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slicer_line_offset, align 4
  %add = add i32 %22, %and29
  %payload = getelementptr inbounds %struct.vbi_anc_data, ptr %3, i32 0, i32 5
  %23 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and, label %if.end.sw.epilog.thread102_crit_edge [
    i32 1, label %if.end.sw.epilog.thread_crit_edge
    i32 4, label %sw.bb30
    i32 6, label %sw.bb31
    i32 9, label %sw.epilog
  ]

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

if.end.sw.epilog.thread102_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread102

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb31:                                          ; preds = %if.end
  %24 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %payload, align 1
  %26 = lshr i8 %25, 4
  %xor.i = xor i8 %26, %25
  %27 = lshr i8 %xor.i, 2
  %xor6.i = xor i8 %27, %xor.i
  %28 = lshr i8 %xor6.i, 1
  %xor11.i = xor i8 %28, %xor6.i
  %29 = and i8 %xor11.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool34.not = icmp eq i8 %29, 0
  br i1 %tobool34.not, label %sw.bb31.sw.epilog.thread102_crit_edge, label %lor.rhs

sw.bb31.sw.epilog.thread102_crit_edge:            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread102

lor.rhs:                                          ; preds = %sw.bb31
  %arrayidx35 = getelementptr %struct.vbi_anc_data, ptr %3, i32 1
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx35, align 1
  %32 = lshr i8 %31, 4
  %xor.i91 = xor i8 %32, %31
  %33 = lshr i8 %xor.i91, 2
  %xor6.i92 = xor i8 %33, %xor.i91
  %34 = lshr i8 %xor6.i92, 1
  %xor11.i93 = xor i8 %34, %xor6.i92
  %35 = and i8 %xor11.i93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not = icmp eq i8 %35, 0
  br i1 %tobool37.not, label %lor.rhs.sw.epilog.thread102_crit_edge, label %lor.rhs.sw.epilog.thread_crit_edge

lor.rhs.sw.epilog.thread_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

lor.rhs.sw.epilog.thread102_crit_edge:            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread102

sw.epilog:                                        ; preds = %if.end
  %call39 = tail call fastcc i32 @decode_vps(ptr noundef %payload, ptr noundef %payload)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.sw.epilog.thread102_crit_edge

sw.epilog.sw.epilog.thread102_crit_edge:          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread102

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.epilog.thread102:                              ; preds = %sw.epilog.sw.epilog.thread102_crit_edge, %lor.rhs.sw.epilog.thread102_crit_edge, %sw.bb31.sw.epilog.thread102_crit_edge, %if.end.sw.epilog.thread102_crit_edge
  %type45106 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 3
  %36 = ptrtoint ptr %type45106 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %type45106, align 4
  %line51 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 2
  %37 = ptrtoint ptr %line51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %line51, align 4
  br label %40

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %lor.rhs.sw.epilog.thread_crit_edge, %sw.bb30, %if.end.sw.epilog.thread_crit_edge
  %sdid.097 = phi i32 [ 1024, %sw.epilog.sw.epilog.thread_crit_edge ], [ 4096, %lor.rhs.sw.epilog.thread_crit_edge ], [ %and, %if.end.sw.epilog.thread_crit_edge ], [ 16384, %sw.bb30 ]
  %type45 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 3
  %38 = ptrtoint ptr %type45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sdid.097, ptr %type45, align 4
  %line51110 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 2
  %39 = ptrtoint ptr %line51110 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %line51110, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %11)
  %cmp56111 = icmp eq i8 %11, 85
  %conv57112 = zext i1 %cmp56111 to i32
  br label %40

40:                                               ; preds = %sw.epilog.thread, %sw.epilog.thread102
  %41 = phi i32 [ %conv57112, %sw.epilog.thread ], [ 0, %sw.epilog.thread102 ]
  %42 = ptrtoint ptr %vbi to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %vbi, align 4
  %43 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %payload, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %40, %if.then
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_vps(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %p) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.039 = phi i32 [ 0, %entry ], [ %add22, %for.body.for.body_crit_edge ]
  %err.038 = phi i32 [ 0, %entry ], [ %or7, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %p, i32 %i.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx1 = getelementptr [256 x i8], ptr @decode_vps.biphase_tbl, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %add = or i32 %i.039, 1
  %arrayidx2 = getelementptr i8, ptr %p, i32 %add
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %idxprom3 = zext i8 %5 to i32
  %arrayidx4 = getelementptr [256 x i8], ptr @decode_vps.biphase_tbl, i32 0, i32 %idxprom3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %or35 = or i8 %7, %3
  %or = zext i8 %or35 to i32
  %or7 = or i32 %err.038, %or
  %8 = and i8 %7, 15
  %9 = shl i8 %3, 4
  %or1936 = or i8 %8, %9
  %div37 = lshr exact i32 %i.039, 1
  %arrayidx21 = getelementptr i8, ptr %dst, i32 %div37
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or1936, ptr %arrayidx21, align 1
  %add22 = add nuw nsw i32 %i.039, 2
  %cmp = icmp ult i32 %i.039, 24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and24 = and i32 %or7, 240
  ret i32 %and24
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @cx18_av_g_sliced_fmt.lcr2vbi, !1, !"lcr2vbi", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-av-vbi.c", i32 122, i32 19}
!2 = distinct !{null, !3, !"sliced_vbi_did", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx18/cx18-av-vbi.c", i32 44, i32 17}
!4 = !{ptr @decode_vps.biphase_tbl, !5, !"biphase_tbl", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx18/cx18-av-vbi.c", i32 70, i32 18}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
