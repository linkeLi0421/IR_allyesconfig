; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emumpu401.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emumpu401.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EMU10K1 MPU-401 (UART)\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Audigy MPU-401 (UART)\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Audigy MPU-401 #2\00", [46 x i8] zeroinitializer }, align 32
@emu10k1_midi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&midi->open_lock\00", [47 x i8] zeroinitializer }, align 32
@emu10k1_midi_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&midi->input_lock\00", [46 x i8] zeroinitializer }, align 32
@emu10k1_midi_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&midi->output_lock\00", [45 x i8] zeroinitializer }, align 32
@snd_emu10k1_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_emu10k1_midi_output_open, ptr @snd_emu10k1_midi_output_close, ptr @snd_emu10k1_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_emu10k1_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_emu10k1_midi_input_open, ptr @snd_emu10k1_midi_input_close, ptr @snd_emu10k1_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/emu10k1/emumpu401.c\00", [34 x i8] zeroinitializer }, align 32
@snd_emu10k1_midi_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.8, i32 135, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"midi_cmd: 0x%x failed at 0x%lx (status = 0x%x, data = 0x%x)!!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_emu10k1_midi_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_midi_cmd._entry_ptr = internal global ptr @snd_emu10k1_midi_cmd._entry, section ".printk_index", align 4
@mpu401_clear_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.8, i32 54, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cmd: clear rx timeout (status = 0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mpu401_clear_rx\00", [16 x i8] zeroinitializer }, align 32
@mpu401_clear_rx._entry_ptr = internal global ptr @mpu401_clear_rx._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 346, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 365, i32 40 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 377, i32 40 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 326, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 327, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 328, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"snd_emu10k1_midi_output\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 296, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"snd_emu10k1_midi_input\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 303, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 175, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 131, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [33 x i8] c"../sound/pci/emu10k1/emumpu401.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 52, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @mpu401_clear_rx._entry, ptr @mpu401_clear_rx._entry_ptr, ptr @snd_emu10k1_midi_cmd._entry, ptr @snd_emu10k1_midi_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @emu10k1_midi_init.__key, ptr @.str.3, ptr @emu10k1_midi_init.__key.4, ptr @.str.5, ptr @emu10k1_midi_init.__key.6, ptr @.str.7, ptr @snd_emu10k1_midi_output, ptr @snd_emu10k1_midi_input, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1_midi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1_midi_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1_midi_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_midi_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu401_clear_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_midi(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %midi1 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72
  %call = tail call fastcc i32 @emu10k1_midi_init(ptr noundef %emu, ptr noundef %midi1, i32 noundef 0, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_enable = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 8
  %0 = ptrtoint ptr %tx_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %tx_enable, align 4
  %rx_enable = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 9
  %1 = ptrtoint ptr %rx_enable to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %rx_enable, align 4
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 10
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 24, ptr %port, align 4
  %ipr_tx = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 11
  %3 = ptrtoint ptr %ipr_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %ipr_tx, align 4
  %ipr_rx = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 12
  %4 = ptrtoint ptr %ipr_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %ipr_rx, align 4
  %interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 13
  %5 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_emu10k1_midi_interrupt, ptr %interrupt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emu10k1_midi_init(ptr noundef %emu, ptr noundef %midi, i32 noundef %device, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #6
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !42
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %call = call i32 @snd_rawmidi_new(ptr noundef %2, ptr noundef %name, i32 noundef %device, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %midi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %emu, ptr %midi, align 4
  %open_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %open_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @emu10k1_midi_init.__key, i16 noundef signext 3) #6
  %input_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %input_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @emu10k1_midi_init.__key.4, i16 noundef signext 3) #6
  %output_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %output_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @emu10k1_midi_init.__key.6, i16 noundef signext 3) #6
  %4 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmidi, align 4
  %name11 = getelementptr inbounds %struct.snd_rawmidi, ptr %5, i32 0, i32 5
  %call12 = call ptr @strcpy(ptr noundef %name11, ptr noundef %name) #9
  call void @snd_rawmidi_set_ops(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @snd_emu10k1_midi_output) #6
  %6 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %7, i32 noundef 1, ptr noundef nonnull @snd_emu10k1_midi_input) #6
  %8 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmidi, align 4
  %info_flags = getelementptr inbounds %struct.snd_rawmidi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info_flags, align 8
  %or = or i32 %11, 7
  store i32 %or, ptr %info_flags, align 8
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %midi, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_rawmidi, ptr %9, i32 0, i32 10
  %13 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @snd_emu10k1_midi_free, ptr %private_free, align 8
  %rmidi13 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 1
  %14 = ptrtoint ptr %rmidi13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %9, ptr %rmidi13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_midi_interrupt(ptr noundef %emu, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %midi = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72
  tail call fastcc void @do_emu10k1_midi_interrupt(ptr noundef %emu, ptr noundef %midi, i32 noundef %status)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_audigy_midi(ptr noundef %emu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %midi1 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72
  %call = tail call fastcc i32 @emu10k1_midi_init(ptr noundef %emu, ptr noundef %midi1, i32 noundef 0, ptr noundef nonnull @.str.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_enable = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 8
  %0 = ptrtoint ptr %tx_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %tx_enable, align 4
  %rx_enable = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 9
  %1 = ptrtoint ptr %rx_enable to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %rx_enable, align 4
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 10
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 112, ptr %port, align 4
  %ipr_tx = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 11
  %3 = ptrtoint ptr %ipr_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %ipr_tx, align 4
  %ipr_rx = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 12
  %4 = ptrtoint ptr %ipr_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %ipr_rx, align 4
  %interrupt = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 72, i32 13
  %5 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_emu10k1_midi_interrupt, ptr %interrupt, align 4
  %midi2 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73
  %call2 = tail call fastcc i32 @emu10k1_midi_init(ptr noundef %emu, ptr noundef %midi2, i32 noundef 1, ptr noundef nonnull @.str.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_enable6 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73, i32 8
  %6 = ptrtoint ptr %tx_enable6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 131072, ptr %tx_enable6, align 4
  %rx_enable7 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73, i32 9
  %7 = ptrtoint ptr %rx_enable7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %rx_enable7, align 4
  %port8 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73, i32 10
  %8 = ptrtoint ptr %port8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 114, ptr %port8, align 4
  %ipr_tx9 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73, i32 11
  %9 = ptrtoint ptr %ipr_tx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 268435456, ptr %ipr_tx9, align 4
  %ipr_rx10 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73, i32 12
  %10 = ptrtoint ptr %ipr_rx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 134217728, ptr %ipr_rx10, align 4
  %interrupt11 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73, i32 13
  %11 = ptrtoint ptr %interrupt11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @snd_emu10k1_midi_interrupt2, ptr %interrupt11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_midi_interrupt2(ptr noundef %emu, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %midi2 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 73
  tail call fastcc void @do_emu10k1_midi_interrupt(ptr noundef %emu, ptr noundef %midi2, i32 noundef %status)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_emu10k1_midi_free(ptr nocapture noundef readonly %rmidi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %interrupt = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %interrupt, align 4
  %rmidi1 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rmidi1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rmidi1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_midi_output_open(ptr noundef %substream) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %midi_mode = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_mode, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %midi_mode, align 4
  %substream_output = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_output, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #6
  br i1 %tobool34.not, label %if.then35, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %do.body26
  %call37 = tail call fastcc i32 @snd_emu10k1_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then35.error_out_crit_edge

if.then35.error_out_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_out

if.end40:                                         ; preds = %if.then35
  %call41 = tail call fastcc i32 @snd_emu10k1_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext 63, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end40.error_out_crit_edge

if.end40.error_out_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_out

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error_out:                                        ; preds = %if.end40.error_out_crit_edge, %if.then35.error_out_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.end40.cleanup_crit_edge, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -5, %error_out ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_midi_output_close(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 226, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %tx_enable = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_enable, align 4
  tail call void @snd_emu10k1_intr_disable(ptr noundef nonnull %5, i32 noundef %7) #6
  %midi_mode = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %midi_mode, align 4
  %and = and i32 %9, -3
  store i32 %and, ptr %midi_mode, align 4
  %substream_output = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %substream_output, align 4
  %and34 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #6
  br i1 %tobool35.not, label %if.then36, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call fastcc i32 @snd_emu10k1_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call38, %if.then36 ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #0 align 64 {
entry:
  %byte = alloca i8, align 1
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 262, i32 noundef 9, ptr noundef null) #6
  br label %cleanup56

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool25.not = icmp eq i32 %up, 0
  br i1 %tobool25.not, label %if.else53, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #6
  %6 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %byte, align 1, !annotation !42
  %output_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 6
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #6
  %audigy.i = getelementptr inbounds %struct.snd_emu10k1, ptr %5, i32 0, i32 4
  %port.i = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 10
  %port1.i = getelementptr inbounds %struct.snd_emu10k1, ptr %5, i32 0, i32 1
  %midi_mode = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %mpu401_write.exit.while.body_crit_edge, %if.then26
  %max.086 = phi i32 [ 4, %if.then26 ], [ %dec, %mpu401_write.exit.while.body_crit_edge ]
  %7 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i = add i32 %10, 1
  %call.i = call i32 @snd_emu10k1_ptr_read(ptr noundef nonnull %5, i32 noundef %add.i, i32 noundef 0) #6
  %conv.i = trunc i32 %call.i to i8
  br label %mpu401_read.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port1.i, align 4
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %12, 1
  %add4.i = add i32 %add3.i, %14
  %and.i = and i32 %add4.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add5.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit

mpu401_read.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %conv.i, %if.then.i ], [ %16, %if.else.i ]
  %17 = and i8 %retval.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool39.not = icmp eq i8 %17, 0
  br i1 %tobool39.not, label %if.then40, label %mpu401_read.exit.while.end_crit_edge

mpu401_read.exit.while.end_crit_edge:             ; preds = %mpu401_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then40:                                        ; preds = %mpu401_read.exit
  %18 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %midi_mode, align 4
  %and41 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then40.if.then46_crit_edge, label %lor.lhs.false

if.then40.if.then46_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

lor.lhs.false:                                    ; preds = %if.then40
  %call43 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 1
  br i1 %cmp44.not, label %if.end48, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.then40.if.then46_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call30) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  br label %cleanup56

if.end48:                                         ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %byte, align 1
  %22 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i78 = icmp eq i32 %23, 0
  br i1 %tobool.not.i78, label %do.body.i, label %if.then.i80

if.then.i80:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %conv49 = zext i8 %21 to i32
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  call void @snd_emu10k1_ptr_write(ptr noundef nonnull %5, i32 noundef %25, i32 noundef 0, i32 noundef %conv49) #6
  br label %mpu401_write.exit

do.body.i:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port1.i, align 4
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  %add4.i83 = add i32 %29, %27
  %and.i84 = and i32 %add4.i83, 1048575
  %add5.i85 = or i32 %and.i84, -18874368
  %30 = inttoptr i32 %add5.i85 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %21) #6, !srcloc !47
  br label %mpu401_write.exit

mpu401_write.exit:                                ; preds = %do.body.i, %if.then.i80
  %dec = add nsw i32 %max.086, -1
  %cmp35 = icmp ugt i32 %max.086, 1
  br i1 %cmp35, label %mpu401_write.exit.while.body_crit_edge, label %mpu401_write.exit.while.end_crit_edge

mpu401_write.exit.while.end_crit_edge:            ; preds = %mpu401_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

mpu401_write.exit.while.body_crit_edge:           ; preds = %mpu401_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %mpu401_write.exit.while.end_crit_edge, %mpu401_read.exit.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call30) #6
  %tx_enable = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_enable, align 4
  call void @snd_emu10k1_intr_enable(ptr noundef nonnull %5, i32 noundef %32) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  br label %cleanup56

if.else53:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %tx_enable54 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %tx_enable54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_enable54, align 4
  tail call void @snd_emu10k1_intr_disable(ptr noundef nonnull %5, i32 noundef %34) #6
  br label %cleanup56

cleanup56:                                        ; preds = %if.else53, %while.end, %if.then46, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_emu10k1_midi_cmd(ptr noundef %emu, ptr noundef %midi, i8 noundef zeroext %cmd, i32 noundef %ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock) #6
  %audigy.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %0 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %port.i = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef %3, i32 noundef 0, i32 noundef 0) #6
  br label %mpu401_write.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %port1.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %4 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port1.i, align 4
  %port2.i = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %6 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port2.i, align 4
  %add4.i = add i32 %7, %5
  %and.i = and i32 %add4.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !47
  br label %mpu401_write.exit

mpu401_write.exit:                                ; preds = %do.body.i, %if.then.i
  %conv5 = zext i8 %cmd to i32
  %9 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i61 = icmp eq i32 %10, 0
  br i1 %tobool.not.i61, label %do.body.i69, label %if.then.i63

if.then.i63:                                      ; preds = %mpu401_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %port.i62 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %11 = ptrtoint ptr %port.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i62, align 4
  %add.i = add i32 %12, 1
  tail call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef %add.i, i32 noundef 0, i32 noundef %conv5) #6
  br label %mpu401_write.exit70

