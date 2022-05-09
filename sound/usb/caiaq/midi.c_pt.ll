; ModuleID = '/llk/IR_all_yes/sound/usb/caiaq/midi.c_pt.bc'
source_filename = "../sound/usb/caiaq/midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_usb_caiaqdev = type { %struct.snd_usb_audio, %struct.urb, %struct.urb, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], %struct.caiaq_device_spec, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, ptr, ptr, i32, i32, i32, [32 x ptr], [32 x ptr], [256 x i8], [2 x i8], ptr, [64 x i8], [128 x i16], ptr, [512 x i8], ptr, %struct.snd_pcm_hardware, ptr, ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.caiaq_device_spec = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@snd_usb_caiaq_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_usb_caiaq_midi_output_open, ptr @snd_usb_caiaq_midi_output_close, ptr @snd_usb_caiaq_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_usb_caiaq_midi_input_open, ptr @snd_usb_caiaq_midi_input_close, ptr @snd_usb_caiaq_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_midi_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"snd_usb_caiaq_midi_send(%p): usb_submit_urb() failed,ret=%d, len=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_usb_caiaq_midi_send\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/usb/caiaq/midi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_usb_caiaq_midi_send._entry_ptr = internal global ptr @snd_usb_caiaq_midi_send._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [26 x i8] c"snd_usb_caiaq_midi_output\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 92, i32 37 }
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"snd_usb_caiaq_midi_input\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 99, i32 37 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [26 x i8] c"../sound/usb/caiaq/midi.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 71, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @snd_usb_caiaq_midi_send._entry, ptr @snd_usb_caiaq_midi_send._entry_ptr, ptr @snd_usb_caiaq_midi_output, ptr @snd_usb_caiaq_midi_input, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_usb_caiaq_midi_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_caiaq_midi_handle_input(ptr nocapture noundef readonly %cdev, i32 noundef %port, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %midi_receive_substream = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %cdev, i32 0, i32 48
  %0 = ptrtoint ptr %midi_receive_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %midi_receive_substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %len) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_caiaq_midi_init(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #6
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !21
  %card = getelementptr inbounds %struct.snd_usb_audio, ptr %device, i32 0, i32 2
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 8
  %product_name = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %device, i32 0, i32 17
  %num_midi_out = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %device, i32 0, i32 9, i32 10
  %3 = ptrtoint ptr %num_midi_out to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_midi_out, align 1
  %conv = zext i8 %4 to i32
  %num_midi_in = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %device, i32 0, i32 9, i32 11
  %5 = ptrtoint ptr %num_midi_in to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_midi_in, align 4
  %conv2 = zext i8 %6 to i32
  %call = call i32 @snd_rawmidi_new(ptr noundef %2, ptr noundef %product_name, i32 noundef 0, i32 noundef %conv, i32 noundef %conv2, ptr noundef nonnull %rmidi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %8, i32 0, i32 5
  %call7 = call i32 @strscpy(ptr noundef %name, ptr noundef %product_name, i32 noundef 80) #6
  %9 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmidi, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %10, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %device, ptr %private_data, align 4
  %13 = ptrtoint ptr %num_midi_out to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_midi_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp11.not = icmp eq i8 %14, 0
  br i1 %cmp11.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %info_flags, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @snd_usb_caiaq_midi_output) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %16 = ptrtoint ptr %num_midi_in to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_midi_in, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp19.not = icmp eq i8 %17, 0
  br i1 %cmp19.not, label %if.end15.if.end24_crit_edge, label %if.then21

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmidi, align 4
  %info_flags22 = getelementptr inbounds %struct.snd_rawmidi, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %info_flags22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %info_flags22, align 8
  %or23 = or i32 %21, 2
  store i32 %or23, ptr %info_flags22, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @snd_usb_caiaq_midi_input) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end15.if.end24_crit_edge
  %22 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmidi, align 4
  %rmidi25 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %device, i32 0, i32 47
  %24 = ptrtoint ptr %rmidi25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %rmidi25, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_usb_caiaq_midi_output_done(ptr nocapture noundef readonly %urb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %midi_out_active = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %midi_out_active, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %midi_out_substream = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 49
  %5 = ptrtoint ptr %midi_out_substream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %midi_out_substream, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %card.i = getelementptr inbounds %struct.snd_usb_audio, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 8
  %dev1.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %midi_out_buf.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %midi_out_buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %midi_out_buf.i, align 8
  %arrayidx3.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx3.i, align 1
  %add.ptr.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 8, i32 3
  %call.i = tail call i32 @snd_rawmidi_transmit(ptr noundef nonnull %6, ptr noundef %add.ptr.i, i32 noundef 61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.end2.cleanup_crit_edge, label %if.end.i

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end2
  %conv.i = trunc i32 %call.i to i8
  %arrayidx6.i = getelementptr %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %arrayidx6.i, align 2
  %add.i = add nuw i32 %call.i, 3
  %midi_out_urb.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 2
  %transfer_buffer_length.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %1, i32 0, i32 2, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %transfer_buffer_length.i, align 4
  %call8.i = tail call i32 @usb_submit_urb(ptr noundef %midi_out_urb.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull %6, i32 noundef %call8.i, i32 noundef %call.i) #9
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %midi_out_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end.i, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_usb_caiaq_midi_output_open(ptr nocapture noundef readnone %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_usb_caiaq_midi_output_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %midi_out_active = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %midi_out_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %midi_out_urb = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 2
  tail call void @usb_kill_urb(ptr noundef %midi_out_urb) #6
  %6 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %midi_out_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_usb_caiaq_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %midi_out_substream3 = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 49
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %midi_out_substream3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %midi_out_substream3, align 8
  %midi_out_active = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %midi_out_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.then
  %card.i = getelementptr inbounds %struct.snd_usb_audio, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 8
  %dev1.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %midi_out_buf.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %midi_out_buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %midi_out_buf.i, align 8
  %arrayidx3.i = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx3.i, align 1
  %add.ptr.i = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 8, i32 3
  %call.i = tail call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef %add.ptr.i, i32 noundef 61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then2.if.end4_crit_edge, label %if.end.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i:                                         ; preds = %if.then2
  %conv.i = trunc i32 %call.i to i8
  %arrayidx6.i = getelementptr %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %arrayidx6.i, align 2
  %add.i = add nuw i32 %call.i, 3
  %midi_out_urb.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 2
  %transfer_buffer_length.i = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 2, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %transfer_buffer_length.i, align 4
  %call8.i = tail call i32 @usb_submit_urb(ptr noundef %midi_out_urb.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %substream, i32 noundef %call8.i, i32 noundef %call.i) #9
  br label %if.end4

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %midi_out_active to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %midi_out_active, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %midi_out_substream3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %midi_out_substream3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.else.i, %do.end.i, %if.then2.if.end4_crit_edge, %if.then.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_usb_caiaq_midi_input_open(ptr nocapture noundef readnone %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_usb_caiaq_midi_input_close(ptr nocapture noundef readnone %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_usb_caiaq_midi_input_trigger(ptr noundef %substream, i32 noundef %up) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool1.not = icmp eq i32 %up, 0
  %spec.select = select i1 %tobool1.not, ptr null, ptr %substream
  %midi_receive_substream = getelementptr inbounds %struct.snd_usb_caiaqdev, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %midi_receive_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.select, ptr %midi_receive_substream, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @snd_usb_caiaq_midi_output, !1, !"snd_usb_caiaq_midi_output", i1 false, i1 false}
!1 = !{!"../sound/usb/caiaq/midi.c", i32 92, i32 37}
!2 = !{ptr @snd_usb_caiaq_midi_input, !3, !"snd_usb_caiaq_midi_input", i1 false, i1 false}
!3 = !{!"../sound/usb/caiaq/midi.c", i32 99, i32 37}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/usb/caiaq/midi.c", i32 71, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_usb_caiaq_midi_send._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_usb_caiaq_midi_send._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
