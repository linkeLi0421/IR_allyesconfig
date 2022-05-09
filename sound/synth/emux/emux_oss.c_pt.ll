; ModuleID = '/llk/IR_all_yes/sound/synth/emux/emux_oss.c_pt.bc'
source_filename = "../sound/synth/emux/emux_oss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_seq_oss_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_emux = type { ptr, i32, i32, i32, i32, %struct.snd_emux_operators, ptr, i32, i32, i32, i8, i32, ptr, i32, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, [32 x i32], [32 x ptr], i32, ptr, ptr, %struct.timer_list, i32, ptr, ptr, ptr }
%struct.snd_emux_operators = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_seq_device = type { ptr, i32, ptr, [80 x i8], i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_midi_channel_set = type { ptr, i32, i32, i32, ptr, i8, i8, i8, i8 }
%struct.snd_emux_port = type { %struct.snd_midi_channel_set, ptr, i8, i32, i32, [21 x i32], ptr, ptr }
%struct.soundfont_patch_info = type { i16, i16, i16, i16, i32, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.43 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.43 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_midi_channel = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i16, [128 x i8], [128 x i8], i16, i16, i16 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seq-oss\00", [24 x i8] zeroinitializer }, align 32
@oss_callback = internal constant { %struct.snd_seq_oss_callback, [36 x i8] } { %struct.snd_seq_oss_callback { ptr null, ptr @snd_emux_open_seq_oss, ptr @snd_emux_close_seq_oss, ptr @snd_emux_ioctl_seq_oss, ptr @snd_emux_load_patch_seq_oss, ptr @snd_emux_reset_seq_oss, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/synth/emux/emux_oss.c\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s OSS Port\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013can't create port\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074024713, i64 3221508366]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 64772, i64 64775]
@__sancov_gen_cov_switch_values.8 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 16]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 58, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"oss_callback\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 37, i32 42 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 104, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 114, i32 19 }
@___asan_gen_.23 = private constant [31 x i8] c"../sound/synth/emux/emux_oss.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 118, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 156, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @oss_callback, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oss_callback to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_init_seq_oss(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  %dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !27
  %1 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %emu, align 4
  %call = call i32 @snd_seq_device_new(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %oss_synth = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 29
  %5 = ptrtoint ptr %oss_synth to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %oss_synth, align 4
  %name = getelementptr inbounds %struct.snd_seq_device, ptr %4, i32 0, i32 3
  %name1 = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 23
  %6 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1, align 4
  %call2 = call ptr @strcpy(ptr noundef %name, ptr noundef %7) #9
  %add.ptr = getelementptr i8, ptr %4, i32 1040
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %add.ptr, align 4
  %subtype = getelementptr i8, ptr %4, i32 1044
  %9 = ptrtoint ptr %subtype to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %subtype, align 4
  %max_voices = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 1
  %10 = ptrtoint ptr %max_voices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_voices, align 4
  %nvoices = getelementptr i8, ptr %4, i32 1048
  %12 = ptrtoint ptr %nvoices to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nvoices, align 4
  %oper = getelementptr i8, ptr %4, i32 1052
  %13 = call ptr @memcpy(ptr %oper, ptr @oss_callback, i32 28)
  %private_data = getelementptr i8, ptr %4, i32 1080
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %emu, ptr %private_data, align 4
  %15 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %emu, align 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call4 = call i32 @snd_device_register(ptr noundef %16, ptr noundef %18) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_device_new(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emux_detach_seq_oss(ptr nocapture noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %oss_synth = getelementptr inbounds %struct.snd_emux, ptr %emu, i32 0, i32 29
  %0 = ptrtoint ptr %oss_synth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oss_synth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emu, align 4
  tail call void @snd_device_free(ptr noundef %3, ptr noundef nonnull %1) #6
  %4 = ptrtoint ptr %oss_synth to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %oss_synth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_open_seq_oss(ptr noundef %arg, ptr noundef %closure) #0 align 64 {
entry:
  %callback = alloca %struct.snd_seq_port_callback, align 4
  %tmpname = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %callback) #6
  %0 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callback, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmpname) #6
  %1 = call ptr @memset(ptr %tmpname, i32 255, i32 64)
  %tobool.not = icmp eq ptr %arg, null
  %tobool1.not = icmp eq ptr %closure, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call = tail call i32 @snd_emux_inc_count(ptr noundef nonnull %closure) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %2 = call ptr @memset(ptr %callback, i32 0, i32 32)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_emux_event_oss_input, ptr %0, align 4
  %name = getelementptr inbounds %struct.snd_emux, ptr %closure, i32 0, i32 23
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmpname, ptr noundef nonnull @.str.2, ptr noundef %5)
  %call30 = call ptr @snd_emux_create_port(ptr noundef nonnull %closure, ptr noundef nonnull %tmpname, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %callback) #6
  %cmp = icmp eq ptr %call30, null
  br i1 %cmp, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 118, ptr noundef nonnull @.str.3) #6
  call void @snd_emux_dec_count(ptr noundef nonnull %closure) #6
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call30, ptr %private_data, align 4
  %client = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call30, i32 0, i32 1
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %client, align 4
  %conv = trunc i32 %8 to i8
  %addr = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 3
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %addr, align 4
  %port = getelementptr inbounds %struct.snd_midi_channel_set, ptr %call30, i32 0, i32 2
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %conv35 = trunc i32 %11 to i8
  %port37 = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %port37 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv35, ptr %port37, align 1
  %oss_arg = getelementptr inbounds %struct.snd_emux_port, ptr %call30, i32 0, i32 7
  %13 = ptrtoint ptr %oss_arg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arg, ptr %oss_arg, align 4
  %seq_mode = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 2
  %14 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %port_mode1.i = getelementptr inbounds %struct.snd_emux_port, ptr %call30, i32 0, i32 2
  %..i = select i1 %tobool.not.i, i8 1, i8 2
  %.17.i = select i1 %tobool.not.i, i32 0, i32 33554944
  %.18.i = select i1 %tobool.not.i, i32 32, i32 0
  %.19.i = select i1 %tobool.not.i, i32 0, i32 2
  %16 = ptrtoint ptr %port_mode1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %..i, ptr %port_mode1.i, align 4
  %drum_flags2.i = getelementptr inbounds %struct.snd_emux_port, ptr %call30, i32 0, i32 4
  %17 = ptrtoint ptr %drum_flags2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.17.i, ptr %drum_flags2.i, align 4
  %volume_atten3.i = getelementptr inbounds %struct.snd_emux_port, ptr %call30, i32 0, i32 3
  %18 = ptrtoint ptr %volume_atten3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.18.i, ptr %volume_atten3.i, align 4
  %event_passing5.i = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 5
  %19 = ptrtoint ptr %event_passing5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.19.i, ptr %event_passing5.i, align 4
  call void @snd_emux_reset_port(ptr noundef nonnull %call30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then31, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -12, %if.then31 ], [ 0, %if.end32 ], [ -14, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmpname) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %callback) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_close_seq_oss(ptr noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 167, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !28

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 170, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end23
  %emu60 = getelementptr inbounds %struct.snd_emux_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %emu60 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emu60, align 4
  %tobool62.not = icmp eq ptr %3, null
  br i1 %tobool62.not, label %do.end80, label %if.end96, !prof !28

do.end80:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 174, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end96:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emux_sounds_off_all(ptr noundef nonnull %1) #6
  %sflist = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sflist, align 4
  %port = getelementptr inbounds %struct.snd_midi_channel_set, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 4096
  %call = tail call i32 @snd_soundfont_close_check(ptr noundef %5, i32 noundef %add) #6
  %client = getelementptr inbounds %struct.snd_midi_channel_set, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %client, align 4
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %call100 = tail call i32 @snd_seq_event_port_detach(i32 noundef %9, i32 noundef %11) #6
  tail call void @snd_emux_dec_count(ptr noundef nonnull %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end80, %do.end43, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end43 ], [ -6, %do.end80 ], [ 0, %if.end96 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_ioctl_seq_oss(ptr noundef readonly %arg, i32 noundef %cmd, i32 noundef %ioarg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 240, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !28

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 243, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end23
  %emu60 = getelementptr inbounds %struct.snd_emux_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %emu60 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emu60, align 4
  %tobool62.not = icmp eq ptr %3, null
  br i1 %tobool62.not, label %do.end80, label %if.end96, !prof !28

do.end80:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 247, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end96:                                         ; preds = %if.end59
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end96.cleanup_crit_edge [
    i32 1074024713, label %sw.bb
    i32 -1073458930, label %sw.bb97
  ]

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %sflist = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sflist, align 4
  %call = tail call i32 @snd_soundfont_remove_samples(ptr noundef %6) #6
  br label %cleanup

sw.bb97:                                          ; preds = %if.end96
  %memhdr = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 27
  %7 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memhdr, align 4
  %tobool98.not = icmp eq ptr %8, null
  br i1 %tobool98.not, label %sw.bb97.cleanup_crit_edge, label %if.then99

sw.bb97.cleanup_crit_edge:                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then99:                                        ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #8
  %call101 = tail call i32 @snd_util_mem_avail(ptr noundef nonnull %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %sw.bb97.cleanup_crit_edge, %sw.bb, %if.end96.cleanup_crit_edge, %do.end80, %do.end43, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end43 ], [ -6, %do.end80 ], [ %call101, %if.then99 ], [ 0, %sw.bb ], [ 0, %sw.bb97.cleanup_crit_edge ], [ 0, %if.end96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_load_patch_seq_oss(ptr noundef readonly %arg, i32 noundef %format, ptr noundef %buf, i32 noundef %offs, i32 noundef %count) #0 align 64 {
entry:
  %patch = alloca %struct.soundfont_patch_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 197, i32 noundef 9, ptr noundef null) #6
  br label %cleanup134

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !28

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 200, i32 noundef 9, ptr noundef null) #6
  br label %cleanup134

if.end59:                                         ; preds = %if.end23
  %emu60 = getelementptr inbounds %struct.snd_emux_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %emu60 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emu60, align 4
  %tobool62.not = icmp eq ptr %3, null
  br i1 %tobool62.not, label %do.end80, label %if.end96, !prof !28

do.end80:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 204, i32 noundef 9, ptr noundef null) #6
  br label %cleanup134

if.end96:                                         ; preds = %if.end59
  %4 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %format, label %if.end96.cleanup134_crit_edge [
    i32 64772, label %if.then97
    i32 64775, label %if.then99
  ]

if.end96.cleanup134_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup134

if.then97:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %sflist = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %sflist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sflist, align 4
  %port = getelementptr inbounds %struct.snd_midi_channel_set, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 4096
  %call = tail call i32 @snd_soundfont_load_guspatch(ptr noundef %6, ptr noundef %buf, i32 noundef %count, i32 noundef %add) #6
  br label %cleanup134

if.then99:                                        ; preds = %if.end96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %patch) #6
  %9 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch, i32 0, i32 3
  %10 = getelementptr inbounds %struct.soundfont_patch_info, ptr %patch, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp100 = icmp slt i32 %count, 16
  %11 = call ptr @memset(ptr %patch, i32 255, i32 16)
  br i1 %cmp100, label %if.then99.cleanup_crit_edge, label %if.then.i

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then99
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 16, i32 -1226833920) #10, !srcloc !29
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !30

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %patch, i32 noundef 16) #6
  %13 = call i32 @llvm.read_register.i32(metadata !17) #6
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !31
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %patch, ptr noundef %buf, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end106, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !30

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.then.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %patch, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end106:                                        ; preds = %if.end.i.i
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %18)
  %19 = icmp ult i16 %18, 9
  br i1 %19, label %if.then113, label %if.else119

