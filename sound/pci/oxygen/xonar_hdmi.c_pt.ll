; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/xonar_hdmi.c_pt.bc'
source_filename = "../sound/pci/oxygen/xonar_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.79, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.79 = type { [64 x i32] }
%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@xonar_hdmi_uart_input.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_virtuoso\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xonar_hdmi_uart_input\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/oxygen/xonar_hdmi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"message from HDMI chip received:\0A\00", [62 x i8] zeroinitializer }, align 32
@xonar_hdmi_uart_input.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 44100, i64 48000, i64 192000]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 112, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [33 x i8] c"../sound/pci/oxygen/xonar_hdmi.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 113, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_hdmi_init(ptr noundef %chip, ptr nocapture noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  %param.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [5 x i8], ptr %hdmi, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr [5 x i8], ptr %hdmi, i32 0, i32 4
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %arrayidx2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #5
  tail call void @oxygen_reset_uart(ptr noundef %chip) #5
  %2 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %param.i, align 1
  call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %param.i) #5
  %3 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %param.i, align 1
  call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 116, i32 noundef 1, ptr noundef nonnull %param.i) #5
  tail call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 84, i32 noundef 5, ptr noundef %hdmi) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_hdmi_cleanup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %param = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %param, align 1
  call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 116, i32 noundef 1, ptr noundef nonnull %param)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext %command, i32 noundef %count, ptr nocapture noundef readonly %params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write_uart(ptr noundef %chip, i8 noundef zeroext -5) #5
  tail call void @oxygen_write_uart(ptr noundef %chip, i8 noundef zeroext -17) #5
  tail call void @oxygen_write_uart(ptr noundef %chip, i8 noundef zeroext %command) #5
  %conv = trunc i32 %count to i8
  tail call void @oxygen_write_uart(ptr noundef %chip, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp33.not = icmp eq i32 %count, 0
  br i1 %cmp33.not, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv239 = zext i8 %command to i32
  %add40 = add nuw nsw i32 %conv239, 234
  %add341 = add nuw nsw i32 %add40, %count
  br label %for.end16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %params, i32 %i.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  tail call void @oxygen_write_uart(ptr noundef %chip, i8 noundef zeroext %1) #5
  %inc = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %conv2 = zext i8 %command to i32
  %add = add nuw nsw i32 %conv2, 234
  %add3 = add i32 %add, %count
  br i1 %cmp33.not, label %for.end.for.end16_crit_edge, label %for.end.for.body8_crit_edge

for.end.for.body8_crit_edge:                      ; preds = %for.end
  br label %for.body8

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end16

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.end.for.body8_crit_edge
  %checksum.0.in37 = phi i32 [ %add12, %for.body8.for.body8_crit_edge ], [ %add3, %for.end.for.body8_crit_edge ]
  %i.136 = phi i32 [ %inc15, %for.body8.for.body8_crit_edge ], [ 0, %for.end.for.body8_crit_edge ]
  %arrayidx9 = getelementptr i8, ptr %params, i32 %i.136
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %3 to i32
  %conv11 = and i32 %checksum.0.in37, 255
  %add12 = add nuw nsw i32 %conv11, %conv10
  %inc15 = add nuw i32 %i.136, 1
  %exitcond38.not = icmp eq i32 %inc15, %count
  br i1 %exitcond38.not, label %for.body8.for.end16_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.body8.for.end16_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end16

for.end16:                                        ; preds = %for.body8.for.end16_crit_edge, %for.end.for.end16_crit_edge, %for.end.thread
  %checksum.0.in.lcssa = phi i32 [ %add3, %for.end.for.end16_crit_edge ], [ %add341, %for.end.thread ], [ %add12, %for.body8.for.end16_crit_edge ]
  %checksum.0 = trunc i32 %checksum.0.in.lcssa to i8
  tail call void @oxygen_write_uart(ptr noundef %chip, i8 noundef zeroext %checksum.0) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_hdmi_resume(ptr noundef %chip, ptr nocapture noundef readonly %hdmi) local_unnamed_addr #0 align 64 {
entry:
  %param.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param.i) #5
  tail call void @oxygen_reset_uart(ptr noundef %chip) #5
  %0 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %param.i, align 1
  call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 97, i32 noundef 1, ptr noundef nonnull %param.i) #5
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %param.i, align 1
  call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 116, i32 noundef 1, ptr noundef nonnull %param.i) #5
  tail call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 84, i32 noundef 5, ptr noundef %hdmi) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param.i) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xonar_hdmi_pcm_hardware_filter(i32 noundef %channel, ptr nocapture noundef writeonly %hardware) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp = icmp eq i32 %channel, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rates = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hardware, i32 0, i32 2
  %0 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5312, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_hardware, ptr %hardware, i32 0, i32 3
  %1 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 44100, ptr %rate_min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_set_hdmi_params(ptr noundef %chip, ptr nocapture noundef %hdmi, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hdmi, align 1
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %sw.default [
    i32 44100, label %entry.sw.epilog_crit_edge
    i32 48000, label %sw.bb4
    i32 192000, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.default, %sw.bb4, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 14, %sw.bb9 ], [ 10, %sw.default ], [ 2, %sw.bb4 ], [ 0, %entry.sw.epilog_crit_edge ]
  %arrayidx11 = getelementptr [5 x i8], ptr %hdmi, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %arrayidx11, align 1
  %arrayidx.i.i36 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i36, align 4
  %div35 = lshr i32 %6, 1
  %7 = trunc i32 %div35 to i8
  %conv = add i8 %7, -1
  %arrayidx14 = getelementptr [5 x i8], ptr %hdmi, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx14, align 1
  %arrayidx.i.i37 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog.params_format.exit_crit_edge

sw.epilog.params_format.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %sw.epilog
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.else_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit

for.inc.i.i.if.else_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %sw.epilog.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %10, %sw.epilog.params_format.exit_crit_edge ], [ %12, %for.inc.i.i.params_format.exit_crit_edge ]
  %13 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #5, !range !19
  %add.i.i = or i32 %13, %i.09.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i.i)
  %cmp = icmp eq i32 %add.i.i, 2
  br i1 %cmp, label %params_format.exit.if.end_crit_edge, label %params_format.exit.if.else_crit_edge

