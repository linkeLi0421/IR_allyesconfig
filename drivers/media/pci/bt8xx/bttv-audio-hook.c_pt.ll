; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/bttv-audio-hook.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/bttv-audio-hook.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.bttv = type { %struct.bttv_core, i16, i8, ptr, i32, i32, i32, i32, i32, i8, %struct.bttv_pll_info, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, %struct.video_device, %struct.video_device, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, ptr, %struct.IR_i2c_init_data, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.v4l2_framebuffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bttv_tea575x_gpio, %struct.snd_tea575x, i32, i32, i32, [4 x i8], %struct.btcx_riscmem, ptr, %struct.list_head, %struct.list_head, %struct.bttv_buffer_set, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.bttv_suspend_state, i32, i32, i32, i32, i32, %struct.bttv_fh, %struct.work_struct, [2 x %struct.bttv_crop], i32, i32 }
%struct.bttv_core = type { %struct.v4l2_device, ptr, %struct.i2c_adapter, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bttv_pll_info = type { i32, i32, i32, i32 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bttv_tea575x_gpio = type { i8, i8, i8, i8 }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btcx_riscmem = type { i32, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bttv_buffer_set = type { ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bttv_suspend_state = type { i32, i32, i32, i32, %struct.bttv_buffer_set, ptr }
%struct.bttv_fh = type { %struct.v4l2_fh, ptr, i32, i32, %struct.videobuf_queue, ptr, i32, i32, ptr, %struct.bttv_overlay, i32, %struct.videobuf_queue, %struct.bttv_vbi_fmt }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.bttv_overlay = type { i32, %struct.v4l2_rect, i32, ptr, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.bttv_vbi_fmt = type { %struct.v4l2_vbi_format, ptr, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bttv_crop = type { %struct.v4l2_rect, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bttv_gpio = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gvbctv5pci\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"avermedia\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lt9415\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"terratv\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"winfast2000\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pvbt878p9b\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fv2000s\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"windvr\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adtvk503\00", [23 x i8] zeroinitializer }, align 32
@switch.table.winfast2000_audio = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4325376, i32 131072, i32 4259840, i32 4325376], [16 x i8] zeroinitializer }, align 32
@switch.table.pvbt878p9b_audio = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.fv2000s_audio = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 4224, i32 4224, i32 4224], [16 x i8] zeroinitializer }, align 32
@switch.table.adtvk503_audio = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 393216, i32 0, i32 1572864, i32 0], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 109, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 184, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 255, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 288, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 325, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 369, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 409, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 444, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [45 x i8] c"../drivers/media/pci/bt8xx/bttv-audio-hook.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 488, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant [31 x i8] c"switch.table.winfast2000_audio\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"switch.table.pvbt878p9b_audio\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"switch.table.fv2000s_audio\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"switch.table.adtvk503_audio\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.winfast2000_audio, ptr @switch.table.pvbt878p9b_audio, ptr @switch.table.fv2000s_audio, ptr @switch.table.adtvk503_audio], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.winfast2000_audio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvbt878p9b_audio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fv2000s_audio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adtvk503_audio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @winview_volume(ptr noundef %btv, i16 noundef zeroext %volume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %volume, 11
  %1 = trunc i16 %0 to i8
  %rem.lhs.trunc = sub nuw nsw i8 32, %1
  %rem.lhs.trunc.frozen = freeze i8 %rem.lhs.trunc
  %div41 = udiv i8 %rem.lhs.trunc.frozen, 5
  %2 = mul i8 %div41, 5
  %rem40.decomposed = sub i8 %rem.lhs.trunc.frozen, %2
  %rem.zext = zext i8 %rem40.decomposed to i32
  %shr1 = lshr i32 1024, %rem.zext
  %div.zext = zext i8 %div41 to i32
  %shr2 = lshr i32 131072, %div.zext
  %or = or i32 %shr2, %shr1
  %or3 = or i32 %or, 24
  %call = tail call i32 @bttv_gpio_read(ptr noundef %btv) #3
  %and = and i32 %call, -225
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %data.043 = phi i32 [ %and, %entry ], [ %data.1, %for.body.for.body_crit_edge ]
  %loops.042 = phi i32 [ 17, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %loops.042
  %and5 = and i32 %shl, %or3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %or6 = or i32 %data.043, 32
  %and7 = and i32 %data.043, -97
  %data.1 = select i1 %tobool.not, i32 %and7, i32 %or6
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %data.1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1073740) #3
  %or9 = or i32 %data.1, 64
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %or9) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #3
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %data.1) #3
  %dec = add nsw i32 %loops.042, -1
  %cmp.not = icmp eq i32 %loops.042, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %or13 = and i32 %data.1, -225
  %and14 = or i32 %or13, 128
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %and14) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #3
  tail call void @bttv_gpio_write(ptr noundef %btv, i32 noundef %or13) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_gpio_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gvbctv3pci_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 768, i32 noundef 768) #3
  %audmode1 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %2 = ptrtoint ptr %audmode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 2
  %switch.select = select i1 %switch.selectcmp, i32 768, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp8 = icmp eq i32 %3, 1
  %switch.select9 = select i1 %switch.selectcmp8, i32 512, i32 %switch.select
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 768, i32 noundef %switch.select9) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_inout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gvbctv5pci_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_user = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 56
  %0 = ptrtoint ptr %radio_user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio_user, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @bttv_gpio_read(ptr noundef %btv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool1.not = icmp eq i32 %set, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 4
  %switch.select = select i1 %switch.selectcmp, i32 256, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp48 = icmp eq i32 %3, 2
  %switch.select49 = select i1 %switch.selectcmp48, i32 768, i32 %switch.select
  %and = and i32 %call, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select49, i32 %and)
  %cmp.not = icmp eq i32 %switch.select49, %and
  br i1 %cmp.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 768, i32 noundef %switch.select49) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %4 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.then7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str) #3
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and10 = and i32 %call, 112
  %5 = add nsw i32 %and10, -16
  %6 = lshr exact i32 %5, 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default25 [
    i32 0, label %sw.bb11
    i32 2, label %sw.bb13
    i32 4, label %sw.bb16
    i32 5, label %sw.bb19
    i32 6, label %sw.bb22
  ]

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %8 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12, ptr %rxsubchans, align 4
  %audmode12 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %9 = ptrtoint ptr %audmode12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %audmode12, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %rxsubchans14 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %10 = ptrtoint ptr %rxsubchans14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %rxsubchans14, align 4
  %audmode15 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %11 = ptrtoint ptr %audmode15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %audmode15, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %rxsubchans17 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %12 = ptrtoint ptr %rxsubchans17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %rxsubchans17, align 4
  %audmode18 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %13 = ptrtoint ptr %audmode18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %audmode18, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %rxsubchans20 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %14 = ptrtoint ptr %rxsubchans20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %rxsubchans20, align 4
  %audmode21 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %15 = ptrtoint ptr %audmode21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %audmode21, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %rxsubchans23 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %16 = ptrtoint ptr %rxsubchans23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %rxsubchans23, align 4
  %audmode24 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %17 = ptrtoint ptr %audmode24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %audmode24, align 4
  br label %cleanup