if.then113:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %sflist114 = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 14
  %20 = ptrtoint ptr %sflist114 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sflist114, align 4
  %port116 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %port116 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port116, align 4
  %add117 = add i32 %23, 4096
  %call118 = call i32 @snd_soundfont_load(ptr noundef %21, ptr noundef %buf, i32 noundef %count, i32 noundef %add117) #6
  br label %cleanup.thread

if.else119:                                       ; preds = %if.end106
  %load_fx = getelementptr inbounds %struct.snd_emux, ptr %3, i32 0, i32 5, i32 12
  %24 = ptrtoint ptr %load_fx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %load_fx, align 4
  %tobool120.not = icmp eq ptr %25, null
  br i1 %tobool120.not, label %if.else119.cleanup.thread_crit_edge, label %if.then121

if.else119.cleanup.thread_crit_edge:              ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then121:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #8
  %conv125 = sext i16 %18 to i32
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %9, align 2
  %conv126 = sext i16 %27 to i32
  %call127 = call i32 %25(ptr noundef nonnull %3, i32 noundef %conv125, i32 noundef %conv126, ptr noundef %buf, i32 noundef %count) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then121, %if.else119.cleanup.thread_crit_edge, %if.then113
  %rc.1.ph = phi i32 [ -22, %if.else119.cleanup.thread_crit_edge ], [ %call127, %if.then121 ], [ %call118, %if.then113 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %patch) #6
  br label %cleanup134

