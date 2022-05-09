; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119 }
%struct.anon.112 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, ptr }
%struct.anon.114 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.90, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.90 = type { i8 }
%struct.vbi_vps = type { [5 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_decode_vbi_line = type { i32, ptr, i32, i32 }
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@copy_vbi_data.mpeg_hdr_data = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\00\01\BAD\00\0Cf$\01\01\D1\D3\FA\FF\FF\00\00\01\BD\00\1A\84\80\07!\00]c\A7\FF\FF", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ITV0\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"itv0\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 7]
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 156, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"mpeg_hdr_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 180, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 214, i32 20 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [37 x i8] c"../drivers/media/pci/ivtv/ivtv-vbi.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 218, i32 20 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str.2, ptr @copy_vbi_data.mpeg_hdr_data, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_vbi_data.mpeg_hdr_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_write_vbi_from_user(ptr noundef %itv, ptr noundef %sliced, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  %cc = alloca %struct.vbi_cc, align 4
  %found_cc = alloca i32, align 4
  %d = alloca %struct.v4l2_sliced_vbi_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #6
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2139062144, ptr %cc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_cc) #6
  %1 = ptrtoint ptr %found_cc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %found_cc, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %d) #6
  %2 = call ptr @memset(ptr %d, i32 255, i32 64)
  %mul = shl i32 %cnt, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp11.not = icmp eq i32 %cnt, 0
  br i1 %cmp11.not, label %entry.if.end3_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.v4l2_sliced_vbi_data, ptr %sliced, i32 %i.012
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %for.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

for.body.if.then11.i.i_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %for.body
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 64, i32 -1226833920) #9, !srcloc !23
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !24

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %d, i32 noundef 64) #6
  %4 = call i32 @llvm.read_register.i32(metadata !13) #6
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !25
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %d, ptr noundef %add.ptr, i32 noundef 64) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #6, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !24

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %for.body.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %for.body.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %d, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %for.end

if.end:                                           ; preds = %if.end.i.i
  call fastcc void @ivtv_write_vbi_line(ptr noundef %itv, ptr noundef nonnull %d, ptr noundef nonnull %cc, ptr noundef nonnull %found_cc)
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then11.i.i
  %ret.0.ph = phi i32 [ -14, %if.then11.i.i ], [ %mul, %if.end.for.end_crit_edge ]
  %8 = ptrtoint ptr %found_cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %found_cc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool1.not = icmp eq i32 %.pr, 0
  br i1 %tobool1.not, label %for.end.if.end3_crit_edge, label %if.then2

for.end.if.end3_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %for.end
  %cc_payload_idx.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 19
  %9 = ptrtoint ptr %cc_payload_idx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cc_payload_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %10)
  %cmp.i = icmp ult i32 %10, 256
  br i1 %cmp.i, label %if.then.i8, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then.i8:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 18, i32 %10
  %11 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cc, align 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %cc_payload_idx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cc_payload_idx.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %cc_payload_idx.i, align 4
  %i_flags.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  call void @_set_bit(i32 noundef 9, ptr noundef %i_flags.i) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then.i8, %if.then2.if.end3_crit_edge, %for.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.015 = phi i32 [ %ret.0.ph, %if.then.i8 ], [ %ret.0.ph, %if.then2.if.end3_crit_edge ], [ %ret.0.ph, %for.end.if.end3_crit_edge ], [ 0, %entry.if.end3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_cc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #6
  ret i32 %ret.015
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_write_vbi_line(ptr noundef %itv, ptr nocapture noundef readonly %d, ptr nocapture noundef writeonly %cc, ptr nocapture noundef writeonly %found_cc) unnamed_addr #0 align 64 {
entry:
  %vps = alloca %struct.vbi_vps, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %d, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end72_crit_edge [
    i32 4096, label %land.lhs.true
    i32 1024, label %land.lhs.true18
    i32 16384, label %land.lhs.true52
  ]

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true:                                    ; preds = %entry
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %cmp1 = icmp eq i32 %4, 21
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then:                                          ; preds = %land.lhs.true
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 1
  %5 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %data8 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4
  %7 = ptrtoint ptr %data8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data8, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %even = getelementptr inbounds %struct.vbi_cc, ptr %cc, i32 0, i32 1
  %9 = ptrtoint ptr %even to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %even, align 1
  %arrayidx5 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.vbi_cc, ptr %cc, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx7, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cc to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %8, ptr %cc, align 1
  %arrayidx12 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr [2 x i8], ptr %cc, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx14, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %17 = ptrtoint ptr %found_cc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %found_cc, align 4
  br label %if.end72

land.lhs.true18:                                  ; preds = %entry
  %line19 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 2
  %18 = ptrtoint ptr %line19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %line19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %cmp20 = icmp eq i32 %19, 16
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true18.if.end72_crit_edge

land.lhs.true18.if.end72_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %field22 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 1
  %20 = ptrtoint ptr %field22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp23 = icmp eq i32 %21, 0
  br i1 %cmp23, label %if.then24, label %land.lhs.true21.if.end72_crit_edge

land.lhs.true21.if.end72_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then24:                                        ; preds = %land.lhs.true21
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %vps) #6
  %22 = getelementptr inbounds [5 x i8], ptr %vps, i32 0, i32 1
  %23 = getelementptr inbounds [5 x i8], ptr %vps, i32 0, i32 2
  %24 = getelementptr inbounds [5 x i8], ptr %vps, i32 0, i32 3
  %25 = getelementptr inbounds [5 x i8], ptr %vps, i32 0, i32 4
  %arrayidx26 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx26, align 2
  %28 = ptrtoint ptr %vps to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %vps, align 1
  %arrayidx30 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30, align 4
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %22, align 1
  %arrayidx34 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %23, align 1
  %arrayidx38 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 10
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx38, align 2
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %24, align 1
  %arrayidx42 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 11
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx42, align 1
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %25, align 1
  %vps_payload = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 23
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %vps, ptr noundef dereferenceable(5) %vps_payload, i32 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  br i1 %tobool45.not, label %if.then24.if.end48_crit_edge, label %if.then46

if.then24.if.end48_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then46:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %41 = call ptr @memcpy(ptr %vps_payload, ptr %vps, i32 5)
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 11, ptr noundef %i_flags) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.then24.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %vps) #6
  br label %if.end72

land.lhs.true52:                                  ; preds = %entry
  %line53 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 2
  %42 = ptrtoint ptr %line53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %line53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %43)
  %cmp54 = icmp eq i32 %43, 23
  br i1 %cmp54, label %land.lhs.true55, label %land.lhs.true52.if.end72_crit_edge

land.lhs.true52.if.end72_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %field56 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 1
  %44 = ptrtoint ptr %field56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %field56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp57 = icmp eq i32 %45, 0
  br i1 %cmp57, label %if.then58, label %land.lhs.true55.if.end72_crit_edge

land.lhs.true55.if.end72_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then58:                                        ; preds = %land.lhs.true55
  %data59 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4
  %46 = ptrtoint ptr %data59 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data59, align 4
  %conv = zext i8 %47 to i32
  %arrayidx62 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %d, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %49 to i32
  %shl = shl nuw nsw i32 %conv63, 8
  %or = or i32 %shl, %conv
  %wss_payload = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 21
  %50 = ptrtoint ptr %wss_payload to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wss_payload, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %or)
  %cmp64.not = icmp eq i32 %51, %or
  br i1 %cmp64.not, label %if.then58.if.end72_crit_edge, label %if.then66

if.then58.if.end72_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then66:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %wss_payload to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or, ptr %wss_payload, align 4
  %i_flags68 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 10, ptr noundef %i_flags68) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %if.then58.if.end72_crit_edge, %land.lhs.true55.if.end72_crit_edge, %land.lhs.true52.if.end72_crit_edge, %if.end48, %land.lhs.true21.if.end72_crit_edge, %land.lhs.true18.if.end72_crit_edge, %if.end, %land.lhs.true.if.end72_crit_edge, %entry.if.end72_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_process_vbi_data(ptr noundef %itv, ptr noundef %buf, i64 noundef %pts_stamp, i32 noundef %streamtype) local_unnamed_addr #0 align 64 {
entry:
  %cc.i = alloca %struct.vbi_cc, align 4
  %found_cc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 4
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %bytesused = getelementptr inbounds %struct.ivtv_buffer, ptr %buf, i32 0, i32 5
  %2 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused, align 4
  %4 = zext i32 %streamtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %streamtype, label %entry.cleanup_crit_edge [
    i32 2, label %land.lhs.true
    i32 6, label %if.then50
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %in.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 14
  %5 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 4
  tail call void @ivtv_buf_swap(ptr noundef %buf) #6
  br i1 %cmp.i.not, label %if.then, label %if.then14.critedge

if.then:                                          ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %1, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %vbi.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89
  %9 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vbi.i, align 4
  %count.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 7
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  %raw_decoder_sav_odd_field.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 1
  %13 = ptrtoint ptr %raw_decoder_sav_odd_field.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %raw_decoder_sav_odd_field.i, align 4
  %raw_decoder_sav_even_field.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 2
  %15 = ptrtoint ptr %raw_decoder_sav_even_field.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %raw_decoder_sav_even_field.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.not.i = icmp eq i32 %12, 0
  %.pre.i = add i32 %10, -4
  br i1 %cmp1.not.i, label %if.then.compress_raw_buf.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.compress_raw_buf.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %compress_raw_buf.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %q.02.i = phi ptr [ %add.ptr25.i, %if.end.i.for.body.i_crit_edge ], [ %1, %if.then.for.body.i_crit_edge ]
  %mul.i = mul i32 %i.03.i, %10
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp4.not.i = icmp eq i8 %18, -1
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i.compress_raw_buf.exit_crit_edge

for.body.i.compress_raw_buf.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compress_raw_buf.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %arrayidx6.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.compress_raw_buf.exit_crit_edge

lor.lhs.false.i.compress_raw_buf.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compress_raw_buf.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx9.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not.i = icmp eq i8 %22, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false8.i.compress_raw_buf.exit_crit_edge

lor.lhs.false8.i.compress_raw_buf.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compress_raw_buf.exit

lor.lhs.false12.i:                                ; preds = %lor.lhs.false8.i
  %arrayidx13.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %14)
  %cmp16.not.i = icmp eq i8 %24, %14
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %16)
  %cmp21.not.i = icmp eq i8 %24, %16
  %or.cond.i = select i1 %cmp16.not.i, i1 true, i1 %cmp21.not.i
  br i1 %or.cond.i, label %if.end.i, label %lor.lhs.false12.i.compress_raw_buf.exit_crit_edge

lor.lhs.false12.i.compress_raw_buf.exit_crit_edge: ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compress_raw_buf.exit

if.end.i:                                         ; preds = %lor.lhs.false12.i
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %25 = call ptr @memcpy(ptr %q.02.i, ptr %add.ptr23.i, i32 %.pre.i)
  %add.ptr25.i = getelementptr i8, ptr %q.02.i, i32 %.pre.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %if.end.i.compress_raw_buf.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.compress_raw_buf.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compress_raw_buf.exit

