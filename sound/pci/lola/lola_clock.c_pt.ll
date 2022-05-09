; ModuleID = '/llk/IR_all_yes/sound/pci/lola/lola_clock.c_pt.bc'
source_filename = "../sound/pci/lola/lola_clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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

@lola_init_clock_widget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't read wcaps for 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lola_init_clock_widget\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/lola/lola_clock.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lola_init_clock_widget._entry_ptr = internal global ptr @lola_init_clock_widget._entry, section ".printk_index", align 4
@lola_init_clock_widget.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snd_lola\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No valid clock widget\0A\00", [41 x i8] zeroinitializer }, align 32
@lola_init_clock_widget.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clock_list nid=%x, entries=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@lola_init_clock_widget._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CLOCK_LIST too big: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@lola_init_clock_widget._entry_ptr.10 = internal global ptr @lola_init_clock_widget._entry.8, section ".printk_index", align 4
@lola_init_clock_widget._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't read CLOCK_LIST\0A\00", [41 x i8] zeroinitializer }, align 32
@lola_init_clock_widget._entry_ptr.13 = internal global ptr @lola_init_clock_widget._entry.11, section ".printk_index", align 4
@lola_enable_clock_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 214, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error in enable_clock_events %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lola_enable_clock_events\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lola_enable_clock_events._entry_ptr = internal global ptr @lola_enable_clock_events._entry, section ".printk_index", align 4
@lola_set_clock_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 232, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error in set_clock %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lola_set_clock_index\00", [43 x i8] zeroinitializer }, align 32
@lola_set_clock_index._entry_ptr = internal global ptr @lola_set_clock_index._entry, section ".printk_index", align 4
@switch.table.lola_sample_rate_convert = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 48000, i32 44100, i32 32000], [20 x i8] zeroinitializer }, align 32
@switch.table.lola_init_clock_widget = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 48000, i32 44100, i32 32000], [20 x i8] zeroinitializer }, align 32
@switch.table.lola_init_clock_widget.19 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 48000, i32 44100, i32 32000], [20 x i8] zeroinitializer }, align 32
@switch.table.lola_update_ext_clock_freq = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 48000, i32 44100, i32 32000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.23 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@__sancov_gen_cov_switch_values.25 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 118, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 123, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 129, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 132, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 148, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 213, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [31 x i8] c"../sound/pci/lola/lola_clock.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 232, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [38 x i8] c"switch.table.lola_sample_rate_convert\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [36 x i8] c"switch.table.lola_init_clock_widget\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [39 x i8] c"switch.table.lola_init_clock_widget.19\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [40 x i8] c"switch.table.lola_update_ext_clock_freq\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @lola_enable_clock_events._entry, ptr @lola_enable_clock_events._entry_ptr, ptr @lola_init_clock_widget._entry, ptr @lola_init_clock_widget._entry.11, ptr @lola_init_clock_widget._entry.8, ptr @lola_init_clock_widget._entry_ptr, ptr @lola_init_clock_widget._entry_ptr.10, ptr @lola_init_clock_widget._entry_ptr.13, ptr @lola_set_clock_index._entry, ptr @lola_set_clock_index._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.lola_sample_rate_convert, ptr @switch.table.lola_init_clock_widget, ptr @switch.table.lola_init_clock_widget.19, ptr @switch.table.lola_update_ext_clock_freq], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_clock_widget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_clock_widget._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_clock_widget._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_enable_clock_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_set_clock_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lola_sample_rate_convert to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lola_init_clock_widget to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lola_init_clock_widget.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lola_update_ext_clock_freq to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lola_sample_rate_convert(i32 noundef %coded) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %coded, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %entry.cleanup_crit_edge, label %switch.lookup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.lola_sample_rate_convert, i32 0, i32 %and
  %0 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %0)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and3 = lshr i32 %coded, 2
  %1 = and i32 %and3, 7
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog11_crit_edge
    i32 4, label %switch.lookup.sw.epilog11_crit_edge31
    i32 1, label %sw.bb4
    i32 2, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb8
  ]

switch.lookup.sw.epilog11_crit_edge31:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

switch.lookup.sw.epilog11_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl nuw nsw i32 %switch.load, 1
  br label %sw.epilog11

sw.bb5:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %mul6 = shl nuw nsw i32 %switch.load, 2
  br label %sw.epilog11

sw.bb7:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %div30 = lshr exact i32 %switch.load, 1
  br label %sw.epilog11

