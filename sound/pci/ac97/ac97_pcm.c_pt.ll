; ModuleID = '/llk/IR_all_yes/sound/pci/ac97/ac97_pcm.c_pt.bc'
source_filename = "../sound/pci/ac97/ac97_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_ac97_set_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ac97_set_rate\09\09\09\09"
module asm "\09.long\09__crc_snd_ac97_set_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ac97_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ac97_set_rate\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ac97_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ac97_pcm_assign\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ac97_pcm_assign\09\09\09\09"
module asm "\09.long\09__crc_snd_ac97_pcm_assign\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ac97_pcm_assign:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ac97_pcm_assign\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ac97_pcm_assign:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ac97_pcm_open\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ac97_pcm_open\09\09\09\09"
module asm "\09.long\09__crc_snd_ac97_pcm_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ac97_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ac97_pcm_open\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ac97_pcm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ac97_pcm_close\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ac97_pcm_close\09\09\09\09"
module asm "\09.long\09__crc_snd_ac97_pcm_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ac97_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ac97_pcm_close\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ac97_pcm_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ac97_pcm_double_rate_rules\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ac97_pcm_double_rate_rules\09\09\09\09"
module asm "\09.long\09__crc_snd_ac97_pcm_double_rate_rules\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ac97_pcm_double_rate_rules:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ac97_pcm_double_rate_rules\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ac97_pcm_double_rate_rules:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.74 = type { i32, [28 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.ac97_pcm = type { ptr, i8, i16, i16, i32, [2 x %struct.anon.73], i32 }
%struct.anon.73 = type { i16, [4 x i16], [4 x i8], [4 x ptr] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }

@__kstrtab_snd_ac97_set_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ac97_set_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ac97_set_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ac97_set_rate to i32), ptr @__kstrtab_snd_ac97_set_rate, ptr @__kstrtabns_snd_ac97_set_rate }, section "___ksymtab+snd_ac97_set_rate", align 4
@__kstrtab_snd_ac97_pcm_assign = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ac97_pcm_assign = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ac97_pcm_assign = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ac97_pcm_assign to i32), ptr @__kstrtab_snd_ac97_pcm_assign, ptr @__kstrtabns_snd_ac97_pcm_assign }, section "___ksymtab+snd_ac97_pcm_assign", align 4
@snd_ac97_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 594, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cannot find configuration for AC97 slot %i\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_ac97_pcm_open\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/ac97/ac97_pcm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ac97_pcm_open._entry_ptr = internal global ptr @snd_ac97_pcm_open._entry, section ".printk_index", align 4
@snd_ac97_pcm_open._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 609, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid AC97 slot %i?\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_ac97_pcm_open._entry_ptr.7 = internal global ptr @snd_ac97_pcm_open._entry.5, section ".printk_index", align 4
@snd_ac97_pcm_open.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_ac97_codec\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting ac97 reg 0x%x to rate %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_ac97_pcm_open._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"error in snd_ac97_set_rate: cidx=%d, reg=0x%x, rate=%d, err=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_ac97_pcm_open._entry_ptr.12 = internal global ptr @snd_ac97_pcm_open._entry.10, section ".printk_index", align 4
@__kstrtab_snd_ac97_pcm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ac97_pcm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ac97_pcm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ac97_pcm_open to i32), ptr @__kstrtab_snd_ac97_pcm_open, ptr @__kstrtabns_snd_ac97_pcm_open }, section "___ksymtab+snd_ac97_pcm_open", align 4
@__kstrtab_snd_ac97_pcm_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ac97_pcm_close = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ac97_pcm_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ac97_pcm_close to i32), ptr @__kstrtab_snd_ac97_pcm_close, ptr @__kstrtabns_snd_ac97_pcm_close }, section "___ksymtab+snd_ac97_pcm_close", align 4
@__kstrtab_snd_ac97_pcm_double_rate_rules = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ac97_pcm_double_rate_rules = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ac97_pcm_double_rate_rules = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ac97_pcm_double_rate_rules to i32), ptr @__kstrtab_snd_ac97_pcm_double_rate_rules, ptr @__kstrtabns_snd_ac97_pcm_double_rate_rules }, section "___ksymtab+snd_ac97_pcm_double_rate_rules", align 4
@rate_reg_tables = internal constant { [2 x [4 x [9 x i8]]], [56 x i8] } { [2 x [4 x [9 x i8]]] [[4 x [9 x i8]] [[9 x i8] c",,\FF0..0\FF\FF", [9 x i8] c"\FF\FF\FF.,,.00", [9 x i8] c"00\FF,\FF\FF,..", [9 x i8] c"..\FF\FF00\FF,,"], [4 x [9 x i8]] [[9 x i8] c",,\FF\FF,,\FF\FF\FF", [9 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF", [9 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF", [9 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF"]], [56 x i8] zeroinitializer }, align 32
@rate_cregs = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"22\FF4\FF\FF\FF\FF\FF", [23 x i8] zeroinitializer }, align 32
@double_rate_hw_constraint_rate.single_rates = internal constant { %struct.snd_interval, [20 x i8] } { %struct.snd_interval { i32 1, i32 48000, i8 0 }, [20 x i8] zeroinitializer }, align 32
@double_rate_hw_constraint_channels.double_rate_channels = internal constant { %struct.snd_interval, [20 x i8] } { %struct.snd_interval { i32 2, i32 2, i8 0 }, [20 x i8] zeroinitializer }, align 32
@switch.table.snd_ac97_pcm_assign = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 5, i32 1, i32 5, i32 2, i32 5, i32 3, i32 5, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_ac97_pcm_assign.13 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 5, i32 1, i32 5, i32 2, i32 5, i32 3, i32 5, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_ac97_pcm_assign.14 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 5, i32 1, i32 5, i32 2, i32 5, i32 3, i32 5, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_ac97_pcm_assign.15 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 5, i32 1, i32 5, i32 2, i32 5, i32 3, i32 5, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_ac97_pcm_assign.16 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 5, i32 1, i32 5, i32 2, i32 5, i32 3, i32 5, i32 4], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 44, i64 46, i64 48, i64 50, i64 52, i64 58]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 16, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 16, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 32000, i64 48000]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 592, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 608, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 614, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 619, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"rate_reg_tables\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 29, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"rate_cregs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 132, i32 28 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"single_rates\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 688, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"double_rate_channels\00", align 1
@___asan_gen_.70 = private constant [29 x i8] c"../sound/pci/ac97/ac97_pcm.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 703, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [33 x i8] c"switch.table.snd_ac97_pcm_assign\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [36 x i8] c"switch.table.snd_ac97_pcm_assign.13\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [36 x i8] c"switch.table.snd_ac97_pcm_assign.14\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [36 x i8] c"switch.table.snd_ac97_pcm_assign.15\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [36 x i8] c"switch.table.snd_ac97_pcm_assign.16\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_snd_ac97_pcm_assign, ptr @__ksymtab_snd_ac97_pcm_close, ptr @__ksymtab_snd_ac97_pcm_double_rate_rules, ptr @__ksymtab_snd_ac97_pcm_open, ptr @__ksymtab_snd_ac97_set_rate, ptr @snd_ac97_pcm_open._entry, ptr @snd_ac97_pcm_open._entry.10, ptr @snd_ac97_pcm_open._entry.5, ptr @snd_ac97_pcm_open._entry_ptr, ptr @snd_ac97_pcm_open._entry_ptr.12, ptr @snd_ac97_pcm_open._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @rate_reg_tables, ptr @rate_cregs, ptr @double_rate_hw_constraint_rate.single_rates, ptr @double_rate_hw_constraint_channels.double_rate_channels, ptr @switch.table.snd_ac97_pcm_assign, ptr @switch.table.snd_ac97_pcm_assign.13, ptr @switch.table.snd_ac97_pcm_assign.14, ptr @switch.table.snd_ac97_pcm_assign.15, ptr @switch.table.snd_ac97_pcm_assign.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_pcm_open._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ac97_pcm_open._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_reg_tables to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_cregs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @double_rate_hw_constraint_rate.single_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @double_rate_hw_constraint_channels.double_rate_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ac97_pcm_assign to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ac97_pcm_assign.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ac97_pcm_assign.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ac97_pcm_assign.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ac97_pcm_assign.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ac97_set_rate(ptr noundef %ac97, i32 noundef %reg, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 48000
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 19
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %reg)
  %cmp3.not = icmp eq i32 %reg, 44
  %or.cond122 = and i1 %cmp3.not, %tobool1.not
  br i1 %or.cond122, label %if.end7.thread, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call123 = tail call i32 @snd_ac97_update_power(ptr noundef %ac97, i32 noundef 44, i32 noundef 1) #5
  br label %sw.bb18

if.end7:                                          ; preds = %entry
  %call = tail call i32 @snd_ac97_update_power(ptr noundef %ac97, i32 noundef %reg, i32 noundef 1) #5
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %if.end7.cleanup_crit_edge [
    i32 52, label %sw.bb
    i32 44, label %if.end7.sw.bb18_crit_edge
    i32 50, label %if.end7.sw.bb18_crit_edge125
    i32 46, label %sw.bb33
    i32 48, label %sw.bb38
    i32 58, label %sw.bb44
  ]

if.end7.sw.bb18_crit_edge125:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

if.end7.sw.bb18_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %arrayidx = getelementptr %struct.snd_ac97, ptr %ac97, i32 0, i32 22, i32 42
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 4
  %5 = and i16 %4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp10 = icmp ne i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp13.not = icmp eq i32 %rate, 48000
  %or.cond = or i1 %cmp13.not, %cmp10
  br i1 %or.cond, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end7.sw.bb18_crit_edge, %if.end7.sw.bb18_crit_edge125, %if.end7.thread
  %arrayidx20 = getelementptr %struct.snd_ac97, ptr %ac97, i32 0, i32 22, i32 42
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx20, align 4
  %.fr124 = freeze i16 %7
  %8 = and i16 %.fr124, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp23.not = icmp eq i16 %8, 0
  br i1 %cmp23.not, label %switch.early.test, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.early.test:                                ; preds = %sw.bb18
  %9 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %rate, label %switch.early.test.cleanup_crit_edge [
    i32 96000, label %switch.early.test.sw.epilog_crit_edge
    i32 48000, label %switch.early.test.sw.epilog_crit_edge126
  ]

switch.early.test.sw.epilog_crit_edge126:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.early.test.sw.epilog_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb33:                                          ; preds = %if.end7
  %scaps = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 18
  %10 = ptrtoint ptr %scaps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scaps, align 4
  %and34 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.bb33.cleanup_crit_edge, label %sw.bb33.sw.epilog_crit_edge

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb38:                                          ; preds = %if.end7
  %scaps39 = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 18
  %12 = ptrtoint ptr %scaps39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scaps39, align 4
  %and40 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %sw.bb38.cleanup_crit_edge, label %sw.bb38.sw.epilog_crit_edge

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb44:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %conv45 = trunc i32 %rate to i16
  %call46 = tail call fastcc i32 @set_spdif_rate(ptr noundef %ac97, i16 noundef zeroext %conv45)
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb38.sw.epilog_crit_edge, %sw.bb33.sw.epilog_crit_edge, %switch.early.test.sw.epilog_crit_edge, %switch.early.test.sw.epilog_crit_edge126, %sw.bb18.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %div117 = zext i1 %cmp to i32
  %spec.select = lshr i32 %rate, %div117
  %bus = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 3
  %14 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus, align 4
  %clock = getelementptr inbounds %struct.snd_ac97_bus, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clock, align 4
  %mul = mul i32 %17, %spec.select
  %div50 = udiv i32 %mul, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1149239297, i32 %mul)
  %cmp51 = icmp ugt i32 %mul, -1149239297
  br i1 %cmp51, label %sw.epilog.cleanup_crit_edge, label %if.end54

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %sw.epilog
  %ext_id = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 15
  %18 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ext_id, align 2
  %20 = and i16 %19, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool57.not = icmp ne i16 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %reg)
  %cmp59 = icmp eq i32 %reg, 44
  %or.cond120 = and i1 %cmp59, %tobool57.not
  br i1 %or.cond120, label %if.then61, label %if.end54.if.end65_crit_edge

if.end54.if.end65_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then61:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %conv63 = select i1 %cmp, i16 2, i16 0
  %call64 = tail call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 42, i16 noundef zeroext 2, i16 noundef zeroext %conv63) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end54.if.end65_crit_edge
  %conv66 = trunc i32 %reg to i16
  %conv68 = trunc i32 %div50 to i16
  %call69 = tail call i32 @snd_ac97_update(ptr noundef %ac97, i16 noundef zeroext %conv66, i16 noundef zeroext %conv68) #5
  %call71 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext %conv66) #5
  %21 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ext_id, align 2
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool75.not = icmp ne i16 %23, 0
  %or.cond121 = and i1 %cmp59, %tobool75.not
  br i1 %or.cond121, label %if.then79, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then79:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %conv82 = select i1 %cmp, i16 1024, i16 0
  %call83 = tail call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 32, i16 noundef zeroext 3072, i16 noundef zeroext %conv82) #5
  %call84 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext 32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end65.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb44, %sw.bb38.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %sw.bb44 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -22, %sw.bb38.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_power(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_spdif_rate(ptr noundef %ac97, i16 noundef zeroext %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_id = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 15
  %0 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ext_id, align 2
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 19
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and1 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = zext i16 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %rate, label %sw.default [
    i16 -17536, label %if.then3.if.end20_crit_edge
    i16 -21436, label %sw.bb5
  ]

if.then3.if.end20_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.bb5:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.default:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 42, i16 noundef zeroext 4, i16 noundef zeroext 0) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 13
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1129138529, i32 %7)
  %cmp = icmp ne i32 %7, 1129138529
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17536, i16 %rate)
  %cmp8.not = icmp eq i16 %rate, -17536
  %or.cond = or i1 %cmp8.not, %cmp
  br i1 %or.cond, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 42, i16 noundef zeroext 4, i16 noundef zeroext 0) #5
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %8 = zext i16 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %rate, label %sw.default17 [
    i16 -21436, label %if.end12.if.end20_crit_edge
    i16 -17536, label %sw.bb15
    i16 32000, label %sw.bb16
  ]

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.bb16:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

