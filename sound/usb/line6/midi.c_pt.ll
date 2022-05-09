; ModuleID = '/llk/IR_all_yes/sound/usb/line6/midi.c_pt.bc'
source_filename = "../sound/usb/line6/midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+line6_init_midi\22, \22a\22\09"
module asm "\09.weak\09__crc_line6_init_midi\09\09\09\09"
module asm "\09.long\09__crc_line6_init_midi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_line6_init_midi:\09\09\09\09\09"
module asm "\09.asciz \09\22line6_init_midi\22\09\09\09\09\09"
module asm "__kstrtabns_line6_init_midi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_line6 = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.anon.67, %struct.delayed_work, ptr, ptr, ptr }
%struct.anon.67 = type { %struct.mutex, %struct.wait_queue_head, i8, %struct.anon.68 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.68 = type { %union.anon.69, [8192 x i8] }
%union.anon.69 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_line6_midi = type { ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head, %struct.midi_buffer, %struct.midi_buffer }
%struct.midi_buffer = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.line6_properties = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@line6_init_midi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&line6midi->send_wait\00", [42 x i8] zeroinitializer }, align 32
@line6_init_midi.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&line6midi->lock\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_line6_init_midi = external dso_local constant [0 x i8], align 1
@__kstrtabns_line6_init_midi = external dso_local constant [0 x i8], align 1
@__ksymtab_line6_init_midi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @line6_init_midi to i32), ptr @__kstrtab_line6_init_midi, ptr @__kstrtabns_line6_init_midi }, section "___ksymtab_gpl+line6_init_midi", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line 6 MIDI\00", [20 x i8] zeroinitializer }, align 32
@line6_midi_output_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @line6_midi_output_open, ptr @line6_midi_output_close, ptr @line6_midi_output_trigger, ptr @line6_midi_output_drain }, [16 x i8] zeroinitializer }, align 32
@line6_midi_input_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @line6_midi_input_open, ptr @line6_midi_input_close, ptr @line6_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@send_midi_async._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 141, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_submit_urb failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send_midi_async\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/usb/line6/midi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@send_midi_async._entry_ptr = internal global ptr @send_midi_async._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 278, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 279, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 224, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"line6_midi_output_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 204, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"line6_midi_input_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 211, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [26 x i8] c"../sound/usb/line6/midi.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 141, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_line6_init_midi, ptr @send_midi_async._entry, ptr @send_midi_async._entry_ptr, ptr @line6_init_midi.__key, ptr @.str, ptr @line6_init_midi.__key.1, ptr @.str.2, ptr @.str.3, ptr @line6_midi_output_ops, ptr @line6_midi_input_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_init_midi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_init_midi.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_midi_output_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line6_midi_input_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_midi_async._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @line6_midi_receive(ptr nocapture noundef readonly %line6, ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %line6midi = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 9
  %0 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %line6midi, align 4
  %substream_receive = getelementptr inbounds %struct.snd_line6_midi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %substream_receive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream_receive, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %3, ptr noundef %data, i32 noundef %length) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @line6_init_midi(ptr noundef %line6) #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #9
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !31
  %properties = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 1
  %1 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %properties, align 4
  %capabilities = getelementptr inbounds %struct.line6_properties, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capabilities, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %card.i = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 7
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %call.i = call i32 @snd_rawmidi_new(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %7 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmidi, align 4
  %id.i = getelementptr inbounds %struct.snd_rawmidi, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %properties, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call2.i = call ptr @strcpy(ptr noundef %id.i, ptr noundef %12) #12
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %properties, align 4
  %name5.i = getelementptr inbounds %struct.line6_properties, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %name5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name5.i, align 4
  %call6.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %16) #12
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %8, i32 0, i32 3
  %17 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %info_flags.i, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @line6_midi_output_ops) #9
  call void @snd_rawmidi_set_ops(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @line6_midi_input_ops) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 168) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %19 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_rawmidi, ptr %20, i32 0, i32 10
  %22 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_line6_midi_free, ptr %private_free, align 8
  %send_wait = getelementptr inbounds %struct.snd_line6_midi, ptr %call7.i.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %send_wait, ptr noundef nonnull @.str, ptr noundef nonnull @line6_init_midi.__key) #9
  %lock = getelementptr inbounds %struct.snd_line6_midi, ptr %call7.i.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @line6_init_midi.__key.1, i16 noundef signext 3) #9
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %line6, ptr %call7.i.i, align 8
  %midibuf_in = getelementptr inbounds %struct.snd_line6_midi, ptr %call7.i.i, i32 0, i32 6
  %call12 = call i32 @line6_midibuf_init(ptr noundef %midibuf_in, i32 noundef 1024, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %midibuf_out = getelementptr inbounds %struct.snd_line6_midi, ptr %call7.i.i, i32 0, i32 7
  %call16 = call i32 @line6_midibuf_init(ptr noundef %midibuf_out, i32 noundef 1024, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %line6midi20 = getelementptr inbounds %struct.usb_line6, ptr %line6, i32 0, i32 9
  %24 = ptrtoint ptr %line6midi20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %line6midi20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call12, %if.end6.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_line6_midi_free(ptr nocapture noundef readonly %rmidi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %midibuf_in = getelementptr inbounds %struct.snd_line6_midi, ptr %1, i32 0, i32 6
  tail call void @line6_midibuf_destroy(ptr noundef %midibuf_in) #9
  %midibuf_out = getelementptr inbounds %struct.snd_line6_midi, ptr %1, i32 0, i32 7
  tail call void @line6_midibuf_destroy(ptr noundef %midibuf_out) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_midibuf_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @line6_midi_output_open(ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @line6_midi_output_close(ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @line6_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %line6midi = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %line6midi, align 4
  %substream_transmit = getelementptr inbounds %struct.snd_line6_midi, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %substream_transmit to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_transmit, align 4
  %9 = load ptr, ptr %line6midi, align 4
  %lock = getelementptr inbounds %struct.snd_line6_midi, ptr %9, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %10 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %line6midi, align 4
  %num_active_send_urbs = getelementptr inbounds %struct.snd_line6_midi, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %num_active_send_urbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_active_send_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @line6_midi_transmit(ptr noundef %substream)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %line6midi, align 4
  %lock11 = getelementptr inbounds %struct.snd_line6_midi, ptr %15, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock11, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @line6_midi_output_drain(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %line6midi = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %line6midi, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 179) #9
  %num_active_send_urbs = getelementptr inbounds %struct.snd_line6_midi, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %num_active_send_urbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_active_send_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %send_wait = getelementptr inbounds %struct.snd_line6_midi, ptr %7, i32 0, i32 5
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %send_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %11 = ptrtoint ptr %num_active_send_urbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_active_send_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp725 = icmp eq i32 %12, 0
  br i1 %cmp725, label %if.then.for.end_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call26 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call24, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool.not = icmp eq i32 %call26, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #9
  %call = call i32 @prepare_to_wait_event(ptr noundef %send_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %13 = ptrtoint ptr %num_active_send_urbs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_active_send_urbs, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %send_wait, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end12

if.end12:                                         ; preds = %__out, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @line6_midi_transmit(ptr noundef %substream) unnamed_addr #0 align 64 {
entry:
  %chunk = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %line6midi2 = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %line6midi2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %line6midi2, align 4
  %midibuf_out = getelementptr inbounds %struct.snd_line6_midi, ptr %7, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chunk) #9
  %8 = call ptr @memset(ptr %chunk, i32 255, i32 16)
  %call29 = call i32 @line6_midibuf_bytes_free(ptr noundef %midibuf_out) #9
  %max_packet_size = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_packet_size, align 4
  %11 = call i32 @llvm.smin.i32(i32 %call29, i32 %10)
  %call330 = call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef nonnull %chunk, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %cmp431 = icmp eq i32 %call330, 0
  br i1 %cmp431, label %entry.for.cond8.preheader_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %if.end.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  %call1033 = call i32 @line6_midibuf_read(ptr noundef %midibuf_out, ptr noundef nonnull %chunk, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1033)
  %cmp1134 = icmp eq i32 %call1033, 0
  br i1 %cmp1134, label %for.cond8.preheader.for.end16_crit_edge, label %if.end13.lr.ph

for.cond8.preheader.for.end16_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end16

if.end13.lr.ph:                                   ; preds = %for.cond8.preheader
  %properties.i = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 2
  %ifcdev.i = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 6
  br label %if.end13

if.end:                                           ; preds = %if.end.if.end_crit_edge, %entry.if.end_crit_edge
  %call332 = phi i32 [ %call3, %if.end.if.end_crit_edge ], [ %call330, %entry.if.end_crit_edge ]
  %call6 = call i32 @line6_midibuf_write(ptr noundef %midibuf_out, ptr noundef nonnull %chunk, i32 noundef %call332) #9
  %call7 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %substream, i32 noundef %call332) #9
  %call = call i32 @line6_midibuf_bytes_free(ptr noundef %midibuf_out) #9
  %12 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_packet_size, align 4
  %14 = call i32 @llvm.smin.i32(i32 %call, i32 %13)
  %call3 = call i32 @snd_rawmidi_transmit_peek(ptr noundef %substream, ptr noundef nonnull %chunk, i32 noundef %14) #9
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.end.for.cond8.preheader_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.for.cond8.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

if.end13:                                         ; preds = %send_midi_async.exit.if.end13_crit_edge, %if.end13.lr.ph
  %call1035 = phi i32 [ %call1033, %if.end13.lr.ph ], [ %call10, %send_midi_async.exit.if.end13_crit_edge ]
  %call.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #9
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end13.send_midi_async.exit_crit_edge, label %if.end.i

if.end13.send_midi_async.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_midi_async.exit

if.end.i:                                         ; preds = %if.end13
  %call2.i = call ptr @kmemdup(ptr noundef nonnull %chunk, i32 noundef %call1035, i32 noundef 2592) #9
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %send_midi_async.exit

if.end5.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %properties.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %properties.i, align 4
  %ep_ctrl_w.i = getelementptr inbounds %struct.line6_properties, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %ep_ctrl_w.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ep_ctrl_w.i, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %16, align 8
  %shl.i.i = shl i32 %22, 8
  %shl1.i.i = shl i32 %20, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, 1073741824
  %23 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %interval.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %16, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %27 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call2.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %28 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call1035, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %29 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @midi_sent, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %30 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %5, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 4
  %31 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i.i = icmp eq i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp6.i.i = icmp ugt i32 %32, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end5.i.usb_fill_int_urb.exit.i_crit_edge

if.end5.i.usb_fill_int_urb.exit.i_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = call i32 @llvm.smax.i32(i32 %24, i32 1) #9
  %34 = call i32 @llvm.umin.i32(i32 %33, i32 16) #9
  %sub.i.i = add nsw i32 %34, -1
  %shl.i1.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %if.end5.i.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i1.i, %if.then.i.i ], [ %24, %if.end5.i.usb_fill_int_urb.exit.i_crit_edge ]
  %35 = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 25
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %interval.sink.i.i, ptr %35, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 23
  %37 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %start_frame.i.i, align 4
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 20
  %38 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %actual_length.i, align 4
  %call8.i = call i32 @usb_urb_ep_type_check(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %usb_fill_int_urb.exit.i.do.end.i_crit_edge, label %if.end11.i

usb_fill_int_urb.exit.i.do.end.i_crit_edge:       ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end11.i:                                       ; preds = %usb_fill_int_urb.exit.i
  %call12.i = call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.do.end.i_crit_edge, label %if.end15.i

if.end11.i.do.end.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %line6midi2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %line6midi2, align 4
  %num_active_send_urbs.i = getelementptr inbounds %struct.snd_line6_midi, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %num_active_send_urbs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_active_send_urbs.i, align 4
  %inc.i = add i32 %42, 1
  store i32 %inc.i, ptr %num_active_send_urbs.i, align 4
  br label %send_midi_async.exit

do.end.i:                                         ; preds = %if.end11.i.do.end.i_crit_edge, %usb_fill_int_urb.exit.i.do.end.i_crit_edge
  %43 = ptrtoint ptr %ifcdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ifcdev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.4) #14
  call void @usb_free_urb(ptr noundef nonnull %call.i) #9
  br label %send_midi_async.exit

send_midi_async.exit:                             ; preds = %do.end.i, %if.end15.i, %if.then4.i, %if.end13.send_midi_async.exit_crit_edge
  %call10 = call i32 @line6_midibuf_read(ptr noundef %midibuf_out, ptr noundef nonnull %chunk, i32 noundef 16) #9
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %send_midi_async.exit.for.end16_crit_edge, label %send_midi_async.exit.if.end13_crit_edge

send_midi_async.exit.if.end13_crit_edge:          ; preds = %send_midi_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

send_midi_async.exit.for.end16_crit_edge:         ; preds = %send_midi_async.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end16

for.end16:                                        ; preds = %send_midi_async.exit.for.end16_crit_edge, %for.cond8.preheader.for.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chunk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_midibuf_bytes_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_midibuf_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @line6_midibuf_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midi_sent(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %5) #9
  tail call void @usb_free_urb(ptr noundef %urb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %3)
  %cmp = icmp eq i32 %3, -108
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %line6midi = getelementptr inbounds %struct.usb_line6, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %line6midi, align 4
  %lock = getelementptr inbounds %struct.snd_line6_midi, ptr %7, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %8 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %line6midi, align 4
  %num_active_send_urbs = getelementptr inbounds %struct.snd_line6_midi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %num_active_send_urbs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_active_send_urbs, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %num_active_send_urbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp8 = icmp eq i32 %dec, 0
  br i1 %cmp8, label %if.end14, label %do.body2.if.end19_crit_edge

do.body2.if.end19_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end14:                                         ; preds = %do.body2
  %12 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %line6midi, align 4
  %substream_transmit = getelementptr inbounds %struct.snd_line6_midi, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %substream_transmit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream_transmit, align 4
  tail call fastcc void @line6_midi_transmit(ptr noundef %15)
  %16 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %line6midi, align 4
  %num_active_send_urbs13 = getelementptr inbounds %struct.snd_line6_midi, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %num_active_send_urbs13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_active_send_urbs13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp15 = icmp eq i32 %19, 0
  br i1 %cmp15, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %line6midi, align 4
  %send_wait = getelementptr inbounds %struct.snd_line6_midi, ptr %21, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %send_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge, %do.body2.if.end19_crit_edge
  %22 = ptrtoint ptr %line6midi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %line6midi, align 4
  %lock21 = getelementptr inbounds %struct.snd_line6_midi, ptr %23, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock21, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @line6_midi_input_open(ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @line6_midi_input_close(ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @line6_midi_input_trigger(ptr noundef %substream, i32 noundef %up) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %line6midi2 = getelementptr inbounds %struct.usb_line6, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %line6midi2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %line6midi2, align 4
  %substream_receive3 = getelementptr inbounds %struct.snd_line6_midi, ptr %7, i32 0, i32 1
  %.substream = select i1 %tobool.not, ptr null, ptr %substream
  %8 = ptrtoint ptr %substream_receive3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %.substream, ptr %substream_receive3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @line6_midibuf_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @line6_init_midi.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/usb/line6/midi.c", i32 278, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @line6_init_midi.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/usb/line6/midi.c", i32 279, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_line6_init_midi, !7, !"__ksymtab_line6_init_midi", i1 false, i1 false}
!7 = !{!"../sound/usb/line6/midi.c", i32 293, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/line6/midi.c", i32 224, i32 37}
!10 = !{ptr @line6_midi_output_ops, !11, !"line6_midi_output_ops", i1 false, i1 false}
!11 = !{!"../sound/usb/line6/midi.c", i32 204, i32 37}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/line6/midi.c", i32 141, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @send_midi_async._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @send_midi_async._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @line6_midi_input_ops, !21, !"line6_midi_input_ops", i1 false, i1 false}
!21 = !{!"../sound/usb/line6/midi.c", i32 211, i32 37}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
