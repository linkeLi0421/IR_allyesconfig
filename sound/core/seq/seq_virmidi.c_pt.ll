; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_virmidi.c_pt.bc'
source_filename = "../sound/core/seq/seq_virmidi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_virmidi_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_virmidi_new\09\09\09\09"
module asm "\09.long\09__crc_snd_virmidi_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_virmidi_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_virmidi_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_virmidi_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_rawmidi_global_ops = type { ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.snd_virmidi_dev = type { ptr, ptr, i32, i32, i32, i32, i32, %struct.rwlock_t, %struct.rw_semaphore, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.69 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.69 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_virmidi = type { %struct.list_head, i32, i32, i32, i8, ptr, %struct.snd_seq_event, ptr, ptr, %struct.work_struct }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.snd_rawmidi_runtime = type { ptr, i8, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, %struct.work_struct, ptr, ptr }

@__UNIQUE_ID_author233 = internal constant [52 x i8] c"snd_seq_virmidi.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [65 x i8] c"snd_seq_virmidi.description=Virtual Raw MIDI client on Sequencer\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [52 x i8] c"snd_seq_virmidi.file=sound/core/seq/snd-seq-virmidi\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [28 x i8] c"snd_seq_virmidi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VirMidi\00", [24 x i8] zeroinitializer }, align 32
@snd_virmidi_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rdev->filelist_sem\00", [44 x i8] zeroinitializer }, align 32
@snd_virmidi_new.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rdev->filelist_lock\00", [43 x i8] zeroinitializer }, align 32
@snd_virmidi_global_ops = internal constant { %struct.snd_rawmidi_global_ops, [20 x i8] } { %struct.snd_rawmidi_global_ops { ptr @snd_virmidi_dev_register, ptr @snd_virmidi_dev_unregister, ptr null }, [20 x i8] zeroinitializer }, align 32
@snd_virmidi_input_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_virmidi_input_open, ptr @snd_virmidi_input_close, ptr @snd_virmidi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_virmidi_output_ops = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_virmidi_output_open, ptr @snd_virmidi_output_close, ptr @snd_virmidi_output_trigger, ptr @snd_virmidi_output_drain }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_snd_virmidi_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_virmidi_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_virmidi_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_virmidi_new to i32), ptr @__kstrtab_snd_virmidi_new, ptr @__kstrtabns_snd_virmidi_new }, section "___ksymtab+snd_virmidi_new", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_virmidi_dev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ALSA: seq_virmidi: seq_mode is not set: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_virmidi_dev_register\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/core/seq/seq_virmidi.c\00", [35 x i8] zeroinitializer }, align 32
@snd_virmidi_dev_register._entry_ptr = internal global ptr @snd_virmidi_dev_register._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %d-%d\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VirMIDI %d-%d\00", [18 x i8] zeroinitializer }, align 32
@snd_virmidi_output_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&vmidi->output_work)\00", [57 x i8] zeroinitializer }, align 32
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 496, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 512, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 513, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"snd_virmidi_global_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 470, i32 44 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"snd_virmidi_input_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 339, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [23 x i8] c"snd_virmidi_output_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 345, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 448, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 372, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 383, i32 23 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [32 x i8] c"../sound/core/seq/seq_virmidi.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 226, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__ksymtab_snd_virmidi_new, ptr @snd_virmidi_dev_register._entry, ptr @snd_virmidi_dev_register._entry_ptr, ptr @.str, ptr @snd_virmidi_new.__key, ptr @.str.1, ptr @snd_virmidi_new.__key.2, ptr @.str.3, ptr @snd_virmidi_global_ops, ptr @snd_virmidi_input_ops, ptr @snd_virmidi_output_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_virmidi_output_open.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_new.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_global_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_input_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_output_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_dev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_virmidi_output_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_virmidi_new(ptr noundef %card, i32 noundef %device, ptr nocapture noundef writeonly %rrmidi) #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #8
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !45
  %1 = ptrtoint ptr %rrmidi to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rrmidi, align 4
  %call = call i32 @snd_rawmidi_new(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef %device, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %rmidi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmidi, align 4
  %name = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 5
  %id = getelementptr inbounds %struct.snd_rawmidi, ptr %3, i32 0, i32 4
  %call2 = call ptr @strcpy(ptr noundef %name, ptr noundef %id) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 176) #12
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmidi, align 4
  call void @snd_device_free(ptr noundef %card, ptr noundef %6) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %card, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmidi, align 4
  %rmidi8 = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %rmidi8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %rmidi8, align 4
  %device9 = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %device9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %device, ptr %device9, align 4
  %client = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %client, align 8
  %filelist_sem = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 8
  call void @__init_rwsem(ptr noundef %filelist_sem, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_virmidi_new.__key) #8
  %filelist_lock = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 7
  call void @__rwlock_init(ptr noundef %filelist_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_virmidi_new.__key.2) #8
  %filelist = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %filelist to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %filelist, ptr %filelist, align 8
  %prev.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %filelist, ptr %prev.i, align 4
  %seq_mode = getelementptr inbounds %struct.snd_virmidi_dev, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %seq_mode, align 8
  %16 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_rawmidi, ptr %17, i32 0, i32 10
  %19 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_virmidi_free, ptr %private_free, align 8
  %ops = getelementptr inbounds %struct.snd_rawmidi, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @snd_virmidi_global_ops, ptr %ops, align 8
  call void @snd_rawmidi_set_ops(ptr noundef %17, i32 noundef 1, ptr noundef nonnull @snd_virmidi_input_ops) #8
  %21 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @snd_virmidi_output_ops) #8
  %23 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmidi, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %info_flags, align 8
  %26 = ptrtoint ptr %rrmidi to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %rrmidi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_virmidi_free(ptr nocapture noundef readonly %rmidi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_dev_register(ptr nocapture noundef readonly %rmidi) #0 align 64 {
entry:
  %pcallbacks.i = alloca %struct.snd_seq_port_callback, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %seq_mode = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcallbacks.i) #8
  %5 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks.i, i32 0, i32 5
  %10 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks.i, i32 0, i32 6
  %client1.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 4
  %11 = call ptr @memset(ptr %pcallbacks.i, i32 255, i32 32)
  %12 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %client1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp sgt i32 %13, -1
  br i1 %cmp.i, label %snd_virmidi_dev_attach_seq.exit.thread, label %if.end.i