sw.default17:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 @snd_ac97_update_bits(ptr noundef %ac97, i16 noundef zeroext 42, i16 noundef zeroext 4, i16 noundef zeroext 0) #5
  br label %cleanup

if.end20:                                         ; preds = %sw.bb16, %sw.bb15, %if.end12.if.end20_crit_edge, %sw.bb5, %if.then3.if.end20_crit_edge
  %bits.2 = phi i16 [ 4096, %sw.bb5 ], [ 0, %if.then3.if.end20_crit_edge ], [ 12288, %sw.bb16 ], [ 8192, %sw.bb15 ], [ 0, %if.end12.if.end20_crit_edge ]
  %reg.0 = phi i16 [ 104, %sw.bb5 ], [ 104, %if.then3.if.end20_crit_edge ], [ 58, %sw.bb16 ], [ 58, %sw.bb15 ], [ 58, %if.end12.if.end20_crit_edge ]
  %mask.0 = phi i16 [ 4096, %sw.bb5 ], [ 4096, %if.then3.if.end20_crit_edge ], [ 12288, %sw.bb16 ], [ 12288, %sw.bb15 ], [ 12288, %if.end12.if.end20_crit_edge ]
  %reg_mutex = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #5
  %call21 = tail call zeroext i16 @snd_ac97_read(ptr noundef %ac97, i16 noundef zeroext %reg.0) #5
  %and2492 = and i16 %call21, %mask.0
  call void @__sanitizer_cov_trace_cmp2(i16 %and2492, i16 %bits.2)
  %cmp28.not = icmp eq i16 %and2492, %bits.2
  br i1 %cmp28.not, label %if.end20.if.end56_crit_edge, label %if.then30

if.end20.if.end56_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then30:                                        ; preds = %if.end20
  %call31 = tail call i32 @snd_ac97_update_bits_nolock(ptr noundef %ac97, i16 noundef zeroext 42, i16 noundef zeroext 4, i16 noundef zeroext 0) #5
  %call32 = tail call i32 @snd_ac97_update_bits_nolock(ptr noundef %ac97, i16 noundef zeroext %reg.0, i16 noundef zeroext %mask.0, i16 noundef zeroext %bits.2) #5
  %spdif_status = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 21
  %9 = ptrtoint ptr %spdif_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spdif_status, align 4
  %and33 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else44, label %if.then35

if.then35:                                        ; preds = %if.then30
  %and36 = and i32 %10, -193
  %11 = zext i16 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %rate, label %if.then35.if.end54_crit_edge [
    i16 -21436, label %sw.bb38
    i16 -17536, label %sw.bb39
    i16 32000, label %sw.bb41
  ]

if.then35.if.end54_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

sw.bb38:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %and36, 64
  br label %if.end54

sw.bb39:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %or40 = or i32 %and36, 128
  br label %if.end54

sw.bb41:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %or42 = or i32 %10, 192
  br label %if.end54

if.else44:                                        ; preds = %if.then30
  %and45 = and i32 %10, -251658241
  %12 = zext i16 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %rate, label %if.else44.if.end54_crit_edge [
    i16 32000, label %sw.bb51
    i16 -17536, label %sw.bb49
  ]

if.else44.if.end54_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

sw.bb49:                                          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  %or50 = or i32 %and45, 33554432
  br label %if.end54

sw.bb51:                                          ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  %or52 = or i32 %and45, 50331648
  br label %if.end54

if.end54:                                         ; preds = %sw.bb51, %sw.bb49, %if.else44.if.end54_crit_edge, %sw.bb41, %sw.bb39, %sw.bb38, %if.then35.if.end54_crit_edge
  %sbits.0 = phi i32 [ %and36, %if.then35.if.end54_crit_edge ], [ %or42, %sw.bb41 ], [ %or40, %sw.bb39 ], [ %or, %sw.bb38 ], [ %or52, %sw.bb51 ], [ %or50, %sw.bb49 ], [ %and45, %if.else44.if.end54_crit_edge ]
  %13 = ptrtoint ptr %spdif_status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sbits.0, ptr %spdif_status, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.end20.if.end56_crit_edge
  %call57 = tail call i32 @snd_ac97_update_bits_nolock(ptr noundef %ac97, i16 noundef zeroext 42, i16 noundef zeroext 4, i16 noundef zeroext 4) #5
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %sw.default17, %if.then10, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.end56 ], [ -22, %if.then10 ], [ -22, %sw.default17 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @snd_ac97_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ac97_pcm_assign(ptr noundef %bus, i16 noundef zeroext %pcms_count, ptr nocapture noundef readonly %pcms) #0 align 64 {
entry:
  %avail_slots = alloca [2 x [4 x i16]], align 2
  %rate_table = alloca [2 x [4 x i8]], align 8
  %spdif_slots = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %avail_slots) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate_table) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %spdif_slots) #5
  %conv = zext i16 %pcms_count to i32
  %0 = mul nuw nsw i32 %conv, 84
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %avail_slots, i32 0, i32 16)
  %2 = ptrtoint ptr %rate_table to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %rate_table, align 8
  %3 = ptrtoint ptr %spdif_slots to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %spdif_slots, align 8
  %arrayidx25 = getelementptr %struct.snd_ac97_bus, ptr %bus, i32 0, i32 11, i32 0
  %arrayidx29 = getelementptr inbounds [2 x [4 x i16]], ptr %avail_slots, i32 0, i32 1, i32 0
  %arrayidx25.1 = getelementptr %struct.snd_ac97_bus, ptr %bus, i32 0, i32 11, i32 1
  %arrayidx29.1 = getelementptr inbounds [2 x [4 x i16]], ptr %avail_slots, i32 0, i32 1, i32 1
  %arrayidx25.2 = getelementptr %struct.snd_ac97_bus, ptr %bus, i32 0, i32 11, i32 2
  %arrayidx29.2 = getelementptr inbounds [2 x [4 x i16]], ptr %avail_slots, i32 0, i32 1, i32 2
  br label %for.body

for.cond41.preheader:                             ; preds = %for.inc38
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pcms_count)
  %cmp43524.not = icmp eq i16 %pcms_count, 0
  br i1 %cmp43524.not, label %for.cond41.preheader.for.end324_crit_edge, label %for.body45.lr.ph

for.cond41.preheader.for.end324_crit_edge:        ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end324

for.body45.lr.ph:                                 ; preds = %for.cond41.preheader
  %no_vra = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 5
  %codec238 = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 11
  br label %for.body45

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %if.end
  %i.0509 = phi i32 [ 0, %if.end ], [ %inc39, %for.inc38.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_ac97_bus, ptr %bus, i32 0, i32 11, i32 %i.0509
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc38_crit_edge, label %if.end8

for.body.for.inc38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38

if.end8:                                          ; preds = %for.body
  %arrayidx10 = getelementptr [4 x i8], ptr %rate_table, i32 0, i32 %i.0509
  %arrayidx11 = getelementptr [4 x i16], ptr %spdif_slots, i32 0, i32 %i.0509
  %scaps.i.i = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %scaps.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scaps.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end8.get_pslots.exit_crit_edge, label %if.end.i

if.end8.get_pslots.exit_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_pslots.exit

if.end.i:                                         ; preds = %if.end8
  %ext_id.i.i = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %ext_id.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ext_id.i.i, align 2
  %10 = and i16 %9, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.not.i = icmp eq i16 %10, 0
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = and i16 %9, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not.i = icmp eq i16 %11, 0
  br i1 %tobool4.not.i, label %if.else90.i, label %lor.lhs.false.i.if.end17.i_crit_edge

lor.lhs.false.i.if.end17.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then8.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.snd_ac97, ptr %5, i32 0, i32 22, i32 40
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 8
  %14 = and i16 %13, -49
  store i16 %14, ptr %arrayidx.i, align 8
  %addr.i = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 12
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %16, label %if.then8.i.sw.epilog.i_crit_edge [
    i16 1, label %if.then8.i.sw.bb.i_crit_edge
    i16 2, label %if.then8.i.sw.bb.i_crit_edge551
    i16 3, label %sw.bb13.i
  ]

if.then8.i.sw.bb.i_crit_edge551:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then8.i.sw.bb.i_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then8.i.sw.epilog.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then8.i.sw.bb.i_crit_edge, %if.then8.i.sw.bb.i_crit_edge551
  %18 = or i16 %14, 16
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = or i16 %14, 32
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb.i, %if.then8.i.sw.epilog.i_crit_edge
  %es.0.i = phi i16 [ %14, %if.then8.i.sw.epilog.i_crit_edge ], [ %19, %sw.bb13.i ], [ %18, %sw.bb.i ]
  tail call void @snd_ac97_write_cache(ptr noundef nonnull %5, i16 noundef zeroext 40, i16 noundef zeroext %es.0.i) #5
  br label %if.end17.i

if.end17.i:                                       ; preds = %sw.epilog.i, %lor.lhs.false.i.if.end17.i_crit_edge
  %addr18.i = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 12
  %20 = ptrtoint ptr %addr18.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr18.i, align 2
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %21, label %if.end17.i.get_pslots.exit_crit_edge [
    i16 0, label %sw.bb20.i
    i16 1, label %if.end17.i.sw.bb55.i_crit_edge
    i16 2, label %if.end17.i.sw.bb55.i_crit_edge552
    i16 3, label %sw.bb79.i
  ]

if.end17.i.sw.bb55.i_crit_edge552:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55.i

if.end17.i.sw.bb55.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55.i

if.end17.i.get_pslots.exit_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_pslots.exit

sw.bb20.i:                                        ; preds = %if.end17.i
  %23 = ptrtoint ptr %scaps.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %scaps.i.i, align 4
  %and24.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %spec.select.i = select i1 %tobool25.not.i, i16 24, i16 408
  %and32.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %25 = or i16 %spec.select.i, 576
  %slots.1.i = select i1 %tobool33.not.i, i16 %spec.select.i, i16 %25
  %26 = ptrtoint ptr %ext_id.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ext_id.i.i, align 2
  %28 = and i16 %27, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool41.not.i = icmp eq i16 %28, 0
  br i1 %tobool41.not.i, label %sw.bb20.i.return.sink.split.i_crit_edge, label %if.then42.i

sw.bb20.i.return.sink.split.i_crit_edge:          ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

if.then42.i:                                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #7
  %..i = select i1 %tobool33.not.i, i16 576, i16 3072
  %.sink.i = select i1 %tobool25.not.i, i16 384, i16 %..i
  br label %return.sink.split.sink.split.i

sw.bb55.i:                                        ; preds = %if.end17.i.sw.bb55.i_crit_edge, %if.end17.i.sw.bb55.i_crit_edge552
  %29 = ptrtoint ptr %scaps.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scaps.i.i, align 4
  %and60.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  %spec.select168.i = select i1 %tobool61.not.i, i16 384, i16 960
  %31 = ptrtoint ptr %ext_id.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ext_id.i.i, align 2
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool70.not.i = icmp eq i16 %33, 0
  br i1 %tobool70.not.i, label %sw.bb55.i.return.sink.split.i_crit_edge, label %if.then71.i

sw.bb55.i.return.sink.split.i_crit_edge:          ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

if.then71.i:                                      ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #7
  %.177.i = select i1 %tobool61.not.i, i16 576, i16 3072
  br label %return.sink.split.sink.split.i

sw.bb79.i:                                        ; preds = %if.end17.i
  %34 = ptrtoint ptr %ext_id.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ext_id.i.i, align 2
  %36 = and i16 %35, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool86.not.i = icmp eq i16 %36, 0
  br i1 %tobool86.not.i, label %sw.bb79.i.return.sink.split.i_crit_edge, label %sw.bb79.i.return.sink.split.sink.split.i_crit_edge

sw.bb79.i.return.sink.split.sink.split.i_crit_edge: ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.sink.split.i

sw.bb79.i.return.sink.split.i_crit_edge:          ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

if.else90.i:                                      ; preds = %lor.lhs.false.i
  %and93.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  %spec.select169.i = select i1 %tobool94.not.i, i16 24, i16 408
  %and101.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i)
  %tobool102.not.i = icmp eq i32 %and101.i, 0
  %37 = or i16 %spec.select169.i, 576
  %slots91.1.i = select i1 %tobool102.not.i, i16 %spec.select169.i, i16 %37
  %38 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool111.not.i = icmp eq i16 %38, 0
  br i1 %tobool111.not.i, label %if.else90.i.return.sink.split.i_crit_edge, label %if.then112.i

if.else90.i.return.sink.split.i_crit_edge:        ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

if.then112.i:                                     ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #7
  %.178.i = select i1 %tobool102.not.i, i16 576, i16 3072
  %.sink175.i = select i1 %tobool94.not.i, i16 384, i16 %.178.i
  br label %return.sink.split.sink.split.i