compress_raw_buf.exit:                            ; preds = %if.end.i.compress_raw_buf.exit_crit_edge, %lor.lhs.false12.i.compress_raw_buf.exit_crit_edge, %lor.lhs.false8.i.compress_raw_buf.exit_crit_edge, %lor.lhs.false.i.compress_raw_buf.exit_crit_edge, %for.body.i.compress_raw_buf.exit_crit_edge, %if.then.compress_raw_buf.exit_crit_edge
  %mul27.i = mul i32 %12, %.pre.i
  %26 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul27.i, ptr %bytesused, align 4
  %27 = ptrtoint ptr %raw_decoder_sav_even_field.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %raw_decoder_sav_even_field.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %28)
  %cmp5 = icmp eq i8 %8, %28
  br i1 %cmp5, label %if.then7, label %compress_raw_buf.exit.cleanup_crit_edge

compress_raw_buf.exit.cleanup_crit_edge:          ; preds = %compress_raw_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %compress_raw_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %mul27.i, -4
  %add.ptr = getelementptr i8, ptr %1, i32 %sub
  %frame = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 17
  %29 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frame, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %add.ptr, align 1
  %32 = load i32, ptr %frame, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %frame, align 4
  br label %cleanup

if.then14.critedge:                               ; preds = %land.lhs.true
  %div126 = lshr i32 %3, 1
  %sliced_decoder_sav_odd_field = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 4
  %33 = ptrtoint ptr %sliced_decoder_sav_odd_field to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sliced_decoder_sav_odd_field, align 4
  %call16 = tail call fastcc i32 @compress_sliced_buf(ptr noundef %itv, i32 noundef 0, ptr noundef %1, i32 noundef %div126, i8 noundef zeroext %34)
  %add.ptr18 = getelementptr i8, ptr %1, i32 %div126
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 -32
  %add = add nuw i32 %div126, 32
  %sliced_decoder_sav_even_field = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 5
  %35 = ptrtoint ptr %sliced_decoder_sav_even_field to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sliced_decoder_sav_even_field, align 1
  %call22 = tail call fastcc i32 @compress_sliced_buf(ptr noundef %itv, i32 noundef %call16, ptr noundef %add.ptr19, i32 noundef %add, i8 noundef zeroext %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.then14.critedge.if.end34_crit_edge

if.then14.critedge.if.end34_crit_edge:            ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then25:                                        ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %sliced_data = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24
  %37 = ptrtoint ptr %sliced_data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %sliced_data, align 4
  %line = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 0, i32 2
  %38 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %line, align 4
  %field = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 0, i32 1
  %39 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %field, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.then14.critedge.if.end34_crit_edge
  %lines.0 = phi i32 [ 1, %if.then25 ], [ %call22, %if.then14.critedge.if.end34_crit_edge ]
  %mul = shl i32 %lines.0, 6
  %40 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %bytesused, align 4
  %sliced_data37 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24
  %41 = call ptr @memcpy(ptr %1, ptr %sliced_data37, i32 %mul)
  %insert_mpeg = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 16
  %42 = ptrtoint ptr %insert_mpeg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %insert_mpeg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool40.not = icmp eq i32 %43, 0
  br i1 %tobool40.not, label %if.end34.if.end43_crit_edge, label %if.then41

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %if.end34
  %conv42 = trunc i64 %pts_stamp to i32
  %frame.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 17
  %44 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame.i, align 4
  %rem.i = and i32 %45, 31
  %arrayidx.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 26, i32 %rem.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lines.0)
  %cmp146.i = icmp sgt i32 %lines.0, 0
  br i1 %cmp146.i, label %for.body.lr.ph.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %48 = call ptr @memcpy(ptr %47, ptr @copy_vbi_data.mpeg_hdr_data, i32 32)
  br label %if.else51.i

for.body.lr.ph.i:                                 ; preds = %if.then41
  %add.ptr31.i = getelementptr i8, ptr %47, i32 45
  br label %for.body.i127

for.body.i127:                                    ; preds = %cleanup.i.for.body.i127_crit_edge, %for.body.lr.ph.i
  %line.0151.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %line.1.i, %cleanup.i.for.body.i127_crit_edge ]
  %i.0149.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc37.i, %cleanup.i.for.body.i127_crit_edge ]
  %linemask.sroa.0.0148.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %linemask.sroa.0.2.i, %cleanup.i.for.body.i127_crit_edge ]
  %linemask.sroa.8.0147.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %linemask.sroa.8.2.i, %cleanup.i.for.body.i127_crit_edge ]
  %arrayidx4.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %i.0149.i
  %49 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp5.i = icmp eq i32 %50, 0
  br i1 %cmp5.i, label %for.body.i127.cleanup.i_crit_edge, label %if.end.i129

for.body.i127.cleanup.i_crit_edge:                ; preds = %for.body.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i129:                                      ; preds = %for.body.i127
  %line9.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %i.0149.i, i32 2
  %51 = ptrtoint ptr %line9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %line9.i, align 4
  %field.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %i.0149.i, i32 1
  %53 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %field.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i128 = icmp eq i32 %54, 0
  %spec.select.v.i = select i1 %tobool.not.i128, i32 -6, i32 12
  %spec.select.i = add i32 %spec.select.v.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select.i)
  %cmp15.i = icmp slt i32 %spec.select.i, 32
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %spec.select.i
  %or.i = or i32 %shl.i, %linemask.sroa.0.0148.i
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  %sub18.i = add nsw i32 %spec.select.i, -32
  %shl19.i = shl nuw i32 1, %sub18.i
  %or21.i = or i32 %shl19.i, %linemask.sroa.8.0147.i
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then16.i
  %linemask.sroa.8.1.i = phi i32 [ %linemask.sroa.8.0147.i, %if.then16.i ], [ %or21.i, %if.else.i ]
  %linemask.sroa.0.1.i = phi i32 [ %or.i, %if.then16.i ], [ %linemask.sroa.0.0148.i, %if.else.i ]
  %call.i = tail call zeroext i16 @ivtv_service2vbi(i32 noundef %50) #6
  %conv.i130 = trunc i16 %call.i to i8
  %mul.i131 = mul i32 %line.0151.i, 43
  %add27.i = add i32 %mul.i131, 44
  %arrayidx28.i = getelementptr i8, ptr %47, i32 %add27.i
  %55 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i130, ptr %arrayidx28.i, align 1
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %mul.i131
  %data.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %i.0149.i, i32 4
  %56 = call ptr @memcpy(ptr %add.ptr32.i, ptr %data.i, i32 42)
  %inc.i132 = add i32 %line.0151.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end22.i, %for.body.i127.cleanup.i_crit_edge
  %linemask.sroa.8.2.i = phi i32 [ %linemask.sroa.8.0147.i, %for.body.i127.cleanup.i_crit_edge ], [ %linemask.sroa.8.1.i, %if.end22.i ]
  %linemask.sroa.0.2.i = phi i32 [ %linemask.sroa.0.0148.i, %for.body.i127.cleanup.i_crit_edge ], [ %linemask.sroa.0.1.i, %if.end22.i ]
  %line.1.i = phi i32 [ %line.0151.i, %for.body.i127.cleanup.i_crit_edge ], [ %inc.i132, %if.end22.i ]
  %inc37.i = add nuw nsw i32 %i.0149.i, 1
  %exitcond.not.i133 = icmp eq i32 %inc37.i, %lines.0
  br i1 %exitcond.not.i133, label %for.end.i, label %cleanup.i.for.body.i127_crit_edge

cleanup.i.for.body.i127_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i127

for.end.i:                                        ; preds = %cleanup.i
  %57 = call ptr @memcpy(ptr %47, ptr @copy_vbi_data.mpeg_hdr_data, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %line.1.i)
  %cmp38.i = icmp eq i32 %line.1.i, 36
  br i1 %cmp38.i, label %if.then40.i, label %for.end.i.if.else51.i_crit_edge

for.end.i.if.else51.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else51.i

if.then40.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr43.i = getelementptr i8, ptr %47, i32 36
  %add.ptr45.i = getelementptr i8, ptr %47, i32 44
  %58 = call ptr @memmove(ptr %add.ptr43.i, ptr %add.ptr45.i, i32 1548)
  br label %copy_vbi_data.exit

if.else51.i:                                      ; preds = %for.end.i.if.else51.i_crit_edge, %for.end.thread.i
  %line.0.lcssa160.i = phi i32 [ 0, %for.end.thread.i ], [ %line.1.i, %for.end.i.if.else51.i_crit_edge ]
  %linemask.sroa.0.0.lcssa159.i = phi i32 [ 0, %for.end.thread.i ], [ %linemask.sroa.0.2.i, %for.end.i.if.else51.i_crit_edge ]
  %linemask.sroa.8.0.lcssa158.i = phi i32 [ 0, %for.end.thread.i ], [ %linemask.sroa.8.2.i, %for.end.i.if.else51.i_crit_edge ]
  %add.ptr56.i = getelementptr i8, ptr %47, i32 36
  %59 = zext i32 %linemask.sroa.0.0.lcssa159.i to i64
  %60 = zext i32 %linemask.sroa.8.0.lcssa158.i to i64
  %61 = shl nuw i64 %60, 32
  %62 = or i64 %61, %59
  %63 = tail call i64 @llvm.bswap.i64(i64 %62) #6
  %64 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %63, ptr %add.ptr56.i, align 1
  %65 = mul i32 %line.0.lcssa160.i, 43
  %66 = add i32 %65, 15
  %conv62.i = and i32 %66, 65532
  br label %copy_vbi_data.exit