do.body.i69:                                      ; preds = %mpu401_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %port1.i64 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %13 = ptrtoint ptr %port1.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port1.i64, align 4
  %port2.i65 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %15 = ptrtoint ptr %port2.i65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port2.i65, align 4
  %add3.i = add i32 %14, 1
  %add4.i66 = add i32 %add3.i, %16
  %and.i67 = and i32 %add4.i66, 1048575
  %add5.i68 = or i32 %and.i67, -18874368
  %17 = inttoptr i32 %add5.i68 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %cmd) #6, !srcloc !47
  br label %mpu401_write.exit70

mpu401_write.exit70:                              ; preds = %do.body.i69, %if.then.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack)
  %tobool.not = icmp eq i32 %ack, 0
  br i1 %tobool.not, label %mpu401_write.exit70.if.end26_crit_edge, label %while.cond.preheader

mpu401_write.exit70.if.end26_crit_edge:           ; preds = %mpu401_write.exit70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

while.cond.preheader:                             ; preds = %mpu401_write.exit70
  %port.i73 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %port1.i76 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end18.land.rhs_crit_edge, %while.cond.preheader
  %timeout.0140 = phi i32 [ 10000, %while.cond.preheader ], [ %dec, %if.end18.land.rhs_crit_edge ]
  %dec = add nsw i32 %timeout.0140, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0140)
  %cmp7.not = icmp eq i32 %timeout.0140, 0
  %18 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i97 = icmp eq i32 %19, 0
  br i1 %cmp7.not, label %land.lhs.true.critedge, label %while.body