return.sink.split.sink.split.i:                   ; preds = %if.then112.i, %sw.bb79.i.return.sink.split.sink.split.i_crit_edge, %if.then71.i, %if.then42.i
  %.sink175.sink.i = phi i16 [ %.sink175.i, %if.then112.i ], [ %.177.i, %if.then71.i ], [ %.sink.i, %if.then42.i ], [ 3072, %sw.bb79.i.return.sink.split.sink.split.i_crit_edge ]
  %.sink176.ph.i = phi i8 [ 0, %if.then112.i ], [ 1, %if.then71.i ], [ 0, %if.then42.i ], [ 2, %sw.bb79.i.return.sink.split.sink.split.i_crit_edge ]
  %retval.0.ph.ph.i = phi i16 [ %slots91.1.i, %if.then112.i ], [ %spec.select168.i, %if.then71.i ], [ %slots.1.i, %if.then42.i ], [ 576, %sw.bb79.i.return.sink.split.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %.sink175.sink.i, ptr %arrayidx11, align 2
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %return.sink.split.sink.split.i, %if.else90.i.return.sink.split.i_crit_edge, %sw.bb79.i.return.sink.split.i_crit_edge, %sw.bb55.i.return.sink.split.i_crit_edge, %sw.bb20.i.return.sink.split.i_crit_edge
  %.sink176.i = phi i8 [ 0, %sw.bb20.i.return.sink.split.i_crit_edge ], [ 1, %sw.bb55.i.return.sink.split.i_crit_edge ], [ 2, %sw.bb79.i.return.sink.split.i_crit_edge ], [ 0, %if.else90.i.return.sink.split.i_crit_edge ], [ %.sink176.ph.i, %return.sink.split.sink.split.i ]
  %retval.0.ph.i = phi i16 [ %slots.1.i, %sw.bb20.i.return.sink.split.i_crit_edge ], [ %spec.select168.i, %sw.bb55.i.return.sink.split.i_crit_edge ], [ 576, %sw.bb79.i.return.sink.split.i_crit_edge ], [ %slots91.1.i, %if.else90.i.return.sink.split.i_crit_edge ], [ %retval.0.ph.ph.i, %return.sink.split.sink.split.i ]
  %40 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink176.i, ptr %arrayidx10, align 1
  br label %get_pslots.exit

get_pslots.exit:                                  ; preds = %return.sink.split.i, %if.end17.i.get_pslots.exit_crit_edge, %if.end8.get_pslots.exit_crit_edge
  %retval.0.i = phi i16 [ 0, %if.end8.get_pslots.exit_crit_edge ], [ 0, %if.end17.i.get_pslots.exit_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  %arrayidx14 = getelementptr [4 x i16], ptr %avail_slots, i32 0, i32 %i.0509
  %41 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %retval.0.i, ptr %arrayidx14, align 2
  %42 = ptrtoint ptr %scaps.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scaps.i.i, align 4
  %and.i.i454 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i454)
  %tobool.not.i455 = icmp eq i32 %and.i.i454, 0
  %..i456 = select i1 %tobool.not.i455, i16 0, i16 88
  %arrayidx17 = getelementptr [2 x [4 x i16]], ptr %avail_slots, i32 0, i32 1, i32 %i.0509
  %44 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %..i456, ptr %arrayidx17, align 2
  %and = and i32 %43, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0509)
  %cmp21506 = icmp ne i32 %i.0509, 0
  %or.cond531 = select i1 %tobool18.not, i1 %cmp21506, i1 false
  br i1 %or.cond531, label %for.body23, label %get_pslots.exit.for.inc38_crit_edge

get_pslots.exit.for.inc38_crit_edge:              ; preds = %get_pslots.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38

for.body23:                                       ; preds = %get_pslots.exit
  %45 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %46, null
  br i1 %tobool26.not, label %for.body23.for.inc_crit_edge, label %if.then27

for.body23.for.inc_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then27:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx29, align 2
  %neg = xor i16 %48, -1
  %49 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx17, align 2
  %and34 = and i16 %50, %neg
  store i16 %and34, ptr %arrayidx17, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %for.body23.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0509)
  %exitcond.not = icmp eq i32 %i.0509, 1
  br i1 %exitcond.not, label %for.inc.for.inc38_crit_edge, label %for.body23.1

for.inc.for.inc38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38

for.body23.1:                                     ; preds = %for.inc
  %51 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx25.1, align 4
  %tobool26.not.1 = icmp eq ptr %52, null
  br i1 %tobool26.not.1, label %for.body23.1.for.inc.1_crit_edge, label %if.then27.1

for.body23.1.for.inc.1_crit_edge:                 ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then27.1:                                      ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx29.1, align 2
  %neg.1 = xor i16 %54, -1
  %55 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx17, align 2
  %and34.1 = and i16 %56, %neg.1
  store i16 %and34.1, ptr %arrayidx17, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then27.1, %for.body23.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0509)
  %exitcond.not.1 = icmp eq i32 %i.0509, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.inc38_crit_edge, label %for.body23.2

for.inc.1.for.inc38_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38

for.body23.2:                                     ; preds = %for.inc.1
  %57 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx25.2, align 4
  %tobool26.not.2 = icmp eq ptr %58, null
  br i1 %tobool26.not.2, label %for.body23.2.for.inc38_crit_edge, label %if.then27.2

for.body23.2.for.inc38_crit_edge:                 ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38

if.then27.2:                                      ; preds = %for.body23.2
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx29.2, align 2
  %neg.2 = xor i16 %60, -1
  %61 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx17, align 2
  %and34.2 = and i16 %62, %neg.2
  store i16 %and34.2, ptr %arrayidx17, align 2
  br label %for.inc38

for.inc38:                                        ; preds = %if.then27.2, %for.body23.2.for.inc38_crit_edge, %for.inc.1.for.inc38_crit_edge, %for.inc.for.inc38_crit_edge, %get_pslots.exit.for.inc38_crit_edge, %for.body.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %i.0509, 1
  %exitcond532.not = icmp eq i32 %inc39, 4
  br i1 %exitcond532.not, label %for.cond41.preheader, label %for.inc38.for.body_crit_edge

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body45:                                       ; preds = %for.inc322.for.body45_crit_edge, %for.body45.lr.ph
  %i.1525 = phi i32 [ 0, %for.body45.lr.ph ], [ %inc323, %for.inc322.for.body45_crit_edge ]
  %arrayidx47 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525
  %copy_flag = getelementptr %struct.ac97_pcm, ptr %pcms, i32 %i.1525, i32 1
  %63 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load = load i8, ptr %copy_flag, align 4
  %64 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool48.not = icmp eq i8 %64, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx46 = getelementptr %struct.ac97_pcm, ptr %pcms, i32 %i.1525
  %65 = call ptr @memcpy(ptr %arrayidx47, ptr %arrayidx46, i32 84)
  br label %for.inc322

if.end50:                                         ; preds = %for.body45
  %bf.lshr52 = and i8 %bf.load, -128
  %stream54 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 1
  %66 = ptrtoint ptr %stream54 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load55 = load i8, ptr %stream54, align 4
  %bf.clear56 = and i8 %bf.load55, 127
  %bf.set = or i8 %bf.clear56, %bf.lshr52
  store i8 %bf.set, ptr %stream54, align 4
  %67 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load57 = load i8, ptr %copy_flag, align 4
  %bf.clear59 = and i8 %bf.load57, 64
  %bf.clear65 = and i8 %bf.set, -81
  %bf.set66 = or i8 %bf.clear65, %bf.clear59
  %bf.clear70 = and i8 %bf.load57, 16
  %bf.set77 = or i8 %bf.set66, %bf.clear70
  store i8 %bf.set77, ptr %stream54, align 4
  %private_value = getelementptr %struct.ac97_pcm, ptr %pcms, i32 %i.1525, i32 6
  %68 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %private_value, align 4
  %private_value79 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 6
  %70 = ptrtoint ptr %private_value79 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %private_value79, align 4
  %71 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %bus, ptr %arrayidx47, align 4
  %rates81 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 4
  %72 = ptrtoint ptr %rates81 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %rates81, align 4
  %r = getelementptr %struct.ac97_pcm, ptr %pcms, i32 %i.1525, i32 5
  %73 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool88.not516 = icmp eq i16 %74, 0
  br i1 %tobool88.not516, label %if.end50.for.end230_crit_edge, label %for.body89.lr.ph

if.end50.for.end230_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end230

for.body89.lr.ph:                                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1525)
  %cmp128512.not = icmp eq i32 %i.1525, 0
  %r167 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 5
  br label %for.body89

for.body89:                                       ; preds = %for.inc228.for.body89_crit_edge, %for.body89.lr.ph
  %slots.0522 = phi i16 [ %74, %for.body89.lr.ph ], [ %slots.1, %for.inc228.for.body89_crit_edge ]
  %j.1518 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc229, %for.inc228.for.body89_crit_edge ]
  %arrayidx91 = getelementptr %struct.snd_ac97_bus, ptr %bus, i32 0, i32 11, i32 %j.1518
  %75 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx91, align 4
  %tobool92.not = icmp eq ptr %76, null
  br i1 %tobool92.not, label %for.body89.for.inc228_crit_edge, label %if.end94

for.body89.for.inc228_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc228

if.end94:                                         ; preds = %for.body89
  %77 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load96 = load i8, ptr %copy_flag, align 4
  %78 = and i8 %bf.load96, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %78)
  %79 = icmp eq i8 %78, 16
  %arrayidx108 = getelementptr [4 x i16], ptr %spdif_slots, i32 0, i32 %j.1518
  %bf.lshr111 = lshr i8 %bf.load96, 7
  %bf.cast112 = zext i8 %bf.lshr111 to i32
  %arrayidx114 = getelementptr [2 x [4 x i16]], ptr %avail_slots, i32 0, i32 %bf.cast112, i32 %j.1518
  %tmp.0.in = select i1 %79, ptr %arrayidx108, ptr %arrayidx114
  %80 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load2_noabort(i32 %80)
  %tmp.0 = load i16, ptr %tmp.0.in, align 2
  %81 = and i8 %bf.load96, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool121.not = icmp eq i8 %81, 0
  br i1 %tobool121.not, label %if.else156, label %if.then122

if.then122:                                       ; preds = %if.end94
  %and125451 = and i16 %tmp.0, %slots.0522
  br i1 %cmp128512.not, label %if.then122.if.end164_crit_edge, label %for.body130.lr.ph

if.then122.if.end164_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

for.body130.lr.ph:                                ; preds = %if.then122
  %82 = ptrtoint ptr %stream54 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load132 = load i8, ptr %stream54, align 4
  br label %for.body130

for.body130:                                      ; preds = %for.inc153.for.body130_crit_edge, %for.body130.lr.ph
  %tmp.1515 = phi i16 [ %and125451, %for.body130.lr.ph ], [ %tmp.2, %for.inc153.for.body130_crit_edge ]
  %k.0513 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc154, %for.inc153.for.body130_crit_edge ]
  %stream136 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %k.0513, i32 1
  %83 = ptrtoint ptr %stream136 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load137 = load i8, ptr %stream136, align 4
  %cmp140.unshifted = xor i8 %bf.load137, %bf.load132
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %cmp140.unshifted)
  %cmp140 = icmp sgt i8 %cmp140.unshifted, -1
  br i1 %cmp140, label %if.then142, label %for.body130.for.inc153_crit_edge

for.body130.for.inc153_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

if.then142:                                       ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx146 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %k.0513, i32 5, i32 0, i32 1, i32 %j.1518
  %84 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx146, align 2
  %neg148 = xor i16 %85, -1
  %and150 = and i16 %tmp.1515, %neg148
  br label %for.inc153

for.inc153:                                       ; preds = %if.then142, %for.body130.for.inc153_crit_edge
  %tmp.2 = phi i16 [ %and150, %if.then142 ], [ %tmp.1515, %for.body130.for.inc153_crit_edge ]
  %inc154 = add nuw nsw i32 %k.0513, 1
  %exitcond533.not = icmp eq i32 %inc154, %i.1525
  br i1 %exitcond533.not, label %for.inc153.if.end164_crit_edge, label %for.inc153.for.body130_crit_edge

for.inc153.for.body130_crit_edge:                 ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body130

for.inc153.if.end164_crit_edge:                   ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

if.else156:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %r, align 4
  %and162449 = and i16 %87, %tmp.0
  br label %if.end164

if.end164:                                        ; preds = %if.else156, %for.inc153.if.end164_crit_edge, %if.then122.if.end164_crit_edge
  %tmp.3 = phi i16 [ %and162449, %if.else156 ], [ %and125451, %if.then122.if.end164_crit_edge ], [ %tmp.2, %for.inc153.if.end164_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp.3)
  %tobool165.not = icmp eq i16 %tmp.3, 0
  br i1 %tobool165.not, label %if.end164.if.end214_crit_edge, label %if.then166

if.end164.if.end214_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then166:                                       ; preds = %if.end164
  %arrayidx170 = getelementptr %struct.anon.73, ptr %r167, i32 0, i32 1, i32 %j.1518
  %88 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %tmp.3, ptr %arrayidx170, align 2
  %89 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx91, align 4
  %arrayidx176 = getelementptr %struct.anon.73, ptr %r167, i32 0, i32 3, i32 %j.1518
  %91 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %arrayidx176, align 4
  %92 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load178 = load i8, ptr %copy_flag, align 4
  %bf.lshr179 = lshr i8 %bf.load178, 7
  %bf.cast180 = zext i8 %bf.lshr179 to i32
  %arrayidx182 = getelementptr [2 x [4 x i8]], ptr %rate_table, i32 0, i32 %bf.cast180, i32 %j.1518
  %93 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx182, align 1
  %arrayidx186 = getelementptr %struct.anon.73, ptr %r167, i32 0, i32 2, i32 %j.1518
  %95 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx186, align 1
  %96 = ptrtoint ptr %no_vra to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load187 = load i8, ptr %no_vra, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load187)
  %tobool190.not = icmp sgt i8 %bf.load187, -1
  br i1 %tobool190.not, label %if.else192, label %if.then166.if.end194_crit_edge

if.then166.if.end194_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