cleanup:                                          ; preds = %if.then11.i.i, %if.then99.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then99.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %patch) #6
  br label %cleanup134

cleanup134:                                       ; preds = %cleanup, %cleanup.thread, %if.then97, %if.end96.cleanup134_crit_edge, %do.end80, %do.end43, %do.end
  %retval.1 = phi i32 [ -6, %do.end ], [ -6, %do.end43 ], [ -6, %do.end80 ], [ %retval.0, %cleanup ], [ %call, %if.then97 ], [ 0, %if.end96.cleanup134_crit_edge ], [ %rc.1.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_reset_seq_oss(ptr noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 273, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !28

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 276, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emux_reset_port(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end43, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end43 ], [ 0, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_inc_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emux_event_oss_input(ptr noundef %ev, i32 noundef %direct, ptr noundef %private_data, i32 noundef %atomic, i32 noundef %hop) #0 align 64 {
entry:
  %ev.i99.i = alloca %struct.snd_seq_event, align 4
  %ev.i.i = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private_data, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 295, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %emu24 = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 1
  %0 = ptrtoint ptr %emu24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emu24, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %do.end44, label %if.end60, !prof !28

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 298, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end60:                                         ; preds = %if.end23
  %2 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %3)
  %cmp.not = icmp eq i8 %3, 51
  br i1 %cmp.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_emux_event_input(ptr noundef %ev, i32 noundef %direct, ptr noundef nonnull %private_data, i32 noundef %atomic, i32 noundef %hop) #6
  br label %cleanup

if.end63:                                         ; preds = %if.end60
  %data64 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %4 = ptrtoint ptr %data64 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %cmp66.not = icmp eq i8 %5, -2
  br i1 %cmp66.not, label %if.end69, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  %arrayidx70 = getelementptr %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx70, align 1
  %and = and i8 %7, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool76.not = icmp sgt i8 %7, -1
  %conv79 = zext i8 %and to i32
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.end69
  %arrayidx.i = getelementptr %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %max_channels.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 3
  %10 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp2.not.i = icmp sgt i32 %11, %conv.i
  br i1 %cmp2.not.i, label %if.else.i, label %if.then77.if.end.i_crit_edge

if.then77.if.end.i_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %channels.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 4
  %12 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_midi_channel, ptr %13, i32 %conv.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then77.if.end.i_crit_edge
  %chan.0.i = phi ptr [ %arrayidx5.i, %if.else.i ], [ null, %if.then77.if.end.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx6.i, align 2
  %arrayidx7.i = getelementptr i8, ptr %data64, i32 6
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx7.i, align 2
  %18 = zext i32 %conv79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %conv79, label %sw.default.i [
    i32 5, label %sw.bb.i
    i32 7, label %sw.bb12.i
    i32 6, label %if.end.i.cleanup_crit_edge
    i32 9, label %if.end.i.cleanup_crit_edge108
    i32 13, label %sw.bb13.i
    i32 14, label %sw.bb14.i
    i32 8, label %sw.bb15.i
    i32 15, label %sw.bb20.i
    i32 10, label %sw.bb25.i
    i32 11, label %sw.bb27.i
    i32 12, label %sw.bb38.i
    i32 0, label %if.end.i.cleanup_crit_edge109
  ]

if.end.i.cleanup_crit_edge109:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.cleanup_crit_edge108:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  %tobool.not.i = icmp eq ptr %chan.0.i, null
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.then8.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i = zext i16 %15 to i32
  %conv10.i = sext i16 %17 to i32
  tail call void @snd_emux_send_effect_oss(ptr noundef nonnull %private_data, ptr noundef nonnull %chan.0.i, i32 noundef %conv9.i, i32 noundef %conv10.i) #6
  br label %cleanup

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emux_terminate_all(ptr noundef nonnull %1) #6
  br label %cleanup

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i.i) #6
  %19 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 7
  %20 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 7, i32 0, i32 4
  %21 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i.i, i32 0, i32 7, i32 0, i32 5
  %22 = call ptr @memset(ptr %ev.i.i, i32 0, i32 20)
  %23 = ptrtoint ptr %ev.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 10, ptr %ev.i.i, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %9, ptr %19, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 123, ptr %20, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %21, align 4
  %call.i.i = call i32 @snd_emux_event_input(ptr noundef nonnull %ev.i.i, i32 noundef 0, ptr noundef nonnull %private_data, i32 noundef %atomic, i32 noundef %hop) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i.i) #6
  br label %cleanup

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev.i99.i) #6
  %27 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i99.i, i32 0, i32 7
  %28 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i99.i, i32 0, i32 7, i32 0, i32 4
  %29 = getelementptr inbounds %struct.snd_seq_event, ptr %ev.i99.i, i32 0, i32 7, i32 0, i32 5
  %30 = call ptr @memset(ptr %ev.i99.i, i32 0, i32 20)
  %31 = ptrtoint ptr %ev.i99.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %ev.i99.i, align 4
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %9, ptr %27, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 120, ptr %28, align 4
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %29, align 4
  %call.i100.i = call i32 @snd_emux_event_input(ptr noundef nonnull %ev.i99.i, i32 noundef 0, ptr noundef nonnull %private_data, i32 noundef %atomic, i32 noundef %hop) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev.i99.i) #6
  br label %cleanup

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool16.not.i = icmp eq i16 %17, 0
  br i1 %tobool16.not.i, label %sw.bb15.i.cleanup_crit_edge, label %if.then17.i