copy_vbi_data.exit:                               ; preds = %if.else51.i, %if.then40.i
  %.sink.i = phi i32 [ 1230263856, %if.then40.i ], [ 1769240112, %if.else51.i ]
  %size.0.i = phi i32 [ 1552, %if.then40.i ], [ %conv62.i, %if.else51.i ]
  %67 = getelementptr i8, ptr %47, i32 32
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %.sink.i, ptr %67, align 1
  %add65.i = add nuw nsw i32 %size.0.i, 10
  %69 = lshr i32 %add65.i, 8
  %conv66.i = trunc i32 %69 to i8
  %arrayidx67.i = getelementptr i8, ptr %47, i32 20
  %70 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv66.i, ptr %arrayidx67.i, align 1
  %conv71.i = trunc i32 %add65.i to i8
  %arrayidx72.i = getelementptr i8, ptr %47, i32 21
  %71 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv71.i, ptr %arrayidx72.i, align 1
  %shr73.i = lshr i32 %conv42, 29
  %72 = trunc i32 %shr73.i to i8
  %conv76.i = or i8 %72, 33
  %arrayidx77.i = getelementptr i8, ptr %47, i32 25
  %73 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv76.i, ptr %arrayidx77.i, align 1
  %shr78.i156 = lshr i64 %pts_stamp, 22
  %conv80.i = trunc i64 %shr78.i156 to i8
  %arrayidx81.i = getelementptr i8, ptr %47, i32 26
  %74 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv80.i, ptr %arrayidx81.i, align 1
  %shr82.i157 = lshr i64 %pts_stamp, 14
  %75 = trunc i64 %shr82.i157 to i8
  %conv85.i = or i8 %75, 1
  %arrayidx86.i = getelementptr i8, ptr %47, i32 27
  %76 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv85.i, ptr %arrayidx86.i, align 1
  %shr87.i158 = lshr i64 %pts_stamp, 7
  %conv89.i = trunc i64 %shr87.i158 to i8
  %arrayidx90.i = getelementptr i8, ptr %47, i32 28
  %77 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv89.i, ptr %arrayidx90.i, align 1
  %pts_stamp.tr.i = trunc i64 %pts_stamp to i8
  %78 = shl i8 %pts_stamp.tr.i, 1
  %conv94.i = or i8 %78, 1
  %arrayidx95.i = getelementptr i8, ptr %47, i32 29
  %79 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv94.i, ptr %arrayidx95.i, align 1
  %add97.i = add nuw nsw i32 %size.0.i, 32
  %arrayidx99.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 27, i32 %rem.i
  %80 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add97.i, ptr %arrayidx99.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %copy_vbi_data.exit, %if.end34.if.end43_crit_edge
  %frame45 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 17
  %81 = ptrtoint ptr %frame45 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %frame45, align 4
  %inc46 = add i32 %82, 1
  store i32 %inc46, ptr %frame45, align 4
  br label %cleanup

if.then50:                                        ; preds = %entry
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  %sub53 = sub nuw nsw i32 4, %and
  %p.0.idx = select i1 %tobool51.not, i32 0, i32 %sub53
  %p.0 = getelementptr i8, ptr %1, i32 %p.0.idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp56159.not = icmp eq i32 %3, 0
  br i1 %cmp56159.not, label %if.then50.for.end_crit_edge, label %if.then50.for.body_crit_edge

if.then50.for.body_crit_edge:                     ; preds = %if.then50
  br label %for.body

if.then50.for.end_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then50.for.body_crit_edge
  %y.0160 = phi i32 [ %add59, %for.body.for.body_crit_edge ], [ 0, %if.then50.for.body_crit_edge ]
  %add.ptr58 = getelementptr i8, ptr %p.0, i32 %y.0160
  %83 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr58, align 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  %86 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %add.ptr58, align 4
  %add59 = add i32 %y.0160, 4
  %cmp56 = icmp ult i32 %add59, %3
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then50.for.end_crit_edge
  %add.ptr60 = getelementptr i8, ptr %p.0, i32 %and
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr60, ptr noundef nonnull dereferenceable(4) @.str.4, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i134 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i134, label %if.then.i, label %if.else.i136

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i135 = getelementptr i8, ptr %add.ptr60, i32 4
  %87 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %linemask.sroa.0.0.copyload.i = load i32, ptr %add.ptr.i135, align 1
  %linemask.sroa.7.0.add.ptr.sroa_idx.i = getelementptr i8, ptr %add.ptr60, i32 8
  %88 = ptrtoint ptr %linemask.sroa.7.0.add.ptr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %linemask.sroa.7.0.copyload.i = load i32, ptr %linemask.sroa.7.0.add.ptr.sroa_idx.i, align 1
  %add.ptr1.i = getelementptr i8, ptr %add.ptr60, i32 12
  br label %if.end10.i

if.else.i136:                                     ; preds = %for.end
  %bcmp114.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %add.ptr60, ptr noundef nonnull dereferenceable(4) @.str.3, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp114.i)
  %tobool3.not.i = icmp eq i32 %bcmp114.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else.i136.if.end10.i_crit_edge

if.else.i136.if.end10.i_crit_edge:                ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.else.i136
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr6.i = getelementptr i8, ptr %add.ptr60, i32 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then4.i, %if.else.i136.if.end10.i_crit_edge, %if.then.i
  %p.addr.0.i = phi ptr [ %add.ptr6.i, %if.then4.i ], [ %add.ptr1.i, %if.then.i ], [ %add.ptr60, %if.else.i136.if.end10.i_crit_edge ]
  %linemask.sroa.7.0.i = phi i32 [ 15, %if.then4.i ], [ %linemask.sroa.7.0.copyload.i, %if.then.i ], [ 0, %if.else.i136.if.end10.i_crit_edge ]
  %linemask.sroa.0.0.i = phi i32 [ -1, %if.then4.i ], [ %linemask.sroa.0.0.copyload.i, %if.then.i ], [ 0, %if.else.i136.if.end10.i_crit_edge ]
  br label %for.body.i137

while.cond.preheader.i:                           ; preds = %cleanup.i145
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %line.2.i)
  %cmp59136.i = icmp slt i32 %line.2.i, 36
  br i1 %cmp59136.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.ivtv_convert_ivtv_vbi.exit_crit_edge

while.cond.preheader.i.ivtv_convert_ivtv_vbi.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_convert_ivtv_vbi.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

for.body.i137:                                    ; preds = %cleanup.i145.for.body.i137_crit_edge, %if.end10.i
  %line.0134.i = phi i32 [ 0, %if.end10.i ], [ %line.2.i, %cleanup.i145.for.body.i137_crit_edge ]
  %i.0131.i = phi i32 [ 0, %if.end10.i ], [ %inc58.i, %cleanup.i145.for.body.i137_crit_edge ]
  %p.addr.1127.i = phi ptr [ %p.addr.0.i, %if.end10.i ], [ %p.addr.2.i, %cleanup.i145.for.body.i137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0131.i)
  %cmp11.i = icmp ult i32 %i.0131.i, 32
  br i1 %cmp11.i, label %land.lhs.true.i, label %land.lhs.true17.i

land.lhs.true.i:                                  ; preds = %for.body.i137
  %shl.i138 = shl nuw i32 1, %i.0131.i
  %and.i = and i32 %shl.i138, %linemask.sroa.0.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.cleanup.i145_crit_edge, label %land.lhs.true.i.if.end23.i_crit_edge

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true.i.cleanup.i145_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i145

land.lhs.true17.i:                                ; preds = %for.body.i137
  %sub.i = add nsw i32 %i.0131.i, -32
  %shl19.i139 = shl nuw nsw i32 1, %sub.i
  %and20.i = and i32 %shl19.i139, %linemask.sroa.7.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true17.i.cleanup.i145_crit_edge, label %land.lhs.true17.i.if.end23.i_crit_edge

land.lhs.true17.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

land.lhs.true17.i.cleanup.i145_crit_edge:         ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i145

if.end23.i:                                       ; preds = %land.lhs.true17.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge
  %89 = ptrtoint ptr %p.addr.1127.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %p.addr.1127.i, align 1
  %91 = and i8 %90, 15
  %and24.i = zext i8 %91 to i32
  %92 = zext i32 %and24.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and24.i, label %sw.default.i [
    i32 1, label %if.end23.i.if.then36.i_crit_edge
    i32 4, label %sw.bb25.i
    i32 7, label %sw.bb32.i
    i32 5, label %sw.bb33.i
  ]

if.end23.i.if.then36.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

sw.bb25.i:                                        ; preds = %if.end23.i
  %arrayidx26.i = getelementptr i8, ptr %p.addr.1127.i, i32 1
  %93 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx26.i, align 1
  %95 = lshr i8 %94, 4
  %xor.i.i = xor i8 %95, %94
  %96 = lshr i8 %xor.i.i, 2
  %xor6.i.i = xor i8 %96, %xor.i.i
  %97 = lshr i8 %xor6.i.i, 1
  %xor11.i.i = xor i8 %97, %xor6.i.i
  %98 = and i8 %xor11.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool28.not.i = icmp eq i8 %98, 0
  br i1 %tobool28.not.i, label %sw.bb25.i.if.end56.i_crit_edge, label %sw.epilog.i

sw.bb25.i.if.end56.i_crit_edge:                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

sw.bb32.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

sw.bb33.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

sw.default.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

sw.epilog.i:                                      ; preds = %sw.bb25.i
  %arrayidx29.i = getelementptr i8, ptr %p.addr.1127.i, i32 2
  %99 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx29.i, align 1
  %101 = lshr i8 %100, 4
  %xor.i115.i = xor i8 %101, %100
  %102 = lshr i8 %xor.i115.i, 2
  %xor6.i116.i = xor i8 %102, %xor.i115.i
  %103 = lshr i8 %xor6.i116.i, 1
  %xor11.i117.i = xor i8 %103, %xor6.i116.i
  %104 = and i8 %xor11.i117.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp34.not.i = icmp eq i8 %104, 0
  br i1 %cmp34.not.i, label %sw.epilog.i.if.end56.i_crit_edge, label %sw.epilog.i.if.then36.i_crit_edge

sw.epilog.i.if.then36.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36.i

sw.epilog.i.if.end56.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then36.i:                                      ; preds = %sw.epilog.i.if.then36.i_crit_edge, %sw.default.i, %sw.bb33.i, %sw.bb32.i, %if.end23.i.if.then36.i_crit_edge
  %id2.0123.i = phi i32 [ 4096, %sw.epilog.i.if.then36.i_crit_edge ], [ %and24.i, %if.end23.i.if.then36.i_crit_edge ], [ 1024, %sw.bb32.i ], [ 16384, %sw.bb33.i ], [ 0, %sw.default.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %i.0131.i)
  %cmp37.i = icmp ult i32 %i.0131.i, 18
  %cond.v.i = select i1 %cmp37.i, i32 6, i32 -12
  %cond.i = add nsw i32 %cond.v.i, %i.0131.i
  %arrayidx41.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25, i32 %line.0134.i
  %line42.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25, i32 %line.0134.i, i32 2
  %105 = ptrtoint ptr %line42.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %cond.i, ptr %line42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.0131.i)
  %cmp43.i = icmp ugt i32 %i.0131.i, 17
  %conv44.i = zext i1 %cmp43.i to i32
  %field.i140 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25, i32 %line.0134.i, i32 1
  %106 = ptrtoint ptr %field.i140 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv44.i, ptr %field.i140, align 4
  %107 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %id2.0123.i, ptr %arrayidx41.i, align 4
  %data.i141 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25, i32 %line.0134.i, i32 4
  %add.ptr55.i = getelementptr i8, ptr %p.addr.1127.i, i32 1
  %108 = call ptr @memcpy(ptr %data.i141, ptr %add.ptr55.i, i32 42)
  %inc.i142 = add i32 %line.0134.i, 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then36.i, %sw.epilog.i.if.end56.i_crit_edge, %sw.bb25.i.if.end56.i_crit_edge
  %line.1.i143 = phi i32 [ %inc.i142, %if.then36.i ], [ %line.0134.i, %sw.epilog.i.if.end56.i_crit_edge ], [ %line.0134.i, %sw.bb25.i.if.end56.i_crit_edge ]
  %add.ptr57.i = getelementptr i8, ptr %p.addr.1127.i, i32 43
  br label %cleanup.i145