if.else192:                                       ; preds = %if.then166
  %conv.i = zext i16 %tmp.3 to i32
  %arrayidx16.i.i = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 5, i32 0, i32 2, i32 %j.1518
  %arrayidx8.i = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 5, i32 0, i32 3, i32 %j.1518
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else192
  %rates.028.i = phi i32 [ -1, %if.else192 ], [ %rates.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.026.i = phi i32 [ 3, %if.else192 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.026.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i457 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i457, label %for.body.i.for.inc.i_crit_edge, label %if.end.i458

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i458:                                      ; preds = %for.body.i
  %conv2.i = trunc i32 %i.026.i to i16
  %97 = add i16 %conv2.i, -12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9, i16 %97)
  %98 = icmp ult i16 %97, -9
  br i1 %98, label %if.end.i458.sw.epilog.i459_crit_edge, label %if.end6.i.i

if.end.i458.sw.epilog.i459_crit_edge:             ; preds = %if.end.i458
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i459

if.end6.i.i:                                      ; preds = %if.end.i458
  %99 = ptrtoint ptr %stream54 to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load.i.i = load i8, ptr %stream54, align 4
  %100 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %if.end6.i.i.sw.epilog.i459_crit_edge

if.end6.i.i.sw.epilog.i459_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i459

if.end8.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %cmp12.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %cmp12.i.i, label %if.then14.i.i, label %if.else.i.i

if.then14.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx16.i.i, align 1
  %idxprom17.i.i = zext i8 %102 to i32
  %sub.i.i = add nsw i32 %i.026.i, -3
  %arrayidx20.i.i = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 0, i32 %idxprom17.i.i, i32 %sub.i.i
  br label %get_slot_reg.exit.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub22.i.i = add nsw i32 %i.026.i, -3
  %arrayidx23.i.i = getelementptr [9 x i8], ptr @rate_cregs, i32 0, i32 %sub22.i.i
  br label %get_slot_reg.exit.i

get_slot_reg.exit.i:                              ; preds = %if.else.i.i, %if.then14.i.i
  %arrayidx23.sink.i.i = phi ptr [ %arrayidx23.i.i, %if.else.i.i ], [ %arrayidx20.i.i, %if.then14.i.i ]
  %103 = ptrtoint ptr %arrayidx23.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx23.sink.i.i, align 1
  %switch.tableidx = add i8 %104, -44
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %105 = icmp ult i8 %switch.tableidx, 9
  br i1 %105, label %switch.lookup, label %get_slot_reg.exit.i.sw.epilog.i459_crit_edge

get_slot_reg.exit.i.sw.epilog.i459_crit_edge:     ; preds = %get_slot_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i459

switch.lookup:                                    ; preds = %get_slot_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.snd_ac97_pcm_assign, i32 0, i32 %106
  %107 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %107)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i459

sw.epilog.i459:                                   ; preds = %switch.lookup, %get_slot_reg.exit.i.sw.epilog.i459_crit_edge, %if.end6.i.i.sw.epilog.i459_crit_edge, %if.end.i458.sw.epilog.i459_crit_edge
  %idx.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 5, %get_slot_reg.exit.i.sw.epilog.i459_crit_edge ], [ 5, %if.end6.i.i.sw.epilog.i459_crit_edge ], [ 5, %if.end.i458.sw.epilog.i459_crit_edge ]
  %108 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr %struct.snd_ac97, ptr %109, i32 0, i32 20, i32 %idx.0.i
  %110 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx10.i, align 4
  %and11.i = and i32 %111, %rates.028.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i459, %for.body.i.for.inc.i_crit_edge
  %rates.1.i = phi i32 [ %and11.i, %sw.epilog.i459 ], [ %rates.028.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %get_rates.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

get_rates.exit:                                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %and14.i = and i32 %rates.1.i, -1793
  br label %if.end194

if.end194:                                        ; preds = %get_rates.exit, %if.then166.if.end194_crit_edge
  %rates.0 = phi i32 [ %and14.i, %get_rates.exit ], [ 128, %if.then166.if.end194_crit_edge ]
  %112 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load196 = load i8, ptr %copy_flag, align 4
  %113 = and i8 %bf.load196, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool200.not = icmp eq i8 %113, 0
  br i1 %tobool200.not, label %if.end194.if.end214_crit_edge, label %if.then201

if.end194.if.end214_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then201:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  %neg203 = xor i16 %tmp.3, -1
  %bf.lshr206 = lshr i8 %bf.load196, 7
  %bf.cast207 = zext i8 %bf.lshr206 to i32
  %arrayidx209 = getelementptr [2 x [4 x i16]], ptr %avail_slots, i32 0, i32 %bf.cast207, i32 %j.1518
  %114 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx209, align 2
  %and211 = and i16 %115, %neg203
  store i16 %and211, ptr %arrayidx209, align 2
  br label %if.end214

if.end214:                                        ; preds = %if.then201, %if.end194.if.end214_crit_edge, %if.end164.if.end214_crit_edge
  %rates.1 = phi i32 [ %rates.0, %if.then201 ], [ %rates.0, %if.end194.if.end214_crit_edge ], [ -1, %if.end164.if.end214_crit_edge ]
  %neg216 = xor i16 %tmp.3, -1
  %and218 = and i16 %slots.0522, %neg216
  %116 = ptrtoint ptr %r167 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %r167, align 4
  %or450 = or i16 %117, %tmp.3
  store i16 %or450, ptr %r167, align 4
  %118 = ptrtoint ptr %rates81 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rates81, align 4
  %and227 = and i32 %119, %rates.1
  store i32 %and227, ptr %rates81, align 4
  br label %for.inc228

for.inc228:                                       ; preds = %if.end214, %for.body89.for.inc228_crit_edge
  %slots.1 = phi i16 [ %and218, %if.end214 ], [ %slots.0522, %for.body89.for.inc228_crit_edge ]
  %inc229 = add nuw nsw i32 %j.1518, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %j.1518)
  %cmp85 = icmp ugt i32 %j.1518, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %slots.1)
  %tobool88.not = icmp eq i16 %slots.1, 0
  %or.cond = select i1 %cmp85, i1 true, i1 %tobool88.not
  br i1 %or.cond, label %for.inc228.for.end230_crit_edge, label %for.inc228.for.body89_crit_edge

for.inc228.for.body89_crit_edge:                  ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body89

for.inc228.for.end230_crit_edge:                  ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end230

for.end230:                                       ; preds = %for.inc228.for.end230_crit_edge, %if.end50.for.end230_crit_edge
  %120 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load232 = load i8, ptr %copy_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load232)
  %cmp235 = icmp sgt i8 %bf.load232, -1
  br i1 %cmp235, label %land.lhs.true237, label %for.end230.if.end315thread-pre-split_crit_edge

for.end230.if.end315thread-pre-split_crit_edge:   ; preds = %for.end230
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315thread-pre-split

land.lhs.true237:                                 ; preds = %for.end230
  %121 = ptrtoint ptr %codec238 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %codec238, align 4
  %tobool240.not = icmp eq ptr %122, null
  br i1 %tobool240.not, label %land.lhs.true237.if.end315thread-pre-split_crit_edge, label %land.lhs.true241

land.lhs.true237.if.end315thread-pre-split_crit_edge: ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315thread-pre-split

land.lhs.true241:                                 ; preds = %land.lhs.true237
  %flags = getelementptr inbounds %struct.snd_ac97, ptr %122, i32 0, i32 19
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags, align 8
  %and244 = and i32 %124, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %land.lhs.true241.if.end315thread-pre-split_crit_edge, label %land.lhs.true246

land.lhs.true241.if.end315thread-pre-split_crit_edge: ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315thread-pre-split

land.lhs.true246:                                 ; preds = %land.lhs.true241
  %125 = ptrtoint ptr %rate_table to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %rate_table, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp254 = icmp eq i8 %126, 0
  br i1 %cmp254, label %if.then256, label %land.lhs.true246.if.end315thread-pre-split_crit_edge

land.lhs.true246.if.end315thread-pre-split_crit_edge: ; preds = %land.lhs.true246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315thread-pre-split

if.then256:                                       ; preds = %land.lhs.true246
  %arrayidx259 = getelementptr %struct.ac97_pcm, ptr %pcms, i32 %i.1525, i32 5, i32 1
  %127 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx259, align 4
  %129 = and i16 %128, 408
  call void @__sanitizer_cov_trace_const_cmp2(i16 408, i16 %129)
  %cmp264 = icmp eq i16 %129, 408
  br i1 %cmp264, label %if.then266, label %if.then256.if.end315thread-pre-split_crit_edge

if.then256.if.end315thread-pre-split_crit_edge:   ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end315thread-pre-split

if.then266:                                       ; preds = %if.then256
  %arrayidx268 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 5, i32 1
  %130 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 408, ptr %arrayidx268, align 4
  %rslots272 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 5, i32 1, i32 1
  %131 = ptrtoint ptr %rslots272 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 408, ptr %rslots272, align 2
  %rate_table276 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 5, i32 1, i32 2
  %132 = ptrtoint ptr %rate_table276 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %rate_table276, align 2
  %133 = ptrtoint ptr %codec238 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %codec238, align 4
  %codec282 = getelementptr %struct.ac97_pcm, ptr %call8.i.i, i32 %i.1525, i32 5, i32 1, i32 3
  %135 = ptrtoint ptr %codec282 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %codec282, align 4
  %136 = ptrtoint ptr %copy_flag to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load285 = load i8, ptr %copy_flag, align 4
  %137 = and i8 %bf.load285, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool289.not = icmp eq i8 %137, 0
  br i1 %tobool289.not, label %if.then266.if.end302_crit_edge, label %if.then290

if.then266.if.end302_crit_edge:                   ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end302

if.then290:                                       ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #7
  %bf.lshr295 = lshr i8 %bf.load285, 7
  %bf.cast296 = zext i8 %bf.lshr295 to i32
  %arrayidx297 = getelementptr [2 x [4 x i16]], ptr %avail_slots, i32 0, i32 %bf.cast296
  %138 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx297, align 2
  %140 = and i16 %139, -409
  store i16 %140, ptr %arrayidx297, align 2
  br label %if.end302

if.end302:                                        ; preds = %if.then290, %if.then266.if.end302_crit_edge
  %141 = ptrtoint ptr %no_vra to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load304 = load i8, ptr %no_vra, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load304)
  %tobool307.not = icmp sgt i8 %bf.load304, -1
  br i1 %tobool307.not, label %if.end6.i.i473, label %if.end302.if.end311_crit_edge

if.end302.if.end311_crit_edge:                    ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end311

if.end6.i.i473:                                   ; preds = %if.end302
  %142 = ptrtoint ptr %stream54 to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load.i.i471 = load i8, ptr %stream54, align 4
  %143 = and i8 %bf.load.i.i471, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i.i472 = icmp eq i8 %143, 0
  br i1 %tobool.not.i.i472, label %if.end8.i.i475, label %if.end6.i.i473.if.end6.i.i473.1_crit_edge

if.end6.i.i473.if.end6.i.i473.1_crit_edge:        ; preds = %if.end6.i.i473
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i473.1

if.end8.i.i475:                                   ; preds = %if.end6.i.i473
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i471)
  %cmp12.i.i474 = icmp sgt i8 %bf.load.i.i471, -1
  br i1 %cmp12.i.i474, label %if.then14.i.i479, label %if.end8.i.i475.get_slot_reg.exit.i484_crit_edge

if.end8.i.i475.get_slot_reg.exit.i484_crit_edge:  ; preds = %if.end8.i.i475
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.i484

if.then14.i.i479:                                 ; preds = %if.end8.i.i475
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %rate_table276 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %rate_table276, align 2
  %idxprom17.i.i476 = zext i8 %145 to i32
  %arrayidx20.i.i478 = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 1, i32 %idxprom17.i.i476, i32 0
  br label %get_slot_reg.exit.i484

get_slot_reg.exit.i484:                           ; preds = %if.then14.i.i479, %if.end8.i.i475.get_slot_reg.exit.i484_crit_edge
  %arrayidx23.sink.i.i483 = phi ptr [ %arrayidx20.i.i478, %if.then14.i.i479 ], [ @rate_cregs, %if.end8.i.i475.get_slot_reg.exit.i484_crit_edge ]
  %146 = ptrtoint ptr %arrayidx23.sink.i.i483 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx23.sink.i.i483, align 1
  %switch.tableidx536 = add i8 %147, -44
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx536)
  %148 = icmp ult i8 %switch.tableidx536, 9
  br i1 %148, label %switch.lookup535, label %get_slot_reg.exit.i484.if.end6.i.i473.1_crit_edge

get_slot_reg.exit.i484.if.end6.i.i473.1_crit_edge: ; preds = %get_slot_reg.exit.i484
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i473.1

switch.lookup535:                                 ; preds = %get_slot_reg.exit.i484
  call void @__sanitizer_cov_trace_pc() #7
  %149 = sext i8 %switch.tableidx536 to i32
  %switch.gep537 = getelementptr inbounds [9 x i32], ptr @switch.table.snd_ac97_pcm_assign.13, i32 0, i32 %149
  %150 = ptrtoint ptr %switch.gep537 to i32
  call void @__asan_load4_noabort(i32 %150)
  %switch.load538 = load i32, ptr %switch.gep537, align 4
  br label %if.end6.i.i473.1

