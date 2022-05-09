; ModuleID = '/llk/IR_all_yes/sound/pci/lola/lola_mixer.c_pt.bc'
source_filename = "../sound/pci/lola/lola_mixer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.lola = type { ptr, ptr, [2 x %struct.lola_bar], i32, %struct.spinlock, %struct.mutex, %struct.lola_rb, %struct.lola_rb, i32, i32, i32, i32, i32, i32, ptr, i32, [2 x %struct.lola_pcm], i32, i32, [2 x %struct.lola_pin_array], %struct.lola_clock_widget, i32, i32, %struct.lola_mixer_widget, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.lola_bar = type { i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lola_rb = type { ptr, i32, i16, i16, i32 }
%struct.lola_pcm = type { i32, ptr, [16 x %struct.lola_stream] }
%struct.lola_stream = type { i32, i32, i32, i8, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.lola_pin_array = type { i32, i32, [16 x %struct.lola_pin] }
%struct.lola_pin = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lola_clock_widget = type { i32, i32, i32, i32, i8, [48 x %struct.lola_sample_clock], [48 x i32] }
%struct.lola_sample_clock = type { i32, i32, i32 }
%struct.lola_mixer_widget = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lola_mixer_array = type { i32, [32 x i32], [32 x i16], [32 x [32 x i16]] }

@lola_init_mixer_widget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't read wcaps for 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lola_init_mixer_widget\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/lola/lola_mixer.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lola_init_mixer_widget._entry_ptr = internal global ptr @lola_init_mixer_widget._entry, section ".printk_index", align 4
@lola_init_mixer_widget.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snd_lola\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No valid mixer widget\0A\00", [41 x i8] zeroinitializer }, align 32
@lola_init_mixer_widget._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid mixer widget size\0A\00", [37 x i8] zeroinitializer }, align 32
@lola_init_mixer_widget._entry_ptr.9 = internal global ptr @lola_init_mixer_widget._entry.7, section ".printk_index", align 4
@lola_init_mixer_widget.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mixer src_mask=%x, dest_mask=%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Analog Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Analog Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@lola_init_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 27, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lola_init_pin\00", [18 x i8] zeroinitializer }, align 32
@lola_init_pin._entry_ptr = internal global ptr @lola_init_pin._entry, section ".printk_index", align 4
@lola_init_pin._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 38, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid wcaps 0x%x for 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@lola_init_pin._entry_ptr.18 = internal global ptr @lola_init_pin._entry.16, section ".printk_index", align 4
@lola_init_pin._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't read AMP-caps for 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@lola_init_pin._entry_ptr.21 = internal global ptr @lola_init_pin._entry.19, section ".printk_index", align 4
@lola_init_pin._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't get MAX_LEVEL 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@lola_init_pin._entry_ptr.24 = internal global ptr @lola_init_pin._entry.22, section ".printk_index", align 4
@set_analog_volume.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_analog_volume\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"set_analog_volume (dir=%d idx=%d, volume=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@lola_analog_mixer = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 268435475, i32 0, ptr @lola_analog_vol_info, ptr @lola_analog_vol_get, ptr @lola_analog_vol_put, %union.anon.83 { ptr @lola_analog_vol_tlv }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lola_input_src_mixer = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @lola_input_src_info, ptr @lola_input_src_get, ptr @lola_input_src_put, %union.anon.83 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Digital SRC Capture Switch\00", [37 x i8] zeroinitializer }, align 32
@lola_src_gain_mixer = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr null, i32 0, i32 19, i32 0, ptr @lola_src_gain_info, ptr @lola_src_gain_get, ptr @lola_src_gain_put, %union.anon.83 { ptr @lola_src_gain_tlv }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lola_src_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8425, i32 65561], [16 x i8] zeroinitializer }, align 32
@lola_mixer_set_src_gain.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lola_mixer_set_src_gain\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"lola_mixer_set_src_gain (id=%d, gain=%d) enable=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4194314, i64 4194816]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 108, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 113, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 191, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 202, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 833, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 836, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 843, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 848, i32 9 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 27, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 38, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 52, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 69, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 399, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"lola_analog_mixer\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 570, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"lola_input_src_mixer\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 635, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 636, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"lola_src_gain_mixer\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 717, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"lola_src_gain_tlv\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 715, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [31 x i8] c"../sound/pci/lola/lola_mixer.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 225, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @lola_init_mixer_widget._entry, ptr @lola_init_mixer_widget._entry.7, ptr @lola_init_mixer_widget._entry_ptr, ptr @lola_init_mixer_widget._entry_ptr.9, ptr @lola_init_pin._entry, ptr @lola_init_pin._entry.16, ptr @lola_init_pin._entry.19, ptr @lola_init_pin._entry.22, ptr @lola_init_pin._entry_ptr, ptr @lola_init_pin._entry_ptr.18, ptr @lola_init_pin._entry_ptr.21, ptr @lola_init_pin._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @lola_analog_mixer, ptr @lola_input_src_mixer, ptr @.str.27, ptr @lola_src_gain_mixer, ptr @lola_src_gain_tlv, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_mixer_widget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_mixer_widget._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_pin._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_pin._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_pin._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_analog_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_input_src_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_src_gain_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_src_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_init_pins(ptr noundef %chip, i32 noundef %dir, ptr nocapture noundef %nidp) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nidp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nidp, align 4
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44.not = icmp eq i32 %3, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp5.i = icmp eq i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp11.i = icmp eq i32 %dir, 0
  %num_analog_pins = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nid.047 = phi i32 [ %1, %for.body.lr.ph ], [ %inc14, %for.inc.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !71
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nid.047, ptr %arrayidx3, align 4
  %call.i = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid.047, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %nid.047) #13
  br label %lola_init_pin.exit.thread

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  %and.i = and i32 %11, 15732735
  store i32 %and.i, ptr %val.i, align 4
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.else8.i [
    i32 4194816, label %if.end22.i
    i32 4194314, label %land.lhs.true.i
  ]

land.lhs.true.i:                                  ; preds = %if.end.i
  br i1 %cmp5.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %land.lhs.true.i.do.end17.i_crit_edge

land.lhs.true.i.do.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.else8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194316, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 4194316
  %or.cond.i = and i1 %cmp11.i, %cmp9.i
  br i1 %or.cond.i, label %if.else8.i.if.end31.i_crit_edge, label %if.else8.i.do.end17.i_crit_edge

if.else8.i.do.end17.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17.i

if.else8.i.if.end31.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

do.end17.i:                                       ; preds = %if.else8.i.do.end17.i_crit_edge, %land.lhs.true.i.do.end17.i_crit_edge
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %dev19.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev19.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %and.i, i32 noundef %nid.047) #13
  br label %lola_init_pin.exit.thread

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %is_analog.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 1
  %17 = ptrtoint ptr %is_analog.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_analog.i, align 4
  br label %if.end

if.end31.i:                                       ; preds = %if.else8.i.if.end31.i_crit_edge, %land.lhs.true.i.if.end31.i_crit_edge
  %.sink.i = phi i32 [ 18, %if.else8.i.if.end31.i_crit_edge ], [ 13, %land.lhs.true.i.if.end31.i_crit_edge ]
  %is_analog7.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 1
  %18 = ptrtoint ptr %is_analog7.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %is_analog7.i, align 4
  %call30.i = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid.047, i32 noundef 3840, i32 noundef %.sink.i, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp32.i = icmp slt i32 %call30.i, 0
  br i1 %cmp32.i, label %do.end36.i, label %if.end39.i

do.end36.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %dev38.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev38.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef %nid.047) #13
  br label %lola_init_pin.exit.thread