sw.bb8:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %div929 = lshr exact i32 %switch.load, 2
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb4, %switch.lookup.sw.epilog11_crit_edge, %switch.lookup.sw.epilog11_crit_edge31
  %freq.1 = phi i32 [ %div929, %sw.bb8 ], [ %div30, %sw.bb7 ], [ %mul6, %sw.bb5 ], [ %mul, %sw.bb4 ], [ %switch.load, %switch.lookup.sw.epilog11_crit_edge ], [ %switch.load, %switch.lookup.sw.epilog11_crit_edge31 ]
  %and12 = and i32 %coded, 96
  %3 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and12, label %sw.epilog11.cleanup_crit_edge [
    i32 0, label %sw.epilog11.sw.epilog20_crit_edge
    i32 32, label %sw.bb13
    i32 64, label %sw.bb16
  ]

sw.epilog11.sw.epilog20_crit_edge:                ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20

sw.epilog11.cleanup_crit_edge:                    ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  %mul14 = mul nuw nsw i32 %freq.1, 999
  %div15 = udiv i32 %mul14, 1000
  br label %sw.epilog20

sw.bb16:                                          ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  %mul17 = mul nuw nsw i32 %freq.1, 1001
  %div18 = udiv i32 %mul17, 1000
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb16, %sw.bb13, %sw.epilog11.sw.epilog20_crit_edge
  %freq.2 = phi i32 [ %div18, %sw.bb16 ], [ %div15, %sw.bb13 ], [ %freq.1, %sw.epilog11.sw.epilog20_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog20, %sw.epilog11.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %freq.2, %sw.epilog20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ 0, %sw.epilog11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_set_granularity(ptr noundef %chip, i32 noundef %val, i1 noundef zeroext %force) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %force, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %granularity = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 26
  %0 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %granularity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %val)
  %cmp = icmp eq i32 %1, %val
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %cur_freq = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 3
  %2 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  %4 = add i32 %val, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %4)
  %5 = icmp ult i32 %4, 25
  %rem.i = and i32 %val, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp3.not.i = icmp eq i32 %rem.i, 0
  %or.cond23.i = and i1 %5, %cmp3.not.i
  br i1 %or.cond23.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %val)
  %cmp6.i = icmp eq i32 %val, 8
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %3)
  %cmp8.i = icmp ugt i32 %3, 48000
  br i1 %cmp8.i, label %if.then7.i.cleanup_crit_edge, label %if.then7.i.if.end4_crit_edge

if.then7.i.if.end4_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %val)
  %cmp11.i = icmp ult i32 %val, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %3)
  %cmp13.i = icmp ugt i32 %3, 96000
  %or.cond24.i = and i1 %cmp11.i, %cmp13.i
  br i1 %or.cond24.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end4_crit_edge

if.else.i.if.end4_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.else.i.if.end4_crit_edge, %if.then7.i.if.end4_crit_edge, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %granularity5 = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 26
  %6 = ptrtoint ptr %granularity5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %granularity5, align 4
  %div22 = lshr i32 %val, 3
  %call6 = tail call i32 @lola_codec_write(ptr noundef %chip, i32 noundef 1, i32 noundef 3974, i32 noundef %div22, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %div22, 400
  tail call void @usleep_range_state(i32 noundef %mul, i32 noundef 20000, i32 noundef 2) #6
  %call10 = tail call i32 @lola_codec_flush(ptr noundef %chip) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 0, %if.then.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then7.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_init_clock_widget(ptr noundef %chip, i32 noundef %nid) local_unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %res_ex = alloca i32, align 4
  %items52 = alloca [4 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !43
  %call = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %nid) #9
  br label %cleanup150

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 32505856, i32 %and)
  %cmp1.not = icmp eq i32 %and, 32505856
  br i1 %cmp1.not, label %if.end13, label %do.body3

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_init_clock_widget.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_init_clock_widget, %if.then7)) #6
          to label %cleanup150 [label %if.then7], !srcloc !44

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %dev9 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev9, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lola_init_clock_widget.__UNIQUE_ID_ddebug229, ptr noundef %10, ptr noundef nonnull @.str.6) #6
  br label %cleanup150

if.end13:                                         ; preds = %if.end
  %clock = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nid, ptr %clock, align 4
  %and15 = and i32 %6, 255
  %items = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %items to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and15, ptr %items, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_init_clock_widget.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_init_clock_widget, %if.then29)) #6
          to label %do.end36 [label %if.then29], !srcloc !44

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 4
  %dev31 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev31, align 8
  %17 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %items, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lola_init_clock_widget.__UNIQUE_ID_ddebug230, ptr noundef %16, ptr noundef nonnull @.str.7, i32 noundef %nid, i32 noundef %18) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then29, %if.end13
  %19 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %20)
  %cmp39 = icmp ugt i32 %20, 48
  br i1 %cmp39, label %do.end43, label %if.end48

do.end43:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip, align 4
  %dev45 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev45, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.9, i32 noundef %20) #9
  br label %cleanup150