while.body:                                       ; preds = %land.rhs
  br i1 %tobool.not.i97, label %if.else.i, label %if.then.i75

if.then.i75:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i73, align 4
  %add.i74 = add i32 %21, 1
  %call.i = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %add.i74, i32 noundef 0) #6
  %conv.i = trunc i32 %call.i to i8
  br label %mpu401_read.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %port1.i76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port1.i76, align 4
  %24 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i73, align 4
  %add3.i78 = add i32 %23, 1
  %add4.i79 = add i32 %add3.i78, %25
  %and.i80 = and i32 %add4.i79, 1048575
  %add5.i81 = or i32 %and.i80, -18874368
  %26 = inttoptr i32 %add5.i81 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit

mpu401_read.exit:                                 ; preds = %if.else.i, %if.then.i75
  %retval.0.i = phi i8 [ %conv.i, %if.then.i75 ], [ %27, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i)
  %tobool11.not = icmp sgt i8 %retval.0.i, -1
  br i1 %tobool11.not, label %if.then12, label %mpu401_read.exit.if.end18_crit_edge

mpu401_read.exit.if.end18_crit_edge:              ; preds = %mpu401_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12:                                        ; preds = %mpu401_read.exit
  %28 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i83 = icmp eq i32 %29, 0
  br i1 %tobool.not.i83, label %if.else.i93, label %if.then.i87