if.end39.i:                                       ; preds = %if.end31.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %.lobit.i = lshr i32 %24, 31
  %amp_mute.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 2
  %25 = ptrtoint ptr %amp_mute.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.lobit.i, ptr %amp_mute.i, align 4
  %shr.i = lshr i32 %24, 24
  %and42.i = and i32 %shr.i, 127
  %amp_step_size.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 3
  %26 = ptrtoint ptr %amp_step_size.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and42.i, ptr %amp_step_size.i, align 4
  %shr43.i = lshr i32 %24, 12
  %and44.i = and i32 %shr43.i, 1023
  %amp_num_steps.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 4
  %27 = ptrtoint ptr %amp_num_steps.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and44.i, ptr %amp_num_steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool46.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool46.not.i, label %if.end39.i.if.end51.i_crit_edge, label %if.then47.i

if.end39.i.if.end51.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then47.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw nsw i32 %and44.i, 1
  %28 = ptrtoint ptr %amp_num_steps.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i, ptr %amp_num_steps.i, align 4
  %inc50.i = add nuw nsw i32 %and42.i, 1
  %29 = ptrtoint ptr %amp_step_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc50.i, ptr %amp_step_size.i, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then47.i, %if.end39.i.if.end51.i_crit_edge
  %and52.i = and i32 %24, 1023
  %amp_offset.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 5
  %30 = ptrtoint ptr %amp_offset.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and52.i, ptr %amp_offset.i, align 4
  %call53.i = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid.047, i32 noundef 4034, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %do.end59.i, label %if.end62.i

do.end59.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %dev61.i = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev61.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev61.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.23, i32 noundef %nid.047) #13
  br label %lola_init_pin.exit.thread

if.end62.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  %and63.i = and i32 %36, 1023
  %max_level.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 6
  %37 = ptrtoint ptr %max_level.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and63.i, ptr %max_level.i, align 4
  %config_default_reg.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 7
  %38 = ptrtoint ptr %config_default_reg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %config_default_reg.i, align 4
  %fixed_gain_list_len.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 8
  %39 = ptrtoint ptr %fixed_gain_list_len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fixed_gain_list_len.i, align 4
  %cur_gain_step.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 9
  %40 = ptrtoint ptr %cur_gain_step.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cur_gain_step.i, align 4
  br label %if.end

lola_init_pin.exit.thread:                        ; preds = %do.end59.i, %do.end36.i, %do.end17.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end17.i ], [ %call53.i, %do.end59.i ], [ %call30.i, %do.end36.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end62.i, %if.end22.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %is_analog = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %i.045, i32 1
  %41 = ptrtoint ptr %is_analog to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_analog, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %num_analog_pins to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_analog_pins, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %num_analog_pins, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge
  %inc13 = add nuw i32 %i.045, 1
  %inc14 = add i32 %nid.047, 1
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc13, %46
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %nid.0.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %inc14, %for.inc.for.end_crit_edge ]
  %47 = ptrtoint ptr %nidp to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %nid.0.lcssa, ptr %nidp, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lola_init_pin.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ %retval.0.i.ph, %lola_init_pin.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lola_free_mixer(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %array_saved = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 3
  %0 = ptrtoint ptr %array_saved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array_saved, align 4
  tail call void @vfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_init_mixer_widget(ptr noundef %chip, i32 noundef %nid) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !71
  %call = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %nid) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 49283072, i32 %and)
  %cmp1.not = icmp eq i32 %and, 49283072
  br i1 %cmp1.not, label %if.end13, label %do.body3

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_init_mixer_widget.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_init_mixer_widget, %if.then7)) #10
          to label %cleanup [label %if.then7], !srcloc !73

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %dev9 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lola_init_mixer_widget.__UNIQUE_ID_ddebug233, ptr noundef %10, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %mixer = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23
  %11 = ptrtoint ptr %mixer to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nid, ptr %mixer, align 4
  %caps = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 1
  %12 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %caps, align 4
  %remap_addr = getelementptr %struct.lola, ptr %chip, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 4096
  %array = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 2
  %15 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %array, align 4
  %call17 = call noalias ptr @vmalloc(i32 noundef 2244) #14
  %array_saved = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 3
  %16 = ptrtoint ptr %array_saved to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %array_saved, align 4
  %pcm = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 16
  %17 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcm, align 4
  %src_stream_outs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 4
  %19 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %src_stream_outs, align 4
  %pin = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 19
  %arrayidx21 = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 1
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx21, align 4
  %src_phys_ins = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 5
  %22 = ptrtoint ptr %src_phys_ins to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %src_phys_ins, align 4
  %arrayidx24 = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24, align 4
  %dest_stream_ins = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 6
  %25 = ptrtoint ptr %dest_stream_ins to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dest_stream_ins, align 4
  %26 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pin, align 4
  %dest_phys_outs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 7
  %28 = ptrtoint ptr %dest_phys_outs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %dest_phys_outs, align 4
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %shr = lshr i32 %30, 2
  %and33 = and i32 %shr, 31
  %add = add i32 %and33, %21
  %src_stream_out_ofs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 8
  %31 = ptrtoint ptr %src_stream_out_ofs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %src_stream_out_ofs, align 4
  %shr37 = lshr i32 %30, 7
  %and38 = and i32 %shr37, 31
  %add39 = add i32 %and38, %24
  %dest_phys_out_ofs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 9
  %32 = ptrtoint ptr %dest_phys_out_ofs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add39, ptr %dest_phys_out_ofs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp43 = icmp ugt i32 %add, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add39)
  %cmp46 = icmp ugt i32 %add39, 16
  %or.cond = select i1 %cmp43, i1 true, i1 %cmp46
  br i1 %or.cond, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip, align 4
  %dev52 = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev52, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end53:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %notmask = shl nsw i32 -1, %21
  %sub = xor i32 %notmask, -1
  %notmask136 = shl nsw i32 -1, %18
  %sub59 = xor i32 %notmask136, -1
  %shl62 = shl i32 %sub59, %add
  %or = or i32 %shl62, %sub
  %src_mask = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 10
  %37 = ptrtoint ptr %src_mask to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %src_mask, align 4
  %notmask137 = shl nsw i32 -1, %24
  %sub67 = xor i32 %notmask137, -1
  %notmask138 = shl nsw i32 -1, %27
  %sub71 = xor i32 %notmask138, -1
  %shl74 = shl i32 %sub71, %add39
  %or75 = or i32 %shl74, %sub67
  %dest_mask = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 11
  %38 = ptrtoint ptr %dest_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or75, ptr %dest_mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_init_mixer_widget.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_init_mixer_widget, %if.then89)) #10
          to label %cleanup [label %if.then89], !srcloc !73

if.then89:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 4
  %dev91 = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev91, align 8
  %43 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %src_mask, align 4
  %45 = ptrtoint ptr %dest_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dest_mask, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lola_init_mixer_widget.__UNIQUE_ID_ddebug234, ptr noundef %42, ptr noundef nonnull @.str.10, i32 noundef %44, i32 noundef %46) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.end53, %do.end50, %if.then7, %do.body3, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end50 ], [ 0, %if.then7 ], [ 0, %if.then89 ], [ 0, %do.body3 ], [ 0, %if.end53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_setup_all_analog_gains(ptr noundef %chip, i32 noundef %dir, i1 noundef zeroext %mute) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir
  %pins = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %is_analog = getelementptr %struct.lola_pin, ptr %pins, i32 %idx.019, i32 1
  %2 = ptrtoint ptr %is_analog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_analog, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  br i1 %mute, label %if.then.cond.end_crit_edge, label %cond.false

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %cur_gain_step = getelementptr %struct.lola_pin, ptr %pins, i32 %idx.019, i32 9
  %4 = ptrtoint ptr %cur_gain_step to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_gain_step, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ 0, %if.then.cond.end_crit_edge ]
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %idx.019)
  %cmp.not.i = icmp ugt i32 %7, %idx.019
  br i1 %cmp.not.i, label %if.end.i, label %cond.end.for.inc_crit_edge

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i:                                         ; preds = %cond.end
  %arrayidx4.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx.019
  %is_analog.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx.019, i32 1
  %8 = ptrtoint ptr %is_analog.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_analog.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %lor.lhs.false.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end.i
  %amp_num_steps.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx.019, i32 4
  %10 = ptrtoint ptr %amp_num_steps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %amp_num_steps.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cond)
  %cmp5.not.i = icmp ugt i32 %11, %cond
  br i1 %cmp5.not.i, label %if.end7.i, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end7.i:                                        ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_analog_volume.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_setup_all_analog_gains, %if.then20.i)) #10
          to label %do.end.i [label %if.then20.i], !srcloc !73