cleanup.i145:                                     ; preds = %if.end56.i, %land.lhs.true17.i.cleanup.i145_crit_edge, %land.lhs.true.i.cleanup.i145_crit_edge
  %p.addr.2.i = phi ptr [ %add.ptr57.i, %if.end56.i ], [ %p.addr.1127.i, %land.lhs.true.i.cleanup.i145_crit_edge ], [ %p.addr.1127.i, %land.lhs.true17.i.cleanup.i145_crit_edge ]
  %line.2.i = phi i32 [ %line.1.i143, %if.end56.i ], [ %line.0134.i, %land.lhs.true.i.cleanup.i145_crit_edge ], [ %line.0134.i, %land.lhs.true17.i.cleanup.i145_crit_edge ]
  %inc58.i = add nuw nsw i32 %i.0131.i, 1
  %exitcond.not.i144 = icmp eq i32 %inc58.i, 36
  br i1 %exitcond.not.i144, label %while.cond.preheader.i, label %cleanup.i145.for.body.i137_crit_edge

cleanup.i145.for.body.i137_crit_edge:             ; preds = %cleanup.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i137

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %line.3137.i = phi i32 [ %inc73.i, %while.body.i.while.body.i_crit_edge ], [ %line.2.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %arrayidx63.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25, i32 %line.3137.i
  %109 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %arrayidx63.i, align 4
  %line68.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25, i32 %line.3137.i, i32 2
  %110 = ptrtoint ptr %line68.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %line68.i, align 4
  %field72.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25, i32 %line.3137.i, i32 1
  %111 = ptrtoint ptr %field72.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %field72.i, align 4
  %inc73.i = add i32 %line.3137.i, 1
  %exitcond138.not.i = icmp eq i32 %inc73.i, 36
  br i1 %exitcond138.not.i, label %while.body.i.ivtv_convert_ivtv_vbi.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.ivtv_convert_ivtv_vbi.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_convert_ivtv_vbi.exit

ivtv_convert_ivtv_vbi.exit:                       ; preds = %while.body.i.ivtv_convert_ivtv_vbi.exit_crit_edge, %while.cond.preheader.i.ivtv_convert_ivtv_vbi.exit_crit_edge
  %line.3.lcssa.i = phi i32 [ %line.2.i, %while.cond.preheader.i.ivtv_convert_ivtv_vbi.exit_crit_edge ], [ 36, %while.body.i.ivtv_convert_ivtv_vbi.exit_crit_edge ]
  %mul.i146 = shl i32 %line.3.lcssa.i, 6
  %112 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %buf1, align 4
  %sliced_dec_data = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 25
  %114 = call ptr @memcpy(ptr %113, ptr %sliced_dec_data, i32 %mul.i146)
  %115 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %mul.i146, ptr %bytesused, align 4
  %div68125 = and i32 %line.3.lcssa.i, 67108863
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc.i) #6
  %116 = ptrtoint ptr %cc.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -2139062144, ptr %cc.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %found_cc.i) #6
  %117 = ptrtoint ptr %found_cc.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %found_cc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div68125)
  %cmp4.not.i147 = icmp eq i32 %div68125, 0
  br i1 %cmp4.not.i147, label %ivtv_convert_ivtv_vbi.exit.ivtv_write_vbi.exit_crit_edge, label %ivtv_convert_ivtv_vbi.exit.for.body.i151_crit_edge

ivtv_convert_ivtv_vbi.exit.for.body.i151_crit_edge: ; preds = %ivtv_convert_ivtv_vbi.exit
  br label %for.body.i151

ivtv_convert_ivtv_vbi.exit.ivtv_write_vbi.exit_crit_edge: ; preds = %ivtv_convert_ivtv_vbi.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_write_vbi.exit

for.body.i151:                                    ; preds = %for.body.i151.for.body.i151_crit_edge, %ivtv_convert_ivtv_vbi.exit.for.body.i151_crit_edge
  %i.05.i = phi i32 [ %inc.i149, %for.body.i151.for.body.i151_crit_edge ], [ 0, %ivtv_convert_ivtv_vbi.exit.for.body.i151_crit_edge ]
  %add.ptr.i148 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %sliced_dec_data, i32 %i.05.i
  call fastcc void @ivtv_write_vbi_line(ptr noundef %itv, ptr noundef %add.ptr.i148, ptr noundef nonnull %cc.i, ptr noundef nonnull %found_cc.i) #6
  %inc.i149 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i150 = icmp eq i32 %inc.i149, %div68125
  br i1 %exitcond.not.i150, label %for.end.i153, label %for.body.i151.for.body.i151_crit_edge

for.body.i151.for.body.i151_crit_edge:            ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i151

for.end.i153:                                     ; preds = %for.body.i151
  %118 = ptrtoint ptr %found_cc.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr.i = load i32, ptr %found_cc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i152 = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i152, label %for.end.i153.ivtv_write_vbi.exit_crit_edge, label %if.then.i154

for.end.i153.ivtv_write_vbi.exit_crit_edge:       ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_write_vbi.exit

if.then.i154:                                     ; preds = %for.end.i153
  %cc_payload_idx.i.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 19
  %119 = ptrtoint ptr %cc_payload_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cc_payload_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %120)
  %cmp.i.i = icmp ult i32 %120, 256
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i154.ivtv_write_vbi.exit_crit_edge

if.then.i154.ivtv_write_vbi.exit_crit_edge:       ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_write_vbi.exit

if.then.i.i:                                      ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 18, i32 %120
  %121 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cc.i, align 4
  %123 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %arrayidx.i.i, align 4
  %124 = ptrtoint ptr %cc_payload_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cc_payload_idx.i.i, align 4
  %inc.i.i = add i32 %125, 1
  store i32 %inc.i.i, ptr %cc_payload_idx.i.i, align 4
  %i_flags.i.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_set_bit(i32 noundef 9, ptr noundef %i_flags.i.i) #6
  br label %ivtv_write_vbi.exit

ivtv_write_vbi.exit:                              ; preds = %if.then.i.i, %if.then.i154.ivtv_write_vbi.exit_crit_edge, %for.end.i153.ivtv_write_vbi.exit_crit_edge, %ivtv_convert_ivtv_vbi.exit.ivtv_write_vbi.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %found_cc.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ivtv_write_vbi.exit, %if.end43, %if.then7, %compress_raw_buf.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_buf_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @compress_sliced_buf(ptr nocapture noundef %itv, i32 noundef %line, ptr noundef %buf, i32 noundef %size, i8 noundef zeroext %sav) unnamed_addr #0 align 64 {
entry:
  %vbi1 = alloca %struct.v4l2_decode_vbi_line, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sliced_decoder_line_size = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 3
  %0 = ptrtoint ptr %sliced_decoder_line_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sliced_decoder_line_size, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vbi1) #6
  %2 = call ptr @memset(ptr %vbi1, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp140.not = icmp eq i32 %size, 0
  br i1 %cmp140.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %uglygep = getelementptr i8, ptr %buf, i32 %size
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0143 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %buf.addr.0141 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %buf, %for.body.preheader ]
  %3 = ptrtoint ptr %buf.addr.0141 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.addr.0141, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp2 = icmp eq i8 %4, -1
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx4 = getelementptr i8, ptr %buf.addr.0141, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true5, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %arrayidx6 = getelementptr i8, ptr %buf.addr.0141, i32 2
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %arrayidx9 = getelementptr i8, ptr %buf.addr.0141, i32 3
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %sav)
  %cmp12 = icmp eq i8 %10, %sav
  br i1 %cmp12, label %land.lhs.true8.for.end_crit_edge, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true8.for.end_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true8.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0143, 1
  %incdec.ptr = getelementptr i8, ptr %buf.addr.0141, i32 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true8.for.end_crit_edge, %entry.for.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %uglygep, %for.inc.for.end_crit_edge ], [ %buf.addr.0141, %land.lhs.true8.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %size, %for.inc.for.end_crit_edge ], [ %i.0143, %land.lhs.true8.for.end_crit_edge ]
  %sub = sub i32 %size, %i.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %cmp14 = icmp ult i32 %sub, %1
  br i1 %cmp14, label %for.end.cleanup94_crit_edge, label %for.body21.lr.ph

for.end.cleanup94_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94

for.body21.lr.ph:                                 ; preds = %for.end
  %div = udiv i32 %sub, %1
  %p42 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi1, i32 0, i32 1
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 11
  %type = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi1, i32 0, i32 3
  %line69 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi1, i32 0, i32 2
  %umax = tail call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body21

for.body21:                                       ; preds = %cleanup.for.body21_crit_edge, %for.body21.lr.ph
  %lines.0151 = phi i32 [ 0, %for.body21.lr.ph ], [ %lines.2, %cleanup.for.body21_crit_edge ]
  %i.1150 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc92, %cleanup.for.body21_crit_edge ]
  %line.addr.0149 = phi i32 [ %line, %for.body21.lr.ph ], [ %line.addr.2, %cleanup.for.body21_crit_edge ]
  %mul = mul i32 %i.1150, %1
  %add.ptr = getelementptr i8, ptr %buf.addr.0.lcssa, i32 %mul
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp24.not = icmp eq i8 %12, -1
  br i1 %cmp24.not, label %lor.lhs.false, label %for.body21.cleanup_crit_edge

for.body21.cleanup_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body21
  %arrayidx26 = getelementptr i8, ptr %add.ptr, i32 1
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool28.not = icmp eq i8 %14, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false29:                                  ; preds = %lor.lhs.false
  %arrayidx30 = getelementptr i8, ptr %add.ptr, i32 2
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool32.not = icmp eq i8 %16, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %lor.lhs.false29.cleanup_crit_edge

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %arrayidx34 = getelementptr i8, ptr %add.ptr, i32 3
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %sav)
  %cmp37.not = icmp eq i8 %18, %sav
  br i1 %cmp37.not, label %if.end40, label %lor.lhs.false33.cleanup_crit_edge

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %lor.lhs.false33
  %add.ptr41 = getelementptr i8, ptr %add.ptr, i32 4
  %19 = ptrtoint ptr %p42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr41, ptr %p42, align 4
  %20 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_video, align 8
  %tobool43.not = icmp eq ptr %21, null
  br i1 %tobool43.not, label %if.end40.if.end66_crit_edge, label %if.else

if.end40.if.end66_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else:                                          ; preds = %if.end40
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %vbi45 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %vbi45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbi45, align 4
  %tobool46.not = icmp eq ptr %25, null
  br i1 %tobool46.not, label %if.else.if.end66_crit_edge, label %land.lhs.true47

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true47:                                  ; preds = %if.else
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool50.not = icmp eq ptr %27, null
  br i1 %tobool50.not, label %land.lhs.true47.if.end66_crit_edge, label %if.else52

land.lhs.true47.if.end66_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.else52:                                        ; preds = %land.lhs.true47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool53.not = icmp eq ptr %28, null
  br i1 %tobool53.not, label %if.else52.if.else59_crit_edge, label %land.lhs.true54

if.else52.if.else59_crit_edge:                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else59