if.then.i87:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port.i73, align 4
  %call.i85 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %31, i32 noundef 0) #6
  %conv.i86 = trunc i32 %call.i85 to i8
  br label %mpu401_read.exit95

if.else.i93:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %port1.i76 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port1.i76, align 4
  %34 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i73, align 4
  %add4.i90 = add i32 %35, %33
  %and.i91 = and i32 %add4.i90, 1048575
  %add5.i92 = or i32 %and.i91, -18874368
  %36 = inttoptr i32 %add5.i92 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit95

mpu401_read.exit95:                               ; preds = %if.else.i93, %if.then.i87
  %retval.0.i94 = phi i8 [ %conv.i86, %if.then.i87 ], [ %37, %if.else.i93 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %retval.0.i94)
  %cmp15 = icmp eq i8 %retval.0.i94, -2
  %spec.select = zext i1 %cmp15 to i32
  br label %if.end18

if.end18:                                         ; preds = %mpu401_read.exit95, %mpu401_read.exit.if.end18_crit_edge
  %ok.1 = phi i32 [ 0, %mpu401_read.exit.if.end18_crit_edge ], [ %spec.select, %mpu401_read.exit95 ]
  %tobool6.not = icmp eq i32 %ok.1, 0
  br i1 %tobool6.not, label %if.end18.land.rhs_crit_edge, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end18.land.rhs_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.lhs.true.critedge:                           ; preds = %land.rhs
  br i1 %tobool.not.i97, label %if.else.i107, label %if.then.i101

if.then.i101:                                     ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i73, align 4
  %call.i99 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %39, i32 noundef 0) #6
  %conv.i100 = trunc i32 %call.i99 to i8
  br label %mpu401_read.exit109

