; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_midi.c_pt.bc'
source_filename = "../sound/core/seq/seq_midi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.snd_seq_driver = type { %struct.device_driver, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_rawmidi_info = type { i32, i32, i32, i32, i32, [64 x i8], [80 x i8], [32 x i8], i32, i32, [64 x i8] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.seq_midisynth = type { ptr, i32, i32, %struct.snd_rawmidi_file, %struct.snd_rawmidi_file, i32, i32, ptr }
%struct.snd_rawmidi_file = type { ptr, ptr, ptr, i32 }
%struct.snd_rawmidi_global_ops = type { ptr, ptr, ptr }
%struct.seq_midisynth_client = type { i32, i32, [8 x i32], [8 x ptr] }
%struct.snd_rawmidi_params = type { i32, i32, i32, i8, i32, [12 x i8] }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
%struct.snd_rawmidi_runtime = type { ptr, i8, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, %struct.work_struct, ptr, ptr }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.43 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.43 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_author189 = internal constant [94 x i8] c"snd_seq_midi.author=Frank van de Pol <fvdpol@coil.demon.nl>, Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [81 x i8] c"snd_seq_midi.description=Advanced Linux Sound Architecture sequencer MIDI synth.\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [46 x i8] c"snd_seq_midi.file=sound/core/seq/snd-seq-midi\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [25 x i8] c"snd_seq_midi.license=GPL\00", section ".modinfo", align 1
@__param_str_output_buffer_size = internal constant [32 x i8] c"snd_seq_midi.output_buffer_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@output_buffer_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_output_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_output_buffer_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @output_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_output_buffer_sizetype193 = internal constant [45 x i8] c"snd_seq_midi.parmtype=output_buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_output_buffer_size194 = internal constant [66 x i8] c"snd_seq_midi.parm=output_buffer_size:Output buffer size in bytes.\00", section ".modinfo", align 1
@__param_str_input_buffer_size = internal constant [31 x i8] c"snd_seq_midi.input_buffer_size\00", align 1
@input_buffer_size = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_input_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_input_buffer_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @input_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_input_buffer_sizetype195 = internal constant [44 x i8] c"snd_seq_midi.parmtype=input_buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_input_buffer_size196 = internal constant [64 x i8] c"snd_seq_midi.parm=input_buffer_size:Input buffer size in bytes.\00", section ".modinfo", align 1
@__initcall__kmod_snd_seq_midi__200_459_seq_midisynth_driver_init6 = internal global ptr @seq_midisynth_driver_init, section ".initcall6.init", align 4
@seq_midisynth_driver = internal global { %struct.snd_seq_driver, [44 x i8] } { %struct.snd_seq_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @snd_seq_midisynth_probe, ptr null, ptr @snd_seq_midisynth_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_seq_midisynth_driver_exit = internal global ptr @seq_midisynth_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_seq_midi\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"seq-midi\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/core/seq/seq_midi.c\00", [38 x i8] zeroinitializer }, align 32
@register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 52), ptr getelementptr (i8, ptr @register_mutex, i64 52) }, ptr @register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@synths = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"External MIDI\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%u\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIDI %d-%d-%u\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MIDI %d-%d\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_mutex\00", [17 x i8] zeroinitializer }, align 32
@midisynth_subscribe.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"midisynth_subscribe\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ALSA: seq_midi: midi input open failed!!!\0A\00", [53 x i8] zeroinitializer }, align 32
@midisynth_use.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"midisynth_use\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ALSA: seq_midi: midi output open failed!!!\0A\00", [52 x i8] zeroinitializer }, align 32
@event_process_midi.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event_process_midi\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ALSA: seq_midi: invalid sysex event flags = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.dump_midi = private unnamed_addr constant [10 x i8] c"dump_midi\00", align 1
@dump_midi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.dump_midi, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ALSA: seq_midi: MIDI output buffer overrun\0A\00", [50 x i8] zeroinitializer }, align 32
@dump_midi._entry_ptr = internal global ptr @dump_midi._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"output_buffer_size\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 31, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"input_buffer_size\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 34, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"seq_midisynth_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 449, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 451, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 455, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 278, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"register_mutex\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"synths\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 57, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 314, i32 14 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 315, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 352, i32 47 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 358, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 360, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 58, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 176, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 220, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 131, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [29 x i8] c"../sound/core/seq/seq_midi.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 107, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_input_buffer_size196, ptr @__UNIQUE_ID_input_buffer_sizetype195, ptr @__UNIQUE_ID_license192, ptr @__UNIQUE_ID_output_buffer_size194, ptr @__UNIQUE_ID_output_buffer_sizetype193, ptr @__exitcall_seq_midisynth_driver_exit, ptr @__initcall__kmod_snd_seq_midi__200_459_seq_midisynth_driver_init6, ptr @__param_input_buffer_size, ptr @__param_output_buffer_size, ptr @dump_midi._entry, ptr @dump_midi._entry_ptr, ptr @seq_midisynth_driver_exit, ptr @output_buffer_size, ptr @input_buffer_size, ptr @seq_midisynth_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @register_mutex, ptr @synths, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_midisynth_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synths to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_midi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @seq_midisynth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__snd_seq_driver_register(ptr noundef nonnull @seq_midisynth_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @seq_midisynth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_seq_driver_unregister(ptr noundef nonnull @seq_midisynth_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_seq_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_seq_midisynth_probe(ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  %pcallbacks = alloca %struct.snd_seq_port_callback, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_dev, i32 -112
  %private_data = getelementptr i8, ptr %_dev, i32 -12
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcallbacks) #10
  %2 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks, i32 0, i32 1
  %3 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks, i32 0, i32 2
  %4 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks, i32 0, i32 3
  %5 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks, i32 0, i32 4
  %6 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks, i32 0, i32 5
  %7 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcallbacks, i32 0, i32 6
  %8 = call ptr @memset(ptr %pcallbacks, i32 255, i32 32)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 8
  %device2 = getelementptr i8, ptr %_dev, i32 -108
  %11 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device2, align 4
  %tobool.not = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp slt i32 %12, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp3 = icmp sgt i32 %12, 7
  %spec.select360 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %spec.select360, label %do.end, label %if.end26, !prof !77

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 278, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end26:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 268) #13
  %tobool27.not = icmp eq ptr %call7.i, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %call7.i, align 8
  %stream = getelementptr inbounds %struct.snd_rawmidi_info, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %stream, align 8
  %subdevice = getelementptr inbounds %struct.snd_rawmidi_info, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %subdevice, align 4
  %call31 = tail call i32 @snd_rawmidi_info_select(ptr noundef nonnull %10, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call31)
  %cmp32 = icmp sgt i32 %call31, -1
  br i1 %cmp32, label %if.then33, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %subdevices_count = getelementptr inbounds %struct.snd_rawmidi_info, ptr %call7.i, i32 0, i32 8
  %17 = ptrtoint ptr %subdevices_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %subdevices_count, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29.if.end34_crit_edge
  %output_count.0 = phi i32 [ %18, %if.then33 ], [ 0, %if.end29.if.end34_crit_edge ]
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %stream, align 8
  %call36 = tail call i32 @snd_rawmidi_info_select(ptr noundef nonnull %10, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call36)
  %cmp37 = icmp sgt i32 %call36, -1
  br i1 %cmp37, label %if.then38, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %subdevices_count39 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %call7.i, i32 0, i32 8
  %20 = ptrtoint ptr %subdevices_count39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %subdevices_count39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge
  %input_count.0 = phi i32 [ %21, %if.then38 ], [ 0, %if.end34.if.end40_crit_edge ]
  %22 = tail call i32 @llvm.umax.i32(i32 %output_count.0, i32 %input_count.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp44 = icmp eq i32 %22, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 32)
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #10
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %10, align 8
  %arrayidx = getelementptr [32 x ptr], ptr @synths, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %cmp50 = icmp eq ptr %27, null
  br i1 %cmp50, label %if.then51, label %if.end46.if.end7.i.i_crit_edge

if.end46.if.end7.i.i_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then51:                                        ; preds = %if.end46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 72) #13
  %cmp53 = icmp eq ptr %call7.i.i, null
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end55:                                         ; preds = %if.then51
  %shortname = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 3
  %29 = ptrtoint ptr %shortname to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %shortname, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool57.not = icmp eq i8 %30, 0
  %spec.select357 = select i1 %tobool57.not, ptr @.str.4, ptr %shortname
  %call59 = tail call i32 (ptr, i32, ptr, ...) @snd_seq_create_kernel_client(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %spec.select357) #10
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call59, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp61 = icmp slt i32 %call59, 0
  br i1 %cmp61, label %if.then63, label %if.end55.if.end7.i.i_crit_edge