if.end6.i.i473.1:                                 ; preds = %switch.lookup535, %get_slot_reg.exit.i484.if.end6.i.i473.1_crit_edge, %if.end6.i.i473.if.end6.i.i473.1_crit_edge
  %idx.0.i490 = phi i32 [ %switch.load538, %switch.lookup535 ], [ 5, %get_slot_reg.exit.i484.if.end6.i.i473.1_crit_edge ], [ 5, %if.end6.i.i473.if.end6.i.i473.1_crit_edge ]
  %151 = ptrtoint ptr %codec282 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %codec282, align 4
  %arrayidx10.i491 = getelementptr %struct.snd_ac97, ptr %152, i32 0, i32 20, i32 %idx.0.i490
  %153 = ptrtoint ptr %arrayidx10.i491 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx10.i491, align 4
  %155 = ptrtoint ptr %stream54 to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load.i.i471.1 = load i8, ptr %stream54, align 4
  %156 = and i8 %bf.load.i.i471.1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i.i472.1 = icmp eq i8 %156, 0
  br i1 %tobool.not.i.i472.1, label %if.end8.i.i475.1, label %if.end6.i.i473.1.if.end6.i.i473.4_crit_edge

if.end6.i.i473.1.if.end6.i.i473.4_crit_edge:      ; preds = %if.end6.i.i473.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i473.4

if.end8.i.i475.1:                                 ; preds = %if.end6.i.i473.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i471.1)
  %cmp12.i.i474.1 = icmp sgt i8 %bf.load.i.i471.1, -1
  br i1 %cmp12.i.i474.1, label %if.then14.i.i479.1, label %if.end8.i.i475.1.get_slot_reg.exit.i484.1_crit_edge

if.end8.i.i475.1.get_slot_reg.exit.i484.1_crit_edge: ; preds = %if.end8.i.i475.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.i484.1

if.then14.i.i479.1:                               ; preds = %if.end8.i.i475.1
  call void @__sanitizer_cov_trace_pc() #7
  %157 = ptrtoint ptr %rate_table276 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %rate_table276, align 2
  %idxprom17.i.i476.1 = zext i8 %158 to i32
  %arrayidx20.i.i478.1 = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 1, i32 %idxprom17.i.i476.1, i32 1
  br label %get_slot_reg.exit.i484.1

get_slot_reg.exit.i484.1:                         ; preds = %if.then14.i.i479.1, %if.end8.i.i475.1.get_slot_reg.exit.i484.1_crit_edge
  %arrayidx23.sink.i.i483.1 = phi ptr [ %arrayidx20.i.i478.1, %if.then14.i.i479.1 ], [ getelementptr inbounds ([9 x i8], ptr @rate_cregs, i32 0, i32 1), %if.end8.i.i475.1.get_slot_reg.exit.i484.1_crit_edge ]
  %159 = ptrtoint ptr %arrayidx23.sink.i.i483.1 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx23.sink.i.i483.1, align 1
  %switch.tableidx540 = add i8 %160, -44
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx540)
  %161 = icmp ult i8 %switch.tableidx540, 9
  br i1 %161, label %switch.lookup539, label %get_slot_reg.exit.i484.1.if.end6.i.i473.4_crit_edge

get_slot_reg.exit.i484.1.if.end6.i.i473.4_crit_edge: ; preds = %get_slot_reg.exit.i484.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i473.4

switch.lookup539:                                 ; preds = %get_slot_reg.exit.i484.1
  call void @__sanitizer_cov_trace_pc() #7
  %162 = sext i8 %switch.tableidx540 to i32
  %switch.gep541 = getelementptr inbounds [9 x i32], ptr @switch.table.snd_ac97_pcm_assign.14, i32 0, i32 %162
  %163 = ptrtoint ptr %switch.gep541 to i32
  call void @__asan_load4_noabort(i32 %163)
  %switch.load542 = load i32, ptr %switch.gep541, align 4
  br label %if.end6.i.i473.4

if.end6.i.i473.4:                                 ; preds = %switch.lookup539, %get_slot_reg.exit.i484.1.if.end6.i.i473.4_crit_edge, %if.end6.i.i473.1.if.end6.i.i473.4_crit_edge
  %idx.0.i490.1 = phi i32 [ %switch.load542, %switch.lookup539 ], [ 5, %get_slot_reg.exit.i484.1.if.end6.i.i473.4_crit_edge ], [ 5, %if.end6.i.i473.1.if.end6.i.i473.4_crit_edge ]
  %164 = ptrtoint ptr %codec282 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %codec282, align 4
  %arrayidx10.i491.1 = getelementptr %struct.snd_ac97, ptr %165, i32 0, i32 20, i32 %idx.0.i490.1
  %166 = ptrtoint ptr %arrayidx10.i491.1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx10.i491.1, align 4
  %and11.i492.1 = and i32 %167, %154
  %168 = ptrtoint ptr %stream54 to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load.i.i471.4 = load i8, ptr %stream54, align 4
  %169 = and i8 %bf.load.i.i471.4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i.i472.4 = icmp eq i8 %169, 0
  br i1 %tobool.not.i.i472.4, label %if.end8.i.i475.4, label %if.end6.i.i473.4.if.end6.i.i473.5_crit_edge

if.end6.i.i473.4.if.end6.i.i473.5_crit_edge:      ; preds = %if.end6.i.i473.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i473.5

if.end8.i.i475.4:                                 ; preds = %if.end6.i.i473.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i471.4)
  %cmp12.i.i474.4 = icmp sgt i8 %bf.load.i.i471.4, -1
  br i1 %cmp12.i.i474.4, label %if.then14.i.i479.4, label %if.end8.i.i475.4.get_slot_reg.exit.i484.4_crit_edge

if.end8.i.i475.4.get_slot_reg.exit.i484.4_crit_edge: ; preds = %if.end8.i.i475.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.i484.4

if.then14.i.i479.4:                               ; preds = %if.end8.i.i475.4
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %rate_table276 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %rate_table276, align 2
  %idxprom17.i.i476.4 = zext i8 %171 to i32
  %arrayidx20.i.i478.4 = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 1, i32 %idxprom17.i.i476.4, i32 4
  br label %get_slot_reg.exit.i484.4

get_slot_reg.exit.i484.4:                         ; preds = %if.then14.i.i479.4, %if.end8.i.i475.4.get_slot_reg.exit.i484.4_crit_edge
  %arrayidx23.sink.i.i483.4 = phi ptr [ %arrayidx20.i.i478.4, %if.then14.i.i479.4 ], [ getelementptr inbounds ([9 x i8], ptr @rate_cregs, i32 0, i32 4), %if.end8.i.i475.4.get_slot_reg.exit.i484.4_crit_edge ]
  %172 = ptrtoint ptr %arrayidx23.sink.i.i483.4 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx23.sink.i.i483.4, align 1
  %switch.tableidx544 = add i8 %173, -44
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx544)
  %174 = icmp ult i8 %switch.tableidx544, 9
  br i1 %174, label %switch.lookup543, label %get_slot_reg.exit.i484.4.if.end6.i.i473.5_crit_edge

get_slot_reg.exit.i484.4.if.end6.i.i473.5_crit_edge: ; preds = %get_slot_reg.exit.i484.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i473.5

switch.lookup543:                                 ; preds = %get_slot_reg.exit.i484.4
  call void @__sanitizer_cov_trace_pc() #7
  %175 = sext i8 %switch.tableidx544 to i32
  %switch.gep545 = getelementptr inbounds [9 x i32], ptr @switch.table.snd_ac97_pcm_assign.15, i32 0, i32 %175
  %176 = ptrtoint ptr %switch.gep545 to i32
  call void @__asan_load4_noabort(i32 %176)
  %switch.load546 = load i32, ptr %switch.gep545, align 4
  br label %if.end6.i.i473.5

if.end6.i.i473.5:                                 ; preds = %switch.lookup543, %get_slot_reg.exit.i484.4.if.end6.i.i473.5_crit_edge, %if.end6.i.i473.4.if.end6.i.i473.5_crit_edge
  %idx.0.i490.4 = phi i32 [ %switch.load546, %switch.lookup543 ], [ 5, %get_slot_reg.exit.i484.4.if.end6.i.i473.5_crit_edge ], [ 5, %if.end6.i.i473.4.if.end6.i.i473.5_crit_edge ]
  %177 = ptrtoint ptr %codec282 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %codec282, align 4
  %arrayidx10.i491.4 = getelementptr %struct.snd_ac97, ptr %178, i32 0, i32 20, i32 %idx.0.i490.4
  %179 = ptrtoint ptr %arrayidx10.i491.4 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx10.i491.4, align 4
  %and11.i492.4 = and i32 %180, %and11.i492.1
  %181 = ptrtoint ptr %stream54 to i32
  call void @__asan_load1_noabort(i32 %181)
  %bf.load.i.i471.5 = load i8, ptr %stream54, align 4
  %182 = and i8 %bf.load.i.i471.5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i.i472.5 = icmp eq i8 %182, 0
  br i1 %tobool.not.i.i472.5, label %if.end8.i.i475.5, label %if.end6.i.i473.5.for.inc.i497.8_crit_edge

if.end6.i.i473.5.for.inc.i497.8_crit_edge:        ; preds = %if.end6.i.i473.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i497.8

if.end8.i.i475.5:                                 ; preds = %if.end6.i.i473.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i471.5)
  %cmp12.i.i474.5 = icmp sgt i8 %bf.load.i.i471.5, -1
  br i1 %cmp12.i.i474.5, label %if.then14.i.i479.5, label %if.end8.i.i475.5.get_slot_reg.exit.i484.5_crit_edge

if.end8.i.i475.5.get_slot_reg.exit.i484.5_crit_edge: ; preds = %if.end8.i.i475.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.i484.5

if.then14.i.i479.5:                               ; preds = %if.end8.i.i475.5
  call void @__sanitizer_cov_trace_pc() #7
  %183 = ptrtoint ptr %rate_table276 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %rate_table276, align 2
  %idxprom17.i.i476.5 = zext i8 %184 to i32
  %arrayidx20.i.i478.5 = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 1, i32 %idxprom17.i.i476.5, i32 5
  br label %get_slot_reg.exit.i484.5

get_slot_reg.exit.i484.5:                         ; preds = %if.then14.i.i479.5, %if.end8.i.i475.5.get_slot_reg.exit.i484.5_crit_edge
  %arrayidx23.sink.i.i483.5 = phi ptr [ %arrayidx20.i.i478.5, %if.then14.i.i479.5 ], [ getelementptr inbounds ([9 x i8], ptr @rate_cregs, i32 0, i32 5), %if.end8.i.i475.5.get_slot_reg.exit.i484.5_crit_edge ]
  %185 = ptrtoint ptr %arrayidx23.sink.i.i483.5 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx23.sink.i.i483.5, align 1
  %switch.tableidx548 = add i8 %186, -44
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx548)
  %187 = icmp ult i8 %switch.tableidx548, 9
  br i1 %187, label %switch.lookup547, label %get_slot_reg.exit.i484.5.for.inc.i497.8_crit_edge

get_slot_reg.exit.i484.5.for.inc.i497.8_crit_edge: ; preds = %get_slot_reg.exit.i484.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i497.8

switch.lookup547:                                 ; preds = %get_slot_reg.exit.i484.5
  call void @__sanitizer_cov_trace_pc() #7
  %188 = sext i8 %switch.tableidx548 to i32
  %switch.gep549 = getelementptr inbounds [9 x i32], ptr @switch.table.snd_ac97_pcm_assign.16, i32 0, i32 %188
  %189 = ptrtoint ptr %switch.gep549 to i32
  call void @__asan_load4_noabort(i32 %189)
  %switch.load550 = load i32, ptr %switch.gep549, align 4
  br label %for.inc.i497.8

for.inc.i497.8:                                   ; preds = %switch.lookup547, %get_slot_reg.exit.i484.5.for.inc.i497.8_crit_edge, %if.end6.i.i473.5.for.inc.i497.8_crit_edge
  %idx.0.i490.5 = phi i32 [ %switch.load550, %switch.lookup547 ], [ 5, %get_slot_reg.exit.i484.5.for.inc.i497.8_crit_edge ], [ 5, %if.end6.i.i473.5.for.inc.i497.8_crit_edge ]
  %190 = ptrtoint ptr %codec282 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %codec282, align 4
  %arrayidx10.i491.5 = getelementptr %struct.snd_ac97, ptr %191, i32 0, i32 20, i32 %idx.0.i490.5
  %192 = ptrtoint ptr %arrayidx10.i491.5 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx10.i491.5, align 4
  %and11.i492.5 = and i32 %193, %and11.i492.4
  br label %if.end311

if.end311:                                        ; preds = %for.inc.i497.8, %if.end302.if.end311_crit_edge
  %rates.2 = phi i32 [ 1024, %if.end302.if.end311_crit_edge ], [ %and11.i492.5, %for.inc.i497.8 ]
  %194 = ptrtoint ptr %rates81 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %rates81, align 4
  %or313 = or i32 %195, %rates.2
  store i32 %or313, ptr %rates81, align 4
  br label %if.end315

if.end315thread-pre-split:                        ; preds = %if.then256.if.end315thread-pre-split_crit_edge, %land.lhs.true246.if.end315thread-pre-split_crit_edge, %land.lhs.true241.if.end315thread-pre-split_crit_edge, %land.lhs.true237.if.end315thread-pre-split_crit_edge, %for.end230.if.end315thread-pre-split_crit_edge
  %196 = ptrtoint ptr %rates81 to i32
  call void @__asan_load4_noabort(i32 %196)
  %.pr = load i32, ptr %rates81, align 4
  br label %if.end315

if.end315:                                        ; preds = %if.end315thread-pre-split, %if.end311
  %197 = phi i32 [ %.pr, %if.end315thread-pre-split ], [ %or313, %if.end311 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %197)
  %cmp317 = icmp eq i32 %197, -1
  br i1 %cmp317, label %if.then319, label %if.end315.for.inc322_crit_edge

if.end315.for.inc322_crit_edge:                   ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc322

if.then319:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #7
  %198 = ptrtoint ptr %rates81 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %rates81, align 4
  br label %for.inc322