snd_virmidi_dev_attach_seq.exit.thread:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcallbacks.i) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 164) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge, label %if.end3.i

if.end.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_virmidi_dev_attach_seq.exit.thread14

if.end3.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %device.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device.i, align 4
  %rmidi.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmidi.i, align 4
  %name.i = getelementptr inbounds %struct.snd_rawmidi, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %16, align 8
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @snd_seq_create_kernel_client(ptr noundef %16, i32 noundef %18, ptr noundef nonnull @.str.7, ptr noundef %name.i, i32 noundef %22, i32 noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end3.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge, label %if.end9.i

if.end3.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_virmidi_dev_attach_seq.exit.thread14

if.end9.i:                                        ; preds = %if.end3.i
  %23 = ptrtoint ptr %client1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call6.i, ptr %client1.i, align 4
  %conv.i = trunc i32 %call6.i to i8
  %24 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %call7.i.i.i, align 8
  %name12.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %29 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %device.i, align 4
  %call17.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name12.i, ptr noundef nonnull @.str.8, i32 noundef %28, i32 noundef %30) #8
  %capability.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %capability.i, align 4
  %or21.i = or i32 %32, 127
  store i32 %or21.i, ptr %capability.i, align 4
  %type.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 655362, ptr %type.i, align 8
  %midi_channels.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %midi_channels.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16, ptr %midi_channels.i, align 4
  %35 = call ptr @memset(ptr %pcallbacks.i, i32 0, i32 32)
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %5, align 4
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @snd_virmidi_subscribe, ptr %6, align 4
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @snd_virmidi_unsubscribe, ptr %7, align 4
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @snd_virmidi_use, ptr %8, align 4
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @snd_virmidi_unuse, ptr %9, align 4
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @snd_virmidi_event_input, ptr %10, align 4
  %kernel.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %kernel.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pcallbacks.i, ptr %kernel.i, align 8
  %call22.i = call i32 @snd_seq_kernel_client_ctl(i32 noundef %call6.i, i32 noundef -1062972640, ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.then25.i, label %snd_virmidi_dev_attach_seq.exit

if.then25.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call i32 @snd_seq_delete_kernel_client(i32 noundef %call6.i) #8
  %43 = ptrtoint ptr %client1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %client1.i, align 4
  br label %snd_virmidi_dev_attach_seq.exit.thread14

snd_virmidi_dev_attach_seq.exit.thread14:         ; preds = %if.then25.i, %if.end3.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge, %if.end.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge
  %err.0.i.ph = phi i32 [ %call6.i, %if.end3.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge ], [ -12, %if.end.i.snd_virmidi_dev_attach_seq.exit.thread14_crit_edge ], [ %call22.i, %if.then25.i ]
  call void @kfree(ptr noundef %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcallbacks.i) #8
  br label %cleanup

snd_virmidi_dev_attach_seq.exit:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %port.i = getelementptr inbounds %struct.snd_seq_addr, ptr %call7.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port.i, align 1
  %conv30.i = zext i8 %45 to i32
  %port31.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 5
  %46 = ptrtoint ptr %port31.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv30.i, ptr %port31.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcallbacks.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %client = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp2 = icmp eq i32 %48, 0
  br i1 %cmp2, label %sw.bb1.cleanup_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %snd_virmidi_dev_attach_seq.exit, %snd_virmidi_dev_attach_seq.exit.thread
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb1.cleanup_crit_edge, %snd_virmidi_dev_attach_seq.exit.thread14
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ], [ -22, %sw.bb1.cleanup_crit_edge ], [ %err.0.i.ph, %snd_virmidi_dev_attach_seq.exit.thread14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_dev_unregister(ptr nocapture noundef readonly %rmidi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %seq_mode = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %client.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %client.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %5) #8
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %client.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_create_kernel_client(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_subscribe(ptr nocapture noundef %private_data, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %3) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_unsubscribe(ptr nocapture noundef %private_data, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %flags, align 4
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_use(ptr nocapture noundef %private_data, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %module, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %3) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_unuse(ptr nocapture noundef %private_data, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -3
  store i32 %and, ptr %flags, align 4
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_event_input(ptr noundef %ev, i32 noundef %direct, ptr noundef %private_data, i32 noundef %atomic, i32 noundef %hop) #0 align 64 {
entry:
  %msg.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool1.not = icmp eq i32 %atomic, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i) #8
  %2 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %msg.i, align 4
  br i1 %tobool1.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %filelist_lock.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 7
  tail call void @_raw_read_lock(ptr noundef %filelist_lock.i) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %filelist_sem.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 8
  tail call void @down_read(ptr noundef %filelist_sem.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %filelist.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 9
  %3 = ptrtoint ptr %filelist.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %vmidi.01.i = load ptr, ptr %filelist.i, align 4
  %cmp.not2.i = icmp eq ptr %vmidi.01.i, %filelist.i
  br i1 %cmp.not2.i, label %if.end.i.for.end.i_crit_edge, label %do.end.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.lr.ph.i:                                   ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 1
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %do.end.lr.ph.i
  %vmidi.03.i = phi ptr [ %vmidi.01.i, %do.end.lr.ph.i ], [ %vmidi.0.i, %for.inc.i.do.end.i_crit_edge ]
  %trigger.i = getelementptr inbounds %struct.snd_virmidi, ptr %vmidi.03.i, i32 0, i32 4
  %4 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %trigger.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  br i1 %tobool3.not.i, label %do.end.i.for.inc.i_crit_edge, label %if.end7.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end7.i:                                        ; preds = %do.end.i
  %6 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %7)
  %cmp8.i = icmp eq i8 %7, -126
  br i1 %cmp8.i, label %if.then10.i, label %if.else16.i

if.then10.i:                                      ; preds = %if.end7.i
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i, align 1
  %10 = and i8 %9, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cmp12.not.i = icmp eq i8 %10, 4
  br i1 %cmp12.not.i, label %if.end15.i, label %if.then10.i.for.inc.i_crit_edge

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %substream.i = getelementptr inbounds %struct.snd_virmidi, ptr %vmidi.03.i, i32 0, i32 8
  %11 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %substream.i, align 4
  %call.i = call i32 @snd_seq_dump_var_event(ptr noundef %ev, ptr noundef nonnull @snd_rawmidi_receive, ptr noundef %12) #8
  %parser.i = getelementptr inbounds %struct.snd_virmidi, ptr %vmidi.03.i, i32 0, i32 5
  %13 = ptrtoint ptr %parser.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parser.i, align 4
  call void @snd_midi_event_reset_decode(ptr noundef %14) #8
  br label %for.inc.i

if.else16.i:                                      ; preds = %if.end7.i
  %parser17.i = getelementptr inbounds %struct.snd_virmidi, ptr %vmidi.03.i, i32 0, i32 5
  %15 = ptrtoint ptr %parser17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parser17.i, align 4
  %call18.i = call i32 @snd_midi_event_decode(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 4, ptr noundef %ev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp sgt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.else16.i.for.inc.i_crit_edge

if.else16.i.for.inc.i_crit_edge:                  ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  %substream22.i = getelementptr inbounds %struct.snd_virmidi, ptr %vmidi.03.i, i32 0, i32 8
  %17 = ptrtoint ptr %substream22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream22.i, align 4
  %call24.i = call i32 @snd_rawmidi_receive(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef %call18.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %if.else16.i.for.inc.i_crit_edge, %if.end15.i, %if.then10.i.for.inc.i_crit_edge, %do.end.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %vmidi.03.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %vmidi.0.i = load ptr, ptr %vmidi.03.i, align 4
  %cmp.not.i = icmp eq ptr %vmidi.0.i, %filelist.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  br i1 %tobool1.not, label %if.else35.i, label %if.then33.i

if.then33.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %filelist_lock34.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 7
  call void @_raw_read_unlock(ptr noundef %filelist_lock34.i) #8
  br label %snd_virmidi_dev_receive_event.exit

if.else35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %filelist_sem36.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %private_data, i32 0, i32 8
  call void @up_read(ptr noundef %filelist_sem36.i) #8
  br label %snd_virmidi_dev_receive_event.exit

snd_virmidi_dev_receive_event.exit:               ; preds = %if.else35.i, %if.then33.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i) #8
  br label %cleanup

cleanup:                                          ; preds = %snd_virmidi_dev_receive_event.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_delete_kernel_client(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_dump_var_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_reset_decode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_midi_event_decode(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_input_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 108) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream2 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %substream2, align 4
  %parser = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 5
  %call3 = tail call i32 @snd_midi_event_new(i32 noundef 0, ptr noundef %parser) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %seq_mode = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq_mode, align 4
  %seq_mode7 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %seq_mode7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %seq_mode7, align 8
  %client = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %client, align 4
  %client8 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %client8, align 4
  %port = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %port9 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %port9, align 8
  %private_data10 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 14
  %17 = ptrtoint ptr %private_data10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private_data10, align 4
  %filelist_sem = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %filelist_sem) #8
  %filelist_lock = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 7
  tail call void @_raw_write_lock_irq(ptr noundef %filelist_lock) #8
  %filelist = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %19, ptr noundef %filelist) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add_tail.exit_crit_edge

if.end6.list_add_tail.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %filelist, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end6.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef %filelist_lock) #8
  tail call void @up_write(ptr noundef %filelist_sem) #8
  %rdev13 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %rdev13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %rdev13, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_input_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data1, align 4
  %filelist_sem = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %filelist_sem) #8
  %filelist_lock = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 7
  tail call void @_raw_write_lock_irq(ptr noundef %filelist_lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %filelist_lock) #8
  tail call void @up_write(ptr noundef %filelist_sem) #8
  %parser = getelementptr inbounds %struct.snd_virmidi, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parser, align 4
  tail call void @snd_midi_event_free(ptr noundef %17) #8
  %18 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime, align 4
  %private_data5 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %private_data5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %private_data5, align 4
  tail call void @kfree(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_virmidi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool = icmp ne i32 %up, 0
  %trigger = getelementptr inbounds %struct.snd_virmidi, ptr %3, i32 0, i32 4
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %trigger to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 %frombool, ptr %trigger, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_midi_event_new(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_output_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 108) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream2 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %substream2, align 4
  %parser = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 5
  %call3 = tail call i32 @snd_midi_event_new(i32 noundef 256, ptr noundef %parser) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %seq_mode = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq_mode, align 4
  %seq_mode7 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %seq_mode7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %seq_mode7, align 8
  %client = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %client, align 4
  %client8 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %client8, align 4
  %port = getelementptr inbounds %struct.snd_virmidi_dev, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %port9 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %port9, align 8
  %event = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 6
  %17 = call ptr @memset(ptr %event, i32 0, i32 28)
  %conv.i = trunc i32 %15 to i8
  %port1.i = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 6, i32 5, i32 1
  %18 = ptrtoint ptr %port1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %port1.i, align 1
  %19 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %9, label %if.end6.snd_virmidi_init_event.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.end6.snd_virmidi_init_event.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_virmidi_init_event.exit

sw.bb.i:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dest.i = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %dest.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -2, ptr %dest.i, align 2
  br label %snd_virmidi_init_event.exit

sw.bb2.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = trunc i32 %12 to i8
  %dest5.i = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 6, i32 6
  %21 = ptrtoint ptr %dest5.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv4.i, ptr %dest5.i, align 2
  %port10.i = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 6, i32 6, i32 1
  %22 = ptrtoint ptr %port10.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %port10.i, align 1
  br label %snd_virmidi_init_event.exit

snd_virmidi_init_event.exit:                      ; preds = %sw.bb2.i, %sw.bb.i, %if.end6.snd_virmidi_init_event.exit_crit_edge
  %23 = ptrtoint ptr %event to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %event, align 4
  %rdev10 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %rdev10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %rdev10, align 8
  %output_work = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %output_work, i32 noundef 0) #8
  %25 = ptrtoint ptr %output_work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %output_work, align 8
  %lockdep_map = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_virmidi_output_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry14 = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry14, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.snd_virmidi, ptr %call7.i.i, i32 0, i32 9, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @snd_vmidi_output_work, ptr %func, align 4
  %private_data16 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %5, i32 0, i32 14
  %29 = ptrtoint ptr %private_data16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %private_data16, align 4
  br label %cleanup

cleanup:                                          ; preds = %snd_virmidi_init_event.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ 0, %snd_virmidi_init_event.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_virmidi_output_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %trigger = getelementptr inbounds %struct.snd_virmidi, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %trigger to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 0, ptr %trigger, align 4
  %output_work = getelementptr inbounds %struct.snd_virmidi, ptr %3, i32 0, i32 9
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %output_work) #8
  %parser = getelementptr inbounds %struct.snd_virmidi, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parser, align 4
  tail call void @snd_midi_event_free(ptr noundef %6) #8
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %private_data8 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %private_data8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %private_data8, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_virmidi_output_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool = icmp ne i32 %up, 0
  %trigger = getelementptr inbounds %struct.snd_virmidi, ptr %3, i32 0, i32 4
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %trigger to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 %frombool, ptr %trigger, align 4
  br i1 %tobool, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_highpri_wq to i32))
  %5 = load ptr, ptr @system_highpri_wq, align 4
  %output_work = getelementptr inbounds %struct.snd_virmidi, ptr %3, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %output_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_virmidi_output_drain(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %output_work = getelementptr inbounds %struct.snd_virmidi, ptr %3, i32 0, i32 9
  %call = tail call zeroext i1 @flush_work(ptr noundef %output_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vmidi_output_work(ptr noundef %work) #0 align 64 {
entry:
  %input = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %input) #8
  %0 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %input, align 1, !annotation !45
  %substream1 = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream1, align 4
  %seq_mode = getelementptr i8, ptr %work, i32 -56
  %3 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rdev = getelementptr i8, ptr %work, i32 -8
  %5 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev, align 4
  %flags = getelementptr inbounds %struct.snd_virmidi_dev, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_rawmidi_proceed(ptr noundef %2) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %client = getelementptr i8, ptr %work, i32 -52
  %trigger = getelementptr i8, ptr %work, i32 -44
  %9 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %trigger, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not40 = icmp eq i8 %10, 0
  br i1 %tobool3.not40, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %parser = getelementptr i8, ptr %work, i32 -40
  %event = getelementptr i8, ptr %work, i32 -36
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call5 = call i32 @snd_rawmidi_transmit(ptr noundef %2, ptr noundef nonnull %input, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  br i1 %cmp6.not, label %if.end8, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %11 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parser, align 4
  %13 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %input, align 1
  %call9 = call zeroext i1 @snd_midi_event_encode_byte(ptr noundef %12, i8 noundef zeroext %14, ptr noundef %event) #8
  br i1 %call9, label %if.end11, label %if.end8.while.cond.backedge_crit_edge

if.end8.while.cond.backedge_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end11:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp13.not = icmp eq i8 %16, -1
  br i1 %cmp13.not, label %if.end11.if.end24_crit_edge, label %if.then15

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then15:                                        ; preds = %if.end11
  %17 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %client, align 4
  %call17 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %18, ptr noundef %event, i32 noundef 0, i32 noundef 0) #8
  %19 = ptrtoint ptr %event to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp20 = icmp slt i32 %call17, 0
  br i1 %cmp20, label %if.then15.cleanup_crit_edge, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.then15.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 158, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end24, %if.end8.while.cond.backedge_crit_edge
  %20 = ptrtoint ptr %trigger to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %trigger, align 4, !range !46
  %tobool3.not = icmp eq i8 %21, 0
  br i1 %tobool3.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %input) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_proceed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_midi_event_encode_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_author233, !1, !"__UNIQUE_ID_author233", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_virmidi.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_description234, !3, !"__UNIQUE_ID_description234", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_virmidi.c", i32 38, i32 1}