if.then20.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_analog_volume.__UNIQUE_ID_ddebug236, ptr noundef %15, ptr noundef nonnull @.str.26, i32 noundef %dir, i32 noundef %idx.019, i32 noundef %cond) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then20.i, %if.end7.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %call22.i = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %17, i32 noundef 768, i32 noundef %cond, i32 noundef 0) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %lor.lhs.false.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %cond.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.019, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call7 = tail call i32 @lola_codec_flush(ptr noundef %chip) #10
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_analog_volume(ptr noundef %chip, i32 noundef %dir, i32 noundef %idx, i32 noundef %val, i1 noundef zeroext %external_call) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx
  %is_analog = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx, i32 1
  %2 = ptrtoint ptr %is_analog to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_analog, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %amp_num_steps = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx, i32 4
  %4 = ptrtoint ptr %amp_num_steps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %amp_num_steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %val)
  %cmp5.not = icmp ugt i32 %5, %val
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  br i1 %external_call, label %land.lhs.true, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.end7
  %cur_gain_step = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx, i32 9
  %6 = ptrtoint ptr %cur_gain_step to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_gain_step, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %val)
  %cmp9 = icmp eq i32 %7, %val
  br i1 %cmp9, label %land.lhs.true.cleanup_crit_edge, label %if.then13.critedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then13.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @lola_codec_flush(ptr noundef %chip) #10
  br label %do.body

do.body:                                          ; preds = %if.then13.critedge, %if.end7.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_analog_volume.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_analog_volume, %if.then20)) #10
          to label %do.end [label %if.then20], !srcloc !73

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_analog_volume.__UNIQUE_ID_ddebug236, ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef %dir, i32 noundef %idx, i32 noundef %val) #10
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %call22 = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %13, i32 noundef 768, i32 noundef %val, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23 = icmp sgt i32 %call22, -1
  %14 = and i1 %cmp23, %external_call
  %15 = tail call i32 @llvm.smin.i32(i32 %call22, i32 0)
  br i1 %14, label %if.then27, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %cur_gain_step28 = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 %dir, i32 2, i32 %idx, i32 9
  %16 = ptrtoint ptr %cur_gain_step28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %val, ptr %cur_gain_step28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %15, %do.end.cleanup_crit_edge ], [ 0, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lola_save_mixer(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %array_saved = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 3
  %0 = ptrtoint ptr %array_saved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array_saved, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %array = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 2
  %2 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %array, align 4
  tail call void @mmiocpy(ptr noundef nonnull %1, ptr noundef %3, i32 noundef 2244) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @lola_setup_all_analog_gains(ptr noundef %chip, i32 noundef 0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lola_restore_mixer(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23
  %array_saved = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 3
  %0 = ptrtoint ptr %array_saved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array_saved, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %array = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 2
  %2 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %array, align 4
  tail call void @mmiocpy(ptr noundef %3, ptr noundef nonnull %1, i32 noundef 2244) #10
  %src_phys_ins = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 5
  %4 = ptrtoint ptr %src_phys_ins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_phys_ins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp68.not = icmp eq i32 %5, 0
  br i1 %cmp68.not, label %if.then.for.cond6.preheader_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.cond6.preheader_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.body.for.cond6.preheader_crit_edge, %if.then.for.cond6.preheader_crit_edge
  %src_stream_outs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 4
  %6 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_stream_outs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp870.not = icmp eq i32 %7, 0
  br i1 %cmp870.not, label %for.cond6.preheader.for.cond17.preheader_crit_edge, label %for.body9.lr.ph

for.cond6.preheader.for.cond17.preheader_crit_edge: ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond17.preheader

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %src_stream_out_ofs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 8
  br label %for.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %8 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mixer, align 4
  %call = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %9, i32 noundef 3975, i32 noundef %i.069, i32 noundef 0) #10
  %inc = add nuw i32 %i.069, 1
  %10 = ptrtoint ptr %src_phys_ins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_phys_ins, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond6.preheader_crit_edge

for.body.for.cond6.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond17.preheader:                             ; preds = %for.body9.for.cond17.preheader_crit_edge, %for.cond6.preheader.for.cond17.preheader_crit_edge
  %dest_stream_ins = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 6
  %12 = ptrtoint ptr %dest_stream_ins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dest_stream_ins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1972.not = icmp eq i32 %13, 0
  br i1 %cmp1972.not, label %for.cond17.preheader.for.cond27.preheader_crit_edge, label %for.cond17.preheader.for.body20_crit_edge

for.cond17.preheader.for.body20_crit_edge:        ; preds = %for.cond17.preheader
  br label %for.body20

for.cond17.preheader.for.cond27.preheader_crit_edge: ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond27.preheader

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %i.171 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc15, %for.body9.for.body9_crit_edge ]
  %14 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mixer, align 4
  %16 = ptrtoint ptr %src_stream_out_ofs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_stream_out_ofs, align 4
  %add = add i32 %17, %i.171
  %call13 = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %15, i32 noundef 3975, i32 noundef %add, i32 noundef 0) #10
  %inc15 = add nuw i32 %i.171, 1
  %18 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_stream_outs, align 4
  %cmp8 = icmp ult i32 %inc15, %19
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.cond17.preheader_crit_edge

for.body9.for.cond17.preheader_crit_edge:         ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond17.preheader

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.cond27.preheader:                             ; preds = %for.body20.for.cond27.preheader_crit_edge, %for.cond17.preheader.for.cond27.preheader_crit_edge
  %dest_phys_outs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 7
  %20 = ptrtoint ptr %dest_phys_outs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dest_phys_outs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2974.not = icmp eq i32 %21, 0
  br i1 %cmp2974.not, label %for.cond27.preheader.for.end38_crit_edge, label %for.body30.lr.ph

for.cond27.preheader.for.end38_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.body30.lr.ph:                                 ; preds = %for.cond27.preheader
  %dest_phys_out_ofs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 9
  br label %for.body30

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond17.preheader.for.body20_crit_edge
  %i.273 = phi i32 [ %inc25, %for.body20.for.body20_crit_edge ], [ 0, %for.cond17.preheader.for.body20_crit_edge ]
  %22 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mixer, align 4
  %call23 = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %23, i32 noundef 3977, i32 noundef %i.273, i32 noundef 0) #10
  %inc25 = add nuw i32 %i.273, 1
  %24 = ptrtoint ptr %dest_stream_ins to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dest_stream_ins, align 4
  %cmp19 = icmp ult i32 %inc25, %25
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.body20.for.cond27.preheader_crit_edge

for.body20.for.cond27.preheader_crit_edge:        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond27.preheader

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body20

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.body30.lr.ph
  %i.375 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc37, %for.body30.for.body30_crit_edge ]
  %26 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mixer, align 4
  %28 = ptrtoint ptr %dest_phys_out_ofs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dest_phys_out_ofs, align 4
  %add34 = add i32 %29, %i.375
  %call35 = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %27, i32 noundef 3977, i32 noundef %add34, i32 noundef 0) #10
  %inc37 = add nuw i32 %i.375, 1
  %30 = ptrtoint ptr %dest_phys_outs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dest_phys_outs, align 4
  %cmp29 = icmp ult i32 %inc37, %31
  br i1 %cmp29, label %for.body30.for.body30_crit_edge, label %for.body30.for.end38_crit_edge

for.body30.for.end38_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end38

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body30