sw.bb15.i.cleanup_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv18.i = sext i16 %15 to i32
  %volume_atten.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 3
  %35 = ptrtoint ptr %volume_atten.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv18.i, ptr %volume_atten.i, align 4
  tail call void @snd_emux_update_port(ptr noundef nonnull %private_data, i32 noundef 1) #6
  br label %cleanup

sw.bb20.i:                                        ; preds = %if.end.i
  %tobool21.not.i = icmp eq ptr %chan.0.i, null
  br i1 %tobool21.not.i, label %sw.bb20.i.cleanup_crit_edge, label %if.then22.i

sw.bb20.i.cleanup_crit_edge:                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv23.i = trunc i16 %15 to i8
  %midi_pressure.i = getelementptr inbounds %struct.snd_midi_channel, ptr %chan.0.i, i32 0, i32 7
  %36 = ptrtoint ptr %midi_pressure.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv23.i, ptr %midi_pressure.i, align 1
  tail call void @snd_emux_update_channel(ptr noundef nonnull %private_data, ptr noundef nonnull %chan.0.i, i32 noundef 40) #6
  br label %cleanup

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i.i = icmp eq i16 %15, 0
  %port_mode1.i.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 2
  %..i.i = select i1 %tobool.not.i.i, i8 1, i8 2
  %.17.i.i = select i1 %tobool.not.i.i, i32 0, i32 33554944
  %.18.i.i = select i1 %tobool.not.i.i, i32 32, i32 0
  %.19.i.i = select i1 %tobool.not.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %port_mode1.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %..i.i, ptr %port_mode1.i.i, align 4
  %drum_flags2.i.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 4
  %38 = ptrtoint ptr %drum_flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.17.i.i, ptr %drum_flags2.i.i, align 4
  %volume_atten3.i.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 3
  %39 = ptrtoint ptr %volume_atten3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.18.i.i, ptr %volume_atten3.i.i, align 4
  %oss_arg4.i.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 7
  %40 = ptrtoint ptr %oss_arg4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %oss_arg4.i.i, align 4
  %event_passing5.i.i = getelementptr inbounds %struct.snd_seq_oss_arg, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %event_passing5.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.19.i.i, ptr %event_passing5.i.i, align 4
  tail call void @snd_emux_reset_port(ptr noundef nonnull %private_data) #6
  br label %cleanup