!4 = !{ptr @__UNIQUE_ID_file235, !5, !"__UNIQUE_ID_file235", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq_virmidi.c", i32 39, i32 1}
!6 = !{ptr @__UNIQUE_ID_license236, !5, !"__UNIQUE_ID_license236", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/core/seq/seq_virmidi.c", i32 496, i32 30}
!9 = !{ptr @snd_virmidi_new.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../sound/core/seq/seq_virmidi.c", i32 512, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @snd_virmidi_new.__key.2, !13, !"__key", i1 false, i1 false}
!13 = !{!"../sound/core/seq/seq_virmidi.c", i32 513, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_snd_virmidi_new, !16, !"__ksymtab_snd_virmidi_new", i1 false, i1 false}
!16 = !{!"../sound/core/seq/seq_virmidi.c", i32 527, i32 1}
!17 = !{ptr @snd_virmidi_global_ops, !18, !"snd_virmidi_global_ops", i1 false, i1 false}
!18 = !{!"../sound/core/seq/seq_virmidi.c", i32 470, i32 44}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/core/seq/seq_virmidi.c", i32 448, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @snd_virmidi_dev_register._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @snd_virmidi_dev_register._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/core/seq/seq_virmidi.c", i32 372, i32 12}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/core/seq/seq_virmidi.c", i32 383, i32 23}
!29 = !{ptr @snd_virmidi_input_ops, !30, !"snd_virmidi_input_ops", i1 false, i1 false}
!30 = !{!"../sound/core/seq/seq_virmidi.c", i32 339, i32 37}
!31 = !{ptr @snd_virmidi_output_ops, !32, !"snd_virmidi_output_ops", i1 false, i1 false}
!32 = !{!"../sound/core/seq/seq_virmidi.c", i32 345, i32 37}
!33 = !{ptr @snd_virmidi_output_open.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/core/seq/seq_virmidi.c", i32 226, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i8 0, i8 2}