if.end55.if.end7.i.i_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then63:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end55.if.end7.i.i_crit_edge, %if.end46.if.end7.i.i_crit_edge
  %client.0 = phi ptr [ %call7.i.i, %if.end55.if.end7.i.i_crit_edge ], [ %27, %if.end46.if.end7.i.i_crit_edge ]
  %32 = mul nuw nsw i32 %23, 56
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i361 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 164) #13
  %cmp68 = icmp eq ptr %call8.i.i, null
  %cmp71 = icmp eq ptr %call7.i361, null
  %or.cond358 = select i1 %cmp68, i1 true, i1 %cmp71
  br i1 %or.cond358, label %if.end7.i.i.__nomem_crit_edge, label %for.body.lr.ph

if.end7.i.i.__nomem_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nomem

for.body.lr.ph:                                   ; preds = %if.end7.i.i
  %mul = shl nuw nsw i32 %12, 5
  %port88 = getelementptr inbounds %struct.snd_seq_addr, ptr %call7.i361, i32 0, i32 1
  %flags = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i361, i32 0, i32 10
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i361, i32 0, i32 1
  %subname = getelementptr inbounds %struct.snd_rawmidi_info, ptr %call7.i, i32 0, i32 7
  %name109 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %call7.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp113.not = icmp eq i32 %23, 1
  %flags144 = getelementptr inbounds %struct.snd_rawmidi_info, ptr %call7.i, i32 0, i32 4
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i361, i32 0, i32 2
  %type = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i361, i32 0, i32 3
  %midi_channels = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i361, i32 0, i32 4
  %kernel = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i361, i32 0, i32 9
  %ops = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 7
  %34 = getelementptr inbounds i8, ptr %call7.i, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end186.for.body_crit_edge, %for.body.lr.ph
  %p.0371 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end186.for.body_crit_edge ]
  %arrayidx77 = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.0371
  %parser.i = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.0371, i32 7
  %call.i = call i32 @snd_midi_event_new(i32 noundef 256, ptr noundef %parser.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.__nomem_crit_edge, label %if.end82

for.body.__nomem_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nomem

if.end82:                                         ; preds = %for.body
  %35 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %10, ptr %arrayidx77, align 8
  %device2.i = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.0371, i32 1
  %36 = ptrtoint ptr %device2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %12, ptr %device2.i, align 4
  %subdevice3.i = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.0371, i32 2
  %37 = ptrtoint ptr %subdevice3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %p.0371, ptr %subdevice3.i, align 8
  %38 = call ptr @memset(ptr %call7.i361, i32 0, i32 164)
  %39 = ptrtoint ptr %client.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %client.0, align 4
  %conv84 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %call7.i361 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv84, ptr %call7.i361, align 8
  %add = add nuw nsw i32 %p.0371, %mul
  %conv86 = trunc i32 %add to i8
  %42 = ptrtoint ptr %port88 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv86, ptr %port88, align 1
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %flags, align 4
  %44 = call ptr @memset(ptr %34, i32 0, i32 260)
  %45 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %12, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0371, i32 %output_count.0)
  %cmp90 = icmp uge i32 %p.0371, %output_count.0
  %. = zext i1 %cmp90 to i32
  %46 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %., ptr %stream, align 8
  %47 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %p.0371, ptr %subdevice, align 4
  %call97 = call i32 @snd_rawmidi_info_select(ptr noundef %10, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call97)
  %cmp98 = icmp sgt i32 %call97, -1
  br i1 %cmp98, label %if.then100, label %if.end82.if.end104_crit_edge