sw.bb27.i:                                        ; preds = %if.end.i
  %43 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx6.i, align 4
  %drum_flags.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 4
  %45 = ptrtoint ptr %drum_flags.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %drum_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31101.i = icmp sgt i32 %11, 0
  br i1 %cmp31101.i, label %for.body.lr.ph.i, label %sw.bb27.i.cleanup_crit_edge

sw.bb27.i.cleanup_crit_edge:                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb27.i
  %channels34.i = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0102.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %channels34.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %channels34.i, align 4
  %48 = ptrtoint ptr %drum_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %drum_flags.i, align 4
  %50 = shl nuw i32 1, %i.0102.i
  %51 = and i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool37.not.not.i = icmp eq i32 %51, 0
  %drum_channel.i = getelementptr %struct.snd_midi_channel, ptr %47, i32 %i.0102.i, i32 5
  %52 = ptrtoint ptr %drum_channel.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %drum_channel.i, align 1
  %bf.shl.i = select i1 %tobool37.not.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %drum_channel.i, align 1
  %inc.i = add nuw nsw i32 %i.0102.i, 1
  %53 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_channels.i, align 4
  %cmp31.i = icmp slt i32 %inc.i, %54
  br i1 %cmp31.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sw.bb38.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %15)
  %cmp40.i = icmp ult i16 %15, 21
  br i1 %cmp40.i, label %if.then42.i, label %sw.bb38.i.cleanup_crit_edge