land.lhs.true54:                                  ; preds = %if.else52
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool56.not = icmp eq ptr %30, null
  br i1 %tobool56.not, label %land.lhs.true54.if.else59_crit_edge, label %land.lhs.true54.if.end66.sink.split_crit_edge

land.lhs.true54.if.end66.sink.split_crit_edge:    ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.sink.split

land.lhs.true54.if.else59_crit_edge:              ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else59

if.else59:                                        ; preds = %land.lhs.true54.if.else59_crit_edge, %if.else52.if.else59_crit_edge
  br label %if.end66.sink.split

if.end66.sink.split:                              ; preds = %if.else59, %land.lhs.true54.if.end66.sink.split_crit_edge
  %.sink = phi ptr [ %27, %if.else59 ], [ %30, %land.lhs.true54.if.end66.sink.split_crit_edge ]
  %call63 = call i32 %.sink(ptr noundef nonnull %21, ptr noundef nonnull %vbi1) #6
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %land.lhs.true47.if.end66_crit_edge, %if.else.if.end66_crit_edge, %if.end40.if.end66_crit_edge
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool67.not = icmp eq i32 %32, 0
  br i1 %tobool67.not, label %if.end66.cleanup_crit_edge, label %land.lhs.true68

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true68:                                  ; preds = %if.end66
  %33 = ptrtoint ptr %line69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %line69, align 4
  %shl = shl nuw i32 1, %34
  %and = and i32 %shl, %lines.0151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.then71, label %land.lhs.true68.cleanup_crit_edge

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then71:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl, %lines.0151
  %arrayidx76 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %line.addr.0149
  %35 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %arrayidx76, align 4
  %36 = ptrtoint ptr %vbi1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vbi1, align 4
  %field = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %line.addr.0149, i32 1
  %38 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %field, align 4
  %line84 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %line.addr.0149, i32 2
  %39 = ptrtoint ptr %line84 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %34, ptr %line84, align 4
  %data = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 24, i32 %line.addr.0149, i32 4
  %40 = ptrtoint ptr %p42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %p42, align 4
  %42 = call ptr @memcpy(ptr %data, ptr %41, i32 42)
  %inc89 = add i32 %line.addr.0149, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %land.lhs.true68.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %lor.lhs.false33.cleanup_crit_edge, %lor.lhs.false29.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body21.cleanup_crit_edge
  %line.addr.2 = phi i32 [ %line.addr.0149, %lor.lhs.false33.cleanup_crit_edge ], [ %line.addr.0149, %lor.lhs.false29.cleanup_crit_edge ], [ %line.addr.0149, %lor.lhs.false.cleanup_crit_edge ], [ %line.addr.0149, %for.body21.cleanup_crit_edge ], [ %line.addr.0149, %land.lhs.true68.cleanup_crit_edge ], [ %inc89, %if.then71 ], [ %line.addr.0149, %if.end66.cleanup_crit_edge ]
  %lines.2 = phi i32 [ %lines.0151, %lor.lhs.false33.cleanup_crit_edge ], [ %lines.0151, %lor.lhs.false29.cleanup_crit_edge ], [ %lines.0151, %lor.lhs.false.cleanup_crit_edge ], [ %lines.0151, %for.body21.cleanup_crit_edge ], [ %lines.0151, %land.lhs.true68.cleanup_crit_edge ], [ %or, %if.then71 ], [ %lines.0151, %if.end66.cleanup_crit_edge ]
  %inc92 = add nuw i32 %i.1150, 1
  %exitcond153.not = icmp eq i32 %inc92, %umax
  br i1 %exitcond153.not, label %cleanup.cleanup94_crit_edge, label %cleanup.for.body21_crit_edge

cleanup.for.body21_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

cleanup.cleanup94_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup94

cleanup94:                                        ; preds = %cleanup.cleanup94_crit_edge, %for.end.cleanup94_crit_edge
  %retval.0 = phi i32 [ %line, %for.end.cleanup94_crit_edge ], [ %line.addr.2, %cleanup.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vbi1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_disable_cc(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  %cc = alloca %struct.vbi_cc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #6
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2139062144, ptr %cc, align 4
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %i_flags) #6
  call fastcc void @ivtv_set_cc(ptr noundef %itv, i32 noundef 0, ptr noundef nonnull %cc)
  %cc_payload_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 19
  %1 = ptrtoint ptr %cc_payload_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cc_payload_idx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_set_cc(ptr noundef readonly %itv, i32 noundef %mode, ptr nocapture noundef readonly %cc) unnamed_addr #0 align 64 {
entry:
  %data = alloca %struct.v4l2_sliced_vbi_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6
  %0 = getelementptr inbounds i8, ptr %data, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %2 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %data, align 4
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %field, align 4
  %and1 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %cond = select i1 %tobool2.not, i32 0, i32 21
  %line = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %line, align 4
  %7 = ptrtoint ptr %cc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cc, align 1
  %data3 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %data3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %data3, align 4
  %arrayidx6 = getelementptr [2 x i8], ptr %cc, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx8, align 1
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %13 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn112 = load ptr, ptr %subdevs, align 4
  %cmp.not114 = icmp eq ptr %.pn112, %subdevs
  br i1 %cmp.not114, label %if.end.do.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn115 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn112, %if.end.for.body_crit_edge ]
  %__sd.0116 = getelementptr i8, ptr %.pn115, i32 -80
  %grp_id = getelementptr i8, ptr %.pn115, i32 68
  %14 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %grp_id, align 4
  %and12 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ops = getelementptr i8, ptr %.pn115, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %vbi = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %vbi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vbi, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %s_vbi_data = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %s_vbi_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_vbi_data, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %land.lhs.true15.for.inc_crit_edge, label %if.then19

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 %21(ptr noundef %__sd.0116, ptr noundef nonnull %data) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %land.lhs.true15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn115 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn115, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end.do.end_crit_edge
  %23 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field, align 4
  %and32 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %cond34 = select i1 %tobool33.not, i32 0, i32 21
  %24 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond34, ptr %line, align 4
  %even = getelementptr inbounds %struct.vbi_cc, ptr %cc, i32 0, i32 1
  %25 = ptrtoint ptr %even to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %even, align 1
  %27 = ptrtoint ptr %data3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %data3, align 4
  %arrayidx40 = getelementptr %struct.vbi_cc, ptr %cc, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx40, align 1
  %30 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx8, align 1
  %31 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn111117 = load ptr, ptr %subdevs, align 4
  %cmp56.not119 = icmp eq ptr %.pn111117, %subdevs
  br i1 %cmp56.not119, label %do.end.cleanup_crit_edge, label %do.end.for.body58_crit_edge

do.end.for.body58_crit_edge:                      ; preds = %do.end
  br label %for.body58

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body58:                                       ; preds = %for.inc77.for.body58_crit_edge, %do.end.for.body58_crit_edge
  %.pn111120 = phi ptr [ %.pn111, %for.inc77.for.body58_crit_edge ], [ %.pn111117, %do.end.for.body58_crit_edge ]
  %__sd44.0121 = getelementptr i8, ptr %.pn111120, i32 -80
  %grp_id59 = getelementptr i8, ptr %.pn111120, i32 68
  %32 = ptrtoint ptr %grp_id59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %grp_id59, align 4
  %and60 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %for.body58.for.inc77_crit_edge, label %land.lhs.true62

for.body58.for.inc77_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc77

land.lhs.true62:                                  ; preds = %for.body58
  %ops63 = getelementptr i8, ptr %.pn111120, i32 24
  %34 = ptrtoint ptr %ops63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops63, align 4
  %vbi64 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %vbi64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vbi64, align 4
  %tobool65.not = icmp eq ptr %37, null
  br i1 %tobool65.not, label %land.lhs.true62.for.inc77_crit_edge, label %land.lhs.true66

land.lhs.true62.for.inc77_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc77

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %s_vbi_data69 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %s_vbi_data69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_vbi_data69, align 4
  %tobool70.not = icmp eq ptr %39, null
  br i1 %tobool70.not, label %land.lhs.true66.for.inc77_crit_edge, label %if.then71

land.lhs.true66.for.inc77_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc77

if.then71:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = call i32 %39(ptr noundef %__sd44.0121, ptr noundef nonnull %data) #6
  br label %for.inc77

for.inc77:                                        ; preds = %if.then71, %land.lhs.true66.for.inc77_crit_edge, %land.lhs.true62.for.inc77_crit_edge, %for.body58.for.inc77_crit_edge
  %40 = ptrtoint ptr %.pn111120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn111 = load ptr, ptr %.pn111120, align 4
  %cmp56.not = icmp eq ptr %.pn111, %subdevs
  br i1 %cmp56.not, label %for.inc77.cleanup_crit_edge, label %for.inc77.for.body58_crit_edge

for.inc77.for.body58_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58

for.inc77.cleanup_crit_edge:                      ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc77.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_vbi_work_handler(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  %data.i309 = alloca %struct.v4l2_sliced_vbi_data, align 4
  %data.i278 = alloca %struct.v4l2_sliced_vbi_data, align 4
  %data.i247 = alloca %struct.v4l2_sliced_vbi_data, align 4
  %data.i = alloca %struct.v4l2_sliced_vbi_data, align 4
  %data = alloca %struct.v4l2_sliced_vbi_data, align 4
  %cc = alloca %struct.vbi_cc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #6
  %1 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -2139062144, ptr %cc, align 4
  %output_mode = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 31
  %2 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %if.end142

if.then:                                          ; preds = %entry
  %is_50hz = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 27
  %4 = ptrtoint ptr %is_50hz to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_50hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else37, label %if.then1

if.then1:                                         ; preds = %if.then
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %data, align 4
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %field, align 4
  %sd_video = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 11
  %8 = ptrtoint ptr %sd_video to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_video, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.then1.if.else27_crit_edge, label %if.else

if.then1.if.else27_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else27

if.else:                                          ; preds = %if.then1
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %vbi4 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %vbi4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbi4, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.else.if.else27_crit_edge, label %land.lhs.true

if.else.if.else27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else27

land.lhs.true:                                    ; preds = %if.else
  %g_vbi_data = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %g_vbi_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %g_vbi_data, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %land.lhs.true.if.else27_crit_edge, label %if.else10

land.lhs.true.if.else27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else27

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %if.else10.if.else17_crit_edge, label %land.lhs.true12

if.else10.if.else17_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17

land.lhs.true12:                                  ; preds = %if.else10
  %g_vbi_data13 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %g_vbi_data13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %g_vbi_data13, align 4
  %tobool14.not = icmp eq ptr %18, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else17_crit_edge, label %land.lhs.true12.if.end23_crit_edge

land.lhs.true12.if.end23_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true12.if.else17_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true12.if.else17_crit_edge, %if.else10.if.else17_crit_edge
  br label %if.end23

if.end23:                                         ; preds = %if.else17, %land.lhs.true12.if.end23_crit_edge
  %.sink = phi ptr [ %15, %if.else17 ], [ %18, %land.lhs.true12.if.end23_crit_edge ]
  %call21 = call i32 %.sink(ptr noundef nonnull %9, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp24 = icmp eq i32 %call21, 0
  br i1 %cmp24, label %if.then25, label %if.end23.if.else27_crit_edge

if.end23.if.else27_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else27

if.then25:                                        ; preds = %if.end23
  %data26 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %19 = ptrtoint ptr %data26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data26, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i) #6
  %21 = getelementptr inbounds i8, ptr %data.i, i32 12
  %22 = call ptr @memset(ptr %21, i32 255, i32 52)
  %v4l2_cap.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %23 = ptrtoint ptr %v4l2_cap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v4l2_cap.i, align 4
  %and.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then25.ivtv_set_wss.exit_crit_edge, label %if.end.i

if.then25.ivtv_set_wss.exit_crit_edge:            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit

if.end.i:                                         ; preds = %if.then25
  %25 = and i8 %20, 15
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16384, ptr %data.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i, i32 0, i32 1
  %27 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %field.i, align 4
  %line.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i, i32 0, i32 2
  %28 = ptrtoint ptr %line.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 23, ptr %line.i, align 4
  %data8.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i, i32 0, i32 4
  %29 = ptrtoint ptr %data8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %data8.i, align 4
  %arrayidx12.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx12.i, align 1
  %subdevs.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %31 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn1.i = load ptr, ptr %subdevs.i, align 4
  %cmp.not3.i = icmp eq ptr %.pn1.i, %subdevs.i
  br i1 %cmp.not3.i, label %if.end.i.ivtv_set_wss.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.ivtv_set_wss.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.end.i.for.body.i_crit_edge ]
  %__sd.05.i = getelementptr i8, ptr %.pn4.i, i32 -80
  %grp_id.i = getelementptr i8, ptr %.pn4.i, i32 68
  %32 = ptrtoint ptr %grp_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %grp_id.i, align 4
  %and17.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true19.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true19.i:                                ; preds = %for.body.i
  %ops.i = getelementptr i8, ptr %.pn4.i, i32 24
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %vbi.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %vbi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vbi.i, align 4
  %tobool20.not.i = icmp eq ptr %37, null
  br i1 %tobool20.not.i, label %land.lhs.true19.i.for.inc.i_crit_edge, label %land.lhs.true21.i