for.end38:                                        ; preds = %for.body30.for.end38_crit_edge, %for.cond27.preheader.for.end38_crit_edge
  %call39 = tail call i32 @lola_codec_flush(ptr noundef %chip) #10
  br label %if.end

if.end:                                           ; preds = %for.end38, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_set_src_config(ptr noundef %chip, i32 noundef %src_mask, i1 noundef zeroext %update) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %input_src_caps_mask = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 17
  %0 = ptrtoint ptr %input_src_caps_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input_src_caps_mask, align 4
  %and = and i32 %1, %src_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %src_mask)
  %cmp.not = icmp eq i32 %and, %src_mask
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup33_crit_edge

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

for.cond.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp156.not = icmp eq i32 %3, 0
  br i1 %cmp156.not, label %for.cond.preheader.if.then30_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then30_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %input_src_mask = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %n.059 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %success.058 = phi i32 [ 0, %for.body.lr.ph ], [ %success.2, %cleanup.for.body_crit_edge ]
  %ret.057 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %cleanup.for.body_crit_edge ]
  %shl = shl i32 3, %n.059
  %4 = ptrtoint ptr %input_src_caps_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input_src_caps_mask, align 4
  %and3 = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end5

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %and6 = and i32 %shl, %src_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7 = icmp ne i32 %and6, 0
  %conv = zext i1 %cmp7 to i32
  br i1 %update, label %if.then9, label %if.end5.if.end17_crit_edge

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then9:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %input_src_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input_src_mask, align 4
  %and10 = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  %cmp13 = xor i1 %cmp7, %cmp11
  br i1 %cmp13, label %if.then9.cleanup_crit_edge, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %arrayidx19 = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 1, i32 2, i32 %n.059
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx19, align 4
  %call = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %9, i32 noundef 3978, i32 noundef %conv, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  %ret.1 = select i1 %tobool20.not, i32 %ret.057, i32 %call
  %inc = zext i1 %tobool20.not to i32
  %success.1 = add i32 %success.058, %inc
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end17 ], [ %ret.057, %for.body.cleanup_crit_edge ], [ %ret.057, %if.then9.cleanup_crit_edge ]
  %success.2 = phi i32 [ %success.1, %if.end17 ], [ %success.058, %for.body.cleanup_crit_edge ], [ %success.058, %if.then9.cleanup_crit_edge ]
  %add = add i32 %n.059, 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp ult i32 %add, %11
  br i1 %cmp1, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.2)
  %tobool25.not = icmp eq i32 %success.2, 0
  br i1 %tobool25.not, label %for.end.if.end28_crit_edge, label %if.then26

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 @lola_codec_flush(ptr noundef %chip) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end.if.end28_crit_edge
  %ret.3 = phi i32 [ %call27, %if.then26 ], [ %ret.2, %for.end.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool29.not = icmp eq i32 %ret.3, 0
  br i1 %tobool29.not, label %if.end28.if.then30_crit_edge, label %if.end28.cleanup33_crit_edge

if.end28.cleanup33_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %for.cond.preheader.if.then30_crit_edge
  %input_src_mask31 = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 18
  %12 = ptrtoint ptr %input_src_mask31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %src_mask, ptr %input_src_mask31, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %if.then30, %if.end28.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup33_crit_edge ], [ 0, %if.then30 ], [ %ret.3, %if.end28.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_create_mixer(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %num_analog_pins.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 0, i32 1
  %2 = ptrtoint ptr %num_analog_pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_analog_pins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp eq i32 %1, %3
  br i1 %cmp.not.i, label %create_analog_mixer.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

create_analog_mixer.exit:                         ; preds = %if.end.i
  store ptr @.str.11, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_analog_mixer, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_analog_mixer, i32 0, i32 11), align 4
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %call.i = tail call ptr @snd_ctl_new1(ptr noundef nonnull @lola_analog_mixer, ptr noundef %chip) #10
  %call8.i = tail call i32 @snd_ctl_add(ptr noundef %5, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp = icmp slt i32 %call8.i, 0
  br i1 %cmp, label %create_analog_mixer.exit.cleanup_crit_edge, label %create_analog_mixer.exit.if.end_crit_edge

create_analog_mixer.exit.if.end_crit_edge:        ; preds = %create_analog_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

create_analog_mixer.exit.cleanup_crit_edge:       ; preds = %create_analog_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %create_analog_mixer.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i37 = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i38 = icmp eq i32 %7, 0
  br i1 %tobool.not.i38, label %if.end.if.end4_crit_edge, label %if.end.i41

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i41:                                       ; preds = %if.end
  %num_analog_pins.i39 = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 1, i32 1
  %8 = ptrtoint ptr %num_analog_pins.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_analog_pins.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i40 = icmp eq i32 %7, %9
  br i1 %cmp.not.i40, label %create_analog_mixer.exit46, label %if.end.i41.if.end4_crit_edge

if.end.i41.if.end4_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

create_analog_mixer.exit46:                       ; preds = %if.end.i41
  store ptr @.str.12, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_analog_mixer, i32 0, i32 3), align 4
  store i32 1, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_analog_mixer, i32 0, i32 11), align 4
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %call.i42 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @lola_analog_mixer, ptr noundef %chip) #10
  %call8.i43 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call.i42) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i43)
  %cmp2 = icmp slt i32 %call8.i43, 0
  br i1 %cmp2, label %create_analog_mixer.exit46.cleanup_crit_edge, label %create_analog_mixer.exit46.if.end4_crit_edge

create_analog_mixer.exit46.if.end4_crit_edge:     ; preds = %create_analog_mixer.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

create_analog_mixer.exit46.cleanup_crit_edge:     ; preds = %create_analog_mixer.exit46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %create_analog_mixer.exit46.if.end4_crit_edge, %if.end.i41.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %input_src_caps_mask.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 17
  %12 = ptrtoint ptr %input_src_caps_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_src_caps_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i47 = icmp eq i32 %13, 0
  br i1 %tobool.not.i47, label %if.end4.if.end8_crit_edge, label %create_input_src_mixer.exit

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

create_input_src_mixer.exit:                      ; preds = %if.end4
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %call.i48 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @lola_input_src_mixer, ptr noundef %chip) #10
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call.i48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp6 = icmp slt i32 %call1.i, 0
  br i1 %cmp6, label %create_input_src_mixer.exit.cleanup_crit_edge, label %create_input_src_mixer.exit.if.end8_crit_edge

create_input_src_mixer.exit.if.end8_crit_edge:    ; preds = %create_input_src_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

create_input_src_mixer.exit.cleanup_crit_edge:    ; preds = %create_input_src_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %create_input_src_mixer.exit.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %src_phys_ins = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 5
  %16 = ptrtoint ptr %src_phys_ins to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_phys_ins, align 4
  store ptr @.str.13, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_src_gain_mixer, i32 0, i32 3), align 4
  %shl.i = shl i32 %17, 8
  store i32 %shl.i, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_src_gain_mixer, i32 0, i32 11), align 4
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %call.i51 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @lola_src_gain_mixer, ptr noundef %chip) #10
  %call1.i52 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call.i51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %cmp10 = icmp slt i32 %call1.i52, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %src_stream_outs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 4
  %20 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_stream_outs, align 4
  %src_stream_out_ofs = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 8
  %22 = ptrtoint ptr %src_stream_out_ofs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_stream_out_ofs, align 4
  store ptr @.str.14, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_src_gain_mixer, i32 0, i32 3), align 4
  %shl.i53 = shl i32 %21, 8
  %add.i = add i32 %shl.i53, %23
  store i32 %add.i, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @lola_src_gain_mixer, i32 0, i32 11), align 4
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %call.i54 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @lola_src_gain_mixer, ptr noundef %chip) #10
  %call1.i55 = tail call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %call.i54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %cmp16 = icmp slt i32 %call1.i55, 0
  br i1 %cmp16, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %26 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i37, align 4
  %notmask.i = shl nsw i32 -1, %27
  %sub.i = xor i32 %notmask.i, -1
  %28 = ptrtoint ptr %input_src_caps_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %input_src_caps_mask.i, align 4
  %and.i.i = and i32 %29, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %sub.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %sub.i
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %if.end18.lola_set_src_config.exit.i_crit_edge