if.end48:                                         ; preds = %do.end36
  %div250.lhs.trunc = add nuw nsw i32 %20, 3
  %div250251252 = lshr i32 %div250.lhs.trunc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp51257.not = icmp eq i32 %20, 0
  br i1 %cmp51257.not, label %if.end48.cleanup150_crit_edge, label %for.body.lr.ph

if.end48.cleanup150_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup150

for.body.lr.ph:                                   ; preds = %if.end48
  %25 = getelementptr inbounds [4 x i16], ptr %items52, i32 0, i32 1
  %26 = getelementptr inbounds [4 x i16], ptr %items52, i32 0, i32 2
  %27 = getelementptr inbounds [4 x i16], ptr %items52, i32 0, i32 3
  %sample_rate_min106 = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 27
  %cur_index = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 2
  %cur_freq = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 3
  %cur_valid = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 4
  br label %for.body

for.cond:                                         ; preds = %if.end133
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %items52) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_ex) #6
  %inc148 = add nuw nsw i32 %i.0260, 1
  %exitcond.not = icmp eq i32 %inc148, %div250251252
  br i1 %exitcond.not, label %for.cond.cleanup150_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup150_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup150

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0260 = phi i32 [ 0, %for.body.lr.ph ], [ %inc148, %for.cond.for.body_crit_edge ]
  %idx_list.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %idx_list.2, %for.cond.for.body_crit_edge ]
  %idx.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %inc134, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res_ex) #6
  %28 = ptrtoint ptr %res_ex to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %res_ex, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %items52) #6
  %call53 = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid, i32 noundef 4035, i32 noundef %idx.0258, i32 noundef 0, ptr noundef nonnull %val, ptr noundef nonnull %res_ex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %cleanup143.thread, label %if.end61

cleanup143.thread:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  %dev60 = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev60, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %items52) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_ex) #6
  br label %cleanup150

if.end61:                                         ; preds = %for.body
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %35 = trunc i32 %34 to i16
  %conv = and i16 %35, 4095
  %36 = ptrtoint ptr %items52 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %items52, align 2
  %shr = lshr i32 %34, 16
  %37 = trunc i32 %shr to i16
  %conv64 = and i16 %37, 4095
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv64, ptr %25, align 2
  %39 = ptrtoint ptr %res_ex to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %res_ex, align 4
  %41 = trunc i32 %40 to i16
  %conv67 = and i16 %41, 4095
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv67, ptr %26, align 2
  %shr69 = lshr i32 %40, 16
  %43 = trunc i32 %shr69 to i16
  %conv71 = and i16 %43, 4095
  %44 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv71, ptr %27, align 2
  br label %for.body76

for.body76:                                       ; preds = %if.end133.for.body76_crit_edge, %if.end61
  %j.0256 = phi i32 [ 0, %if.end61 ], [ %inc142, %if.end133.for.body76_crit_edge ]
  %idx_list.1254 = phi i32 [ %idx_list.0259, %if.end61 ], [ %idx_list.2, %if.end133.for.body76_crit_edge ]
  %idx.1253 = phi i32 [ %idx.0258, %if.end61 ], [ %inc134, %if.end133.for.body76_crit_edge ]
  %arrayidx77 = getelementptr [4 x i16], ptr %items52, i32 0, i32 %j.0256
  %45 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx77, align 2
  %47 = lshr i16 %46, 8
  %conv80 = zext i16 %47 to i32
  %48 = and i16 %46, 255
  %and83 = zext i16 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %46)
  %cmp85 = icmp ult i16 %46, 256
  br i1 %cmp85, label %if.then87, label %if.else100

if.then87:                                        ; preds = %for.body76
  %and.i = and i32 %and83, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %.not265 = icmp eq i32 %and.i, 3
  br i1 %.not265, label %if.then87.lola_sample_rate_convert.exit_crit_edge, label %switch.lookup

if.then87.lola_sample_rate_convert.exit_crit_edge: ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sample_rate_convert.exit

switch.lookup:                                    ; preds = %if.then87
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.lola_init_clock_widget, i32 0, i32 %and.i
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and3.i = lshr i32 %and83, 2
  %50 = and i32 %and3.i, 7
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %50, label %switch.lookup.lola_sample_rate_convert.exit_crit_edge [
    i32 0, label %switch.lookup.sw.epilog11.i_crit_edge
    i32 4, label %switch.lookup.sw.epilog11.i_crit_edge266
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb5.i
    i32 5, label %sw.bb7.i
    i32 6, label %sw.bb8.i
  ]

switch.lookup.sw.epilog11.i_crit_edge266:         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.i

switch.lookup.sw.epilog11.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.i

switch.lookup.lola_sample_rate_convert.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sample_rate_convert.exit

sw.bb4.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl nuw nsw i32 %switch.load, 1
  br label %sw.epilog11.i

sw.bb5.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %mul6.i = shl nuw nsw i32 %switch.load, 2
  br label %sw.epilog11.i