land.lhs.true19.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %land.lhs.true19.i
  %s_vbi_data.i = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %s_vbi_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_vbi_data.i, align 4
  %tobool24.not.i = icmp eq ptr %39, null
  br i1 %tobool24.not.i, label %land.lhs.true21.i.for.inc.i_crit_edge, label %if.then25.i

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then25.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %39(ptr noundef %__sd.05.i, ptr noundef nonnull %data.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then25.i, %land.lhs.true21.i.for.inc.i_crit_edge, %land.lhs.true19.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %40 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp.not.i, label %for.inc.i.ivtv_set_wss.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.ivtv_set_wss.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit

ivtv_set_wss.exit:                                ; preds = %for.inc.i.ivtv_set_wss.exit_crit_edge, %if.end.i.ivtv_set_wss.exit_crit_edge, %if.then25.ivtv_set_wss.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i) #6
  %wss_missing_cnt = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 22
  %41 = ptrtoint ptr %wss_missing_cnt to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %wss_missing_cnt, align 4
  br label %cleanup

if.else27:                                        ; preds = %if.end23.if.else27_crit_edge, %land.lhs.true.if.else27_crit_edge, %if.else.if.else27_crit_edge, %if.then1.if.else27_crit_edge
  %wss_missing_cnt28 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 22
  %42 = ptrtoint ptr %wss_missing_cnt28 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wss_missing_cnt28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp30 = icmp eq i8 %43, 4
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i247) #6
  %44 = getelementptr inbounds i8, ptr %data.i247, i32 12
  %45 = call ptr @memset(ptr %44, i32 255, i32 52)
  %v4l2_cap.i248 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %46 = ptrtoint ptr %v4l2_cap.i248 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %v4l2_cap.i248, align 4
  %and.i249 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i249)
  %tobool.not.i250 = icmp eq i32 %and.i249, 0
  br i1 %tobool.not.i250, label %if.then32.ivtv_set_wss.exit277_crit_edge, label %if.end.i258

if.then32.ivtv_set_wss.exit277_crit_edge:         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit277

if.end.i258:                                      ; preds = %if.then32
  %48 = ptrtoint ptr %data.i247 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16384, ptr %data.i247, align 4
  %field.i251 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i247, i32 0, i32 1
  %49 = ptrtoint ptr %field.i251 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %field.i251, align 4
  %line.i252 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i247, i32 0, i32 2
  %50 = ptrtoint ptr %line.i252 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 23, ptr %line.i252, align 4
  %data8.i253 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i247, i32 0, i32 4
  %51 = ptrtoint ptr %data8.i253 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 8, ptr %data8.i253, align 4
  %arrayidx12.i254 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i247, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %arrayidx12.i254 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx12.i254, align 1
  %subdevs.i255 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %53 = ptrtoint ptr %subdevs.i255 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn1.i256 = load ptr, ptr %subdevs.i255, align 4
  %cmp.not3.i257 = icmp eq ptr %.pn1.i256, %subdevs.i255
  br i1 %cmp.not3.i257, label %if.end.i258.ivtv_set_wss.exit277_crit_edge, label %if.end.i258.for.body.i264_crit_edge

if.end.i258.for.body.i264_crit_edge:              ; preds = %if.end.i258
  br label %for.body.i264

if.end.i258.ivtv_set_wss.exit277_crit_edge:       ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit277

for.body.i264:                                    ; preds = %for.inc.i276.for.body.i264_crit_edge, %if.end.i258.for.body.i264_crit_edge
  %.pn4.i259 = phi ptr [ %.pn.i274, %for.inc.i276.for.body.i264_crit_edge ], [ %.pn1.i256, %if.end.i258.for.body.i264_crit_edge ]
  %__sd.05.i260 = getelementptr i8, ptr %.pn4.i259, i32 -80
  %grp_id.i261 = getelementptr i8, ptr %.pn4.i259, i32 68
  %54 = ptrtoint ptr %grp_id.i261 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %grp_id.i261, align 4
  %and17.i262 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i262)
  %tobool18.not.i263 = icmp eq i32 %and17.i262, 0
  br i1 %tobool18.not.i263, label %for.body.i264.for.inc.i276_crit_edge, label %land.lhs.true19.i268

for.body.i264.for.inc.i276_crit_edge:             ; preds = %for.body.i264
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i276

land.lhs.true19.i268:                             ; preds = %for.body.i264
  %ops.i265 = getelementptr i8, ptr %.pn4.i259, i32 24
  %56 = ptrtoint ptr %ops.i265 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i265, align 4
  %vbi.i266 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %vbi.i266 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vbi.i266, align 4
  %tobool20.not.i267 = icmp eq ptr %59, null
  br i1 %tobool20.not.i267, label %land.lhs.true19.i268.for.inc.i276_crit_edge, label %land.lhs.true21.i271

land.lhs.true19.i268.for.inc.i276_crit_edge:      ; preds = %land.lhs.true19.i268
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i276

land.lhs.true21.i271:                             ; preds = %land.lhs.true19.i268
  %s_vbi_data.i269 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %s_vbi_data.i269 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_vbi_data.i269, align 4
  %tobool24.not.i270 = icmp eq ptr %61, null
  br i1 %tobool24.not.i270, label %land.lhs.true21.i271.for.inc.i276_crit_edge, label %if.then25.i273

land.lhs.true21.i271.for.inc.i276_crit_edge:      ; preds = %land.lhs.true21.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i276

if.then25.i273:                                   ; preds = %land.lhs.true21.i271
  call void @__sanitizer_cov_trace_pc() #8
  %call.i272 = call i32 %61(ptr noundef %__sd.05.i260, ptr noundef nonnull %data.i247) #6
  br label %for.inc.i276

for.inc.i276:                                     ; preds = %if.then25.i273, %land.lhs.true21.i271.for.inc.i276_crit_edge, %land.lhs.true19.i268.for.inc.i276_crit_edge, %for.body.i264.for.inc.i276_crit_edge
  %62 = ptrtoint ptr %.pn4.i259 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn.i274 = load ptr, ptr %.pn4.i259, align 4
  %cmp.not.i275 = icmp eq ptr %.pn.i274, %subdevs.i255
  br i1 %cmp.not.i275, label %for.inc.i276.ivtv_set_wss.exit277_crit_edge, label %for.inc.i276.for.body.i264_crit_edge

for.inc.i276.for.body.i264_crit_edge:             ; preds = %for.inc.i276
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i264

for.inc.i276.ivtv_set_wss.exit277_crit_edge:      ; preds = %for.inc.i276
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit277

ivtv_set_wss.exit277:                             ; preds = %for.inc.i276.ivtv_set_wss.exit277_crit_edge, %if.end.i258.ivtv_set_wss.exit277_crit_edge, %if.then32.ivtv_set_wss.exit277_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i247) #6
  br label %cleanup

if.else33:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i8 %43, 1
  %63 = ptrtoint ptr %wss_missing_cnt28 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %inc, ptr %wss_missing_cnt28, align 4
  br label %cleanup

if.else37:                                        ; preds = %if.then
  %64 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4096, ptr %data, align 4
  %field39 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %65 = ptrtoint ptr %field39 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %field39, align 4
  %sd_video41 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 11
  %66 = ptrtoint ptr %sd_video41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sd_video41, align 8
  %tobool43.not = icmp eq ptr %67, null
  br i1 %tobool43.not, label %if.end127.thread341, label %if.else45

if.end127.thread341:                              ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %field39 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %field39, align 4
  br label %if.else130

if.else45:                                        ; preds = %if.else37
  %ops46 = getelementptr inbounds %struct.v4l2_subdev, ptr %67, i32 0, i32 6
  %69 = ptrtoint ptr %ops46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops46, align 4
  %vbi47 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %vbi47 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %vbi47, align 4
  %tobool48.not = icmp eq ptr %72, null
  br i1 %tobool48.not, label %if.else45.if.end82_crit_edge, label %land.lhs.true49

if.else45.if.end82_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

land.lhs.true49:                                  ; preds = %if.else45
  %g_vbi_data52 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %g_vbi_data52 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %g_vbi_data52, align 4
  %tobool53.not = icmp eq ptr %74, null
  br i1 %tobool53.not, label %land.lhs.true49.if.end82_crit_edge, label %if.else55

land.lhs.true49.if.end82_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.else55:                                        ; preds = %land.lhs.true49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool56.not = icmp eq ptr %75, null
  br i1 %tobool56.not, label %if.else55.if.else63_crit_edge, label %land.lhs.true57

if.else55.if.else63_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else63

land.lhs.true57:                                  ; preds = %if.else55
  %g_vbi_data58 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %g_vbi_data58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %g_vbi_data58, align 4
  %tobool59.not = icmp eq ptr %77, null
  br i1 %tobool59.not, label %land.lhs.true57.if.else63_crit_edge, label %land.lhs.true57.if.end70_crit_edge