if.else.i107:                                     ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %port1.i76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port1.i76, align 4
  %42 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i73, align 4
  %add4.i104 = add i32 %43, %41
  %and.i105 = and i32 %add4.i104, 1048575
  %add5.i106 = or i32 %and.i105, -18874368
  %44 = inttoptr i32 %add5.i106 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit109

mpu401_read.exit109:                              ; preds = %if.else.i107, %if.then.i101
  %retval.0.i108 = phi i8 [ %conv.i100, %if.then.i101 ], [ %45, %if.else.i107 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %retval.0.i108)
  %cmp22 = icmp eq i8 %retval.0.i108, -2
  br i1 %cmp22, label %mpu401_read.exit109.if.end26_crit_edge, label %do.end32.critedge

mpu401_read.exit109.if.end26_crit_edge:           ; preds = %mpu401_read.exit109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %mpu401_read.exit109.if.end26_crit_edge, %if.end18.if.end26_crit_edge, %mpu401_write.exit70.if.end26_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #6
  br label %cleanup

do.end32.critedge:                                ; preds = %mpu401_read.exit109
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #6
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %50 = ptrtoint ptr %port1.i76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port1.i76, align 4
  %52 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i111 = icmp eq i32 %53, 0
  %54 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port.i73, align 4
  br i1 %tobool.not.i111, label %if.else.i123, label %if.then.i116

if.then.i116:                                     ; preds = %do.end32.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %add.i113 = add i32 %55, 1
  %call.i114 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %add.i113, i32 noundef 0) #6
  %conv.i115 = trunc i32 %call.i114 to i8
  br label %mpu401_read.exit125

if.else.i123:                                     ; preds = %do.end32.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %add3.i119 = add i32 %51, 1
  %add4.i120 = add i32 %add3.i119, %55
  %and.i121 = and i32 %add4.i120, 1048575
  %add5.i122 = or i32 %and.i121, -18874368
  %56 = inttoptr i32 %add5.i122 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit125

mpu401_read.exit125:                              ; preds = %if.else.i123, %if.then.i116
  %retval.0.i124 = phi i8 [ %conv.i115, %if.then.i116 ], [ %57, %if.else.i123 ]
  %conv35 = zext i8 %retval.0.i124 to i32
  %58 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i127 = icmp eq i32 %59, 0
  br i1 %tobool.not.i127, label %if.else.i137, label %if.then.i131

if.then.i131:                                     ; preds = %mpu401_read.exit125
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port.i73, align 4
  %call.i129 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %61, i32 noundef 0) #6
  %conv.i130 = trunc i32 %call.i129 to i8
  br label %mpu401_read.exit139

if.else.i137:                                     ; preds = %mpu401_read.exit125
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %port1.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port1.i76, align 4
  %64 = ptrtoint ptr %port.i73 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port.i73, align 4
  %add4.i134 = add i32 %65, %63
  %and.i135 = and i32 %add4.i134, 1048575
  %add5.i136 = or i32 %and.i135, -18874368
  %66 = inttoptr i32 %add5.i136 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit139

mpu401_read.exit139:                              ; preds = %if.else.i137, %if.then.i131
  %retval.0.i138 = phi i8 [ %conv.i130, %if.then.i131 ], [ %67, %if.else.i137 ]
  %conv37 = zext i8 %retval.0.i138 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9, i32 noundef %conv5, i32 noundef %51, i32 noundef %conv35, i32 noundef %conv37) #10
  br label %cleanup

cleanup:                                          ; preds = %mpu401_read.exit139, %if.end26
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 1, %mpu401_read.exit139 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_ptr_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_ptr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_intr_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_intr_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_midi_input_open(ptr noundef %substream) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 148, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %midi_mode = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_mode, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %midi_mode, align 4
  %substream_input = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_input, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #6
  br i1 %tobool34.not, label %if.then35, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %do.body26
  %call37 = tail call fastcc i32 @snd_emu10k1_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then35.error_out_crit_edge

if.then35.error_out_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_out

if.end40:                                         ; preds = %if.then35
  %call41 = tail call fastcc i32 @snd_emu10k1_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext 63, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.end40.error_out_crit_edge