sw.bb38.i.cleanup_crit_edge:                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then42.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv39.i = zext i16 %15 to i32
  %conv43.i = sext i16 %17 to i32
  %arrayidx44.i = getelementptr %struct.snd_emux_port, ptr %private_data, i32 0, i32 5, i32 %conv39.i
  %55 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv43.i, ptr %arrayidx44.i, align 4
  br label %cleanup

sw.default.i:                                     ; preds = %if.end.i
  %oss_ioctl.i = getelementptr inbounds %struct.snd_emux, ptr %1, i32 0, i32 5, i32 14
  %56 = ptrtoint ptr %oss_ioctl.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %oss_ioctl.i, align 4
  %tobool46.not.i = icmp eq ptr %57, null
  br i1 %tobool46.not.i, label %sw.default.i.cleanup_crit_edge, label %if.then47.i

sw.default.i.cleanup_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv50.i = zext i16 %15 to i32
  %conv51.i = sext i16 %17 to i32
  %call.i = tail call i32 %57(ptr noundef nonnull %1, i32 noundef %conv79, i32 noundef %conv50.i, i32 noundef %conv51.i) #6
  br label %cleanup

if.else:                                          ; preds = %if.end69
  %port_mode.i = getelementptr inbounds %struct.snd_emux_port, ptr %private_data, i32 0, i32 2
  %58 = ptrtoint ptr %port_mode.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.not.i = icmp ne i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %cmp2.i = icmp eq i8 %and, 0
  %or.cond.i = or i1 %cmp2.i, %cmp.not.i
  br i1 %or.cond.i, label %if.else.cleanup_crit_edge, label %if.end5.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.else
  %arrayidx.i103 = getelementptr %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i103, align 1
  %conv6.i = zext i8 %61 to i32
  %max_channels.i104 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 3
  %62 = ptrtoint ptr %max_channels.i104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_channels.i104, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv6.i)
  %cmp9.not.i = icmp sgt i32 %63, %conv6.i
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end5.i
  %channels.i105 = getelementptr inbounds %struct.snd_midi_channel_set, ptr %private_data, i32 0, i32 4
  %64 = ptrtoint ptr %channels.i105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %channels.i105, align 4
  %arrayidx14.i = getelementptr %struct.snd_midi_channel, ptr %65, i32 %conv6.i
  %arrayidx15.i = getelementptr %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 4
  %66 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx15.i, align 2
  %68 = zext i32 %conv79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %conv79, label %if.end12.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i106
    i32 5, label %sw.bb18.i
    i32 16, label %sw.bb25.i107
  ]

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i106:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv17.i = trunc i16 %67 to i8
  %midi_program.i = getelementptr %struct.snd_midi_channel, ptr %65, i32 %conv6.i, i32 8
  %69 = ptrtoint ptr %midi_program.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv17.i, ptr %midi_program.i, align 4
  br label %cleanup