land.lhs.true57.if.end70_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

land.lhs.true57.if.else63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else63

if.else63:                                        ; preds = %land.lhs.true57.if.else63_crit_edge, %if.else55.if.else63_crit_edge
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %land.lhs.true57.if.end70_crit_edge
  %.sink344 = phi ptr [ %74, %if.else63 ], [ %77, %land.lhs.true57.if.end70_crit_edge ]
  %call67 = call i32 %.sink344(ptr noundef nonnull %67, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp72 = icmp eq i32 %call67, 0
  br i1 %cmp72, label %if.then74, label %if.end70.if.end82_crit_edge

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %data75 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %78 = ptrtoint ptr %data75 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %data75, align 4
  %80 = ptrtoint ptr %cc to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %cc, align 4
  %arrayidx79 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx79, align 1
  %arrayidx81 = getelementptr inbounds [2 x i8], ptr %cc, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx81, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then74, %if.end70.if.end82_crit_edge, %land.lhs.true49.if.end82_crit_edge, %if.else45.if.end82_crit_edge
  %tobool128.not = phi i1 [ true, %if.else45.if.end82_crit_edge ], [ true, %land.lhs.true49.if.end82_crit_edge ], [ false, %if.then74 ], [ true, %if.end70.if.end82_crit_edge ]
  %mode.0.ph = phi i32 [ 2, %if.else45.if.end82_crit_edge ], [ 2, %land.lhs.true49.if.end82_crit_edge ], [ 3, %if.then74 ], [ 2, %if.end70.if.end82_crit_edge ]
  %84 = ptrtoint ptr %sd_video41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pr = load ptr, ptr %sd_video41, align 8
  %85 = ptrtoint ptr %field39 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %field39, align 4
  %tobool87.not = icmp eq ptr %.pr, null
  br i1 %tobool87.not, label %if.end82.if.end127_crit_edge, label %if.else89

if.end82.if.end127_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.else89:                                        ; preds = %if.end82
  %ops90 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %86 = ptrtoint ptr %ops90 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops90, align 4
  %vbi91 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %vbi91 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vbi91, align 4
  %tobool92.not = icmp eq ptr %89, null
  br i1 %tobool92.not, label %if.else89.if.end127_crit_edge, label %land.lhs.true93

if.else89.if.end127_crit_edge:                    ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

land.lhs.true93:                                  ; preds = %if.else89
  %g_vbi_data96 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %g_vbi_data96 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %g_vbi_data96, align 4
  %tobool97.not = icmp eq ptr %91, null
  br i1 %tobool97.not, label %land.lhs.true93.if.end127_crit_edge, label %if.else99

land.lhs.true93.if.end127_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.else99:                                        ; preds = %land.lhs.true93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 4), align 4
  %tobool100.not = icmp eq ptr %92, null
  br i1 %tobool100.not, label %if.else99.if.else107_crit_edge, label %land.lhs.true101

if.else99.if.else107_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else107

land.lhs.true101:                                 ; preds = %if.else99
  %g_vbi_data102 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %g_vbi_data102 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %g_vbi_data102, align 4
  %tobool103.not = icmp eq ptr %94, null
  br i1 %tobool103.not, label %land.lhs.true101.if.else107_crit_edge, label %land.lhs.true101.if.end114_crit_edge

land.lhs.true101.if.end114_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

land.lhs.true101.if.else107_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else107

if.else107:                                       ; preds = %land.lhs.true101.if.else107_crit_edge, %if.else99.if.else107_crit_edge
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %land.lhs.true101.if.end114_crit_edge
  %.sink345 = phi ptr [ %91, %if.else107 ], [ %94, %land.lhs.true101.if.end114_crit_edge ]
  %call111 = call i32 %.sink345(ptr noundef nonnull %.pr, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp116 = icmp eq i32 %call111, 0
  br i1 %cmp116, label %if.end127.thread, label %if.end114.if.end127_crit_edge

if.end114.if.end127_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.end127.thread:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %data120 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %95 = ptrtoint ptr %data120 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %data120, align 4
  %even = getelementptr inbounds %struct.vbi_cc, ptr %cc, i32 0, i32 1
  %97 = ptrtoint ptr %even to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %even, align 2
  %arrayidx124 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 1
  %98 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx124, align 1
  %arrayidx126 = getelementptr inbounds %struct.vbi_cc, ptr %cc, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx126, align 1
  br label %if.then129

if.end127:                                        ; preds = %if.end114.if.end127_crit_edge, %land.lhs.true93.if.end127_crit_edge, %if.else89.if.end127_crit_edge, %if.end82.if.end127_crit_edge
  br i1 %tobool128.not, label %if.end127.if.else130_crit_edge, label %if.end127.if.then129_crit_edge

if.end127.if.then129_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then129

if.end127.if.else130_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else130

if.then129:                                       ; preds = %if.end127.if.then129_crit_edge, %if.end127.thread
  %mode.1337 = phi i32 [ %mode.0.ph, %if.end127.thread ], [ 1, %if.end127.if.then129_crit_edge ]
  %cc_missing_cnt = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 20
  %101 = ptrtoint ptr %cc_missing_cnt to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %cc_missing_cnt, align 4
  call fastcc void @ivtv_set_cc(ptr noundef %itv, i32 noundef %mode.1337, ptr noundef nonnull %cc)
  br label %cleanup

if.else130:                                       ; preds = %if.end127.if.else130_crit_edge, %if.end127.thread341
  %cc_missing_cnt131 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 20
  %102 = ptrtoint ptr %cc_missing_cnt131 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %cc_missing_cnt131, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %103)
  %cmp133 = icmp eq i8 %103, 4
  br i1 %cmp133, label %if.then135, label %if.else136

if.then135:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ivtv_set_cc(ptr noundef %itv, i32 noundef 0, ptr noundef nonnull %cc)
  br label %cleanup

if.else136:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #8
  %inc138 = add i8 %103, 1
  %104 = ptrtoint ptr %cc_missing_cnt131 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %inc138, ptr %cc_missing_cnt131, align 4
  br label %cleanup

if.end142:                                        ; preds = %entry
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %call143 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %i_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end142.if.end147_crit_edge, label %if.then145

if.end142.if.end147_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then145:                                       ; preds = %if.end142
  %wss_payload = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 21
  %105 = ptrtoint ptr %wss_payload to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %wss_payload, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i278) #6
  %107 = getelementptr inbounds i8, ptr %data.i278, i32 12
  %108 = call ptr @memset(ptr %107, i32 255, i32 52)
  %v4l2_cap.i279 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %109 = ptrtoint ptr %v4l2_cap.i279 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %v4l2_cap.i279, align 4
  %and.i280 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280)
  %tobool.not.i281 = icmp eq i32 %and.i280, 0
  br i1 %tobool.not.i281, label %if.then145.ivtv_set_wss.exit308_crit_edge, label %if.end.i289

if.then145.ivtv_set_wss.exit308_crit_edge:        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit308

if.end.i289:                                      ; preds = %if.then145
  %111 = ptrtoint ptr %data.i278 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 16384, ptr %data.i278, align 4
  %field.i282 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i278, i32 0, i32 1
  %112 = ptrtoint ptr %field.i282 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %field.i282, align 4
  %line.i283 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i278, i32 0, i32 2
  %113 = ptrtoint ptr %line.i283 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 23, ptr %line.i283, align 4
  %114 = trunc i32 %106 to i8
  %conv.i = and i8 %114, 15
  %data8.i284 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i278, i32 0, i32 4
  %115 = ptrtoint ptr %data8.i284 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i, ptr %data8.i284, align 4
  %arrayidx12.i285 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i278, i32 0, i32 4, i32 1
  %116 = ptrtoint ptr %arrayidx12.i285 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %arrayidx12.i285, align 1
  %subdevs.i286 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %117 = ptrtoint ptr %subdevs.i286 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pn1.i287 = load ptr, ptr %subdevs.i286, align 4
  %cmp.not3.i288 = icmp eq ptr %.pn1.i287, %subdevs.i286
  br i1 %cmp.not3.i288, label %if.end.i289.ivtv_set_wss.exit308_crit_edge, label %if.end.i289.for.body.i295_crit_edge

if.end.i289.for.body.i295_crit_edge:              ; preds = %if.end.i289
  br label %for.body.i295

if.end.i289.ivtv_set_wss.exit308_crit_edge:       ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit308

for.body.i295:                                    ; preds = %for.inc.i307.for.body.i295_crit_edge, %if.end.i289.for.body.i295_crit_edge
  %.pn4.i290 = phi ptr [ %.pn.i305, %for.inc.i307.for.body.i295_crit_edge ], [ %.pn1.i287, %if.end.i289.for.body.i295_crit_edge ]
  %__sd.05.i291 = getelementptr i8, ptr %.pn4.i290, i32 -80
  %grp_id.i292 = getelementptr i8, ptr %.pn4.i290, i32 68
  %118 = ptrtoint ptr %grp_id.i292 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %grp_id.i292, align 4
  %and17.i293 = and i32 %119, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i293)
  %tobool18.not.i294 = icmp eq i32 %and17.i293, 0
  br i1 %tobool18.not.i294, label %for.body.i295.for.inc.i307_crit_edge, label %land.lhs.true19.i299

for.body.i295.for.inc.i307_crit_edge:             ; preds = %for.body.i295
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i307

land.lhs.true19.i299:                             ; preds = %for.body.i295
  %ops.i296 = getelementptr i8, ptr %.pn4.i290, i32 24
  %120 = ptrtoint ptr %ops.i296 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i296, align 4
  %vbi.i297 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %vbi.i297 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %vbi.i297, align 4
  %tobool20.not.i298 = icmp eq ptr %123, null
  br i1 %tobool20.not.i298, label %land.lhs.true19.i299.for.inc.i307_crit_edge, label %land.lhs.true21.i302

land.lhs.true19.i299.for.inc.i307_crit_edge:      ; preds = %land.lhs.true19.i299
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i307

land.lhs.true21.i302:                             ; preds = %land.lhs.true19.i299
  %s_vbi_data.i300 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %s_vbi_data.i300 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_vbi_data.i300, align 4
  %tobool24.not.i301 = icmp eq ptr %125, null
  br i1 %tobool24.not.i301, label %land.lhs.true21.i302.for.inc.i307_crit_edge, label %if.then25.i304

land.lhs.true21.i302.for.inc.i307_crit_edge:      ; preds = %land.lhs.true21.i302
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i307

if.then25.i304:                                   ; preds = %land.lhs.true21.i302
  call void @__sanitizer_cov_trace_pc() #8
  %call.i303 = call i32 %125(ptr noundef %__sd.05.i291, ptr noundef nonnull %data.i278) #6
  br label %for.inc.i307