if.end40.error_out_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_out

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error_out:                                        ; preds = %if.end40.error_out_crit_edge, %if.then35.error_out_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %error_out, %if.end40.cleanup_crit_edge, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -5, %error_out ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_midi_input_close(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 203, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body26:                                        ; preds = %entry
  %open_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %open_lock) #6
  %rx_enable = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_enable, align 4
  tail call void @snd_emu10k1_intr_disable(ptr noundef nonnull %5, i32 noundef %7) #6
  %midi_mode = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %midi_mode, align 4
  %and = and i32 %9, -2
  store i32 %and, ptr %midi_mode, align 4
  %substream_input = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %substream_input, align 4
  %and34 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %open_lock, i32 noundef %call28) #6
  br i1 %tobool35.not, label %if.then36, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then36:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call fastcc i32 @snd_emu10k1_midi_cmd(ptr noundef nonnull %5, ptr noundef %3, i8 noundef zeroext -1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %do.body26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call38, %if.then36 ], [ 0, %do.body26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_emu10k1_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 246, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool25.not = icmp eq i32 %up, 0
  %rx_enable27 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %rx_enable27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_enable27, align 4
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_intr_enable(ptr noundef nonnull %5, i32 noundef %7) #6
  br label %cleanup

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_emu10k1_intr_disable(ptr noundef nonnull %5, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then26, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_emu10k1_midi_interrupt(ptr noundef %emu, ptr noundef %midi, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #6
  %0 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %byte, align 1, !annotation !42
  %rmidi = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 1
  %1 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmidi, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_enable = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 8
  %3 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_enable, align 4
  %rx_enable = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 9
  %5 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_enable, align 4
  %or = or i32 %6, %4
  tail call void @snd_emu10k1_intr_disable(ptr noundef %emu, i32 noundef %or) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %input_lock) #6
  %ipr_rx = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 12
  %7 = ptrtoint ptr %ipr_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ipr_rx, align 4
  %and = and i32 %8, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %audigy.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %9 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %port.i = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add.i = add i32 %12, 1
  %call.i = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %add.i, i32 noundef 0) #6
  %conv.i = trunc i32 %call.i to i8
  br label %mpu401_read.exit

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %port1.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %13 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port1.i, align 4
  %port2.i = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %15 = ptrtoint ptr %port2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port2.i, align 4
  %add3.i = add i32 %14, 1
  %add4.i = add i32 %add3.i, %16
  %and.i = and i32 %add4.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add5.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit

mpu401_read.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %conv.i, %if.then.i ], [ %18, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i)
  %tobool2.not = icmp sgt i8 %retval.0.i, -1
  br i1 %tobool2.not, label %if.then3, label %mpu401_read.exit.if.end14_crit_edge

mpu401_read.exit.if.end14_crit_edge:              ; preds = %mpu401_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %mpu401_read.exit
  %midi_mode = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 4
  %19 = ptrtoint ptr %midi_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %midi_mode, align 4
  %and4 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %port.i.i = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %port1.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %mpu401_read.exit26.i.land.rhs.i_crit_edge, %if.then6
  %timeout.044.i = phi i32 [ 100000, %if.then6 ], [ %dec.i, %mpu401_read.exit26.i.land.rhs.i_crit_edge ]
  %21 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %24, 1
  %call.i.i = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %add.i.i, i32 noundef 0) #6
  %conv.i.i = trunc i32 %call.i.i to i8
  br label %mpu401_read.exit.i

if.else.i.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port1.i.i, align 4
  %27 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i.i, align 4
  %add3.i.i = add i32 %26, 1
  %add4.i.i = add i32 %add3.i.i, %28
  %and.i.i = and i32 %add4.i.i, 1048575
  %add5.i.i = or i32 %and.i.i, -18874368
  %29 = inttoptr i32 %add5.i.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit.i

mpu401_read.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ %30, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retval.0.i.i)
  %tobool.not.i64 = icmp sgt i8 %retval.0.i.i, -1
  br i1 %tobool.not.i64, label %for.body.i, label %mpu401_read.exit.i.if.end14_crit_edge

mpu401_read.exit.i.if.end14_crit_edge:            ; preds = %mpu401_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.i:                                       ; preds = %mpu401_read.exit.i
  %31 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i14.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i14.i, label %if.else.i24.i, label %if.then.i18.i

if.then.i18.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i.i, align 4
  %call.i16.i = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %34, i32 noundef 0) #6
  br label %mpu401_read.exit26.i

if.else.i24.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port1.i.i, align 4
  %37 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port.i.i, align 4
  %add4.i21.i = add i32 %38, %36
  %and.i22.i = and i32 %add4.i21.i, 1048575
  %add5.i23.i = or i32 %and.i22.i, -18874368
  %39 = inttoptr i32 %add5.i23.i to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit26.i