if.end18.lola_set_src_config.exit.i_crit_edge:    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %lola_set_src_config.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp156.not.i.i = icmp eq i32 %27, 0
  br i1 %cmp156.not.i.i, label %for.cond.preheader.i.i.if.then30.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.then30.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %n.059.i.i = phi i32 [ %add.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %success.058.i.i = phi i32 [ %success.2.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %ret.057.i.i = phi i32 [ %ret.2.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 3, %n.059.i.i
  %30 = ptrtoint ptr %input_src_caps_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %input_src_caps_mask.i, align 4
  %and3.i.i = and i32 %31, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end5.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i = and i32 %shl.i.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %cmp7.i.i = icmp ne i32 %and6.i.i, 0
  %conv.i.i = zext i1 %cmp7.i.i to i32
  %arrayidx19.i.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 1, i32 2, i32 %n.059.i.i
  %32 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx19.i.i, align 4
  %call.i.i = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %33, i32 noundef 3978, i32 noundef %conv.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i.i, 0
  %ret.1.i.i = select i1 %tobool20.not.i.i, i32 %ret.057.i.i, i32 %call.i.i
  %inc.i.i = zext i1 %tobool20.not.i.i to i32
  %success.1.i.i = add i32 %success.058.i.i, %inc.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end5.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.1.i.i, %if.end5.i.i ], [ %ret.057.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  %success.2.i.i = phi i32 [ %success.1.i.i, %if.end5.i.i ], [ %success.058.i.i, %for.body.i.i.cleanup.i.i_crit_edge ]
  %add.i.i = add i32 %n.059.i.i, 2
  %34 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i37, align 4
  %cmp1.i.i = icmp ult i32 %add.i.i, %35
  br i1 %cmp1.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %for.end.i.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.2.i.i)
  %tobool25.not.i.i = icmp eq i32 %success.2.i.i, 0
  br i1 %tobool25.not.i.i, label %for.end.i.i.if.end28.i.i_crit_edge, label %if.then26.i.i

for.end.i.i.if.end28.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i.i = tail call i32 @lola_codec_flush(ptr noundef %chip) #10
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then26.i.i, %for.end.i.i.if.end28.i.i_crit_edge
  %ret.3.i.i = phi i32 [ %call27.i.i, %if.then26.i.i ], [ %ret.2.i.i, %for.end.i.i.if.end28.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i.i)
  %tobool29.not.i.i = icmp eq i32 %ret.3.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end28.i.i.if.then30.i.i_crit_edge, label %if.end28.i.i.lola_set_src_config.exit.i_crit_edge

if.end28.i.i.lola_set_src_config.exit.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lola_set_src_config.exit.i

if.end28.i.i.if.then30.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end28.i.i.if.then30.i.i_crit_edge, %for.cond.preheader.i.i.if.then30.i.i_crit_edge
  %input_src_mask31.i.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 18
  %36 = ptrtoint ptr %input_src_mask31.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i, ptr %input_src_mask31.i.i, align 4
  br label %lola_set_src_config.exit.i

lola_set_src_config.exit.i:                       ; preds = %if.then30.i.i, %if.end28.i.i.lola_set_src_config.exit.i_crit_edge, %if.end18.lola_set_src_config.exit.i_crit_edge
  %mixer.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23
  %array.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 2
  %37 = ptrtoint ptr %array.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %array.i, align 4
  tail call void @mmioset(ptr noundef %38, i32 noundef 0, i32 noundef 2244) #10
  %dest_stream_ins.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 6
  %39 = ptrtoint ptr %dest_stream_ins.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dest_stream_ins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1.not.i = icmp eq i32 %40, 0
  br i1 %cmp1.not.i, label %lola_set_src_config.exit.i.for.cond4.preheader.i_crit_edge, label %lola_set_src_config.exit.i.for.body.i_crit_edge

lola_set_src_config.exit.i.for.body.i_crit_edge:  ; preds = %lola_set_src_config.exit.i
  br label %for.body.i

lola_set_src_config.exit.i.for.cond4.preheader.i_crit_edge: ; preds = %lola_set_src_config.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.body.i.for.cond4.preheader.i_crit_edge, %lola_set_src_config.exit.i.for.cond4.preheader.i_crit_edge
  %dest_phys_outs.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 7
  %41 = ptrtoint ptr %dest_phys_outs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dest_phys_outs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp63.not.i = icmp eq i32 %42, 0
  br i1 %cmp63.not.i, label %for.cond4.preheader.i.for.cond15.preheader.i_crit_edge, label %for.body7.lr.ph.i

for.cond4.preheader.i.for.cond15.preheader.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond15.preheader.i

for.body7.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %dest_phys_out_ofs.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 9
  br label %for.body7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lola_set_src_config.exit.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lola_set_src_config.exit.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %mixer.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mixer.i, align 4
  %call3.i = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %44, i32 noundef 3977, i32 noundef %i.02.i, i32 noundef 0) #10
  %inc.i = add nuw i32 %i.02.i, 1
  %45 = ptrtoint ptr %dest_stream_ins.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dest_stream_ins.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %46
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond4.preheader.i_crit_edge

for.body.i.for.cond4.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond4.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond15.preheader.i:                           ; preds = %for.body7.i.for.cond15.preheader.i_crit_edge, %for.cond4.preheader.i.for.cond15.preheader.i_crit_edge
  %47 = ptrtoint ptr %src_phys_ins to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %src_phys_ins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp175.not.i = icmp eq i32 %48, 0
  br i1 %cmp175.not.i, label %for.cond15.preheader.i.for.cond23.preheader.i_crit_edge, label %for.cond15.preheader.i.for.body18.i_crit_edge

for.cond15.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond15.preheader.i
  br label %for.body18.i

for.cond15.preheader.i.for.cond23.preheader.i_crit_edge: ; preds = %for.cond15.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.14.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc13.i, %for.body7.i.for.body7.i_crit_edge ]
  %49 = ptrtoint ptr %mixer.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mixer.i, align 4
  %51 = ptrtoint ptr %dest_phys_out_ofs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dest_phys_out_ofs.i, align 4
  %add.i57 = add i32 %52, %i.14.i
  %call11.i = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %50, i32 noundef 3977, i32 noundef %add.i57, i32 noundef 0) #10
  %inc13.i = add nuw i32 %i.14.i, 1
  %53 = ptrtoint ptr %dest_phys_outs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dest_phys_outs.i, align 4
  %cmp6.i = icmp ult i32 %inc13.i, %54
  br i1 %cmp6.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.for.cond15.preheader.i_crit_edge

for.body7.i.for.cond15.preheader.i_crit_edge:     ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond15.preheader.i

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

for.cond23.preheader.i:                           ; preds = %for.body18.i.for.cond23.preheader.i_crit_edge, %for.cond15.preheader.i.for.cond23.preheader.i_crit_edge
  %55 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %src_stream_outs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp257.not.i = icmp eq i32 %56, 0
  br i1 %cmp257.not.i, label %for.cond23.preheader.i.for.cond33.preheader.i_crit_edge, label %for.cond23.preheader.i.for.body26.i_crit_edge

for.cond23.preheader.i.for.body26.i_crit_edge:    ; preds = %for.cond23.preheader.i
  br label %for.body26.i