sw.bb7.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %div30.i = lshr exact i32 %switch.load, 1
  br label %sw.epilog11.i

sw.bb8.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %div929.i = lshr exact i32 %switch.load, 2
  br label %sw.epilog11.i

sw.epilog11.i:                                    ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb5.i, %sw.bb4.i, %switch.lookup.sw.epilog11.i_crit_edge, %switch.lookup.sw.epilog11.i_crit_edge266
  %freq.1.i = phi i32 [ %div929.i, %sw.bb8.i ], [ %div30.i, %sw.bb7.i ], [ %mul6.i, %sw.bb5.i ], [ %mul.i, %sw.bb4.i ], [ %switch.load, %switch.lookup.sw.epilog11.i_crit_edge ], [ %switch.load, %switch.lookup.sw.epilog11.i_crit_edge266 ]
  %and12.i = and i32 %and83, 96
  %52 = zext i32 %and12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %and12.i, label %sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge [
    i32 0, label %sw.epilog11.i.sw.epilog20.i_crit_edge
    i32 32, label %sw.bb13.i
    i32 64, label %sw.bb16.i
  ]

sw.epilog11.i.sw.epilog20.i_crit_edge:            ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20.i

sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge: ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sample_rate_convert.exit

sw.bb13.i:                                        ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul14.i = mul nuw nsw i32 %freq.1.i, 999
  %div15.i = udiv i32 %mul14.i, 1000
  br label %sw.epilog20.i

sw.bb16.i:                                        ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul17.i = mul nuw nsw i32 %freq.1.i, 1001
  %div18.i = udiv i32 %mul17.i, 1000
  br label %sw.epilog20.i

sw.epilog20.i:                                    ; preds = %sw.bb16.i, %sw.bb13.i, %sw.epilog11.i.sw.epilog20.i_crit_edge
  %freq.2.i = phi i32 [ %div18.i, %sw.bb16.i ], [ %div15.i, %sw.bb13.i ], [ %freq.1.i, %sw.epilog11.i.sw.epilog20.i_crit_edge ]
  br label %lola_sample_rate_convert.exit

lola_sample_rate_convert.exit:                    ; preds = %sw.epilog20.i, %sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge, %switch.lookup.lola_sample_rate_convert.exit_crit_edge, %if.then87.lola_sample_rate_convert.exit_crit_edge
  %retval.0.i209 = phi i32 [ %freq.2.i, %sw.epilog20.i ], [ 0, %if.then87.lola_sample_rate_convert.exit_crit_edge ], [ 0, %switch.lookup.lola_sample_rate_convert.exit_crit_edge ], [ 0, %sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge ]
  %53 = ptrtoint ptr %sample_rate_min106 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sample_rate_min106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i209, i32 %54)
  %cmp89 = icmp ult i32 %retval.0.i209, %54
  br i1 %cmp89, label %lola_sample_rate_convert.exit.if.else130_crit_edge, label %if.else

lola_sample_rate_convert.exit.if.else130_crit_edge: ; preds = %lola_sample_rate_convert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else130

if.else:                                          ; preds = %lola_sample_rate_convert.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %retval.0.i209)
  %cmp92 = icmp eq i32 %retval.0.i209, 48000
  br i1 %cmp92, label %if.then94, label %if.else.if.then121_crit_edge

if.else.if.then121_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

if.then94:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %idx_list.1254, ptr %cur_index, align 4
  %56 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 48000, ptr %cur_freq, align 4
  %57 = ptrtoint ptr %cur_valid to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %cur_valid, align 4
  br label %if.then121

if.else100:                                       ; preds = %for.body76
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %47)
  %cmp102 = icmp eq i16 %47, 5
  br i1 %cmp102, label %if.then104, label %if.else100.if.then121_crit_edge

if.else100.if.then121_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

if.then104:                                       ; preds = %if.else100
  %and.i210 = and i32 %and83, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i210)
  %.not = icmp eq i32 %and.i210, 3
  br i1 %.not, label %if.then104.if.end119_crit_edge, label %switch.lookup262

if.then104.if.end119_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

switch.lookup262:                                 ; preds = %if.then104
  %switch.gep263 = getelementptr inbounds [3 x i32], ptr @switch.table.lola_init_clock_widget.19, i32 0, i32 %and.i210
  %58 = ptrtoint ptr %switch.gep263 to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load264 = load i32, ptr %switch.gep263, align 4
  %and3.i214 = lshr i32 %and83, 2
  %59 = and i32 %and3.i214, 7
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %59, label %switch.lookup262.if.end119_crit_edge [
    i32 0, label %switch.lookup262.sw.epilog11.i226_crit_edge
    i32 4, label %switch.lookup262.sw.epilog11.i226_crit_edge267
    i32 1, label %sw.bb4.i217
    i32 2, label %sw.bb5.i219
    i32 5, label %sw.bb7.i221
    i32 6, label %sw.bb8.i223
  ]