mpu401_read.exit26.i:                             ; preds = %if.else.i24.i, %if.then.i18.i
  %dec.i = add nsw i32 %timeout.044.i, -1
  %cmp.i = icmp ugt i32 %timeout.044.i, 1
  br i1 %cmp.i, label %mpu401_read.exit26.i.land.rhs.i_crit_edge, label %do.end.i

mpu401_read.exit26.i.land.rhs.i_crit_edge:        ; preds = %mpu401_read.exit26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

do.end.i:                                         ; preds = %mpu401_read.exit26.i
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %41 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 8
  %45 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i28.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i28.i, label %if.else.i40.i, label %if.then.i33.i

if.then.i33.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i.i, align 4
  %add.i30.i = add i32 %48, 1
  %call.i31.i = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %add.i30.i, i32 noundef 0) #6
  %conv.i32.i = trunc i32 %call.i31.i to i8
  br label %mpu401_read.exit42.i

if.else.i40.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port1.i.i, align 4
  %51 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port.i.i, align 4
  %add3.i36.i = add i32 %50, 1
  %add4.i37.i = add i32 %add3.i36.i, %52
  %and.i38.i = and i32 %add4.i37.i, 1048575
  %add5.i39.i = or i32 %and.i38.i, -18874368
  %53 = inttoptr i32 %add5.i39.i to ptr
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %53) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit42.i

mpu401_read.exit42.i:                             ; preds = %if.else.i40.i, %if.then.i33.i
  %retval.0.i41.i = phi i8 [ %conv.i32.i, %if.then.i33.i ], [ %54, %if.else.i40.i ]
  %conv5.i = zext i8 %retval.0.i41.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.13, i32 noundef %conv5.i) #10
  br label %if.end14

if.else:                                          ; preds = %if.then3
  %55 = ptrtoint ptr %audigy.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %audigy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i66 = icmp eq i32 %56, 0
  br i1 %tobool.not.i66, label %if.else.i76, label %if.then.i70

if.then.i70:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %port.i67 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %57 = ptrtoint ptr %port.i67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port.i67, align 4
  %call.i68 = tail call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %58, i32 noundef 0) #6
  %conv.i69 = trunc i32 %call.i68 to i8
  br label %mpu401_read.exit78

if.else.i76:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %port1.i71 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %59 = ptrtoint ptr %port1.i71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port1.i71, align 4
  %port2.i72 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %61 = ptrtoint ptr %port2.i72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port2.i72, align 4
  %add4.i73 = add i32 %62, %60
  %and.i74 = and i32 %add4.i73, 1048575
  %add5.i75 = or i32 %and.i74, -18874368
  %63 = inttoptr i32 %add5.i75 to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #6, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit78

mpu401_read.exit78:                               ; preds = %if.else.i76, %if.then.i70
  %retval.0.i77 = phi i8 [ %conv.i69, %if.then.i70 ], [ %64, %if.else.i76 ]
  %65 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %retval.0.i77, ptr %byte, align 1
  %substream_input = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 2
  %66 = ptrtoint ptr %substream_input to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %substream_input, align 4
  %tobool8.not = icmp eq ptr %67, null
  br i1 %tobool8.not, label %mpu401_read.exit78.if.end14_crit_edge, label %if.then9

mpu401_read.exit78.if.end14_crit_edge:            ; preds = %mpu401_read.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %mpu401_read.exit78
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = call i32 @snd_rawmidi_receive(ptr noundef nonnull %67, ptr noundef nonnull %byte, i32 noundef 1) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %mpu401_read.exit78.if.end14_crit_edge, %mpu401_read.exit42.i, %mpu401_read.exit.i.if.end14_crit_edge, %mpu401_read.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  call void @_raw_spin_unlock(ptr noundef %input_lock) #6
  %output_lock = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %output_lock) #6
  %ipr_tx = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 11
  %68 = ptrtoint ptr %ipr_tx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ipr_tx, align 4
  %and16 = and i32 %69, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end35_crit_edge, label %land.lhs.true18

if.end14.if.end35_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true18:                                  ; preds = %if.end14
  %audigy.i79 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %70 = ptrtoint ptr %audigy.i79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %audigy.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i80 = icmp eq i32 %71, 0
  br i1 %tobool.not.i80, label %if.else.i92, label %if.then.i85

if.then.i85:                                      ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  %port.i81 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %72 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port.i81, align 4
  %add.i82 = add i32 %73, 1
  %call.i83 = call i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %add.i82, i32 noundef 0) #6
  %conv.i84 = trunc i32 %call.i83 to i8
  br label %mpu401_read.exit94