if.end82.if.end104_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then100:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %call103 = call ptr @strcpy(ptr noundef %name, ptr noundef %subname) #15
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end82.if.end104_crit_edge
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %name, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool107.not = icmp eq i8 %49, 0
  br i1 %tobool107.not, label %if.then108, label %if.end104.if.end143_crit_edge

if.end104.if.end143_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then108:                                       ; preds = %if.end104
  %50 = ptrtoint ptr %name109 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %name109, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool111.not = icmp eq i8 %51, 0
  br i1 %tobool111.not, label %if.else128, label %if.then112

if.then112:                                       ; preds = %if.then108
  br i1 %cmp113.not, label %if.else121, label %if.then115

if.then115:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %call120 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef %name109, i32 noundef %p.0371)
  br label %if.end143

if.else121:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %call126 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.3, ptr noundef %name109)
  br label %if.end143

if.else128:                                       ; preds = %if.then108
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %10, align 8
  br i1 %cmp113.not, label %if.else136, label %if.then131

if.then131:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %call135 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.6, i32 noundef %53, i32 noundef %12, i32 noundef %p.0371)
  br label %if.end143

if.else136:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %call140 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef %53, i32 noundef %12)
  br label %if.end143

if.end143:                                        ; preds = %if.else136, %if.then131, %if.else121, %if.then115, %if.end104.if.end143_crit_edge
  %54 = ptrtoint ptr %flags144 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags144, align 8
  %and = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool145.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool145.not, i1 true, i1 %cmp90
  br i1 %brmerge, label %if.end143.if.end149_crit_edge, label %if.then148

if.end143.if.end149_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %capability, align 4
  %or = or i32 %57, 74
  store i32 %or, ptr %capability, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %if.end143.if.end149_crit_edge
  %and151 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp ne i32 %and151, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0371, i32 %input_count.0)
  %cmp154 = icmp ult i32 %p.0371, %input_count.0
  %or.cond359 = select i1 %tobool152.not, i1 %cmp154, i1 false
  br i1 %or.cond359, label %if.then156, label %if.end149.if.end159_crit_edge

if.end149.if.end159_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end159

if.then156:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %capability, align 4
  %or158 = or i32 %59, 37
  store i32 %or158, ptr %capability, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end149.if.end159_crit_edge
  %60 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %capability, align 4
  %and161 = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and161)
  %cmp162 = icmp ne i32 %and161, 3
  %and166 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  %or.cond369 = select i1 %cmp162, i1 true, i1 %tobool167.not
  br i1 %or.cond369, label %if.end159.if.end171_crit_edge, label %if.then168

if.end159.if.end171_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.then168:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  %or170 = or i32 %61, 16
  %62 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or170, ptr %capability, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end159.if.end171_crit_edge
  %63 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 589826, ptr %type, align 8
  %64 = ptrtoint ptr %midi_channels to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16, ptr %midi_channels, align 4
  %65 = call ptr @memset(ptr %pcallbacks, i32 0, i32 32)
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %arrayidx77, ptr %2, align 4
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @midisynth_subscribe, ptr %3, align 4
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @midisynth_unsubscribe, ptr %4, align 4
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @midisynth_use, ptr %5, align 4
  %70 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @midisynth_unuse, ptr %6, align 4
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @event_process_midi, ptr %7, align 4
  %72 = ptrtoint ptr %kernel to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %pcallbacks, ptr %kernel, align 8
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops, align 8
  %tobool173.not = icmp eq ptr %74, null
  br i1 %tobool173.not, label %if.end171.if.end180_crit_edge, label %land.lhs.true174