for.inc.i307:                                     ; preds = %if.then25.i304, %land.lhs.true21.i302.for.inc.i307_crit_edge, %land.lhs.true19.i299.for.inc.i307_crit_edge, %for.body.i295.for.inc.i307_crit_edge
  %126 = ptrtoint ptr %.pn4.i290 to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn.i305 = load ptr, ptr %.pn4.i290, align 4
  %cmp.not.i306 = icmp eq ptr %.pn.i305, %subdevs.i286
  br i1 %cmp.not.i306, label %for.inc.i307.ivtv_set_wss.exit308_crit_edge, label %for.inc.i307.for.body.i295_crit_edge

for.inc.i307.for.body.i295_crit_edge:             ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i295

for.inc.i307.ivtv_set_wss.exit308_crit_edge:      ; preds = %for.inc.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_wss.exit308

ivtv_set_wss.exit308:                             ; preds = %for.inc.i307.ivtv_set_wss.exit308_crit_edge, %if.end.i289.ivtv_set_wss.exit308_crit_edge, %if.then145.ivtv_set_wss.exit308_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i278) #6
  br label %if.end147

if.end147:                                        ; preds = %ivtv_set_wss.exit308, %if.end142.if.end147_crit_edge
  %127 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %i_flags, align 4
  %129 = and i32 %128, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool150.not = icmp eq i32 %129, 0
  br i1 %tobool150.not, label %if.end147.if.end180_crit_edge, label %if.then151

if.end147.if.end180_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then151:                                       ; preds = %if.end147
  %cc_payload_idx = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 19
  %130 = ptrtoint ptr %cc_payload_idx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cc_payload_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp152 = icmp eq i32 %131, 0
  br i1 %cmp152, label %if.then154, label %if.then151.if.end156_crit_edge

if.then151.if.end156_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then154:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef 9, ptr noundef %i_flags) #6
  call fastcc void @ivtv_set_cc(ptr noundef %itv, i32 noundef 3, ptr noundef nonnull %cc)
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %if.then151.if.end156_crit_edge
  %132 = ptrtoint ptr %cc_payload_idx to i32
  call void @__asan_load4_noabort(i32 %132)
  %cc_payload_idx.promoted = load i32, ptr %cc_payload_idx, align 4
  %cc_payload = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 18
  %add.ptr = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 18, i32 1
  %arrayidx174 = getelementptr inbounds [2 x i8], ptr %cc, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %land.lhs.true172.while.cond_crit_edge, %if.end156
  %133 = phi i32 [ %dec, %land.lhs.true172.while.cond_crit_edge ], [ %cc_payload_idx.promoted, %if.end156 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool158.not = icmp eq i32 %133, 0
  br i1 %tobool158.not, label %while.cond.if.end180_crit_edge, label %while.body

while.cond.if.end180_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

while.body:                                       ; preds = %while.cond
  %134 = ptrtoint ptr %cc_payload to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cc_payload, align 4
  %136 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %cc, align 4
  %137 = call ptr @memmove(ptr %cc_payload, ptr %add.ptr, i32 1020)
  %dec = add i32 %133, -1
  %138 = ptrtoint ptr %cc_payload_idx to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %dec, ptr %cc_payload_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool165.not = icmp eq i32 %dec, 0
  br i1 %tobool165.not, label %while.body.if.end179_crit_edge, label %land.lhs.true166

while.body.if.end179_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

land.lhs.true166:                                 ; preds = %while.body
  %139 = ptrtoint ptr %cc to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %cc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %140)
  %cmp170 = icmp eq i8 %140, -128
  br i1 %cmp170, label %land.lhs.true172, label %land.lhs.true166.if.end179_crit_edge

land.lhs.true166.if.end179_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

land.lhs.true172:                                 ; preds = %land.lhs.true166
  %141 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx174, align 1
  %cmp176 = icmp eq i8 %142, -128
  br i1 %cmp176, label %land.lhs.true172.while.cond_crit_edge, label %land.lhs.true172.if.end179_crit_edge

land.lhs.true172.if.end179_crit_edge:             ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end179

land.lhs.true172.while.cond_crit_edge:            ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end179:                                        ; preds = %land.lhs.true172.if.end179_crit_edge, %land.lhs.true166.if.end179_crit_edge, %while.body.if.end179_crit_edge
  call fastcc void @ivtv_set_cc(ptr noundef %itv, i32 noundef 3, ptr noundef nonnull %cc)
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %while.cond.if.end180_crit_edge, %if.end147.if.end180_crit_edge
  %call182 = call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %i_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end180.cleanup_crit_edge, label %if.then184

if.end180.cleanup_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then184:                                       ; preds = %if.end180
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i309) #6
  %143 = getelementptr inbounds i8, ptr %data.i309, i32 12
  %144 = call ptr @memset(ptr %143, i32 255, i32 52)
  %v4l2_cap.i310 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %145 = ptrtoint ptr %v4l2_cap.i310 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %v4l2_cap.i310, align 4
  %and.i311 = and i32 %146, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i311)
  %tobool.not.i312 = icmp eq i32 %and.i311, 0
  br i1 %tobool.not.i312, label %if.then184.ivtv_set_vps.exit_crit_edge, label %if.end.i318

if.then184.ivtv_set_vps.exit_crit_edge:           ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_vps.exit

if.end.i318:                                      ; preds = %if.then184
  %147 = ptrtoint ptr %data.i309 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1024, ptr %data.i309, align 4
  %field.i313 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i309, i32 0, i32 1
  %148 = ptrtoint ptr %field.i313 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %field.i313, align 4
  %line.i314 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i309, i32 0, i32 2
  %149 = ptrtoint ptr %line.i314 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 16, ptr %line.i314, align 4
  %vps_payload.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 89, i32 23
  %150 = ptrtoint ptr %vps_payload.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %vps_payload.i, align 1
  %arrayidx4.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i309, i32 0, i32 4, i32 2
  %152 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx4.i, align 2
  %arrayidx8.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 23, i32 0, i32 1
  %153 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i309, i32 0, i32 4, i32 8
  %155 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %arrayidx10.i, align 4
  %arrayidx14.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 23, i32 0, i32 2
  %156 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx14.i, align 1
  %arrayidx16.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i309, i32 0, i32 4, i32 9
  %158 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx16.i, align 1
  %arrayidx20.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 23, i32 0, i32 3
  %159 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx20.i, align 1
  %arrayidx22.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i309, i32 0, i32 4, i32 10
  %161 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx22.i, align 2
  %arrayidx26.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 89, i32 23, i32 0, i32 4
  %162 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx26.i, align 1
  %arrayidx28.i = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data.i309, i32 0, i32 4, i32 11
  %164 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx28.i, align 1
  %subdevs.i315 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %165 = ptrtoint ptr %subdevs.i315 to i32
  call void @__asan_load4_noabort(i32 %165)
  %.pn1.i316 = load ptr, ptr %subdevs.i315, align 4
  %cmp.not3.i317 = icmp eq ptr %.pn1.i316, %subdevs.i315
  br i1 %cmp.not3.i317, label %if.end.i318.ivtv_set_vps.exit_crit_edge, label %if.end.i318.for.body.i322_crit_edge

if.end.i318.for.body.i322_crit_edge:              ; preds = %if.end.i318
  br label %for.body.i322

if.end.i318.ivtv_set_vps.exit_crit_edge:          ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_vps.exit

for.body.i322:                                    ; preds = %for.inc.i328.for.body.i322_crit_edge, %if.end.i318.for.body.i322_crit_edge
  %.pn4.i319 = phi ptr [ %.pn.i326, %for.inc.i328.for.body.i322_crit_edge ], [ %.pn1.i316, %if.end.i318.for.body.i322_crit_edge ]
  %__sd.05.i320 = getelementptr i8, ptr %.pn4.i319, i32 -80
  %grp_id.i321 = getelementptr i8, ptr %.pn4.i319, i32 68
  %166 = ptrtoint ptr %grp_id.i321 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %grp_id.i321, align 4
  %and32.i = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %for.body.i322.for.inc.i328_crit_edge, label %land.lhs.true.i

for.body.i322.for.inc.i328_crit_edge:             ; preds = %for.body.i322
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i328

land.lhs.true.i:                                  ; preds = %for.body.i322
  %ops.i323 = getelementptr i8, ptr %.pn4.i319, i32 24
  %168 = ptrtoint ptr %ops.i323 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ops.i323, align 4
  %vbi34.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %vbi34.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vbi34.i, align 4
  %tobool35.not.i = icmp eq ptr %171, null
  br i1 %tobool35.not.i, label %land.lhs.true.i.for.inc.i328_crit_edge, label %land.lhs.true36.i

land.lhs.true.i.for.inc.i328_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i328

land.lhs.true36.i:                                ; preds = %land.lhs.true.i
  %s_vbi_data.i324 = getelementptr inbounds %struct.v4l2_subdev_vbi_ops, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %s_vbi_data.i324 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %s_vbi_data.i324, align 4
  %tobool39.not.i = icmp eq ptr %173, null
  br i1 %tobool39.not.i, label %land.lhs.true36.i.for.inc.i328_crit_edge, label %if.then40.i

land.lhs.true36.i.for.inc.i328_crit_edge:         ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i328

if.then40.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i325 = call i32 %173(ptr noundef %__sd.05.i320, ptr noundef nonnull %data.i309) #6
  br label %for.inc.i328

for.inc.i328:                                     ; preds = %if.then40.i, %land.lhs.true36.i.for.inc.i328_crit_edge, %land.lhs.true.i.for.inc.i328_crit_edge, %for.body.i322.for.inc.i328_crit_edge
  %174 = ptrtoint ptr %.pn4.i319 to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pn.i326 = load ptr, ptr %.pn4.i319, align 4
  %cmp.not.i327 = icmp eq ptr %.pn.i326, %subdevs.i315
  br i1 %cmp.not.i327, label %for.inc.i328.ivtv_set_vps.exit_crit_edge, label %for.inc.i328.for.body.i322_crit_edge

for.inc.i328.for.body.i322_crit_edge:             ; preds = %for.inc.i328
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i322

for.inc.i328.ivtv_set_vps.exit_crit_edge:         ; preds = %for.inc.i328
  call void @__sanitizer_cov_trace_pc() #8
  br label %ivtv_set_vps.exit

ivtv_set_vps.exit:                                ; preds = %for.inc.i328.ivtv_set_vps.exit_crit_edge, %if.end.i318.ivtv_set_vps.exit_crit_edge, %if.then184.ivtv_set_vps.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i309) #6
  br label %cleanup

cleanup:                                          ; preds = %ivtv_set_vps.exit, %if.end180.cleanup_crit_edge, %if.else136, %if.then135, %if.then129, %if.else33, %ivtv_set_wss.exit277, %ivtv_set_wss.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ivtv_service2vbi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nobuiltin }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!7 = !{ptr @copy_vbi_data.mpeg_hdr_data, !8, !"mpeg_hdr_data", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/ivtv/ivtv-vbi.c", i32 180, i32 18}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/ivtv/ivtv-vbi.c", i32 214, i32 20}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/ivtv/ivtv-vbi.c", i32 218, i32 20}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2152166442, i64 2152166467}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 4657936}
!26 = !{i64 4658133}
!27 = !{i64 2152143366}