params_format.exit.if.else_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

params_format.exit.if.end_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %params_format.exit.if.else_crit_edge, %for.inc.i.i.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %params_format.exit.if.end_crit_edge
  %.sink40 = phi i8 [ -64, %if.else ], [ 0, %params_format.exit.if.end_crit_edge ]
  %arrayidx20 = getelementptr [5 x i8], ptr %hdmi, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink40, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr [5 x i8], ptr %hdmi, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx22, align 1
  tail call fastcc void @hdmi_write_command(ptr noundef %chip, i8 noundef zeroext 84, i32 noundef 5, ptr noundef %hdmi)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_hdmi_uart_input(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uart_input_count = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 26
  %0 = ptrtoint ptr %uart_input_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %uart_input_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true:                                    ; preds = %entry
  %uart_input = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 27
  %sub = add i32 %1, -2
  %arrayidx = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 27, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %3)
  %cmp2 = icmp eq i8 %3, 79
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sub7 = add i32 %1, -1
  %arrayidx8 = getelementptr %struct.oxygen, ptr %chip, i32 0, i32 27, i32 %sub7
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 75, i8 %5)
  %cmp10 = icmp eq i8 %5, 75
  br i1 %cmp10, label %do.body, label %land.lhs.true4.if.end33_crit_edge

land.lhs.true4.if.end33_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.body:                                          ; preds = %land.lhs.true4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xonar_hdmi_uart_input.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xonar_hdmi_uart_input, %if.then14)) #5
          to label %do.body15 [label %if.then14], !srcloc !20

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xonar_hdmi_uart_input.__UNIQUE_ID_ddebug242, ptr noundef %9, ptr noundef nonnull @.str.3) #5
  br label %do.body15

do.body15:                                        ; preds = %if.then14, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xonar_hdmi_uart_input.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xonar_hdmi_uart_input, %if.then27)) #5
          to label %do.end31 [label %if.then27], !srcloc !20

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %uart_input_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uart_input_count, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %uart_input, i32 noundef %11, i1 noundef zeroext true) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %12 = ptrtoint ptr %uart_input_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %uart_input_count, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %land.lhs.true4.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_reset_uart(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_uart(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/xonar_hdmi.c", i32 112, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xonar_hdmi_uart_input.__UNIQUE_ID_ddebug242, !1, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/xonar_hdmi.c", i32 113, i32 3}
!8 = !{ptr @xonar_hdmi_uart_input.__UNIQUE_ID_ddebug243, !7, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i32 0, i32 33}
!20 = !{i64 2148486283, i64 2148486288, i64 2148486301, i64 2148486345, i64 2148486379, i64 2148486400}