if.end171.if.end180_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

land.lhs.true174:                                 ; preds = %if.end171
  %get_port_info = getelementptr inbounds %struct.snd_rawmidi_global_ops, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %get_port_info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %get_port_info, align 4
  %tobool176.not = icmp eq ptr %76, null
  br i1 %tobool176.not, label %land.lhs.true174.if.end180_crit_edge, label %if.then177

land.lhs.true174.if.end180_crit_edge:             ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then177:                                       ; preds = %land.lhs.true174
  call void @__sanitizer_cov_trace_pc() #12
  call void %76(ptr noundef %1, i32 noundef %p.0371, ptr noundef nonnull %call7.i361) #10
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %land.lhs.true174.if.end180_crit_edge, %if.end171.if.end180_crit_edge
  %77 = ptrtoint ptr %client.0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %client.0, align 4
  %call182 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %78, i32 noundef -1062972640, ptr noundef nonnull %call7.i361) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %if.end180.__nomem_crit_edge, label %if.end186

if.end180.__nomem_crit_edge:                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nomem

if.end186:                                        ; preds = %if.end180
  %79 = ptrtoint ptr %client.0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %client.0, align 4
  %seq_client188 = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.0371, i32 5
  %81 = ptrtoint ptr %seq_client188 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %seq_client188, align 4
  %82 = ptrtoint ptr %port88 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %port88, align 1
  %conv191 = zext i8 %83 to i32
  %seq_port = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.0371, i32 6
  %84 = ptrtoint ptr %seq_port to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv191, ptr %seq_port, align 8
  %inc = add nuw nsw i32 %p.0371, 1
  %exitcond.not = icmp eq i32 %inc, %23
  br i1 %exitcond.not, label %for.end, label %if.end186.for.body_crit_edge

if.end186.for.body_crit_edge:                     ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end186
  %arrayidx192 = getelementptr %struct.seq_midisynth_client, ptr %client.0, i32 0, i32 2, i32 %12
  %85 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %23, ptr %arrayidx192, align 4
  %arrayidx194 = getelementptr %struct.seq_midisynth_client, ptr %client.0, i32 0, i32 3, i32 %12
  %86 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call8.i.i, ptr %arrayidx194, align 4
  %num_ports = getelementptr inbounds %struct.seq_midisynth_client, ptr %client.0, i32 0, i32 1
  %87 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_ports, align 4
  %inc195 = add i32 %88, 1
  store i32 %inc195, ptr %num_ports, align 4
  br i1 %cmp50, label %if.then197, label %for.end.if.end200_crit_edge

for.end.if.end200_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

if.then197:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %89 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %10, align 8
  %arrayidx199 = getelementptr [32 x ptr], ptr @synths, i32 0, i32 %90
  %91 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %client.0, ptr %arrayidx199, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then197, %for.end.if.end200_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #10
  call void @kfree(ptr noundef nonnull %call7.i) #10
  call void @kfree(ptr noundef nonnull %call7.i361) #10
  br label %cleanup

__nomem:                                          ; preds = %if.end180.__nomem_crit_edge, %for.body.__nomem_crit_edge, %if.end7.i.i.__nomem_crit_edge
  br i1 %cmp68, label %__nomem.if.end212_crit_edge, label %for.cond204.preheader

__nomem.if.end212_crit_edge:                      ; preds = %__nomem
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

for.cond204.preheader:                            ; preds = %__nomem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp205372.not = icmp eq i32 %23, 0
  br i1 %cmp205372.not, label %for.cond204.preheader.for.end211_crit_edge, label %for.cond204.preheader.for.body207_crit_edge

for.cond204.preheader.for.body207_crit_edge:      ; preds = %for.cond204.preheader
  br label %for.body207

for.cond204.preheader.for.end211_crit_edge:       ; preds = %for.cond204.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end211

for.body207:                                      ; preds = %snd_seq_midisynth_delete.exit.for.body207_crit_edge, %for.cond204.preheader.for.body207_crit_edge
  %p.1373 = phi i32 [ %inc210, %snd_seq_midisynth_delete.exit.for.body207_crit_edge ], [ 0, %for.cond204.preheader.for.body207_crit_edge ]
  %arrayidx208 = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.1373
  %cmp.i362 = icmp eq ptr %arrayidx208, null
  br i1 %cmp.i362, label %for.body207.snd_seq_midisynth_delete.exit_crit_edge, label %if.end.i363

for.body207.snd_seq_midisynth_delete.exit_crit_edge: ; preds = %for.body207
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_seq_midisynth_delete.exit

if.end.i363:                                      ; preds = %for.body207
  %seq_client.i = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.1373, i32 5
  %92 = ptrtoint ptr %seq_client.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %seq_client.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp1.i = icmp sgt i32 %93, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i363.if.end4.i_crit_edge