switch.lookup262.sw.epilog11.i226_crit_edge267:   ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.i226

switch.lookup262.sw.epilog11.i226_crit_edge:      ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.i226

switch.lookup262.if.end119_crit_edge:             ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

sw.bb4.i217:                                      ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i216 = shl nuw nsw i32 %switch.load264, 1
  br label %sw.epilog11.i226

sw.bb5.i219:                                      ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #8
  %mul6.i218 = shl nuw nsw i32 %switch.load264, 2
  br label %sw.epilog11.i226

sw.bb7.i221:                                      ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #8
  %div30.i220 = lshr exact i32 %switch.load264, 1
  br label %sw.epilog11.i226

sw.bb8.i223:                                      ; preds = %switch.lookup262
  call void @__sanitizer_cov_trace_pc() #8
  %div929.i222 = lshr exact i32 %switch.load264, 2
  br label %sw.epilog11.i226

sw.epilog11.i226:                                 ; preds = %sw.bb8.i223, %sw.bb7.i221, %sw.bb5.i219, %sw.bb4.i217, %switch.lookup262.sw.epilog11.i226_crit_edge, %switch.lookup262.sw.epilog11.i226_crit_edge267
  %freq.1.i224 = phi i32 [ %div929.i222, %sw.bb8.i223 ], [ %div30.i220, %sw.bb7.i221 ], [ %mul6.i218, %sw.bb5.i219 ], [ %mul.i216, %sw.bb4.i217 ], [ %switch.load264, %switch.lookup262.sw.epilog11.i226_crit_edge ], [ %switch.load264, %switch.lookup262.sw.epilog11.i226_crit_edge267 ]
  %and12.i225 = and i32 %and83, 96
  %61 = zext i32 %and12.i225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and12.i225, label %sw.epilog11.i226.if.end119_crit_edge [
    i32 0, label %sw.epilog11.i226.sw.epilog20.i234_crit_edge
    i32 32, label %sw.bb13.i229
    i32 64, label %sw.bb16.i232
  ]

sw.epilog11.i226.sw.epilog20.i234_crit_edge:      ; preds = %sw.epilog11.i226
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20.i234

sw.epilog11.i226.if.end119_crit_edge:             ; preds = %sw.epilog11.i226
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

sw.bb13.i229:                                     ; preds = %sw.epilog11.i226
  call void @__sanitizer_cov_trace_pc() #8
  %mul14.i227 = mul nuw nsw i32 %freq.1.i224, 999
  %div15.i228 = udiv i32 %mul14.i227, 1000
  br label %sw.epilog20.i234

sw.bb16.i232:                                     ; preds = %sw.epilog11.i226
  call void @__sanitizer_cov_trace_pc() #8
  %mul17.i230 = mul nuw nsw i32 %freq.1.i224, 1001
  %div18.i231 = udiv i32 %mul17.i230, 1000
  br label %sw.epilog20.i234

sw.epilog20.i234:                                 ; preds = %sw.bb16.i232, %sw.bb13.i229, %sw.epilog11.i226.sw.epilog20.i234_crit_edge
  %freq.2.i233 = phi i32 [ %div18.i231, %sw.bb16.i232 ], [ %div15.i228, %sw.bb13.i229 ], [ %freq.1.i224, %sw.epilog11.i226.sw.epilog20.i234_crit_edge ]
  br label %if.end119

if.end119:                                        ; preds = %sw.epilog20.i234, %sw.epilog11.i226.if.end119_crit_edge, %switch.lookup262.if.end119_crit_edge, %if.then104.if.end119_crit_edge
  %retval.0.i235 = phi i32 [ %freq.2.i233, %sw.epilog20.i234 ], [ 0, %if.then104.if.end119_crit_edge ], [ 0, %switch.lookup262.if.end119_crit_edge ], [ 0, %sw.epilog11.i226.if.end119_crit_edge ]
  %62 = ptrtoint ptr %sample_rate_min106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sample_rate_min106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i235, i32 %63)
  %cmp107.not = icmp ult i32 %retval.0.i235, %63
  %64 = and i16 %46, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool114.not = icmp eq i16 %64, 0
  %spec.select = select i1 %tobool114.not, i32 2, i32 1
  br i1 %cmp107.not, label %if.end119.if.else130_crit_edge, label %if.end119.if.then121_crit_edge

if.end119.if.then121_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then121

if.end119.if.else130_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else130