if.else.i92:                                      ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  %port1.i86 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %74 = ptrtoint ptr %port1.i86 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port1.i86, align 4
  %port2.i87 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %76 = ptrtoint ptr %port2.i87 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port2.i87, align 4
  %add3.i88 = add i32 %75, 1
  %add4.i89 = add i32 %add3.i88, %77
  %and.i90 = and i32 %add4.i89, 1048575
  %add5.i91 = or i32 %and.i90, -18874368
  %78 = inttoptr i32 %add5.i91 to ptr
  %79 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %78) #6, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %mpu401_read.exit94

mpu401_read.exit94:                               ; preds = %if.else.i92, %if.then.i85
  %retval.0.i93 = phi i8 [ %conv.i84, %if.then.i85 ], [ %79, %if.else.i92 ]
  %80 = and i8 %retval.0.i93, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool22.not = icmp eq i8 %80, 0
  br i1 %tobool22.not, label %if.then23, label %mpu401_read.exit94.if.end35_crit_edge

mpu401_read.exit94.if.end35_crit_edge:            ; preds = %mpu401_read.exit94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then23:                                        ; preds = %mpu401_read.exit94
  %substream_output = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 3
  %81 = ptrtoint ptr %substream_output to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %substream_output, align 4
  %tobool24.not = icmp eq ptr %82, null
  br i1 %tobool24.not, label %if.then23.if.else32_crit_edge, label %land.lhs.true25

if.then23.if.else32_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else32

land.lhs.true25:                                  ; preds = %if.then23
  %call27 = call i32 @snd_rawmidi_transmit(ptr noundef nonnull %82, ptr noundef nonnull %byte, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 1
  br i1 %cmp28, label %if.then30, label %land.lhs.true25.if.else32_crit_edge

land.lhs.true25.if.else32_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else32

if.then30:                                        ; preds = %land.lhs.true25
  %83 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %byte, align 1
  %85 = ptrtoint ptr %audigy.i79 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %audigy.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i96 = icmp eq i32 %86, 0
  br i1 %tobool.not.i96, label %do.body.i, label %if.then.i98

if.then.i98:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %conv31 = zext i8 %84 to i32
  %port.i97 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %87 = ptrtoint ptr %port.i97 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port.i97, align 4
  call void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef %88, i32 noundef 0, i32 noundef %conv31) #6
  br label %if.end35

do.body.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  call void @arm_heavy_mb() #6
  %port1.i99 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %89 = ptrtoint ptr %port1.i99 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port1.i99, align 4
  %port2.i100 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 10
  %91 = ptrtoint ptr %port2.i100 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port2.i100, align 4
  %add4.i101 = add i32 %92, %90
  %and.i102 = and i32 %add4.i101, 1048575
  %add5.i103 = or i32 %and.i102, -18874368
  %93 = inttoptr i32 %add5.i103 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %84) #6, !srcloc !47
  br label %if.end35

if.else32:                                        ; preds = %land.lhs.true25.if.else32_crit_edge, %if.then23.if.else32_crit_edge
  %tx_enable33 = getelementptr inbounds %struct.snd_emu10k1_midi, ptr %midi, i32 0, i32 8
  %94 = ptrtoint ptr %tx_enable33 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_enable33, align 4
  call void @snd_emu10k1_intr_disable(ptr noundef %emu, i32 noundef %95) #6
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %do.body.i, %if.then.i98, %mpu401_read.exit94.if.end35_crit_edge, %if.end14.if.end35_crit_edge
  call void @_raw_spin_unlock(ptr noundef %output_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 346, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 365, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 377, i32 40}
!6 = !{ptr @emu10k1_midi_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 326, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @emu10k1_midi_init.__key.4, !10, !"__key", i1 false, i1 false}
!10 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 327, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @emu10k1_midi_init.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 328, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @snd_emu10k1_midi_output, !16, !"snd_emu10k1_midi_output", i1 false, i1 false}
!16 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 296, i32 37}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 175, i32 6}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 131, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @snd_emu10k1_midi_cmd._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @snd_emu10k1_midi_cmd._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @snd_emu10k1_midi_input, !27, !"snd_emu10k1_midi_input", i1 false, i1 false}
!27 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 303, i32 37}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/emu10k1/emumpu401.c", i32 52, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mpu401_clear_rx._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mpu401_clear_rx._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 6564508}
!45 = !{i64 2154431379}
!46 = !{i64 2154431777}
!47 = !{i64 6564113}