sw.default25:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %rxsubchans26 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %18 = ptrtoint ptr %rxsubchans26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 15, ptr %rxsubchans26, align 4
  %audmode27 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %19 = ptrtoint ptr %audmode27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %audmode27, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default25, %sw.bb22, %sw.bb19, %sw.bb16, %sw.bb13, %sw.bb11, %if.then7, %if.then4.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bttv_gpio_tracking(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avermedia_tvphone_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 3, i32 noundef %3) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %4 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %sw.epilog.cleanup_crit_edge, label %if.then4

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avermedia_tv_stereo_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp13 = icmp eq i32 %3, 2
  %switch.select14 = select i1 %switch.selectcmp13, i32 1, i32 %switch.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %4 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %7 = and i32 %6, -50331649
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %switch.select14
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #3, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %12 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lt9415_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bttv_gpio_read(ptr noundef %btv) #3
  %and = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %audmode, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool1.not = icmp eq i32 %set, 0
  %audmode3 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %audmode3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %audmode3, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %2 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %audmode3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %audmode3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp = icmp eq i32 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 2176, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.selectcmp16 = icmp eq i32 %4, 2
  %switch.select17 = select i1 %switch.selectcmp16, i32 128, i32 %switch.select
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 2176, i32 noundef %switch.select17) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %5 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.then9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end4.cleanup_crit_edge, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @terratv_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @bttv_gpio_inout(ptr noundef %btv, i32 noundef 1572864, i32 noundef 1572864) #3
  %audmode1 = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  %2 = ptrtoint ptr %audmode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 1
  %switch.select = select i1 %switch.selectcmp, i32 1572864, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp11 = icmp eq i32 %3, 2
  %switch.select12 = select i1 %switch.selectcmp11, i32 524288, i32 %switch.select
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1572864, i32 noundef %switch.select12) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %4 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @winfast2000_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.winfast2000_audio, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 4390912, i32 noundef %switch.load) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %6 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %switch.lookup.cleanup_crit_edge, label %if.then5

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvbt878p9b_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_user = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 56
  %0 = ptrtoint ptr %radio_user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio_user, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool1.not = icmp eq i32 %set, 0
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %3 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %if.end3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.pvbt878p9b_audio, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 3, i32 noundef %switch.load) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %8 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %switch.lookup.cleanup_crit_edge, label %if.then7

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %switch.lookup.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fv2000s_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %radio_user = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 56
  %0 = ptrtoint ptr %radio_user to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio_user, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool1.not = icmp eq i32 %set, 0
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool1.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %3 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %switch.lookup, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %if.end3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.fv2000s_audio, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 6144, i32 noundef %switch.load) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %8 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %switch.lookup.cleanup_crit_edge, label %if.then7

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.6) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %switch.lookup.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @windvr_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %val.0 = phi i32 [ 1048576, %sw.bb2 ], [ 262144, %if.end.sw.epilog_crit_edge ]
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1310720, i32 noundef %val.0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %5 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %sw.epilog.cleanup_crit_edge, label %if.then4

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.7) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adtvk503_audio(ptr noundef %btv, ptr nocapture noundef %t, i32 noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool.not = icmp eq i32 %set, 0
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 7
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %audmode, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 6
  %1 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %rxsubchans, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.adtvk503_audio, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void @bttv_gpio_bits(ptr noundef %btv, i32 noundef 1966080, i32 noundef %switch.load) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_gpio to i32))
  %6 = load i32, ptr @bttv_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %switch.lookup.cleanup_crit_edge, label %if.then6

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @bttv_gpio_tracking(ptr noundef %btv, ptr noundef nonnull @.str.8) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 109, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 184, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 255, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 288, i32 27}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 325, i32 27}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 369, i32 27}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 409, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 444, i32 27}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/bt8xx/bttv-audio-hook.c", i32 488, i32 27}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2157295269}
!28 = !{i64 6847797}
!29 = !{i64 2157296279}
!30 = !{i64 6847379}