if.then121:                                       ; preds = %if.end119.if.then121_crit_edge, %if.else100.if.then121_crit_edge, %if.then94, %if.else.if.then121_crit_edge
  %format.0243 = phi i32 [ %spec.select, %if.end119.if.then121_crit_edge ], [ 0, %if.then94 ], [ 0, %if.else.if.then121_crit_edge ], [ 0, %if.else100.if.then121_crit_edge ]
  %freq.0242 = phi i32 [ %retval.0.i235, %if.end119.if.then121_crit_edge ], [ 48000, %if.then94 ], [ %retval.0.i209, %if.else.if.then121_crit_edge ], [ %and83, %if.else100.if.then121_crit_edge ]
  %arrayidx123 = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %idx_list.1254
  %65 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv80, ptr %arrayidx123, align 4
  %format126 = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %idx_list.1254, i32 1
  %66 = ptrtoint ptr %format126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %format.0243, ptr %format126, align 4
  %freq127 = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %idx_list.1254, i32 2
  %67 = ptrtoint ptr %freq127 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %freq.0242, ptr %freq127, align 4
  %arrayidx129 = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 6, i32 %idx_list.1254
  %68 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %idx.1253, ptr %arrayidx129, align 4
  %inc = add i32 %idx_list.1254, 1
  br label %if.end133

if.else130:                                       ; preds = %if.end119.if.else130_crit_edge, %lola_sample_rate_convert.exit.if.else130_crit_edge
  %69 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %items, align 4
  %dec = add i32 %70, -1
  store i32 %dec, ptr %items, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.else130, %if.then121
  %idx_list.2 = phi i32 [ %inc, %if.then121 ], [ %idx_list.1254, %if.else130 ]
  %inc134 = add i32 %idx.1253, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc134, i32 %20)
  %cmp135.not = icmp slt i32 %inc134, %20
  %inc142 = add nuw nsw i32 %j.0256, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %j.0256)
  %cmp74 = icmp ult i32 %j.0256, 3
  %or.cond = select i1 %cmp135.not, i1 %cmp74, i1 false
  br i1 %or.cond, label %if.end133.for.body76_crit_edge, label %for.cond

if.end133.for.body76_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body76