if.end.i363.if.end4.i_crit_edge:                  ; preds = %if.end.i363
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i363
  call void @__sanitizer_cov_trace_pc() #12
  %seq_port.i = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.1373, i32 6
  %94 = ptrtoint ptr %seq_port.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %seq_port.i, align 8
  %call.i364 = call i32 @snd_seq_event_port_detach(i32 noundef %93, i32 noundef %95) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i363.if.end4.i_crit_edge
  %parser.i365 = getelementptr %struct.seq_midisynth, ptr %call8.i.i, i32 %p.1373, i32 7
  %96 = ptrtoint ptr %parser.i365 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parser.i365, align 4
  call void @snd_midi_event_free(ptr noundef %97) #10
  br label %snd_seq_midisynth_delete.exit

snd_seq_midisynth_delete.exit:                    ; preds = %if.end4.i, %for.body207.snd_seq_midisynth_delete.exit_crit_edge
  %inc210 = add nuw nsw i32 %p.1373, 1
  %exitcond376.not = icmp eq i32 %inc210, %23
  br i1 %exitcond376.not, label %snd_seq_midisynth_delete.exit.for.end211_crit_edge, label %snd_seq_midisynth_delete.exit.for.body207_crit_edge

snd_seq_midisynth_delete.exit.for.body207_crit_edge: ; preds = %snd_seq_midisynth_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body207

snd_seq_midisynth_delete.exit.for.end211_crit_edge: ; preds = %snd_seq_midisynth_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end211

for.end211:                                       ; preds = %snd_seq_midisynth_delete.exit.for.end211_crit_edge, %for.cond204.preheader.for.end211_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %if.end212

if.end212:                                        ; preds = %for.end211, %__nomem.if.end212_crit_edge
  br i1 %cmp50, label %if.then214, label %if.end212.if.end217_crit_edge

if.end212.if.end217_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end217

if.then214:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %client.0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %client.0, align 4
  %call216 = call i32 @snd_seq_delete_kernel_client(i32 noundef %99) #10
  call void @kfree(ptr noundef %client.0) #10
  br label %if.end217