for.inc322:                                       ; preds = %if.then319, %if.end315.for.inc322_crit_edge, %if.then49
  %inc323 = add nuw nsw i32 %i.1525, 1
  %exitcond534.not = icmp eq i32 %inc323, %conv
  br i1 %exitcond534.not, label %for.inc322.for.end324_crit_edge, label %for.inc322.for.body45_crit_edge

for.inc322.for.body45_crit_edge:                  ; preds = %for.inc322
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body45

for.inc322.for.end324_crit_edge:                  ; preds = %for.inc322
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end324

for.end324:                                       ; preds = %for.inc322.for.end324_crit_edge, %for.cond41.preheader.for.end324_crit_edge
  %pcms_count325 = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 9
  %199 = ptrtoint ptr %pcms_count325 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %pcms_count, ptr %pcms_count325, align 4
  %pcms326 = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 10
  %200 = ptrtoint ptr %pcms326 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call8.i.i, ptr %pcms326, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end324, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end324 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %spdif_slots) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate_table) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %avail_slots) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ac97_pcm_open(ptr nocapture noundef %pcm, i32 noundef %rate, i32 noundef %cfg, i16 noundef zeroext %slots) #0 align 64 {
entry:
  %reg_ok = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg_ok) #5
  %0 = call ptr @memset(ptr %reg_ok, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 48000
  %conv = zext i1 %cmp to i32
  %1 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %cfg)
  %cmp2 = icmp eq i32 %cfg, 20
  br i1 %cmp2, label %for.cond.preheader, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

for.cond.preheader:                               ; preds = %entry
  %conv13 = trunc i32 %rate to i16
  %arrayidx = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 11, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond.preheader
  %ext_id = getelementptr inbounds %struct.snd_ac97, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ext_id, align 2
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not = icmp eq i16 %7, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  %call = tail call fastcc i32 @set_spdif_rate(ptr noundef nonnull %4, i16 noundef zeroext %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp slt i32 %call, 0
  br i1 %cmp14, label %if.then10.cleanup_crit_edge, label %if.then10.for.inc_crit_edge

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %if.then10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %ext_id.1 = getelementptr inbounds %struct.snd_ac97, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %ext_id.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ext_id.1, align 2
  %12 = and i16 %11, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool9.not.1 = icmp eq i16 %12, 0
  br i1 %tobool9.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then10.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then10.1:                                      ; preds = %land.lhs.true.1
  %call.1 = tail call fastcc i32 @set_spdif_rate(ptr noundef nonnull %9, i16 noundef zeroext %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp14.1 = icmp slt i32 %call.1, 0
  br i1 %cmp14.1, label %if.then10.1.cleanup_crit_edge, label %if.then10.1.for.inc.1_crit_edge

if.then10.1.for.inc.1_crit_edge:                  ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then10.1.cleanup_crit_edge:                    ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %if.then10.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %14, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %ext_id.2 = getelementptr inbounds %struct.snd_ac97, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %ext_id.2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ext_id.2, align 2
  %17 = and i16 %16, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool9.not.2 = icmp eq i16 %17, 0
  br i1 %tobool9.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then10.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then10.2:                                      ; preds = %land.lhs.true.2
  %call.2 = tail call fastcc i32 @set_spdif_rate(ptr noundef nonnull %14, i16 noundef zeroext %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp14.2 = icmp slt i32 %call.2, 0
  br i1 %cmp14.2, label %if.then10.2.cleanup_crit_edge, label %if.then10.2.for.inc.2_crit_edge

if.then10.2.for.inc.2_crit_edge:                  ; preds = %if.then10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then10.2.cleanup_crit_edge:                    ; preds = %if.then10.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %if.then10.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 11, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %19, null
  br i1 %tobool.not.3, label %for.inc.2.if.end18_crit_edge, label %land.lhs.true.3

for.inc.2.if.end18_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true.3:                                  ; preds = %for.inc.2
  %ext_id.3 = getelementptr inbounds %struct.snd_ac97, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %ext_id.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ext_id.3, align 2
  %22 = and i16 %21, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool9.not.3 = icmp eq i16 %22, 0
  br i1 %tobool9.not.3, label %land.lhs.true.3.if.end18_crit_edge, label %if.then10.3

land.lhs.true.3.if.end18_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then10.3:                                      ; preds = %land.lhs.true.3
  %call.3 = tail call fastcc i32 @set_spdif_rate(ptr noundef nonnull %19, i16 noundef zeroext %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp14.3 = icmp slt i32 %call.3, 0
  br i1 %cmp14.3, label %if.then10.3.cleanup_crit_edge, label %if.then10.3.if.end18_crit_edge

if.then10.3.if.end18_crit_edge:                   ; preds = %if.then10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then10.3.cleanup_crit_edge:                    ; preds = %if.then10.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.then10.3.if.end18_crit_edge, %land.lhs.true.3.if.end18_crit_edge, %for.inc.2.if.end18_crit_edge, %entry.if.end18_crit_edge
  %23 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm, align 4
  %bus_lock = getelementptr inbounds %struct.snd_ac97_bus, ptr %24, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %bus_lock) #5
  %conv24 = zext i16 %slots to i32
  %stream = getelementptr inbounds %struct.ac97_pcm, ptr %pcm, i32 0, i32 1
  %arrayidx45 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 0
  %arrayidx45.1 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 1
  %arrayidx45.2 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 2
  %arrayidx45.3 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 3
  br label %for.body23

for.body23:                                       ; preds = %for.inc71.for.body23_crit_edge, %if.end18
  %i.0257 = phi i32 [ 3, %if.end18 ], [ %inc72, %for.inc71.for.body23_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0257
  %and25 = and i32 %shl, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.body23.for.inc71_crit_edge, label %for.cond29.preheader

for.body23.for.inc71_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

for.cond29.preheader:                             ; preds = %for.body23
  %25 = trunc i32 %shl to i16
  %26 = ptrtoint ptr %stream to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %stream, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %arrayidx34 = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 8, i32 %bf.cast, i32 0
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %28 to i32
  %and37 = and i32 %shl, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end42, label %for.cond29.preheader.if.then39_crit_edge

for.cond29.preheader.if.then39_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then39:                                        ; preds = %for.inc63.2.if.then39_crit_edge, %for.inc63.1.if.then39_crit_edge, %for.inc63.if.then39_crit_edge, %for.cond29.preheader.if.then39_crit_edge
  %29 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcm, align 4
  %bus_lock41 = getelementptr inbounds %struct.snd_ac97_bus, ptr %30, i32 0, i32 7
  tail call void @_raw_spin_unlock_irq(ptr noundef %bus_lock41) #5
  br label %error

if.end42:                                         ; preds = %for.cond29.preheader
  %31 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx45, align 2
  %conv46 = zext i16 %32 to i32
  %and48 = and i32 %shl, %conv46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end42.for.inc63_crit_edge, label %if.then50

if.end42.for.inc63_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc63

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %conv60 = or i16 %28, %25
  %33 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv60, ptr %arrayidx34, align 2
  br label %for.inc63

for.inc63:                                        ; preds = %if.then50, %if.end42.for.inc63_crit_edge
  %ok_flag.1 = phi i32 [ 1, %if.then50 ], [ 0, %if.end42.for.inc63_crit_edge ]
  %34 = ptrtoint ptr %stream to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.1 = load i8, ptr %stream, align 4
  %bf.lshr.1 = lshr i8 %bf.load.1, 7
  %bf.cast.1 = zext i8 %bf.lshr.1 to i32
  %arrayidx34.1 = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 8, i32 %bf.cast.1, i32 1
  %35 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx34.1, align 2
  %conv35.1 = zext i16 %36 to i32
  %and37.1 = and i32 %shl, %conv35.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.1)
  %tobool38.not.1 = icmp eq i32 %and37.1, 0
  br i1 %tobool38.not.1, label %if.end42.1, label %for.inc63.if.then39_crit_edge

for.inc63.if.then39_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.end42.1:                                       ; preds = %for.inc63
  %37 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx45.1, align 2
  %conv46.1 = zext i16 %38 to i32
  %and48.1 = and i32 %shl, %conv46.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.1)
  %tobool49.not.1 = icmp eq i32 %and48.1, 0
  br i1 %tobool49.not.1, label %if.end42.1.for.inc63.1_crit_edge, label %if.then50.1

if.end42.1.for.inc63.1_crit_edge:                 ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc63.1

if.then50.1:                                      ; preds = %if.end42.1
  call void @__sanitizer_cov_trace_pc() #7
  %conv60.1 = or i16 %36, %25
  %39 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv60.1, ptr %arrayidx34.1, align 2
  %inc61.1 = add nuw nsw i32 %ok_flag.1, 1
  br label %for.inc63.1

for.inc63.1:                                      ; preds = %if.then50.1, %if.end42.1.for.inc63.1_crit_edge
  %ok_flag.1.1 = phi i32 [ %inc61.1, %if.then50.1 ], [ %ok_flag.1, %if.end42.1.for.inc63.1_crit_edge ]
  %40 = ptrtoint ptr %stream to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.2 = load i8, ptr %stream, align 4
  %bf.lshr.2 = lshr i8 %bf.load.2, 7
  %bf.cast.2 = zext i8 %bf.lshr.2 to i32
  %arrayidx34.2 = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 8, i32 %bf.cast.2, i32 2
  %41 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx34.2, align 2
  %conv35.2 = zext i16 %42 to i32
  %and37.2 = and i32 %shl, %conv35.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.2)
  %tobool38.not.2 = icmp eq i32 %and37.2, 0
  br i1 %tobool38.not.2, label %if.end42.2, label %for.inc63.1.if.then39_crit_edge

for.inc63.1.if.then39_crit_edge:                  ; preds = %for.inc63.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.end42.2:                                       ; preds = %for.inc63.1
  %43 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx45.2, align 2
  %conv46.2 = zext i16 %44 to i32
  %and48.2 = and i32 %shl, %conv46.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.2)
  %tobool49.not.2 = icmp eq i32 %and48.2, 0
  br i1 %tobool49.not.2, label %if.end42.2.for.inc63.2_crit_edge, label %if.then50.2

if.end42.2.for.inc63.2_crit_edge:                 ; preds = %if.end42.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc63.2

if.then50.2:                                      ; preds = %if.end42.2
  call void @__sanitizer_cov_trace_pc() #7
  %conv60.2 = or i16 %42, %25
  %45 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv60.2, ptr %arrayidx34.2, align 2
  %inc61.2 = add nuw nsw i32 %ok_flag.1.1, 1
  br label %for.inc63.2

for.inc63.2:                                      ; preds = %if.then50.2, %if.end42.2.for.inc63.2_crit_edge
  %ok_flag.1.2 = phi i32 [ %inc61.2, %if.then50.2 ], [ %ok_flag.1.1, %if.end42.2.for.inc63.2_crit_edge ]
  %46 = ptrtoint ptr %stream to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.3 = load i8, ptr %stream, align 4
  %bf.lshr.3 = lshr i8 %bf.load.3, 7
  %bf.cast.3 = zext i8 %bf.lshr.3 to i32
  %arrayidx34.3 = getelementptr %struct.snd_ac97_bus, ptr %2, i32 0, i32 8, i32 %bf.cast.3, i32 3
  %47 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx34.3, align 2
  %conv35.3 = zext i16 %48 to i32
  %and37.3 = and i32 %shl, %conv35.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.3)
  %tobool38.not.3 = icmp eq i32 %and37.3, 0
  br i1 %tobool38.not.3, label %if.end42.3, label %for.inc63.2.if.then39_crit_edge

for.inc63.2.if.then39_crit_edge:                  ; preds = %for.inc63.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.end42.3:                                       ; preds = %for.inc63.2
  %49 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx45.3, align 2
  %conv46.3 = zext i16 %50 to i32
  %and48.3 = and i32 %shl, %conv46.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.3)
  %tobool49.not.3 = icmp eq i32 %and48.3, 0
  br i1 %tobool49.not.3, label %for.inc63.3, label %for.inc63.3.thread

for.inc63.3.thread:                               ; preds = %if.end42.3
  call void @__sanitizer_cov_trace_pc() #7
  %conv60.3 = or i16 %48, %25
  %51 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv60.3, ptr %arrayidx34.3, align 2
  br label %for.inc71

for.inc63.3:                                      ; preds = %if.end42.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok_flag.1.2)
  %tobool66.not = icmp eq i32 %ok_flag.1.2, 0
  br i1 %tobool66.not, label %if.then67, label %for.inc63.3.for.inc71_crit_edge

for.inc63.3.for.inc71_crit_edge:                  ; preds = %for.inc63.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc71

if.then67:                                        ; preds = %for.inc63.3
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcm, align 4
  %bus_lock69 = getelementptr inbounds %struct.snd_ac97_bus, ptr %53, i32 0, i32 7
  tail call void @_raw_spin_unlock_irq(ptr noundef %bus_lock69) #5
  %card = getelementptr inbounds %struct.snd_ac97_bus, ptr %2, i32 0, i32 3
  %54 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str, i32 noundef %i.0257) #9
  br label %error

for.inc71:                                        ; preds = %for.inc63.3.for.inc71_crit_edge, %for.inc63.3.thread, %for.body23.for.inc71_crit_edge
  %inc72 = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc72, 12
  br i1 %exitcond.not, label %for.end73, label %for.inc71.for.body23_crit_edge

for.inc71.for.body23_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body23

for.end73:                                        ; preds = %for.inc71
  %conv74 = zext i1 %cmp to i16
  %cur_dbl = getelementptr inbounds %struct.ac97_pcm, ptr %pcm, i32 0, i32 3
  %58 = ptrtoint ptr %cur_dbl to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv74, ptr %cur_dbl, align 4
  %59 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pcm, align 4
  %bus_lock76 = getelementptr inbounds %struct.snd_ac97_bus, ptr %60, i32 0, i32 7
  tail call void @_raw_spin_unlock_irq(ptr noundef %bus_lock76) #5
  %card126 = getelementptr inbounds %struct.snd_ac97_bus, ptr %2, i32 0, i32 3
  br label %for.body80