for.cond23.preheader.i.for.cond33.preheader.i_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond33.preheader.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.cond15.preheader.i.for.body18.i_crit_edge
  %i.26.i = phi i32 [ %inc21.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.cond15.preheader.i.for.body18.i_crit_edge ]
  %call19.i = tail call fastcc i32 @lola_mixer_set_src_gain(ptr noundef %chip, i32 noundef %i.26.i, i16 noundef zeroext 336, i1 noundef zeroext true) #10
  %inc21.i = add nuw i32 %i.26.i, 1
  %57 = ptrtoint ptr %src_phys_ins to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %src_phys_ins, align 4
  %cmp17.i = icmp ult i32 %inc21.i, %58
  br i1 %cmp17.i, label %for.body18.i.for.body18.i_crit_edge, label %for.body18.i.for.cond23.preheader.i_crit_edge

for.body18.i.for.cond23.preheader.i_crit_edge:    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond23.preheader.i

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18.i

for.cond33.preheader.i:                           ; preds = %for.body26.i.for.cond33.preheader.i_crit_edge, %for.cond23.preheader.i.for.cond33.preheader.i_crit_edge
  %59 = ptrtoint ptr %dest_stream_ins.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dest_stream_ins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp369.not.i = icmp eq i32 %60, 0
  br i1 %cmp369.not.i, label %for.cond33.preheader.i.for.cond44.preheader.i_crit_edge, label %for.cond33.preheader.i.for.body37.i_crit_edge

for.cond33.preheader.i.for.body37.i_crit_edge:    ; preds = %for.cond33.preheader.i
  br label %for.body37.i

for.cond33.preheader.i.for.cond44.preheader.i_crit_edge: ; preds = %for.cond33.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond44.preheader.i

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.cond23.preheader.i.for.body26.i_crit_edge
  %i.38.i = phi i32 [ %inc31.i, %for.body26.i.for.body26.i_crit_edge ], [ 0, %for.cond23.preheader.i.for.body26.i_crit_edge ]
  %61 = ptrtoint ptr %src_stream_out_ofs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_stream_out_ofs, align 4
  %add28.i = add i32 %62, %i.38.i
  %call29.i = tail call fastcc i32 @lola_mixer_set_src_gain(ptr noundef %chip, i32 noundef %add28.i, i16 noundef zeroext 336, i1 noundef zeroext true) #10
  %inc31.i = add nuw i32 %i.38.i, 1
  %63 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_stream_outs, align 4
  %cmp25.i = icmp ult i32 %inc31.i, %64
  br i1 %cmp25.i, label %for.body26.i.for.body26.i_crit_edge, label %for.body26.i.for.cond33.preheader.i_crit_edge

for.body26.i.for.cond33.preheader.i_crit_edge:    ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond33.preheader.i

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

for.cond44.preheader.i:                           ; preds = %for.body37.i.for.cond44.preheader.i_crit_edge, %for.cond33.preheader.i.for.cond44.preheader.i_crit_edge
  %65 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %src_stream_outs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp4711.not.i = icmp eq i32 %66, 0
  br i1 %cmp4711.not.i, label %for.cond44.preheader.i.cleanup_crit_edge, label %for.body48.lr.ph.i

for.cond44.preheader.i.cleanup_crit_edge:         ; preds = %for.cond44.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body48.lr.ph.i:                               ; preds = %for.cond44.preheader.i
  %dest_phys_out_ofs54.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 9
  br label %for.body48.i

for.body37.i:                                     ; preds = %for.body37.i.for.body37.i_crit_edge, %for.cond33.preheader.i.for.body37.i_crit_edge
  %i.410.i = phi i32 [ %inc42.i, %for.body37.i.for.body37.i_crit_edge ], [ 0, %for.cond33.preheader.i.for.body37.i_crit_edge ]
  %67 = ptrtoint ptr %src_phys_ins to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %src_phys_ins, align 4
  %rem.i = urem i32 %i.410.i, %68
  tail call fastcc void @lola_mixer_set_mapping_gain(ptr noundef %chip, i32 noundef %rem.i, i32 noundef %i.410.i) #10
  %inc42.i = add nuw i32 %i.410.i, 1
  %69 = ptrtoint ptr %dest_stream_ins.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dest_stream_ins.i, align 4
  %cmp36.i = icmp ult i32 %inc42.i, %70
  br i1 %cmp36.i, label %for.body37.i.for.body37.i_crit_edge, label %for.body37.i.for.cond44.preheader.i_crit_edge

for.body37.i.for.cond44.preheader.i_crit_edge:    ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond44.preheader.i

for.body37.i.for.body37.i_crit_edge:              ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i

for.body48.i:                                     ; preds = %for.body48.i.for.body48.i_crit_edge, %for.body48.lr.ph.i
  %i.512.i = phi i32 [ 0, %for.body48.lr.ph.i ], [ %inc61.i, %for.body48.i.for.body48.i_crit_edge ]
  %71 = ptrtoint ptr %src_stream_out_ofs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %src_stream_out_ofs, align 4
  %add52.i = add i32 %72, %i.512.i
  %73 = ptrtoint ptr %dest_phys_out_ofs54.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dest_phys_out_ofs54.i, align 4
  %75 = ptrtoint ptr %dest_phys_outs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dest_phys_outs.i, align 4
  %rem57.i = urem i32 %i.512.i, %76
  %add58.i = add i32 %rem57.i, %74
  tail call fastcc void @lola_mixer_set_mapping_gain(ptr noundef %chip, i32 noundef %add52.i, i32 noundef %add58.i) #10
  %inc61.i = add nuw i32 %i.512.i, 1
  %77 = ptrtoint ptr %src_stream_outs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %src_stream_outs, align 4
  %cmp47.i = icmp ult i32 %inc61.i, %78
  br i1 %cmp47.i, label %for.body48.i.for.body48.i_crit_edge, label %for.body48.i.cleanup_crit_edge

for.body48.i.cleanup_crit_edge:                   ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body48.i.for.body48.i_crit_edge:              ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body48.i