sw.bb18.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv19.i = trunc i16 %67 to i8
  %shl.i = shl i8 %conv19.i, 3
  %arrayidx21.i = getelementptr %struct.snd_midi_channel, ptr %65, i32 %conv6.i, i32 10, i32 10
  %70 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %shl.i, ptr %arrayidx21.i, align 2
  tail call void @snd_emux_update_channel(ptr noundef nonnull %private_data, ptr noundef %arrayidx14.i, i32 noundef 4) #6
  br label %cleanup

sw.bb25.i107:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx15.i, align 4
  %conv26.i = and i32 %72, 32767
  tail call void @snd_emux_send_effect(ptr noundef nonnull %private_data, ptr noundef %arrayidx14.i, i32 noundef 27, i32 noundef %conv26.i, i32 noundef 1) #6
  %73 = lshr i32 %72, 15
  %and28.i = and i32 %73, 65535
  tail call void @snd_emux_send_effect(ptr noundef nonnull %private_data, ptr noundef %arrayidx14.i, i32 noundef 30, i32 noundef %and28.i, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb25.i107, %sw.bb18.i, %sw.bb.i106, %if.end12.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then47.i, %sw.default.i.cleanup_crit_edge, %if.then42.i, %sw.bb38.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %sw.bb27.i.cleanup_crit_edge, %sw.bb25.i, %if.then22.i, %sw.bb20.i.cleanup_crit_edge, %if.then17.i, %sw.bb15.i.cleanup_crit_edge, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %if.then8.i, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge108, %if.end.i.cleanup_crit_edge109, %if.end63.cleanup_crit_edge, %if.then62, %do.end44, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end44 ], [ %call, %if.then62 ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge108 ], [ 0, %if.end.i.cleanup_crit_edge109 ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %if.then8.i ], [ 0, %sw.bb12.i ], [ 0, %sw.bb13.i ], [ 0, %sw.bb14.i ], [ 0, %sw.bb15.i.cleanup_crit_edge ], [ 0, %if.then17.i ], [ 0, %sw.bb20.i.cleanup_crit_edge ], [ 0, %if.then22.i ], [ 0, %sw.bb25.i ], [ 0, %sw.bb27.i.cleanup_crit_edge ], [ 0, %sw.bb38.i.cleanup_crit_edge ], [ 0, %if.then42.i ], [ 0, %sw.default.i.cleanup_crit_edge ], [ 0, %if.then47.i ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ 0, %if.end12.i.cleanup_crit_edge ], [ 0, %sw.bb.i106 ], [ 0, %sw.bb18.i ], [ 0, %sw.bb25.i107 ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_emux_create_port(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_dec_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_reset_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emux_event_input(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_send_effect_oss(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_terminate_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_update_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_update_channel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_send_effect(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emux_sounds_off_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_close_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_event_port_detach(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_remove_samples(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_util_mem_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_load_guspatch(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soundfont_load(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/synth/emux/emux_oss.c", i32 58, i32 39}
!2 = !{ptr @oss_callback, !3, !"oss_callback", i1 false, i1 false}
!3 = !{!"../sound/synth/emux/emux_oss.c", i32 37, i32 42}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/synth/emux/emux_oss.c", i32 104, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/synth/emux/emux_oss.c", i32 114, i32 19}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/synth/emux/emux_oss.c", i32 118, i32 3}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!12 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2150507110, i64 2150507135}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 3002665}
!32 = !{i64 3002862}
!33 = !{i64 2150488095}