cleanup150:                                       ; preds = %cleanup143.thread, %for.cond.cleanup150_crit_edge, %if.end48.cleanup150_crit_edge, %do.end43, %if.then7, %do.body3, %do.end
  %retval.2 = phi i32 [ %call, %do.end ], [ -22, %do.end43 ], [ 0, %if.then7 ], [ 0, %do.body3 ], [ -22, %cleanup143.thread ], [ 0, %if.end48.cleanup150_crit_edge ], [ 0, %for.cond.cleanup150_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_enable_clock_events(ptr noundef %chip) local_unnamed_addr #2 align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !43
  %clock = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20
  %1 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clock, align 4
  %call = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %2, i32 noundef 1800, i32 noundef 154, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_set_clock_index(ptr noundef %chip, i32 noundef %idx) local_unnamed_addr #2 align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #6
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !43
  %clock = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20
  %1 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clock, align 4
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 6, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %2, i32 noundef 3972, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.17, i32 noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @lola_update_ext_clock_freq(ptr nocapture noundef %chip, i32 noundef %val) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.mask = and i32 %val, -67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1744830464, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 1744830464
  br i1 %cmp.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %cur_index = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_index, align 4
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not = icmp eq i32 %3, 0
  br i1 %cmp4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  %and.i = and i32 %val, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %.not = icmp eq i32 %and.i, 3
  br i1 %.not, label %if.then5.lola_sample_rate_convert.exit_crit_edge, label %switch.lookup

if.then5.lola_sample_rate_convert.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sample_rate_convert.exit

switch.lookup:                                    ; preds = %if.then5
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.lola_update_ext_clock_freq, i32 0, i32 %and.i
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and3.i = lshr i32 %val, 2
  %5 = and i32 %and3.i, 7
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %5, label %switch.lookup.lola_sample_rate_convert.exit_crit_edge [
    i32 0, label %switch.lookup.sw.epilog11.i_crit_edge
    i32 4, label %switch.lookup.sw.epilog11.i_crit_edge18
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb5.i
    i32 5, label %sw.bb7.i
    i32 6, label %sw.bb8.i
  ]

switch.lookup.sw.epilog11.i_crit_edge18:          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.i

switch.lookup.sw.epilog11.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11.i

switch.lookup.lola_sample_rate_convert.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sample_rate_convert.exit

sw.bb4.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl nuw nsw i32 %switch.load, 1
  br label %sw.epilog11.i

sw.bb5.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %mul6.i = shl nuw nsw i32 %switch.load, 2
  br label %sw.epilog11.i

sw.bb7.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %div30.i = lshr exact i32 %switch.load, 1
  br label %sw.epilog11.i

sw.bb8.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %div929.i = lshr exact i32 %switch.load, 2
  br label %sw.epilog11.i

sw.epilog11.i:                                    ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb5.i, %sw.bb4.i, %switch.lookup.sw.epilog11.i_crit_edge, %switch.lookup.sw.epilog11.i_crit_edge18
  %freq.1.i = phi i32 [ %div929.i, %sw.bb8.i ], [ %div30.i, %sw.bb7.i ], [ %mul6.i, %sw.bb5.i ], [ %mul.i, %sw.bb4.i ], [ %switch.load, %switch.lookup.sw.epilog11.i_crit_edge ], [ %switch.load, %switch.lookup.sw.epilog11.i_crit_edge18 ]
  %and12.i = and i32 %val, 96
  %7 = zext i32 %and12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and12.i, label %sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge [
    i32 0, label %sw.epilog11.i.sw.epilog20.i_crit_edge
    i32 32, label %sw.bb13.i
    i32 64, label %sw.bb16.i
  ]

sw.epilog11.i.sw.epilog20.i_crit_edge:            ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20.i

sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge: ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sample_rate_convert.exit

sw.bb13.i:                                        ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul14.i = mul nuw nsw i32 %freq.1.i, 999
  %div15.i = udiv i32 %mul14.i, 1000
  br label %sw.epilog20.i

sw.bb16.i:                                        ; preds = %sw.epilog11.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul17.i = mul nuw nsw i32 %freq.1.i, 1001
  %div18.i = udiv i32 %mul17.i, 1000
  br label %sw.epilog20.i

sw.epilog20.i:                                    ; preds = %sw.bb16.i, %sw.bb13.i, %sw.epilog11.i.sw.epilog20.i_crit_edge
  %freq.2.i = phi i32 [ %div18.i, %sw.bb16.i ], [ %div15.i, %sw.bb13.i ], [ %freq.1.i, %sw.epilog11.i.sw.epilog20.i_crit_edge ]
  br label %lola_sample_rate_convert.exit

lola_sample_rate_convert.exit:                    ; preds = %sw.epilog20.i, %sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge, %switch.lookup.lola_sample_rate_convert.exit_crit_edge, %if.then5.lola_sample_rate_convert.exit_crit_edge
  %retval.0.i = phi i32 [ %freq.2.i, %sw.epilog20.i ], [ 0, %if.then5.lola_sample_rate_convert.exit_crit_edge ], [ 0, %switch.lookup.lola_sample_rate_convert.exit_crit_edge ], [ 0, %sw.epilog11.i.lola_sample_rate_convert.exit_crit_edge ]
  %cur_freq = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 3
  %8 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %cur_freq, align 4
  %cur_valid = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 4
  %and8 = lshr i32 %val, 8
  %9 = trunc i32 %and8 to i8
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %cur_valid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %cur_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %lola_sample_rate_convert.exit, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_set_clock(ptr noundef %chip, i32 noundef %idx) local_unnamed_addr #2 align 64 {
entry:
  %res.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_index = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp = icmp eq i32 %1, %idx
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cur_freq = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 3
  %cur_valid = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %cur_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_valid, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp eq i8 %3, 0
  br label %if.end10

if.else:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else.cleanup32_crit_edge

if.else.cleanup32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %freq9 = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %idx, i32 2
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.then
  %freq.0.in = phi ptr [ %cur_freq, %if.then ], [ %freq9, %if.then5 ]
  %valid.0.off0 = phi i1 [ %tobool, %if.then ], [ false, %if.then5 ]
  %6 = ptrtoint ptr %freq.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %freq.0 = load i32, ptr %freq.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq.0)
  %tobool11.not = icmp eq i32 %freq.0, 0
  %brmerge = select i1 %tobool11.not, i1 true, i1 %valid.0.off0
  br i1 %brmerge, label %if.end10.cleanup32_crit_edge, label %if.end14

if.end10.cleanup32_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end14:                                         ; preds = %if.end10
  %granularity = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 26
  %7 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %granularity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end16, label %if.end.i

if.end.i:                                         ; preds = %if.end14
  %9 = add i32 %8, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %9)
  %10 = icmp ult i32 %9, 25
  %rem.i = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp3.not.i = icmp eq i32 %rem.i, 0
  %or.cond23.i = and i1 %10, %cmp3.not.i
  br i1 %or.cond23.i, label %if.end5.i, label %if.end.i.cleanup32_crit_edge

if.end.i.cleanup32_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp6.i = icmp eq i32 %8, 8
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %freq.0)
  %cmp8.i = icmp ugt i32 %freq.0, 48000
  %brmerge64 = select i1 %cmp8.i, i1 true, i1 %cmp
  %.mux = select i1 %cmp8.i, i32 -22, i32 0
  br i1 %brmerge64, label %if.then7.i.cleanup32_crit_edge, label %if.then7.i.if.then20_crit_edge