cleanup:                                          ; preds = %for.body48.i.cleanup_crit_edge, %for.cond44.preheader.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %create_input_src_mixer.exit.cleanup_crit_edge, %create_analog_mixer.exit46.cleanup_crit_edge, %create_analog_mixer.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8.i, %create_analog_mixer.exit.cleanup_crit_edge ], [ %call8.i43, %create_analog_mixer.exit46.cleanup_crit_edge ], [ %call1.i, %create_input_src_mixer.exit.cleanup_crit_edge ], [ %call1.i52, %if.end8.cleanup_crit_edge ], [ %call1.i55, %if.end12.cleanup_crit_edge ], [ 0, %for.cond44.preheader.i.cleanup_crit_edge ], [ 0, %for.body48.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lola_analog_vol_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 8
  %arrayidx = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %value, align 8
  %amp_num_steps = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 %3, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %amp_num_steps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %amp_num_steps, align 4
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_analog_vol_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %cur_gain_step = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 %3, i32 2, i32 %i.012, i32 9
  %6 = ptrtoint ptr %cur_gain_step to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_gain_step, align 4
  %arrayidx4 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.012
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx4, align 4
  %inc = add nuw i32 %i.012, 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_analog_vol_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.014, 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.014
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %call = tail call fastcc i32 @set_analog_volume(ptr noundef %1, i32 noundef %3, i32 noundef %i.014, i32 noundef %9, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_analog_vol_tlv(ptr nocapture noundef readonly %kcontrol, i32 noundef %op_flag, i32 noundef %size, ptr noundef %tlv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp = icmp ult i32 %size, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %pins = getelementptr %struct.lola, ptr %3, i32 0, i32 19, i32 %1, i32 2
  %amp_step_size = getelementptr inbounds %struct.lola_pin, ptr %pins, i32 0, i32 3
  %4 = ptrtoint ptr %amp_step_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %amp_step_size, align 4
  %mul = mul i32 %5, 25
  %amp_offset = getelementptr inbounds %struct.lola_pin, ptr %pins, i32 0, i32 5
  %6 = ptrtoint ptr %amp_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %amp_offset, align 4
  %8 = mul i32 %5, -25
  %mul4 = mul i32 %8, %7
  %or = or i32 %mul, 65536
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 559) #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !74
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %tlv, i32 1, i32 -1226833921) #10, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add.ptr = getelementptr i32, ptr %tlv, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 561) #10
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i75 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i75 to ptr
  %cpu_domain.i.i76 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i76) #7, !srcloc !74
  %and.i77 = and i32 %15, -13
  %or.i78 = or i32 %and.i77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i78) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i32 8, i32 -1226833921) #10, !srcloc !78
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %if.end25, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end7
  %add.ptr29 = getelementptr i32, ptr %tlv, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 563) #10
  %17 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i79 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i79 to ptr
  %cpu_domain.i.i80 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i80) #7, !srcloc !74
  %and.i81 = and i32 %19, -13
  %or.i82 = or i32 %and.i81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i82) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr29, i32 %mul4, i32 -1226833921) #10, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool42.not = icmp eq i32 %20, 0
  br i1 %tobool42.not, label %if.end44, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr48 = getelementptr i32, ptr %tlv, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 565) #10
  %21 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i83 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i83 to ptr
  %cpu_domain.i.i84 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i84) #7, !srcloc !74
  %and.i85 = and i32 %23, -13
  %or.i86 = or i32 %and.i85, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i86) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr48, i32 %or, i32 -1226833921) #10, !srcloc !80
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool61.not = icmp eq i32 %24, 0
  %. = select i1 %tobool61.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end25.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end7.cleanup_crit_edge ], [ -14, %if.end25.cleanup_crit_edge ], [ %., %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lola_input_src_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 8
  %arrayidx = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_input_src_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %input_src_mask = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 18
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %input_src_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input_src_mask, align 4
  %6 = lshr i32 %5, %i.08
  %7 = and i32 %6, 1
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.08
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.08, 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_input_src_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.lola, ptr %1, i32 0, i32 19, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.if.then30.i_crit_edge, label %for.body.lr.ph

entry.if.then30.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mask.09 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.1, %for.body.for.body_crit_edge ]
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.08
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %shl = shl nuw i32 1, %i.08
  %or = select i1 %tobool.not, i32 0, i32 %shl
  %mask.1 = or i32 %or, %mask.09
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %input_src_caps_mask.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %input_src_caps_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input_src_caps_mask.i, align 4
  %and.i = and i32 %7, %mask.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %mask.1)
  %cmp.not.i = icmp eq i32 %and.i, %mask.1
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %for.end.lola_set_src_config.exit_crit_edge

for.end.lola_set_src_config.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lola_set_src_config.exit

for.cond.preheader.i:                             ; preds = %for.end
  br i1 %cmp7.not, label %for.cond.preheader.i.if.then30.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then30.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %input_src_mask.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %cleanup.i.for.body.i_crit_edge ]
  %success.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %success.2.i, %cleanup.i.for.body.i_crit_edge ]
  %ret.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.i, %cleanup.i.for.body.i_crit_edge ]
  %shl.i = shl i32 3, %n.059.i
  %8 = ptrtoint ptr %input_src_caps_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input_src_caps_mask.i, align 4
  %and3.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end5.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end5.i:                                        ; preds = %for.body.i
  %and6.i = and i32 %shl.i, %mask.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp7.i = icmp ne i32 %and6.i, 0
  %10 = ptrtoint ptr %input_src_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_src_mask.i, align 4
  %and10.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.i = icmp eq i32 %and10.i, 0
  %cmp13.i = xor i1 %cmp7.i, %cmp11.i
  br i1 %cmp13.i, label %if.end5.i.cleanup.i_crit_edge, label %if.end17.i

if.end5.i.cleanup.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end17.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i1 %cmp7.i to i32
  %arrayidx19.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 1, i32 2, i32 %n.059.i
  %12 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19.i, align 4
  %call.i = tail call i32 @lola_codec_write(ptr noundef %1, i32 noundef %13, i32 noundef 3978, i32 noundef %conv.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not.i = icmp eq i32 %call.i, 0
  %ret.1.i = select i1 %tobool20.not.i, i32 %ret.057.i, i32 %call.i
  %inc.i = zext i1 %tobool20.not.i to i32
  %success.1.i = add i32 %success.058.i, %inc.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end17.i, %if.end5.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %if.end17.i ], [ %ret.057.i, %for.body.i.cleanup.i_crit_edge ], [ %ret.057.i, %if.end5.i.cleanup.i_crit_edge ]
  %success.2.i = phi i32 [ %success.1.i, %if.end17.i ], [ %success.058.i, %for.body.i.cleanup.i_crit_edge ], [ %success.058.i, %if.end5.i.cleanup.i_crit_edge ]
  %add.i = add i32 %n.059.i, 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %cmp1.i = icmp ult i32 %add.i, %15
  br i1 %cmp1.i, label %cleanup.i.for.body.i_crit_edge, label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.2.i)
  %tobool25.not.i = icmp eq i32 %success.2.i, 0
  br i1 %tobool25.not.i, label %for.end.i.if.end28.i_crit_edge, label %if.then26.i

for.end.i.if.end28.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then26.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call27.i = tail call i32 @lola_codec_flush(ptr noundef %1) #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %for.end.i.if.end28.i_crit_edge
  %ret.3.i = phi i32 [ %call27.i, %if.then26.i ], [ %ret.2.i, %for.end.i.if.end28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool29.not.i = icmp eq i32 %ret.3.i, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.then30.i_crit_edge, label %if.end28.i.lola_set_src_config.exit_crit_edge

if.end28.i.lola_set_src_config.exit_crit_edge:    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lola_set_src_config.exit

if.end28.i.if.then30.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.end28.i.if.then30.i_crit_edge, %for.cond.preheader.i.if.then30.i_crit_edge, %entry.if.then30.i_crit_edge
  %mask.0.lcssa1620 = phi i32 [ %mask.1, %if.end28.i.if.then30.i_crit_edge ], [ %mask.1, %for.cond.preheader.i.if.then30.i_crit_edge ], [ 0, %entry.if.then30.i_crit_edge ]
  %input_src_mask31.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %input_src_mask31.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mask.0.lcssa1620, ptr %input_src_mask31.i, align 4
  br label %lola_set_src_config.exit

lola_set_src_config.exit:                         ; preds = %if.then30.i, %if.end28.i.lola_set_src_config.exit_crit_edge, %for.end.lola_set_src_config.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %for.end.lola_set_src_config.exit_crit_edge ], [ 0, %if.then30.i ], [ %ret.3.i, %if.end28.i.lola_set_src_config.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lola_src_gain_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 8
  %and = and i32 %shr, 255
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count1 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %count1, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 409, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_src_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %array = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %array, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !81
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp37.not = icmp eq i32 %and2, 0
  br i1 %cmp37.not, label %entry.cleanup23_crit_edge, label %for.body.lr.ph

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

for.body.lr.ph:                                   ; preds = %entry
  %src_mask = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 23, i32 10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end19.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.038, %and
  %8 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_mask, align 4
  %shl = shl nuw i32 1, %add
  %and5 = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %for.body.cleanup23_crit_edge, label %if.end

for.body.cleanup23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

if.end:                                           ; preds = %for.body
  %and7 = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %if.then9

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %array, align 4
  %arrayidx = getelementptr %struct.lola_mixer_array, ptr %11, i32 0, i32 2, i32 %add
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx) #10, !srcloc !83
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %conv = zext i16 %13 to i32
  %add17 = add nuw nsw i32 %conv, 1
  br label %if.end19

if.end19:                                         ; preds = %if.then9, %if.end.if.end19_crit_edge
  %val.0 = phi i32 [ %add17, %if.then9 ], [ 0, %if.end.if.end19_crit_edge ]
  %conv20 = and i32 %val.0, 65535
  %arrayidx21 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.038
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv20, ptr %arrayidx21, align 4
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %and2
  br i1 %exitcond.not, label %if.end19.cleanup23_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end19.cleanup23_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup23