if.end217:                                        ; preds = %if.then214, %if.end212.if.end217_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #10
  call void @kfree(ptr noundef %call7.i361) #10
  call void @mutex_unlock(ptr noundef nonnull @register_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end217, %if.end200, %if.then63, %if.then54, %if.then45, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %if.then45 ], [ -12, %if.then54 ], [ -12, %if.then63 ], [ -12, %if.end217 ], [ 0, %if.end200 ], [ -12, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcallbacks) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_seq_midisynth_remove(ptr nocapture noundef readonly %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_dev, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %device2 = getelementptr i8, ptr %_dev, i32 -108
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device2, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %arrayidx = getelementptr [32 x ptr], ptr @synths, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr %struct.seq_midisynth_client, ptr %7, i32 0, i32 3, i32 %3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr %struct.seq_midisynth_client, ptr %7, i32 0, i32 2, i32 %3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  store i32 0, ptr %arrayidx6, align 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1345 = icmp sgt i32 %11, 0
  br i1 %cmp1345, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %snd_seq_midisynth_delete.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %p.046 = phi i32 [ %inc, %snd_seq_midisynth_delete.exit.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.seq_midisynth, ptr %9, i32 %p.046
  %cmp.i = icmp eq ptr %arrayidx14, null
  br i1 %cmp.i, label %for.body.snd_seq_midisynth_delete.exit_crit_edge, label %if.end.i

for.body.snd_seq_midisynth_delete.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_seq_midisynth_delete.exit

if.end.i:                                         ; preds = %for.body
  %seq_client.i = getelementptr %struct.seq_midisynth, ptr %9, i32 %p.046, i32 5
  %13 = ptrtoint ptr %seq_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq_client.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.i = icmp sgt i32 %14, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %seq_port.i = getelementptr %struct.seq_midisynth, ptr %9, i32 %p.046, i32 6
  %15 = ptrtoint ptr %seq_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq_port.i, align 4
  %call.i = tail call i32 @snd_seq_event_port_detach(i32 noundef %14, i32 noundef %16) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %parser.i = getelementptr %struct.seq_midisynth, ptr %9, i32 %p.046, i32 7
  %17 = ptrtoint ptr %parser.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parser.i, align 4
  tail call void @snd_midi_event_free(ptr noundef %18) #10
  br label %snd_seq_midisynth_delete.exit

snd_seq_midisynth_delete.exit:                    ; preds = %if.end4.i, %for.body.snd_seq_midisynth_delete.exit_crit_edge
  %inc = add nuw nsw i32 %p.046, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %snd_seq_midisynth_delete.exit.for.end_crit_edge, label %snd_seq_midisynth_delete.exit.for.body_crit_edge

snd_seq_midisynth_delete.exit.for.body_crit_edge: ; preds = %snd_seq_midisynth_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

snd_seq_midisynth_delete.exit.for.end_crit_edge:  ; preds = %snd_seq_midisynth_delete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %snd_seq_midisynth_delete.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %9) #10
  %num_ports = getelementptr inbounds %struct.seq_midisynth_client, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ports, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp16 = icmp slt i32 %dec, 1
  br i1 %cmp16, label %if.then17, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %7, align 4
  %call = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %22) #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 8
  %arrayidx19 = getelementptr [32 x ptr], ptr @synths, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx19, align 4
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %for.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_info_select(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_create_kernel_client(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midisynth_subscribe(ptr noundef %private_data, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %params = alloca %struct.snd_rawmidi_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 2
  %4 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subdevice, align 4
  %input_rfile = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 3
  %call = tail call i32 @snd_rawmidi_kernel_open(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 2, ptr noundef %input_rfile) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midisynth_subscribe.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midisynth_subscribe, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !78

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midisynth_subscribe.__UNIQUE_ID_ddebug198, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %input = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %runtime7 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime7, align 4
  %10 = call ptr @memset(ptr %params, i32 0, i32 32)
  %avail_min = getelementptr inbounds %struct.snd_rawmidi_params, ptr %params, i32 0, i32 2
  %11 = ptrtoint ptr %avail_min to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %avail_min, align 4
  %12 = load i32, ptr @input_buffer_size, align 4
  %buffer_size = getelementptr inbounds %struct.snd_rawmidi_params, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %buffer_size, align 4
  %call10 = call i32 @snd_rawmidi_input_params(ptr noundef %7, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = call i32 @snd_rawmidi_kernel_release(ptr noundef %input_rfile) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %parser = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 7
  %14 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parser, align 4
  call void @snd_midi_event_reset_encode(ptr noundef %15) #10
  %event = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 12
  %16 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_midi_input_event, ptr %event, align 4
  %private_data16 = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %9, i32 0, i32 14
  %17 = ptrtoint ptr %private_data16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %private_data, ptr %private_data16, align 4
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input, align 4
  %call19 = call i32 @snd_rawmidi_kernel_read(ptr noundef %19, ptr noundef null, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then12, %if.then4, %do.body
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ 0, %if.end15 ], [ %call, %if.then4 ], [ %call, %do.body ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midisynth_unsubscribe(ptr noundef %private_data, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !77

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 201, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %input_rfile = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 3
  %call = tail call i32 @snd_rawmidi_kernel_release(ptr noundef %input_rfile) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midisynth_use(ptr noundef %private_data, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %params = alloca %struct.snd_rawmidi_params, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 2
  %4 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subdevice, align 4
  %output_rfile = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 4
  %call = tail call i32 @snd_rawmidi_kernel_open(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 1, ptr noundef %output_rfile) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midisynth_use.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midisynth_use, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !78

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midisynth_use.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %6 = call ptr @memset(ptr %params, i32 0, i32 32)
  %avail_min = getelementptr inbounds %struct.snd_rawmidi_params, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %avail_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %avail_min, align 4
  %8 = load i32, ptr @output_buffer_size, align 4
  %buffer_size = getelementptr inbounds %struct.snd_rawmidi_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buffer_size, align 4
  %no_active_sensing = getelementptr inbounds %struct.snd_rawmidi_params, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %no_active_sensing to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %no_active_sensing, align 4
  %output = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %output, align 4
  %call7 = call i32 @snd_rawmidi_output_params(ptr noundef %12, ptr noundef nonnull %params) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call i32 @snd_rawmidi_kernel_release(ptr noundef %output_rfile) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %parser = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 7
  %13 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parser, align 4
  call void @snd_midi_event_reset_decode(ptr noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then4, %do.body
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 0, %if.end12 ], [ %call, %if.then4 ], [ %call, %do.body ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @midisynth_unuse(ptr noundef %private_data, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !77

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %output_rfile = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 4
  %call = tail call i32 @snd_rawmidi_drain_output(ptr noundef nonnull %1) #10
  %call27 = tail call i32 @snd_rawmidi_kernel_release(ptr noundef %output_rfile) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call27, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @event_process_midi(ptr noundef %ev, i32 noundef %direct, ptr noundef readonly %private_data, i32 noundef %atomic, i32 noundef %hop) #2 align 64 {
entry:
  %msg = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %msg) #10
  %tobool.not = icmp eq ptr %private_data, null
  %0 = call ptr @memset(ptr %msg, i32 255, i32 10)
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !77

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 123, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %output = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %output, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %3 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %4)
  %cmp26 = icmp eq i8 %4, -126
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end25
  %flags = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 1
  %7 = and i8 %6, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp30.not = icmp eq i8 %7, 4
  br i1 %cmp30.not, label %if.end48, label %do.body33

do.body33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @event_process_midi.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@event_process_midi, %if.then42)) #10
          to label %cleanup [label %if.then42], !srcloc !78

if.then42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 1
  %conv44 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @event_process_midi.__UNIQUE_ID_ddebug197, ptr noundef nonnull @.str.15, i32 noundef %conv44) #10
  br label %cleanup

if.end48:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 @snd_seq_dump_var_event(ptr noundef %ev, ptr noundef nonnull @dump_midi, ptr noundef nonnull %2) #10
  %parser = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 7
  %10 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parser, align 4
  tail call void @snd_midi_event_reset_decode(ptr noundef %11) #10
  br label %cleanup

if.else:                                          ; preds = %if.end25
  %parser50 = getelementptr inbounds %struct.seq_midisynth, ptr %private_data, i32 0, i32 7
  %12 = ptrtoint ptr %parser50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parser50, align 4
  %cmp51 = icmp eq ptr %13, null
  br i1 %cmp51, label %if.else.cleanup_crit_edge, label %if.end54

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end54:                                         ; preds = %if.else
  %call56 = call i32 @snd_midi_event_decode(ptr noundef nonnull %13, ptr noundef nonnull %msg, i32 noundef 10, ptr noundef %ev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end54.cleanup_crit_edge, label %if.end25.i

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25.i:                                       ; preds = %if.end54
  %runtime26.i = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %2, i32 0, i32 13
  %14 = ptrtoint ptr %runtime26.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime26.i, align 4
  %avail.i = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %avail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %avail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call56)
  %cmp.i = icmp slt i32 %17, %call56
  br i1 %cmp.i, label %if.then27.i, label %if.end36.i

if.then27.i:                                      ; preds = %if.end25.i
  %call.i = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.dump_midi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool28.not.i, label %if.then27.i.if.then65_crit_edge, label %do.end32.i

if.then27.i.if.then65_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

do.end32.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %if.then65

if.end36.i:                                       ; preds = %if.end25.i
  %call37.i = call i32 @snd_rawmidi_kernel_write(ptr noundef nonnull %2, ptr noundef nonnull %msg, i32 noundef %call56) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call37.i, i32 %call56)
  %cmp38.i = icmp slt i32 %call37.i, %call56
  br i1 %cmp38.i, label %if.end36.i.if.then65_crit_edge, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36.i.if.then65_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then65

if.then65:                                        ; preds = %if.end36.i.if.then65_crit_edge, %do.end32.i, %if.then27.i.if.then65_crit_edge
  %18 = ptrtoint ptr %parser50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parser50, align 4
  call void @snd_midi_event_reset_decode(ptr noundef %19) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end36.i.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end48, %if.then42, %do.body33, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -19, %if.end23.cleanup_crit_edge ], [ 0, %if.then42 ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %if.end48 ], [ 0, %do.body33 ], [ 0, %if.end36.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_delete_kernel_client(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_midi_event_new(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_kernel_open(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_input_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_kernel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_reset_encode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_midi_input_event(ptr noundef %substream) #2 align 64 {
entry:
  %ev = alloca %struct.snd_seq_event, align 4
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ev) #10
  %0 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5, i32 1
  %1 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %cmp = icmp eq ptr %substream, null
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime1 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %3 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = call ptr @memset(ptr %ev, i32 0, i32 28)
  %avail = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5.not39 = icmp eq i32 %9, 0
  br i1 %cmp5.not39, label %if.end4.cleanup_crit_edge, label %while.body.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end4
  %parser = getelementptr inbounds %struct.seq_midisynth, ptr %6, i32 0, i32 7
  %seq_port = getelementptr inbounds %struct.seq_midisynth, ptr %6, i32 0, i32 6
  %seq_client = getelementptr inbounds %struct.seq_midisynth, ptr %6, i32 0, i32 5
  %uglygep = getelementptr i8, ptr %buf, i32 -1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call = call i32 @snd_rawmidi_kernel_read(ptr noundef nonnull %substream, ptr noundef nonnull %buf, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp6 = icmp slt i32 %call, 1
  br i1 %cmp6, label %while.body.while.cond.backedge_crit_edge, label %if.end8

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond13.backedge.while.cond.backedge_crit_edge, %if.end8.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %10 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %avail, align 4
  %cmp5.not = icmp eq i32 %11, 0
  br i1 %cmp5.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %12 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parser, align 4
  %cmp9.not = icmp eq ptr %13, null
  br i1 %cmp9.not, label %if.end8.while.cond.backedge_crit_edge, label %while.body15.preheader

if.end8.while.cond.backedge_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.body15.preheader:                           ; preds = %if.end8
  %uglygep40 = getelementptr i8, ptr %uglygep, i32 %call
  br label %while.body15

while.body15:                                     ; preds = %while.cond13.backedge.while.body15_crit_edge, %while.body15.preheader
  %pbuf.037 = phi ptr [ %incdec.ptr, %while.cond13.backedge.while.body15_crit_edge ], [ %buf, %while.body15.preheader ]
  %14 = ptrtoint ptr %parser to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parser, align 4
  %incdec.ptr = getelementptr i8, ptr %pbuf.037, i32 1
  %16 = ptrtoint ptr %pbuf.037 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pbuf.037, align 1
  %call17 = call zeroext i1 @snd_midi_event_encode_byte(ptr noundef %15, i8 noundef zeroext %17, ptr noundef nonnull %ev) #10
  br i1 %call17, label %if.end19, label %while.body15.while.cond13.backedge_crit_edge

while.body15.while.cond13.backedge_crit_edge:     ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond13.backedge

if.end19:                                         ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %seq_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq_port, align 4
  %conv = trunc i32 %19 to i8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %0, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -2, ptr %1, align 2
  %22 = ptrtoint ptr %seq_client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq_client, align 4
  %call20 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %23, ptr noundef nonnull %ev, i32 noundef 1, i32 noundef 0) #10
  %24 = call ptr @memset(ptr %ev, i32 0, i32 28)
  br label %while.cond13.backedge

while.cond13.backedge:                            ; preds = %if.end19, %while.body15.while.cond13.backedge_crit_edge
  %exitcond.not = icmp eq ptr %pbuf.037, %uglygep40
  br i1 %exitcond.not, label %while.cond13.backedge.while.cond.backedge_crit_edge, label %while.cond13.backedge.while.body15_crit_edge

while.cond13.backedge.while.body15_crit_edge:     ; preds = %while.cond13.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15

while.cond13.backedge.while.cond.backedge_crit_edge: ; preds = %while.cond13.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_kernel_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_midi_event_encode_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_output_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_reset_decode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_drain_output(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_dump_var_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dump_midi(ptr noundef %substream, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %substream, null
  %tobool1.not = icmp eq ptr %buf, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end25, !prof !77

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 101, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end25:                                         ; preds = %entry
  %runtime26 = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 13
  %0 = ptrtoint ptr %runtime26 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime26, align 4
  %avail = getelementptr inbounds %struct.snd_rawmidi_runtime, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %count)
  %cmp = icmp slt i32 %3, %count
  br i1 %cmp, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.end25
  %call = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.dump_midi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %if.then27.cleanup_crit_edge, label %do.end32

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #16
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 @snd_rawmidi_kernel_write(ptr noundef nonnull %substream, ptr noundef nonnull %buf, i32 noundef %count) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %count)
  %cmp38 = icmp slt i32 %call37, %count
  %. = select i1 %cmp38, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end32, %if.then27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %do.end32 ], [ -12, %if.then27.cleanup_crit_edge ], [ %., %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_midi_event_decode(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_kernel_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_event_port_detach(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_midi_event_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_midi.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_midi.c", i32 29, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq_midi.c", i32 30, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__param_output_buffer_size, !8, !"__param_output_buffer_size", i1 false, i1 false}
!8 = !{!"../sound/core/seq/seq_midi.c", i32 32, i32 1}
!9 = !{ptr @__UNIQUE_ID_output_buffer_sizetype193, !8, !"__UNIQUE_ID_output_buffer_sizetype193", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_output_buffer_size194, !11, !"__UNIQUE_ID_output_buffer_size194", i1 false, i1 false}
!11 = !{!"../sound/core/seq/seq_midi.c", i32 33, i32 1}
!12 = !{ptr @__param_input_buffer_size, !13, !"__param_input_buffer_size", i1 false, i1 false}
!13 = !{!"../sound/core/seq/seq_midi.c", i32 35, i32 1}
!14 = !{ptr @__UNIQUE_ID_input_buffer_sizetype195, !13, !"__UNIQUE_ID_input_buffer_sizetype195", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_input_buffer_size196, !16, !"__UNIQUE_ID_input_buffer_size196", i1 false, i1 false}
!16 = !{!"../sound/core/seq/seq_midi.c", i32 36, i32 1}
!17 = !{ptr @__initcall__kmod_snd_seq_midi__200_459_seq_midisynth_driver_init6, !18, !"__initcall__kmod_snd_seq_midi__200_459_seq_midisynth_driver_init6", i1 false, i1 false}
!18 = !{!"../sound/core/seq/seq_midi.c", i32 459, i32 1}
!19 = !{ptr @__exitcall_seq_midisynth_driver_exit, !18, !"__exitcall_seq_midisynth_driver_exit", i1 false, i1 false}
!20 = !{ptr @__param_str_output_buffer_size, !8, !"__param_str_output_buffer_size", i1 false, i1 false}
!21 = !{ptr @output_buffer_size, !22, !"output_buffer_size", i1 false, i1 false}
!22 = !{!"../sound/core/seq/seq_midi.c", i32 31, i32 12}
!23 = !{ptr @__param_str_input_buffer_size, !13, !"__param_str_input_buffer_size", i1 false, i1 false}
!24 = !{ptr @input_buffer_size, !25, !"input_buffer_size", i1 false, i1 false}
!25 = !{!"../sound/core/seq/seq_midi.c", i32 34, i32 12}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/core/seq/seq_midi.c", i32 451, i32 11}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/core/seq/seq_midi.c", i32 455, i32 8}
!30 = !{ptr @seq_midisynth_driver, !31, !"seq_midisynth_driver", i1 false, i1 false}
!31 = !{!"../sound/core/seq/seq_midi.c", i32 449, i32 30}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/core/seq/seq_midi.c", i32 278, i32 6}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/core/seq/seq_midi.c", i32 314, i32 14}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/core/seq/seq_midi.c", i32 315, i32 37}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/core/seq/seq_midi.c", i32 352, i32 47}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/core/seq/seq_midi.c", i32 358, i32 26}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/core/seq/seq_midi.c", i32 360, i32 26}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/core/seq/seq_midi.c", i32 58, i32 8}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @register_mutex, !45, !"register_mutex", i1 false, i1 false}
!48 = !{ptr @synths, !49, !"synths", i1 false, i1 false}
!49 = !{!"../sound/core/seq/seq_midi.c", i32 57, i32 37}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/core/seq/seq_midi.c", i32 176, i32 3}
!52 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @midisynth_subscribe.__UNIQUE_ID_ddebug198, !51, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/core/seq/seq_midi.c", i32 220, i32 3}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @midisynth_use.__UNIQUE_ID_ddebug199, !55, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/core/seq/seq_midi.c", i32 131, i32 4}
!60 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @event_process_midi.__UNIQUE_ID_ddebug197, !59, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!62 = !{ptr @__func__.dump_midi, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/core/seq/seq_midi.c", i32 106, i32 7}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/core/seq/seq_midi.c", i32 107, i32 4}
!66 = !{ptr @dump_midi._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dump_midi._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2148212734, i64 2148212739, i64 2148212752, i64 2148212796, i64 2148212830, i64 2148212851}
