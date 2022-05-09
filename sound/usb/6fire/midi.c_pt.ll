; ModuleID = '/llk/IR_all_yes/sound/usb/6fire/midi.c_pt.bc'
source_filename = "../sound/usb/6fire/midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.sfire_chip = type { ptr, ptr, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.midi_runtime = type { ptr, ptr, ptr, i8, %struct.spinlock, %struct.spinlock, ptr, %struct.urb, i8, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.comm_runtime = type { ptr, %struct.urb, ptr, i8, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@usb6fire_midi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rt->in_lock\00", [19 x i8] zeroinitializer }, align 32
@usb6fire_midi_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rt->out_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"6FireUSB\00", [23 x i8] zeroinitializer }, align 32
@usb6fire_midi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 182, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to create midi.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb6fire_midi_init\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/usb/6fire/midi.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb6fire_midi_init._entry_ptr = internal global ptr @usb6fire_midi_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMX6FireUSB MIDI\00", [47 x i8] zeroinitializer }, align 32
@out_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @usb6fire_midi_out_open, ptr @usb6fire_midi_out_close, ptr @usb6fire_midi_out_trigger, ptr @usb6fire_midi_out_drain }, [16 x i8] zeroinitializer }, align 32
@in_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @usb6fire_midi_in_open, ptr @usb6fire_midi_in_close, ptr @usb6fire_midi_in_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb6fire_midi_out_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 42, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"midi out urb submit failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb6fire_midi_out_handler\00", [38 x i8] zeroinitializer }, align 32
@usb6fire_midi_out_handler._entry_ptr = internal global ptr @usb6fire_midi_out_handler._entry, section ".printk_index", align 4
@usb6fire_midi_out_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.6, i32 96, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"usb6fire_midi_out_trigger\00", [38 x i8] zeroinitializer }, align 32
@usb6fire_midi_out_trigger._entry_ptr = internal global ptr @usb6fire_midi_out_trigger._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 172, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 173, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 178, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 182, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 186, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"out_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 138, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"in_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 145, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 40, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [26 x i8] c"../sound/usb/6fire/midi.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 94, i32 5 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @usb6fire_midi_init._entry, ptr @usb6fire_midi_init._entry_ptr, ptr @usb6fire_midi_out_handler._entry, ptr @usb6fire_midi_out_handler._entry_ptr, ptr @usb6fire_midi_out_trigger._entry, ptr @usb6fire_midi_out_trigger._entry_ptr, ptr @usb6fire_midi_init.__key, ptr @.str, ptr @usb6fire_midi_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @out_ops, ptr @in_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_midi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_midi_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_midi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_midi_out_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb6fire_midi_out_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb6fire_midi_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #8
  %comm = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 8
  %1 = ptrtoint ptr %comm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %comm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #8
  %out_buffer = getelementptr inbounds %struct.midi_runtime, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %out_buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i63, ptr %out_buffer, align 4
  %tobool3.not = icmp eq ptr %call7.i.i63, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chip, ptr %call7.i.i, align 8
  %in_received = getelementptr inbounds %struct.midi_runtime, ptr %call7.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %in_received to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @usb6fire_midi_in_received, ptr %in_received, align 4
  %7 = ptrtoint ptr %call7.i.i63 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %call7.i.i63, align 8
  %arrayidx9 = getelementptr i8, ptr %call7.i.i63, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx9, align 1
  %arrayidx11 = getelementptr i8, ptr %call7.i.i63, i32 2
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx11, align 2
  %in_lock = getelementptr inbounds %struct.midi_runtime, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %in_lock, ptr noundef nonnull @.str, ptr noundef nonnull @usb6fire_midi_init.__key, i16 noundef signext 3) #5
  %out_lock = getelementptr inbounds %struct.midi_runtime, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %out_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @usb6fire_midi_init.__key.1, i16 noundef signext 3) #5
  %init_urb = getelementptr inbounds %struct.comm_runtime, ptr %2, i32 0, i32 4
  %10 = ptrtoint ptr %init_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_urb, align 4
  %out_urb = getelementptr inbounds %struct.midi_runtime, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %out_buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out_buffer, align 4
  tail call void %11(ptr noundef %2, ptr noundef %out_urb, ptr noundef %13, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @usb6fire_midi_out_handler) #5
  %card = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 1
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %instance = getelementptr inbounds %struct.midi_runtime, ptr %call7.i.i, i32 0, i32 1
  %call18 = tail call i32 @snd_rawmidi_new(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %instance) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %out_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out_buffer, align 4
  tail call void @kfree(ptr noundef %17) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %instance, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %private_data, align 4
  %23 = load ptr, ptr %instance, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %23, i32 0, i32 5
  %24 = call ptr @memcpy(ptr %name, ptr @.str.9, i32 17)
  %25 = load ptr, ptr %instance, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %info_flags, align 8
  %27 = load ptr, ptr %instance, align 4
  tail call void @snd_rawmidi_set_ops(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @out_ops) #5
  %28 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %instance, align 4
  tail call void @snd_rawmidi_set_ops(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @in_ops) #5
  %midi = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 5
  %30 = ptrtoint ptr %midi to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %midi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then19, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then19 ], [ 0, %if.end25 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_midi_in_received(ptr noundef %rt, ptr noundef %data, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %in_lock = getelementptr inbounds %struct.midi_runtime, ptr %rt, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %in_lock) #5
  %in = getelementptr inbounds %struct.midi_runtime, ptr %rt, i32 0, i32 2
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %1, ptr noundef %data, i32 noundef %length) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %in_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_midi_out_handler(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %out_lock = getelementptr inbounds %struct.midi_runtime, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %out_lock) #5
  %out = getelementptr inbounds %struct.midi_runtime, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then:                                          ; preds = %entry
  %out_buffer = getelementptr inbounds %struct.midi_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %out_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_buffer, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %call6 = tail call i32 @snd_rawmidi_transmit(ptr noundef nonnull %3, ptr noundef %add.ptr, i32 noundef 60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  %6 = trunc i32 %call6 to i8
  %conv10 = add i8 %6, 2
  %7 = ptrtoint ptr %out_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_buffer, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx, align 1
  %out_serial = getelementptr inbounds %struct.midi_runtime, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %out_serial to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %out_serial, align 4
  %inc = add i8 %11, 1
  store i8 %inc, ptr %out_serial, align 4
  %12 = load ptr, ptr %out_buffer, align 4
  %arrayidx13 = getelementptr i8, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx13, align 1
  %add14 = add nuw i32 %call6, 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add14, ptr %transfer_buffer_length, align 4
  %call15 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end21, label %if.then9.if.end25_crit_edge

if.then9.if.end25_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end21:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.10, i32 noundef %call15) #9
  br label %if.end25

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %out, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %do.end21, %if.then9.if.end25_crit_edge, %entry.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %out_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb6fire_midi_abort(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %midi = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %midi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %midi, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %out_urb = getelementptr inbounds %struct.midi_runtime, ptr %1, i32 0, i32 7
  tail call void @usb_poison_urb(ptr noundef %out_urb) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb6fire_midi_destroy(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %midi = getelementptr inbounds %struct.sfire_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %midi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %midi, align 4
  %out_buffer = getelementptr inbounds %struct.midi_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %out_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_buffer, align 4
  tail call void @kfree(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %1) #5
  %4 = ptrtoint ptr %midi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %midi, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_midi_out_open(ptr nocapture noundef readnone %alsa_sub) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_midi_out_close(ptr nocapture noundef readnone %alsa_sub) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_midi_out_trigger(ptr noundef %alsa_sub, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %alsa_sub, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %out_urb = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 7
  %out_lock = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %out_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %out36 = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %out36 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out36, align 4
  br i1 %tobool.not, label %if.else35, label %if.then

if.then:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %out_buffer = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %out_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_buffer, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %call8 = tail call i32 @snd_rawmidi_transmit(ptr noundef %alsa_sub, ptr noundef %add.ptr, i32 noundef 60) #5
  %sext = shl i32 %call8, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp11 = icmp sgt i32 %sext, 0
  br i1 %cmp11, label %if.then13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end
  %conv1069 = and i32 %call8, 255
  %8 = trunc i32 %call8 to i8
  %conv15 = add i8 %8, 2
  %9 = ptrtoint ptr %out_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_buffer, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15, ptr %arrayidx, align 1
  %out_serial = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %out_serial to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %out_serial, align 4
  %inc = add i8 %13, 1
  store i8 %inc, ptr %out_serial, align 4
  %14 = load ptr, ptr %out_buffer, align 4
  %arrayidx18 = getelementptr i8, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %arrayidx18, align 1
  %add20 = add nuw nsw i32 %conv1069, 4
  %transfer_buffer_length = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 7, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add20, ptr %transfer_buffer_length, align 4
  %call21 = tail call i32 @usb_submit_urb(ptr noundef %out_urb, i32 noundef 2592) #5
  %sext68 = shl i32 %call21, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext68)
  %cmp24 = icmp slt i32 %sext68, 0
  br i1 %cmp24, label %do.end29, label %if.else

do.end29:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %conv23 = ashr exact i32 %sext68, 24
  %dev = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 7, i32 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %dev30 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.10, i32 noundef %conv23) #9
  br label %cleanup

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %out36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %alsa_sub, ptr %out36, align 4
  br label %cleanup

if.else35:                                        ; preds = %entry
  %cmp37 = icmp eq ptr %5, %alsa_sub
  br i1 %cmp37, label %if.then39, label %if.else35.cleanup_crit_edge

if.else35.cleanup_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %out36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %out36, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.else35.cleanup_crit_edge, %if.else, %do.end29, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %out_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_midi_out_drain(ptr nocapture noundef readonly %alsa_sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %alsa_sub, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %out = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out, align 4
  %tobool.not1.not = icmp eq ptr %5, null
  br i1 %tobool.not1.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %retry.02 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %inc = add nuw nsw i32 %retry.02, 1
  tail call void @msleep(i32 noundef 10) #5
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out, align 4
  %tobool.not = icmp ne ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retry.02)
  %cmp = icmp ult i32 %retry.02, 99
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_midi_in_open(ptr nocapture noundef readnone %alsa_sub) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usb6fire_midi_in_close(ptr nocapture noundef readnone %alsa_sub) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb6fire_midi_in_trigger(ptr noundef %alsa_sub, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %alsa_sub, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %in_lock = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %in_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %spec.select = select i1 %tobool.not, ptr null, ptr %alsa_sub
  %4 = getelementptr inbounds %struct.midi_runtime, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %in_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @usb6fire_midi_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/usb/6fire/midi.c", i32 172, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @usb6fire_midi_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/usb/6fire/midi.c", i32 173, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/6fire/midi.c", i32 178, i32 36}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/6fire/midi.c", i32 182, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @usb6fire_midi_init._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @usb6fire_midi_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/6fire/midi.c", i32 186, i32 29}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/6fire/midi.c", i32 40, i32 5}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @usb6fire_midi_out_handler._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @usb6fire_midi_out_handler._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @out_ops, !24, !"out_ops", i1 false, i1 false}
!24 = !{!"../sound/usb/6fire/midi.c", i32 138, i32 37}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/usb/6fire/midi.c", i32 94, i32 5}
!27 = !{ptr @usb6fire_midi_out_trigger._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @usb6fire_midi_out_trigger._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @in_ops, !30, !"in_ops", i1 false, i1 false}
!30 = !{!"../sound/usb/6fire/midi.c", i32 145, i32 37}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