cleanup23:                                        ; preds = %if.end19.cleanup23_crit_edge, %for.body.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup23_crit_edge ], [ -22, %for.body.cleanup23_crit_edge ], [ 0, %if.end19.cleanup23_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_src_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp24.not = icmp eq i32 %and2, 0
  br i1 %cmp24.not, label %entry.cleanup10_crit_edge, label %for.body.lr.ph

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %and2
  br i1 %exitcond.not, label %for.cond.cleanup10_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup10_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.025, %and
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.025
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  %dec = add i16 %conv, -1
  %spec.select = select i1 %tobool.not, i16 0, i16 %dec
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select)
  %tobool3 = icmp ne i16 %spec.select, 0
  %call = tail call fastcc i32 @lola_mixer_set_src_gain(ptr noundef %1, i32 noundef %add, i16 noundef zeroext %spec.select, i1 noundef zeroext %tobool3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %for.body.cleanup10_crit_edge, label %for.cond

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

cleanup10:                                        ; preds = %for.body.cleanup10_crit_edge, %for.cond.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ 0, %for.cond.cleanup10_crit_edge ], [ %call, %for.body.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lola_mixer_set_src_gain(ptr noundef %chip, i32 noundef %id, i16 noundef zeroext %gain, i1 noundef zeroext %on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23
  %src_mask = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 10
  %0 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_mask, align 4
  %shl = shl nuw i32 1, %id
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %array = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 2
  %2 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %array, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  %or = or i32 %5, %shl
  %neg = xor i32 %shl, -1
  %and7 = and i32 %5, %neg
  %val.0 = select i1 %on, i32 %or, i32 %and7
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %5)
  %cmp = icmp eq i32 %val.0, %5
  br i1 %cmp, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %array, align 4
  %arrayidx = getelementptr %struct.lola_mixer_array, ptr %7, i32 0, i32 2, i32 %id
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx) #10, !srcloc !83
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %gain)
  %cmp17 = icmp eq i16 %9, %gain
  br i1 %cmp17, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_mixer_set_src_gain.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_mixer_set_src_gain, %if.then27)) #10
          to label %do.body30 [label %if.then27], !srcloc !73

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %conv28 = zext i16 %gain to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lola_mixer_set_src_gain.__UNIQUE_ID_ddebug235, ptr noundef %13, ptr noundef nonnull @.str.29, i32 noundef %id, i32 noundef %conv28, i32 noundef %val.0) #10
  br label %do.body30

do.body30:                                        ; preds = %if.then27, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %14 = tail call i16 @llvm.bswap.i16(i16 %gain)
  %15 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %array, align 4
  %arrayidx36 = getelementptr %struct.lola_mixer_array, ptr %16, i32 0, i32 2, i32 %id
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx36, i16 %14) #10, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %18 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %array, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #10, !srcloc !90
  %call43 = tail call i32 @lola_codec_flush(ptr noundef %chip) #10
  %20 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mixer, align 4
  %call45 = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %21, i32 noundef 3975, i32 noundef %id, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body30, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %do.body30 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lola_mixer_set_mapping_gain(ptr noundef %chip, i32 noundef %src, i32 noundef %dest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23
  %src_mask = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 10
  %0 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_mask, align 4
  %shl = shl nuw i32 1, %src
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dest_mask = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 11
  %2 = ptrtoint ptr %dest_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dest_mask, align 4
  %shl2 = shl nuw i32 1, %dest
  %and3 = and i32 %3, %shl2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  tail call void @arm_heavy_mb() #10
  %array = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %array, align 4
  %arrayidx8 = getelementptr %struct.lola_mixer_array, ptr %5, i32 0, i32 3, i32 %dest, i32 %src
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx8, i16 20481) #10, !srcloc !88
  %6 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %array, align 4
  %arrayidx12 = getelementptr %struct.lola_mixer_array, ptr %7, i32 0, i32 1, i32 %dest
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx12) #10, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !92
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or = or i32 %9, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %array, align 4
  %arrayidx26 = getelementptr %struct.lola_mixer_array, ptr %12, i32 0, i32 1, i32 %dest
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx26, i32 %10) #10, !srcloc !90
  %call27 = tail call i32 @lola_codec_flush(ptr noundef %chip) #10
  %13 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mixer, align 4
  %call29 = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef %14, i32 noundef 3976, i32 noundef %src, i32 noundef %dest) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/lola/lola_mixer.c", i32 108, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lola_init_mixer_widget._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lola_init_mixer_widget._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/lola/lola_mixer.c", i32 113, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lola_init_mixer_widget.__UNIQUE_ID_ddebug233, !9, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/lola/lola_mixer.c", i32 191, i32 3}
!14 = !{ptr @lola_init_mixer_widget._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @lola_init_mixer_widget._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/lola/lola_mixer.c", i32 202, i32 2}
!18 = !{ptr @lola_init_mixer_widget.__UNIQUE_ID_ddebug234, !17, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/lola/lola_mixer.c", i32 833, i32 40}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/lola/lola_mixer.c", i32 836, i32 40}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/lola/lola_mixer.c", i32 843, i32 9}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/lola/lola_mixer.c", i32 848, i32 9}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/lola/lola_mixer.c", i32 27, i32 3}
!29 = !{ptr @lola_init_pin._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lola_init_pin._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/lola/lola_mixer.c", i32 38, i32 3}
!33 = !{ptr @lola_init_pin._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lola_init_pin._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/lola/lola_mixer.c", i32 52, i32 3}
!37 = !{ptr @lola_init_pin._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lola_init_pin._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/lola/lola_mixer.c", i32 69, i32 3}
!41 = !{ptr @lola_init_pin._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @lola_init_pin._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/lola/lola_mixer.c", i32 399, i32 2}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @set_analog_volume.__UNIQUE_ID_ddebug236, !44, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!47 = !{ptr @lola_analog_mixer, !48, !"lola_analog_mixer", i1 false, i1 false}
!48 = !{!"../sound/pci/lola/lola_mixer.c", i32 570, i32 32}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/lola/lola_mixer.c", i32 636, i32 10}
!51 = !{ptr @lola_input_src_mixer, !52, !"lola_input_src_mixer", i1 false, i1 false}
!52 = !{!"../sound/pci/lola/lola_mixer.c", i32 635, i32 38}
!53 = !{ptr @lola_src_gain_mixer, !54, !"lola_src_gain_mixer", i1 false, i1 false}
!54 = !{!"../sound/pci/lola/lola_mixer.c", i32 717, i32 32}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/lola/lola_mixer.c", i32 225, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lola_mixer_set_src_gain.__UNIQUE_ID_ddebug235, !56, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!59 = !{ptr @lola_src_gain_tlv, !60, !"lola_src_gain_tlv", i1 false, i1 false}
!60 = !{!"../sound/pci/lola/lola_mixer.c", i32 715, i32 14}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{i8 0, i8 2}
!73 = !{i64 2148714978, i64 2148714983, i64 2148714996, i64 2148715040, i64 2148715074, i64 2148715095}
!74 = !{i64 5417513}
!75 = !{i64 5417710}
!76 = !{i64 2152902943}
!77 = !{i64 2154028467, i64 2154028747, i64 2154029081, i64 2154029415}
!78 = !{i64 2154037307, i64 2154037587, i64 2154037921, i64 2154038255}
!79 = !{i64 2154046107, i64 2154046387, i64 2154046721, i64 2154047055}
!80 = !{i64 2154054907, i64 2154055187, i64 2154055521, i64 2154055855}
!81 = !{i64 1827984}
!82 = !{i64 2154058812}
!83 = !{i64 1827146}
!84 = !{i64 2154059365}
!85 = !{i64 2154009869}
!86 = !{i64 2154010415}
!87 = !{i64 2154013232}
!88 = !{i64 1826946}
!89 = !{i64 2154013657}
!90 = !{i64 1827566}
!91 = !{i64 2154014101}
!92 = !{i64 2154014908}
!93 = !{i64 2154015151}