for.body80:                                       ; preds = %for.inc157.for.body80_crit_edge, %for.end73
  %i.1264 = phi i32 [ 3, %for.end73 ], [ %inc158, %for.inc157.for.body80_crit_edge ]
  %shl82 = shl nuw nsw i32 1, %i.1264
  %and83 = and i32 %shl82, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %for.body80.for.inc157_crit_edge, label %for.cond87.preheader

for.body80.for.inc157_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc157

for.cond87.preheader:                             ; preds = %for.body80
  %conv101 = trunc i32 %i.1264 to i16
  %61 = add i16 %conv101, -12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9, i16 %61)
  %62 = icmp ult i16 %61, -9
  %sub22.i = add nsw i32 %i.1264, -3
  %arrayidx23.i = getelementptr [9 x i8], ptr @rate_cregs, i32 0, i32 %sub22.i
  br label %for.body90

for.body90:                                       ; preds = %for.inc154.for.body90_crit_edge, %for.cond87.preheader
  %cidx.2259 = phi i32 [ 0, %for.cond87.preheader ], [ %inc155, %for.inc154.for.body90_crit_edge ]
  %arrayidx94 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 %cidx.2259
  %63 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx94, align 2
  %conv95 = zext i16 %64 to i32
  %and97 = and i32 %shl82, %conv95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %for.body90.for.inc154_crit_edge, label %if.then99

for.body90.for.inc154_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc154

if.then99:                                        ; preds = %for.body90
  br i1 %62, label %if.then99.do.end109_crit_edge, label %if.end6.i

if.then99.do.end109_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end109

if.end6.i:                                        ; preds = %if.then99
  %65 = ptrtoint ptr %stream to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %stream, align 4
  %66 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end6.i.if.end112_crit_edge

if.end6.i.if.end112_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.end8.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp12.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp12.i, label %if.then14.i, label %if.end8.i.get_slot_reg.exit_crit_edge

if.end8.i.get_slot_reg.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16.i = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 2, i32 %cidx.2259
  %67 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx16.i, align 1
  %idxprom17.i = zext i8 %68 to i32
  %arrayidx20.i = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 %conv, i32 %idxprom17.i, i32 %sub22.i
  br label %get_slot_reg.exit

get_slot_reg.exit:                                ; preds = %if.then14.i, %if.end8.i.get_slot_reg.exit_crit_edge
  %arrayidx23.sink.i = phi ptr [ %arrayidx20.i, %if.then14.i ], [ %arrayidx23.i, %if.end8.i.get_slot_reg.exit_crit_edge ]
  %69 = ptrtoint ptr %arrayidx23.sink.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx23.sink.i, align 1
  %conv103 = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp104 = icmp eq i8 %70, -1
  br i1 %cmp104, label %get_slot_reg.exit.do.end109_crit_edge, label %get_slot_reg.exit.if.end112_crit_edge

get_slot_reg.exit.if.end112_crit_edge:            ; preds = %get_slot_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

get_slot_reg.exit.do.end109_crit_edge:            ; preds = %get_slot_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end109

do.end109:                                        ; preds = %get_slot_reg.exit.do.end109_crit_edge, %if.then99.do.end109_crit_edge
  %71 = ptrtoint ptr %card126 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %card126, align 4
  %dev111 = getelementptr inbounds %struct.snd_card, ptr %72, i32 0, i32 27
  %73 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev111, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.6, i32 noundef %i.1264) #9
  br label %for.inc154

if.end112:                                        ; preds = %get_slot_reg.exit.if.end112_crit_edge, %if.end6.i.if.end112_crit_edge
  %conv103249 = phi i32 [ %conv103, %get_slot_reg.exit.if.end112_crit_edge ], [ 58, %if.end6.i.if.end112_crit_edge ]
  %arrayidx113 = getelementptr [4 x i32], ptr %reg_ok, i32 0, i32 %cidx.2259
  %75 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx113, align 4
  %sub = add nsw i32 %conv103249, -44
  %shl115 = shl nuw i32 1, %sub
  %and116 = and i32 %shl115, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body120, label %if.end112.for.inc154_crit_edge

if.end112.for.inc154_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc154

do.body120:                                       ; preds = %if.end112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ac97_pcm_open.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ac97_pcm_open, %if.then125)) #5
          to label %do.end131 [label %if.then125], !srcloc !47

if.then125:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %card126 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card126, align 4
  %dev127 = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 27
  %79 = ptrtoint ptr %dev127 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev127, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ac97_pcm_open.__UNIQUE_ID_ddebug234, ptr noundef %80, ptr noundef nonnull @.str.9, i32 noundef %conv103249, i32 noundef %rate) #5
  br label %do.end131

do.end131:                                        ; preds = %if.then125, %do.body120
  %arrayidx135 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 3, i32 %cidx.2259
  %81 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx135, align 4
  %call137 = tail call i32 @snd_ac97_set_rate(ptr noundef %82, i32 noundef %conv103249, i32 noundef %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %do.end143, label %if.else

do.end143:                                        ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %card126 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card126, align 4
  %dev145 = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 27
  %85 = ptrtoint ptr %dev145 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev145, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.11, i32 noundef %cidx.2259, i32 noundef %conv103249, i32 noundef %rate, i32 noundef %call137) #9
  br label %for.inc154

if.else:                                          ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #7
  %or151 = or i32 %shl115, %76
  %87 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or151, ptr %arrayidx113, align 4
  br label %for.inc154

for.inc154:                                       ; preds = %if.else, %do.end143, %if.end112.for.inc154_crit_edge, %do.end109, %for.body90.for.inc154_crit_edge
  %inc155 = add nuw nsw i32 %cidx.2259, 1
  %exitcond268.not = icmp eq i32 %inc155, 4
  br i1 %exitcond268.not, label %for.inc154.for.inc157_crit_edge, label %for.inc154.for.body90_crit_edge

for.inc154.for.body90_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body90

for.inc154.for.inc157_crit_edge:                  ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc157

for.inc157:                                       ; preds = %for.inc154.for.inc157_crit_edge, %for.body80.for.inc157_crit_edge
  %inc158 = add nuw nsw i32 %i.1264, 1
  %exitcond269.not = icmp eq i32 %inc158, 12
  br i1 %exitcond269.not, label %for.end159, label %for.inc157.for.body80_crit_edge

for.inc157.for.body80_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body80

for.end159:                                       ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #7
  %aslots = getelementptr inbounds %struct.ac97_pcm, ptr %pcm, i32 0, i32 2
  %88 = ptrtoint ptr %aslots to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %slots, ptr %aslots, align 2
  br label %cleanup

error:                                            ; preds = %if.then67, %if.then39
  %err.0 = phi i32 [ -16, %if.then39 ], [ -11, %if.then67 ]
  %aslots160 = getelementptr inbounds %struct.ac97_pcm, ptr %pcm, i32 0, i32 2
  %89 = ptrtoint ptr %aslots160 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %slots, ptr %aslots160, align 2
  %call161 = tail call i32 @snd_ac97_pcm_close(ptr noundef %pcm)
  br label %cleanup

cleanup:                                          ; preds = %error, %for.end159, %if.then10.3.cleanup_crit_edge, %if.then10.2.cleanup_crit_edge, %if.then10.1.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %for.end159 ], [ %call, %if.then10.cleanup_crit_edge ], [ %call.1, %if.then10.1.cleanup_crit_edge ], [ %call.2, %if.then10.2.cleanup_crit_edge ], [ %call.3, %if.then10.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg_ok) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ac97_pcm_close(ptr nocapture noundef %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aslots = getelementptr inbounds %struct.ac97_pcm, ptr %pcm, i32 0, i32 2
  %0 = ptrtoint ptr %aslots to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %aslots, align 2
  %cur_dbl = getelementptr inbounds %struct.ac97_pcm, ptr %pcm, i32 0, i32 3
  %2 = ptrtoint ptr %cur_dbl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cur_dbl, align 4
  %conv = zext i16 %3 to i32
  %conv2 = zext i16 %1 to i32
  %spdif.i = getelementptr inbounds %struct.ac97_pcm, ptr %pcm, i32 0, i32 1
  %arrayidx8 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 0
  %arrayidx16.i = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 2, i32 0
  %arrayidx19 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 3, i32 0
  %arrayidx8.1 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 1
  %arrayidx16.i.1 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 2, i32 1
  %arrayidx19.1 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 3, i32 1
  %arrayidx8.2 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 2
  %arrayidx16.i.2 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 2, i32 2
  %arrayidx19.2 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 3, i32 2
  %arrayidx8.3 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 1, i32 3
  %arrayidx16.i.3 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 2, i32 3
  %arrayidx19.3 = getelementptr %struct.ac97_pcm, ptr %pcm, i32 0, i32 5, i32 %conv, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %entry
  %i.089 = phi i32 [ 3, %entry ], [ %inc23, %for.inc22.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.089
  %and = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc22_crit_edge, label %for.cond3.preheader

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

for.cond3.preheader:                              ; preds = %for.body
  %conv15 = trunc i32 %i.089 to i16
  %4 = add i16 %conv15, -12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9, i16 %4)
  %5 = icmp ult i16 %4, -9
  %sub22.i = add nsw i32 %i.089, -3
  %arrayidx23.i = getelementptr [9 x i8], ptr @rate_cregs, i32 0, i32 %sub22.i
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %7 to i32
  %and11 = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.cond3.preheader.for.inc_crit_edge, label %if.then13

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13:                                        ; preds = %for.cond3.preheader
  br i1 %5, label %if.then13.get_slot_reg.exit_crit_edge, label %if.end6.i

if.then13.get_slot_reg.exit_crit_edge:            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit

if.end6.i:                                        ; preds = %if.then13
  %8 = ptrtoint ptr %spdif.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %spdif.i, align 4
  %9 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end6.i.get_slot_reg.exit_crit_edge

if.end6.i.get_slot_reg.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit

if.end8.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp12.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp12.i, label %if.then14.i, label %if.end8.i.return.sink.split.i_crit_edge

if.end8.i.return.sink.split.i_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  %idxprom17.i = zext i8 %11 to i32
  %arrayidx20.i = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 %conv, i32 %idxprom17.i, i32 %sub22.i
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.then14.i, %if.end8.i.return.sink.split.i_crit_edge
  %arrayidx23.sink.i = phi ptr [ %arrayidx20.i, %if.then14.i ], [ %arrayidx23.i, %if.end8.i.return.sink.split.i_crit_edge ]
  %12 = ptrtoint ptr %arrayidx23.sink.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23.sink.i, align 1
  br label %get_slot_reg.exit

get_slot_reg.exit:                                ; preds = %return.sink.split.i, %if.end6.i.get_slot_reg.exit_crit_edge, %if.then13.get_slot_reg.exit_crit_edge
  %retval.0.i = phi i8 [ -1, %if.then13.get_slot_reg.exit_crit_edge ], [ 58, %if.end6.i.get_slot_reg.exit_crit_edge ], [ %13, %return.sink.split.i ]
  %conv16 = zext i8 %retval.0.i to i32
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  %call20 = tail call i32 @snd_ac97_update_power(ptr noundef %15, i32 noundef %conv16, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %get_slot_reg.exit, %for.cond3.preheader.for.inc_crit_edge
  %16 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx8.1, align 2
  %conv9.1 = zext i16 %17 to i32
  %and11.1 = and i32 %shl, %conv9.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.1)
  %tobool12.not.1 = icmp eq i32 %and11.1, 0
  br i1 %tobool12.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then13.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then13.1:                                      ; preds = %for.inc
  br i1 %5, label %if.then13.1.get_slot_reg.exit.1_crit_edge, label %if.end6.i.1

if.then13.1.get_slot_reg.exit.1_crit_edge:        ; preds = %if.then13.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.1

if.end6.i.1:                                      ; preds = %if.then13.1
  %18 = ptrtoint ptr %spdif.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i.1 = load i8, ptr %spdif.i, align 4
  %19 = and i8 %bf.load.i.1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.1 = icmp eq i8 %19, 0
  br i1 %tobool.not.i.1, label %if.end8.i.1, label %if.end6.i.1.get_slot_reg.exit.1_crit_edge

if.end6.i.1.get_slot_reg.exit.1_crit_edge:        ; preds = %if.end6.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.1

if.end8.i.1:                                      ; preds = %if.end6.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.1)
  %cmp12.i.1 = icmp sgt i8 %bf.load.i.1, -1
  br i1 %cmp12.i.1, label %if.then14.i.1, label %if.end8.i.1.return.sink.split.i.1_crit_edge

if.end8.i.1.return.sink.split.i.1_crit_edge:      ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i.1

if.then14.i.1:                                    ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx16.i.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16.i.1, align 1
  %idxprom17.i.1 = zext i8 %21 to i32
  %arrayidx20.i.1 = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 %conv, i32 %idxprom17.i.1, i32 %sub22.i
  br label %return.sink.split.i.1

return.sink.split.i.1:                            ; preds = %if.then14.i.1, %if.end8.i.1.return.sink.split.i.1_crit_edge
  %arrayidx23.sink.i.1 = phi ptr [ %arrayidx20.i.1, %if.then14.i.1 ], [ %arrayidx23.i, %if.end8.i.1.return.sink.split.i.1_crit_edge ]
  %22 = ptrtoint ptr %arrayidx23.sink.i.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx23.sink.i.1, align 1
  br label %get_slot_reg.exit.1