if.then7.i.if.then20_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then7.i.cleanup32_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp11.i = icmp ult i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %freq.0)
  %cmp13.i = icmp ugt i32 %freq.0, 96000
  %or.cond24.i = and i1 %cmp13.i, %cmp11.i
  %brmerge65 = select i1 %or.cond24.i, i1 true, i1 %cmp
  %.mux66 = select i1 %or.cond24.i, i32 -22, i32 0
  br i1 %brmerge65, label %if.else.i.cleanup32_crit_edge, label %if.else.i.if.then20_crit_edge

if.else.i.if.then20_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.else.i.cleanup32_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.end16:                                         ; preds = %if.end14
  br i1 %cmp, label %if.end16.cleanup32_crit_edge, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.end16.cleanup32_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup32

if.then20:                                        ; preds = %if.end16.if.then20_crit_edge, %if.else.i.if.then20_crit_edge, %if.then7.i.if.then20_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #6
  %11 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %res.i, align 4, !annotation !43
  %clock.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20
  %12 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clock.i, align 4
  %arrayidx.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 6, i32 %idx
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %call.i = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %13, i32 noundef 3972, i32 noundef %15, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then20.lola_set_clock_index.exit.thread_crit_edge, label %if.end.i54

if.then20.lola_set_clock_index.exit.thread_crit_edge: ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_set_clock_index.exit.thread

if.end.i54:                                       ; preds = %if.then20
  %16 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i53 = icmp eq i32 %17, 0
  br i1 %tobool.not.i53, label %if.end24, label %do.end.i

do.end.i:                                         ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %17) #9
  br label %lola_set_clock_index.exit.thread

lola_set_clock_index.exit.thread:                 ; preds = %do.end.i, %if.then20.lola_set_clock_index.exit.thread_crit_edge
  %retval.0.i55.ph = phi i32 [ %call.i, %if.then20.lola_set_clock_index.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #6
  br label %cleanup32

if.end24:                                         ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #6
  %22 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %idx, ptr %cur_index, align 4
  %cur_freq28 = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 3
  %23 = ptrtoint ptr %cur_freq28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %freq.0, ptr %cur_freq28, align 4
  %cur_valid30 = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 4
  %24 = ptrtoint ptr %cur_valid30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %cur_valid30, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %if.end24, %lola_set_clock_index.exit.thread, %if.end16.cleanup32_crit_edge, %if.else.i.cleanup32_crit_edge, %if.then7.i.cleanup32_crit_edge, %if.end.i.cleanup32_crit_edge, %if.end10.cleanup32_crit_edge, %if.else.cleanup32_crit_edge
  %retval.1 = phi i32 [ -22, %if.end10.cleanup32_crit_edge ], [ 0, %if.end24 ], [ 0, %if.end16.cleanup32_crit_edge ], [ %retval.0.i55.ph, %lola_set_clock_index.exit.thread ], [ -22, %if.else.cleanup32_crit_edge ], [ -22, %if.end.i.cleanup32_crit_edge ], [ %.mux, %if.then7.i.cleanup32_crit_edge ], [ %.mux66, %if.else.i.cleanup32_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_set_sample_rate(ptr noundef %chip, i32 noundef %rate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_freq = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 3
  %0 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp = icmp eq i32 %1, %rate
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cur_valid = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %cur_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_valid, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %items = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp331.not = icmp eq i32 %5, 0
  br i1 %cmp331.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %i.032
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %land.lhs.true6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true6:                                   ; preds = %for.body
  %freq = getelementptr %struct.lola, ptr %chip, i32 0, i32 20, i32 5, i32 %i.032, i32 2
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %rate)
  %cmp10 = icmp eq i32 %9, %rate
  br i1 %cmp10, label %if.end17, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @lola_set_clock(ptr noundef %chip, i32 noundef %i.032)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end17 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/lola/lola_clock.c", i32 118, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lola_init_clock_widget._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lola_init_clock_widget._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/lola/lola_clock.c", i32 123, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @lola_init_clock_widget.__UNIQUE_ID_ddebug229, !9, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/lola/lola_clock.c", i32 129, i32 2}
!14 = !{ptr @lola_init_clock_widget.__UNIQUE_ID_ddebug230, !13, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/lola/lola_clock.c", i32 132, i32 3}
!17 = !{ptr @lola_init_clock_widget._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @lola_init_clock_widget._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/lola/lola_clock.c", i32 148, i32 4}
!21 = !{ptr @lola_init_clock_widget._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @lola_init_clock_widget._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/lola/lola_clock.c", i32 213, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @lola_enable_clock_events._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @lola_enable_clock_events._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/lola/lola_clock.c", i32 232, i32 3}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @lola_set_clock_index._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @lola_set_clock_index._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2148697132, i64 2148697137, i64 2148697150, i64 2148697194, i64 2148697228, i64 2148697249}
!45 = !{i8 0, i8 2}