get_slot_reg.exit.1:                              ; preds = %return.sink.split.i.1, %if.end6.i.1.get_slot_reg.exit.1_crit_edge, %if.then13.1.get_slot_reg.exit.1_crit_edge
  %retval.0.i.1 = phi i8 [ -1, %if.then13.1.get_slot_reg.exit.1_crit_edge ], [ 58, %if.end6.i.1.get_slot_reg.exit.1_crit_edge ], [ %23, %return.sink.split.i.1 ]
  %conv16.1 = zext i8 %retval.0.i.1 to i32
  %24 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx19.1, align 4
  %call20.1 = tail call i32 @snd_ac97_update_power(ptr noundef %25, i32 noundef %conv16.1, i32 noundef 0) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %get_slot_reg.exit.1, %for.inc.for.inc.1_crit_edge
  %26 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx8.2, align 2
  %conv9.2 = zext i16 %27 to i32
  %and11.2 = and i32 %shl, %conv9.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2)
  %tobool12.not.2 = icmp eq i32 %and11.2, 0
  br i1 %tobool12.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then13.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then13.2:                                      ; preds = %for.inc.1
  br i1 %5, label %if.then13.2.get_slot_reg.exit.2_crit_edge, label %if.end6.i.2

if.then13.2.get_slot_reg.exit.2_crit_edge:        ; preds = %if.then13.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.2

if.end6.i.2:                                      ; preds = %if.then13.2
  %28 = ptrtoint ptr %spdif.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.2 = load i8, ptr %spdif.i, align 4
  %29 = and i8 %bf.load.i.2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.2 = icmp eq i8 %29, 0
  br i1 %tobool.not.i.2, label %if.end8.i.2, label %if.end6.i.2.get_slot_reg.exit.2_crit_edge

if.end6.i.2.get_slot_reg.exit.2_crit_edge:        ; preds = %if.end6.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.2

if.end8.i.2:                                      ; preds = %if.end6.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.2)
  %cmp12.i.2 = icmp sgt i8 %bf.load.i.2, -1
  br i1 %cmp12.i.2, label %if.then14.i.2, label %if.end8.i.2.return.sink.split.i.2_crit_edge

if.end8.i.2.return.sink.split.i.2_crit_edge:      ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i.2

if.then14.i.2:                                    ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %arrayidx16.i.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx16.i.2, align 1
  %idxprom17.i.2 = zext i8 %31 to i32
  %arrayidx20.i.2 = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 %conv, i32 %idxprom17.i.2, i32 %sub22.i
  br label %return.sink.split.i.2

return.sink.split.i.2:                            ; preds = %if.then14.i.2, %if.end8.i.2.return.sink.split.i.2_crit_edge
  %arrayidx23.sink.i.2 = phi ptr [ %arrayidx20.i.2, %if.then14.i.2 ], [ %arrayidx23.i, %if.end8.i.2.return.sink.split.i.2_crit_edge ]
  %32 = ptrtoint ptr %arrayidx23.sink.i.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx23.sink.i.2, align 1
  br label %get_slot_reg.exit.2

get_slot_reg.exit.2:                              ; preds = %return.sink.split.i.2, %if.end6.i.2.get_slot_reg.exit.2_crit_edge, %if.then13.2.get_slot_reg.exit.2_crit_edge
  %retval.0.i.2 = phi i8 [ -1, %if.then13.2.get_slot_reg.exit.2_crit_edge ], [ 58, %if.end6.i.2.get_slot_reg.exit.2_crit_edge ], [ %33, %return.sink.split.i.2 ]
  %conv16.2 = zext i8 %retval.0.i.2 to i32
  %34 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx19.2, align 4
  %call20.2 = tail call i32 @snd_ac97_update_power(ptr noundef %35, i32 noundef %conv16.2, i32 noundef 0) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %get_slot_reg.exit.2, %for.inc.1.for.inc.2_crit_edge
  %36 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx8.3, align 2
  %conv9.3 = zext i16 %37 to i32
  %and11.3 = and i32 %shl, %conv9.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3)
  %tobool12.not.3 = icmp eq i32 %and11.3, 0
  br i1 %tobool12.not.3, label %for.inc.2.for.inc22_crit_edge, label %if.then13.3

for.inc.2.for.inc22_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22

if.then13.3:                                      ; preds = %for.inc.2
  br i1 %5, label %if.then13.3.get_slot_reg.exit.3_crit_edge, label %if.end6.i.3

if.then13.3.get_slot_reg.exit.3_crit_edge:        ; preds = %if.then13.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.3

if.end6.i.3:                                      ; preds = %if.then13.3
  %38 = ptrtoint ptr %spdif.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i.3 = load i8, ptr %spdif.i, align 4
  %39 = and i8 %bf.load.i.3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.3 = icmp eq i8 %39, 0
  br i1 %tobool.not.i.3, label %if.end8.i.3, label %if.end6.i.3.get_slot_reg.exit.3_crit_edge

if.end6.i.3.get_slot_reg.exit.3_crit_edge:        ; preds = %if.end6.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_slot_reg.exit.3

if.end8.i.3:                                      ; preds = %if.end6.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.3)
  %cmp12.i.3 = icmp sgt i8 %bf.load.i.3, -1
  br i1 %cmp12.i.3, label %if.then14.i.3, label %if.end8.i.3.return.sink.split.i.3_crit_edge

if.end8.i.3.return.sink.split.i.3_crit_edge:      ; preds = %if.end8.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split.i.3

if.then14.i.3:                                    ; preds = %if.end8.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %arrayidx16.i.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx16.i.3, align 1
  %idxprom17.i.3 = zext i8 %41 to i32
  %arrayidx20.i.3 = getelementptr [2 x [4 x [9 x i8]]], ptr @rate_reg_tables, i32 0, i32 %conv, i32 %idxprom17.i.3, i32 %sub22.i
  br label %return.sink.split.i.3

return.sink.split.i.3:                            ; preds = %if.then14.i.3, %if.end8.i.3.return.sink.split.i.3_crit_edge
  %arrayidx23.sink.i.3 = phi ptr [ %arrayidx20.i.3, %if.then14.i.3 ], [ %arrayidx23.i, %if.end8.i.3.return.sink.split.i.3_crit_edge ]
  %42 = ptrtoint ptr %arrayidx23.sink.i.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx23.sink.i.3, align 1
  br label %get_slot_reg.exit.3

get_slot_reg.exit.3:                              ; preds = %return.sink.split.i.3, %if.end6.i.3.get_slot_reg.exit.3_crit_edge, %if.then13.3.get_slot_reg.exit.3_crit_edge
  %retval.0.i.3 = phi i8 [ -1, %if.then13.3.get_slot_reg.exit.3_crit_edge ], [ 58, %if.end6.i.3.get_slot_reg.exit.3_crit_edge ], [ %43, %return.sink.split.i.3 ]
  %conv16.3 = zext i8 %retval.0.i.3 to i32
  %44 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx19.3, align 4
  %call20.3 = tail call i32 @snd_ac97_update_power(ptr noundef %45, i32 noundef %conv16.3, i32 noundef 0) #5
  br label %for.inc22

for.inc22:                                        ; preds = %get_slot_reg.exit.3, %for.inc.2.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc23 = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc23, 12
  br i1 %exitcond.not, label %for.end24, label %for.inc22.for.body_crit_edge

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end24:                                        ; preds = %for.inc22
  %46 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcm, align 4
  %bus_lock = getelementptr inbounds %struct.snd_ac97_bus, ptr %47, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %bus_lock) #5
  br label %for.body30

for.body30:                                       ; preds = %for.inc50.for.body30_crit_edge, %for.end24
  %i.192 = phi i32 [ 3, %for.end24 ], [ %inc51, %for.inc50.for.body30_crit_edge ]
  %shl32 = shl nuw nsw i32 1, %i.192
  %and33 = and i32 %shl32, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.body30.for.inc50_crit_edge, label %for.cond37.preheader

for.body30.for.inc50_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc50

for.cond37.preheader:                             ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  %48 = trunc i32 %shl32 to i16
  %49 = xor i16 %48, -1
  %50 = ptrtoint ptr %spdif.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %spdif.i, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %arrayidx43 = getelementptr %struct.snd_ac97_bus, ptr %47, i32 0, i32 8, i32 %bf.cast, i32 0
  %51 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx43, align 2
  %conv46 = and i16 %52, %49
  store i16 %conv46, ptr %arrayidx43, align 2
  %bf.load.1 = load i8, ptr %spdif.i, align 4
  %bf.lshr.1 = lshr i8 %bf.load.1, 7
  %bf.cast.1 = zext i8 %bf.lshr.1 to i32
  %arrayidx43.1 = getelementptr %struct.snd_ac97_bus, ptr %47, i32 0, i32 8, i32 %bf.cast.1, i32 1
  %53 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx43.1, align 2
  %conv46.1 = and i16 %54, %49
  store i16 %conv46.1, ptr %arrayidx43.1, align 2
  %bf.load.2 = load i8, ptr %spdif.i, align 4
  %bf.lshr.2 = lshr i8 %bf.load.2, 7
  %bf.cast.2 = zext i8 %bf.lshr.2 to i32
  %arrayidx43.2 = getelementptr %struct.snd_ac97_bus, ptr %47, i32 0, i32 8, i32 %bf.cast.2, i32 2
  %55 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx43.2, align 2
  %conv46.2 = and i16 %56, %49
  store i16 %conv46.2, ptr %arrayidx43.2, align 2
  %bf.load.3 = load i8, ptr %spdif.i, align 4
  %bf.lshr.3 = lshr i8 %bf.load.3, 7
  %bf.cast.3 = zext i8 %bf.lshr.3 to i32
  %arrayidx43.3 = getelementptr %struct.snd_ac97_bus, ptr %47, i32 0, i32 8, i32 %bf.cast.3, i32 3
  %57 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx43.3, align 2
  %conv46.3 = and i16 %58, %49
  store i16 %conv46.3, ptr %arrayidx43.3, align 2
  br label %for.inc50

for.inc50:                                        ; preds = %for.cond37.preheader, %for.body30.for.inc50_crit_edge
  %inc51 = add nuw nsw i32 %i.192, 1
  %exitcond94.not = icmp eq i32 %inc51, 12
  br i1 %exitcond94.not, label %for.end52, label %for.inc50.for.body30_crit_edge

for.inc50.for.body30_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.end52:                                        ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %aslots to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %aslots, align 2
  %60 = ptrtoint ptr %cur_dbl to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %cur_dbl, align 4
  %61 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcm, align 4
  %bus_lock56 = getelementptr inbounds %struct.snd_ac97_bus, ptr %62, i32 0, i32 7
  tail call void @_raw_spin_unlock_irq(ptr noundef %bus_lock56) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ac97_pcm_double_rate_rules(ptr noundef %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %runtime, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @double_rate_hw_constraint_rate, ptr noundef null, i32 noundef 10, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %runtime, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @double_rate_hw_constraint_channels, ptr noundef null, i32 noundef 11, i32 noundef -1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @double_rate_hw_constraint_rate(ptr noundef %params, ptr nocapture noundef readnone %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i4 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %call2 = tail call i32 @snd_interval_refine(ptr noundef %arrayidx.i4, ptr noundef nonnull @double_rate_hw_constraint_rate.single_rates) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @double_rate_hw_constraint_channels(ptr noundef %params, ptr nocapture noundef readnone %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %1)
  %cmp = icmp ugt i32 %1, 48000
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i4 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %call2 = tail call i32 @snd_interval_refine(ptr noundef %arrayidx.i4, ptr noundef nonnull @double_rate_hw_constraint_channels.double_rate_channels) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits_nolock(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write_cache(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__ksymtab_snd_ac97_set_rate, !1, !"__ksymtab_snd_ac97_set_rate", i1 false, i1 false}
!1 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 305, i32 1}
!2 = !{ptr @__ksymtab_snd_ac97_pcm_assign, !3, !"__ksymtab_snd_ac97_pcm_assign", i1 false, i1 false}
!3 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 542, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 592, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_ac97_pcm_open._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @snd_ac97_pcm_open._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 608, i32 6}
!14 = !{ptr @snd_ac97_pcm_open._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @snd_ac97_pcm_open._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 614, i32 5}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @snd_ac97_pcm_open.__UNIQUE_ID_ddebug234, !17, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 619, i32 6}
!22 = !{ptr @snd_ac97_pcm_open._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @snd_ac97_pcm_open._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_snd_ac97_pcm_open, !25, !"__ksymtab_snd_ac97_pcm_open", i1 false, i1 false}
!25 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 636, i32 1}
!26 = !{ptr @__ksymtab_snd_ac97_pcm_close, !27, !"__ksymtab_snd_ac97_pcm_close", i1 false, i1 false}
!27 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 681, i32 1}
!28 = !{ptr @__ksymtab_snd_ac97_pcm_double_rate_rules, !29, !"__ksymtab_snd_ac97_pcm_double_rate_rules", i1 false, i1 false}
!29 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 737, i32 1}
!30 = !{ptr @rate_reg_tables, !31, !"rate_reg_tables", i1 false, i1 false}
!31 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 29, i32 28}
!32 = !{ptr @rate_cregs, !33, !"rate_cregs", i1 false, i1 false}
!33 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 132, i32 28}
!34 = !{ptr @double_rate_hw_constraint_rate.single_rates, !35, !"single_rates", i1 false, i1 false}
!35 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 688, i32 36}
!36 = !{ptr @double_rate_hw_constraint_channels.double_rate_channels, !37, !"double_rate_channels", i1 false, i1 false}
!37 = !{!"../sound/pci/ac97/ac97_pcm.c", i32 703, i32 36}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148775611, i64 2148775616, i64 2148775629, i64 2148775673, i64 2148775707, i64 2148775728}
