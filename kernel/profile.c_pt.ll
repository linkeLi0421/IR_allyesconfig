; ModuleID = '/llk/IR_all_yes/kernel/profile.c_pt.bc'
source_filename = "../kernel/profile.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+prof_on\22, \22a\22\09"
module asm "\09.weak\09__crc_prof_on\09\09\09\09"
module asm "\09.long\09__crc_prof_on\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prof_on:\09\09\09\09\09"
module asm "\09.asciz \09\22prof_on\22\09\09\09\09\09"
module asm "__kstrtabns_prof_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+profile_hits\22, \22a\22\09"
module asm "\09.weak\09__crc_profile_hits\09\09\09\09"
module asm "\09.long\09__crc_profile_hits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_profile_hits:\09\09\09\09\09"
module asm "\09.asciz \09\22profile_hits\22\09\09\09\09\09"
module asm "__kstrtabns_profile_hits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.profile_hit = type { i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.41, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.41 = type { %struct.atomic_t }

@prof_on = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_prof_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_prof_on = external dso_local constant [0 x i8], align 1
@__ksymtab_prof_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prof_on to i32), ptr @__kstrtab_prof_on, ptr @__kstrtabns_prof_on }, section "___ksymtab_gpl+prof_on", align 4
@profile_setup.schedstr = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"schedule\00", [23 x i8] zeroinitializer }, align 32
@profile_setup.sleepstr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@profile_setup.kvmstr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kvm\00", [28 x i8] zeroinitializer }, align 32
@prof_shift = internal global { i16, [30 x i8] } zeroinitializer, align 32
@profile_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016kernel sleep profiling enabled (shift: %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"profile_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/profile.c\00", [47 x i8] zeroinitializer }, align 32
@profile_setup._entry_ptr = internal global ptr @profile_setup._entry, section ".printk_index", align 4
@profile_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016kernel schedule profiling enabled (shift: %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@profile_setup._entry_ptr.5 = internal global ptr @profile_setup._entry.3, section ".printk_index", align 4
@profile_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016kernel KVM profiling enabled (shift: %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@profile_setup._entry_ptr.8 = internal global ptr @profile_setup._entry.6, section ".printk_index", align 4
@profile_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016kernel profiling enabled (shift: %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@profile_setup._entry_ptr.11 = internal global ptr @profile_setup._entry.9, section ".printk_index", align 4
@__setup_str_profile_setup = internal constant [9 x i8] c"profile=\00", section ".init.rodata", align 1
@__setup_profile_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_profile_setup, ptr @profile_setup, i32 0 }, section ".init.setup", align 4
@_etext = external dso_local global [0 x i8], align 1
@_stext = external dso_local global [0 x i8], align 1
@prof_len = internal global { i32, [28 x i8] } zeroinitializer, align 32
@prof_cpu_mask = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@prof_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_profile_hits = external dso_local constant [0 x i8], align 1
@__kstrtabns_profile_hits = external dso_local constant [0 x i8], align 1
@__ksymtab_profile_hits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @profile_hits to i32), ptr @__kstrtab_profile_hits, ptr @__kstrtabns_profile_hits }, section "___ksymtab_gpl+profile_hits", align 4
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"irq/prof_cpu_mask\00", [46 x i8] zeroinitializer }, align 32
@prof_cpu_mask_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @prof_cpu_mask_proc_open, ptr @seq_read, ptr null, ptr @prof_cpu_mask_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PROFILE_PREPARE\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AP_PROFILE_ONLINE\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"profile\00", [24 x i8] zeroinitializer }, align 32
@profile_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @read_profile, ptr null, ptr @write_profile, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_profile__258_493_create_proc_profile4 = internal global ptr @create_proc_profile, section ".initcall4.init", align 4
@__pcpu_unique_cpu_profile_hits = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cpu_profile_hits = weak dso_local global [2 x ptr] zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_cpu_profile_flip = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@cpu_profile_flip = weak dso_local global i32 0, section ".data..percpu", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pb\0A\00", [26 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@profile_flip_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @profile_flip_mutex, i64 52), ptr getelementptr (i8, ptr @profile_flip_mutex, i64 52) }, ptr @profile_flip_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"profile_flip_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"profile_flip_mutex\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"schedstr\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 59, i32 20 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"sleepstr\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 60, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"kvmstr\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 61, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"prof_shift\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 45, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 72, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 83, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 91, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 96, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"prof_len\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 44, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"prof_cpu_mask\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 50, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"prof_buffer\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 43, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 384, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"prof_cpu_mask_proc_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 373, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 466, i32 49 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 471, i32 47 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 478, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"profile_proc_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 448, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 108, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 346, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"profile_flip_mutex\00", align 1
@___asan_gen_.107 = private constant [20 x i8] c"../kernel/profile.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 54, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 230, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 214, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 174, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__initcall__kmod_profile__258_493_create_proc_profile4, ptr @__ksymtab_prof_on, ptr @__ksymtab_profile_hits, ptr @__setup_profile_setup, ptr @profile_setup._entry, ptr @profile_setup._entry.3, ptr @profile_setup._entry.6, ptr @profile_setup._entry.9, ptr @profile_setup._entry_ptr, ptr @profile_setup._entry_ptr.11, ptr @profile_setup._entry_ptr.5, ptr @profile_setup._entry_ptr.8, ptr @profile_setup.schedstr, ptr @profile_setup.sleepstr, ptr @profile_setup.kvmstr, ptr @prof_shift, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @prof_len, ptr @prof_cpu_mask, ptr @prof_buffer, ptr @.str.12, ptr @prof_cpu_mask_proc_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @profile_proc_ops, ptr @.str.17, ptr @.str.18, ptr @profile_flip_mutex, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_setup.schedstr to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_setup.sleepstr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_setup.kvmstr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_shift to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_cpu_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_cpu_mask_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @profile_flip_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @profile_setup(ptr noundef %str) #0 align 64 {
entry:
  %str.addr = alloca ptr, align 4
  %par = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %par) #12
  %1 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %par, align 4, !annotation !91
  %call1 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(6) @profile_setup.sleepstr, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @force_schedstat_enabled() #12
  store i32 3, ptr @prof_on, align 4
  %2 = ptrtoint ptr %str.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %str.addr, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %5)
  %cmp = icmp eq i8 %5, 44
  br i1 %cmp, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %3, i32 6
  %6 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %str.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call6 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %par) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.do.end_crit_edge, label %if.then8

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %par, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 31)
  %conv18 = trunc i32 %10 to i16
  store i16 %conv18, ptr @prof_shift, align 2
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end.do.end_crit_edge
  %11 = load i16, ptr @prof_shift, align 2
  %conv21 = zext i16 %11 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv21) #15
  br label %if.end130

if.else:                                          ; preds = %entry
  %call24 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(9) @profile_setup.schedstr, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.else62

if.then26:                                        ; preds = %if.else
  store i32 2, ptr @prof_on, align 4
  %arrayidx28 = getelementptr i8, ptr %str, i32 8
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %13)
  %cmp30 = icmp eq i8 %13, 44
  br i1 %cmp30, label %if.then32, label %if.then26.if.end36_crit_edge

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr35 = getelementptr i8, ptr %str, i32 9
  %14 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr35, ptr %str.addr, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then26.if.end36_crit_edge
  %call37 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %par) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.do.end58_crit_edge, label %if.then39

if.end36.do.end58_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %par, align 4
  %17 = call i32 @llvm.smax.i32(i32 %16, i32 0)
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 31)
  %conv54 = trunc i32 %18 to i16
  store i16 %conv54, ptr @prof_shift, align 2
  br label %do.end58

do.end58:                                         ; preds = %if.then39, %if.end36.do.end58_crit_edge
  %19 = load i16, ptr @prof_shift, align 2
  %conv60 = zext i16 %19 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv60) #15
  br label %if.end130

if.else62:                                        ; preds = %if.else
  %call64 = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @profile_setup.kvmstr, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %if.else102

if.then66:                                        ; preds = %if.else62
  store i32 4, ptr @prof_on, align 4
  %arrayidx68 = getelementptr i8, ptr %str, i32 3
  %20 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %21)
  %cmp70 = icmp eq i8 %21, 44
  br i1 %cmp70, label %if.then72, label %if.then66.if.end76_crit_edge

if.then66.if.end76_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr75 = getelementptr i8, ptr %str, i32 4
  %22 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr75, ptr %str.addr, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.then66.if.end76_crit_edge
  %call77 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %par) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.do.end98_crit_edge, label %if.then79

if.end76.do.end98_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end98

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %par, align 4
  %25 = call i32 @llvm.smax.i32(i32 %24, i32 0)
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 31)
  %conv94 = trunc i32 %26 to i16
  store i16 %conv94, ptr @prof_shift, align 2
  br label %do.end98

do.end98:                                         ; preds = %if.then79, %if.end76.do.end98_crit_edge
  %27 = load i16, ptr @prof_shift, align 2
  %conv100 = zext i16 %27 to i32
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv100) #15
  br label %if.end130

if.else102:                                       ; preds = %if.else62
  %call103 = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull %par) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.else102.if.end130_crit_edge, label %if.then105

if.else102.if.end130_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then105:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %par, align 4
  %30 = call i32 @llvm.smax.i32(i32 %29, i32 0)
  %31 = call i32 @llvm.umin.i32(i32 %30, i32 31)
  %conv120 = trunc i32 %31 to i16
  store i16 %conv120, ptr @prof_shift, align 2
  store i32 1, ptr @prof_on, align 4
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %31) #15
  br label %if.end130

if.end130:                                        ; preds = %if.then105, %if.else102.if.end130_crit_edge, %do.end98, %do.end58, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %par) #12
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_schedstat_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @profile_init() local_unnamed_addr #5 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @prof_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i16, ptr @prof_shift, align 2
  %conv = zext i16 %1 to i32
  %shr = ashr i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), %conv
  store i32 %shr, ptr @prof_len, align 4
  %mul = shl i32 %shr, 2
  %call = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull @prof_cpu_mask, i32 noundef 3264) #12
  br i1 %call, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = load ptr, ptr @prof_cpu_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %3, 31
  %4 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %4, 536870908
  %5 = call ptr @memcpy(ptr %2, ptr @__cpu_possible_mask, i32 %mul.i.i)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 11712) #16
  store ptr %call9.i.i, ptr @prof_buffer, align 4
  %tobool4.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call noalias ptr @alloc_pages_exact(i32 noundef %mul, i32 noundef 11712) #16
  store ptr %call7, ptr @prof_buffer, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call noalias ptr @vzalloc(i32 noundef %mul) #16
  store ptr %call11, ptr @prof_buffer, align 4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load ptr, ptr @prof_cpu_mask, align 4
  tail call void @free_cpumask_var(ptr noundef %6) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @profile_hits(i32 noundef %type, ptr noundef %__pc, i32 noundef %nr_hits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @prof_on, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %type)
  %cmp.not = icmp eq i32 %0, %type
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @prof_buffer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %__pc to i32
  %sub.i = sub i32 %2, ptrtoint (ptr @_stext to i32)
  %3 = load i16, ptr @prof_shift, align 2
  %conv.i = zext i16 %3 to i32
  %shr.i = lshr i32 %sub.i, %conv.i
  %4 = load i32, ptr @prof_len, align 4
  %sub1.i = add i32 %4, -1
  %5 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 %sub1.i) #12
  %and.i = shl i32 %5, 3
  %shl.i = and i32 %and.i, 504
  %shl3.i = shl i32 %5, 4
  %and4.i = xor i32 %shl3.i, 504
  %6 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  %10 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu7.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu7.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, ptrtoint (ptr @cpu_profile_hits to i32)
  %16 = inttoptr i32 %add.i to ptr
  %add21.i = add i32 %15, ptrtoint (ptr @cpu_profile_flip to i32)
  %17 = inttoptr i32 %add21.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %arrayidx22.i = getelementptr [2 x ptr], ptr %16, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.body23.i, label %do.body27.i

do.body23.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !93
  br label %do_profile_hits.exit

do.body27.i:                                      ; preds = %if.end
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !94
  %and.i7.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool41.not.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %do.body27.i.do.body46.i.preheader_crit_edge

do.body27.i.do.body46.i.preheader_crit_edge:      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46.i.preheader

if.then42.i:                                      ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %do.body46.i.preheader

do.body46.i.preheader:                            ; preds = %if.then42.i, %do.body27.i.do.body46.i.preheader_crit_edge
  br label %do.body46.i

do.body46.i:                                      ; preds = %for.cond.7.i.do.body46.i_crit_edge, %do.body46.i.preheader
  %i.0.i = phi i32 [ %and73.i, %for.cond.7.i.do.body46.i_crit_edge ], [ %shl.i, %do.body46.i.preheader ]
  %arrayidx50.i = getelementptr %struct.profile_hit, ptr %21, i32 %i.0.i
  %23 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %5)
  %cmp52.i = icmp eq i32 %24, %5
  br i1 %cmp52.i, label %do.body46.i.if.then54.i_crit_edge, label %if.else.i

do.body46.i.if.then54.i_crit_edge:                ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

for.cond.i:                                       ; preds = %if.else.i
  %add49.1.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx50.1.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.1.i
  %25 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx50.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %5)
  %cmp52.1.i = icmp eq i32 %26, %5
  br i1 %cmp52.1.i, label %for.cond.i.if.then54.i_crit_edge, label %if.else.1.i

for.cond.i.if.then54.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.else.1.i:                                      ; preds = %for.cond.i
  %hits61.1.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.1.i, i32 1
  %27 = ptrtoint ptr %hits61.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hits61.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool62.not.1.i = icmp eq i32 %28, 0
  br i1 %tobool62.not.1.i, label %if.else.1.i.if.then63.i_crit_edge, label %for.cond.1.i

if.else.1.i.if.then63.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

for.cond.1.i:                                     ; preds = %if.else.1.i
  %add49.2.i = add nuw nsw i32 %i.0.i, 2
  %arrayidx50.2.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.2.i
  %29 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx50.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %5)
  %cmp52.2.i = icmp eq i32 %30, %5
  br i1 %cmp52.2.i, label %for.cond.1.i.if.then54.i_crit_edge, label %if.else.2.i

for.cond.1.i.if.then54.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.else.2.i:                                      ; preds = %for.cond.1.i
  %hits61.2.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.2.i, i32 1
  %31 = ptrtoint ptr %hits61.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hits61.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool62.not.2.i = icmp eq i32 %32, 0
  br i1 %tobool62.not.2.i, label %if.else.2.i.if.then63.i_crit_edge, label %for.cond.2.i

if.else.2.i.if.then63.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

for.cond.2.i:                                     ; preds = %if.else.2.i
  %add49.3.i = add nuw nsw i32 %i.0.i, 3
  %arrayidx50.3.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.3.i
  %33 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx50.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %5)
  %cmp52.3.i = icmp eq i32 %34, %5
  br i1 %cmp52.3.i, label %for.cond.2.i.if.then54.i_crit_edge, label %if.else.3.i

for.cond.2.i.if.then54.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.else.3.i:                                      ; preds = %for.cond.2.i
  %hits61.3.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.3.i, i32 1
  %35 = ptrtoint ptr %hits61.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hits61.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool62.not.3.i = icmp eq i32 %36, 0
  br i1 %tobool62.not.3.i, label %if.else.3.i.if.then63.i_crit_edge, label %for.cond.3.i

if.else.3.i.if.then63.i_crit_edge:                ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

for.cond.3.i:                                     ; preds = %if.else.3.i
  %add49.4.i = add nuw nsw i32 %i.0.i, 4
  %arrayidx50.4.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.4.i
  %37 = ptrtoint ptr %arrayidx50.4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx50.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %5)
  %cmp52.4.i = icmp eq i32 %38, %5
  br i1 %cmp52.4.i, label %for.cond.3.i.if.then54.i_crit_edge, label %if.else.4.i

for.cond.3.i.if.then54.i_crit_edge:               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.else.4.i:                                      ; preds = %for.cond.3.i
  %hits61.4.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.4.i, i32 1
  %39 = ptrtoint ptr %hits61.4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hits61.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool62.not.4.i = icmp eq i32 %40, 0
  br i1 %tobool62.not.4.i, label %if.else.4.i.if.then63.i_crit_edge, label %for.cond.4.i

if.else.4.i.if.then63.i_crit_edge:                ; preds = %if.else.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

for.cond.4.i:                                     ; preds = %if.else.4.i
  %add49.5.i = add nuw nsw i32 %i.0.i, 5
  %arrayidx50.5.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.5.i
  %41 = ptrtoint ptr %arrayidx50.5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx50.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %5)
  %cmp52.5.i = icmp eq i32 %42, %5
  br i1 %cmp52.5.i, label %for.cond.4.i.if.then54.i_crit_edge, label %if.else.5.i

for.cond.4.i.if.then54.i_crit_edge:               ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.else.5.i:                                      ; preds = %for.cond.4.i
  %hits61.5.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.5.i, i32 1
  %43 = ptrtoint ptr %hits61.5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hits61.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool62.not.5.i = icmp eq i32 %44, 0
  br i1 %tobool62.not.5.i, label %if.else.5.i.if.then63.i_crit_edge, label %for.cond.5.i

if.else.5.i.if.then63.i_crit_edge:                ; preds = %if.else.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

for.cond.5.i:                                     ; preds = %if.else.5.i
  %add49.6.i = add nuw nsw i32 %i.0.i, 6
  %arrayidx50.6.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.6.i
  %45 = ptrtoint ptr %arrayidx50.6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx50.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %5)
  %cmp52.6.i = icmp eq i32 %46, %5
  br i1 %cmp52.6.i, label %for.cond.5.i.if.then54.i_crit_edge, label %if.else.6.i

for.cond.5.i.if.then54.i_crit_edge:               ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.else.6.i:                                      ; preds = %for.cond.5.i
  %hits61.6.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.6.i, i32 1
  %47 = ptrtoint ptr %hits61.6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hits61.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool62.not.6.i = icmp eq i32 %48, 0
  br i1 %tobool62.not.6.i, label %if.else.6.i.if.then63.i_crit_edge, label %for.cond.6.i

if.else.6.i.if.then63.i_crit_edge:                ; preds = %if.else.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

for.cond.6.i:                                     ; preds = %if.else.6.i
  %add49.7.i = add nuw nsw i32 %i.0.i, 7
  %arrayidx50.7.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.7.i
  %49 = ptrtoint ptr %arrayidx50.7.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx50.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %5)
  %cmp52.7.i = icmp eq i32 %50, %5
  br i1 %cmp52.7.i, label %for.cond.6.i.if.then54.i_crit_edge, label %if.else.7.i

for.cond.6.i.if.then54.i_crit_edge:               ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54.i

if.else.7.i:                                      ; preds = %for.cond.6.i
  %hits61.7.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.7.i, i32 1
  %51 = ptrtoint ptr %hits61.7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hits61.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool62.not.7.i = icmp eq i32 %52, 0
  br i1 %tobool62.not.7.i, label %if.else.7.i.if.then63.i_crit_edge, label %for.cond.7.i

if.else.7.i.if.then63.i_crit_edge:                ; preds = %if.else.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

for.cond.7.i:                                     ; preds = %if.else.7.i
  %add72.i = add i32 %i.0.i, %and4.i
  %and73.i = and i32 %add72.i, 511
  %cmp75.not.i = icmp eq i32 %and73.i, %shl.i
  br i1 %cmp75.not.i, label %do.end77.i, label %for.cond.7.i.do.body46.i_crit_edge

for.cond.7.i.do.body46.i_crit_edge:               ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46.i

if.then54.i:                                      ; preds = %for.cond.6.i.if.then54.i_crit_edge, %for.cond.5.i.if.then54.i_crit_edge, %for.cond.4.i.if.then54.i_crit_edge, %for.cond.3.i.if.then54.i_crit_edge, %for.cond.2.i.if.then54.i_crit_edge, %for.cond.1.i.if.then54.i_crit_edge, %for.cond.i.if.then54.i_crit_edge, %do.body46.i.if.then54.i_crit_edge
  %add49.lcssa.i = phi i32 [ %i.0.i, %do.body46.i.if.then54.i_crit_edge ], [ %add49.1.i, %for.cond.i.if.then54.i_crit_edge ], [ %add49.2.i, %for.cond.1.i.if.then54.i_crit_edge ], [ %add49.3.i, %for.cond.2.i.if.then54.i_crit_edge ], [ %add49.4.i, %for.cond.3.i.if.then54.i_crit_edge ], [ %add49.5.i, %for.cond.4.i.if.then54.i_crit_edge ], [ %add49.6.i, %for.cond.5.i.if.then54.i_crit_edge ], [ %add49.7.i, %for.cond.6.i.if.then54.i_crit_edge ]
  %hits57.i = getelementptr %struct.profile_hit, ptr %21, i32 %add49.lcssa.i, i32 1
  %53 = ptrtoint ptr %hits57.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hits57.i, align 4
  %add58.i = add i32 %54, %nr_hits
  store i32 %add58.i, ptr %hits57.i, align 4
  br label %do.body95.i

if.else.i:                                        ; preds = %do.body46.i
  %hits61.i = getelementptr %struct.profile_hit, ptr %21, i32 %i.0.i, i32 1
  %55 = ptrtoint ptr %hits61.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hits61.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool62.not.i = icmp eq i32 %56, 0
  br i1 %tobool62.not.i, label %if.else.i.if.then63.i_crit_edge, label %for.cond.i

if.else.i.if.then63.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63.i

if.then63.i:                                      ; preds = %if.else.i.if.then63.i_crit_edge, %if.else.7.i.if.then63.i_crit_edge, %if.else.6.i.if.then63.i_crit_edge, %if.else.5.i.if.then63.i_crit_edge, %if.else.4.i.if.then63.i_crit_edge, %if.else.3.i.if.then63.i_crit_edge, %if.else.2.i.if.then63.i_crit_edge, %if.else.1.i.if.then63.i_crit_edge
  %hits61.lcssa.i = phi ptr [ %hits61.i, %if.else.i.if.then63.i_crit_edge ], [ %hits61.1.i, %if.else.1.i.if.then63.i_crit_edge ], [ %hits61.2.i, %if.else.2.i.if.then63.i_crit_edge ], [ %hits61.3.i, %if.else.3.i.if.then63.i_crit_edge ], [ %hits61.4.i, %if.else.4.i.if.then63.i_crit_edge ], [ %hits61.5.i, %if.else.5.i.if.then63.i_crit_edge ], [ %hits61.6.i, %if.else.6.i.if.then63.i_crit_edge ], [ %hits61.7.i, %if.else.7.i.if.then63.i_crit_edge ]
  %arrayidx50.lcssa13.i = phi ptr [ %arrayidx50.i, %if.else.i.if.then63.i_crit_edge ], [ %arrayidx50.1.i, %if.else.1.i.if.then63.i_crit_edge ], [ %arrayidx50.2.i, %if.else.2.i.if.then63.i_crit_edge ], [ %arrayidx50.3.i, %if.else.3.i.if.then63.i_crit_edge ], [ %arrayidx50.4.i, %if.else.4.i.if.then63.i_crit_edge ], [ %arrayidx50.5.i, %if.else.5.i.if.then63.i_crit_edge ], [ %arrayidx50.6.i, %if.else.6.i.if.then63.i_crit_edge ], [ %arrayidx50.7.i, %if.else.7.i.if.then63.i_crit_edge ]
  %57 = ptrtoint ptr %arrayidx50.lcssa13.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %5, ptr %arrayidx50.lcssa13.i, align 4
  %58 = ptrtoint ptr %hits61.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %nr_hits, ptr %hits61.lcssa.i, align 4
  br label %do.body95.i

do.end77.i:                                       ; preds = %for.cond.7.i
  %59 = load ptr, ptr @prof_buffer, align 4
  %arrayidx78.i = getelementptr %struct.atomic_t, ptr %59, i32 %5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx78.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx78.i, i32 1, i32 3, i32 1) #12
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx78.i, ptr %arrayidx78.i, i32 %nr_hits, ptr elementtype(i32) %arrayidx78.i) #12, !srcloc !95
  br label %for.body82.i

for.body82.i:                                     ; preds = %for.body82.i.for.body82.i_crit_edge, %do.end77.i
  %i.112.i = phi i32 [ 0, %do.end77.i ], [ %inc93.i, %for.body82.i.for.body82.i_crit_edge ]
  %arrayidx83.i = getelementptr %struct.profile_hit, ptr %21, i32 %i.112.i
  %hits84.i = getelementptr %struct.profile_hit, ptr %21, i32 %i.112.i, i32 1
  %61 = ptrtoint ptr %hits84.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hits84.i, align 4
  %63 = load ptr, ptr @prof_buffer, align 4
  %64 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx83.i, align 4
  %arrayidx87.i = getelementptr %struct.atomic_t, ptr %63, i32 %65
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx87.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx87.i, i32 1, i32 3, i32 1) #12
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx87.i, ptr %arrayidx87.i, i32 %62, ptr elementtype(i32) %arrayidx87.i) #12, !srcloc !95
  %67 = ptrtoint ptr %hits84.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %hits84.i, align 4
  %68 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx83.i, align 4
  %inc93.i = add nuw nsw i32 %i.112.i, 1
  %exitcond.not.i = icmp eq i32 %inc93.i, 512
  br i1 %exitcond.not.i, label %for.body82.i.do.body95.i_crit_edge, label %for.body82.i.for.body82.i_crit_edge

for.body82.i.for.body82.i_crit_edge:              ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body82.i

for.body82.i.do.body95.i_crit_edge:               ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body95.i

do.body95.i:                                      ; preds = %for.body82.i.do.body95.i_crit_edge, %if.then63.i, %if.then54.i
  br i1 %tobool41.not.i, label %if.then104.i, label %do.body95.i.do.body106.i_crit_edge

do.body95.i.do.body106.i_crit_edge:               ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body106.i

if.then104.i:                                     ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body106.i

do.body106.i:                                     ; preds = %if.then104.i, %do.body95.i.do.body106.i_crit_edge
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !96
  %and.i.i.i = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool114.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool114.not.i, label %if.then118.i, label %do.body106.i.do.end121.i_crit_edge, !prof !97

do.body106.i.do.end121.i_crit_edge:               ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end121.i

if.then118.i:                                     ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end121.i

do.end121.i:                                      ; preds = %if.then118.i, %do.body106.i.do.end121.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #12, !srcloc !98
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !99
  br label %do_profile_hits.exit

do_profile_hits.exit:                             ; preds = %do.end121.i, %do.body23.i
  %70 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i4.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i4.i to ptr
  %preempt_count.i.i5.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i5.i, align 4
  %sub.i6.i = add i32 %73, -1
  store volatile i32 %sub.i6.i, ptr %preempt_count.i.i5.i, align 4
  br label %return

return:                                           ; preds = %do_profile_hits.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @profile_tick(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx = getelementptr [18 x i32], ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr @prof_cpu_mask, align 4
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %12, %3
  br i1 %cmp.not.i.i.i, label %land.lhs.true2.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

land.lhs.true2.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true2
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !100

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %land.lhs.true2.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i7 = and i32 %3, 31
  %15 = shl nuw i32 1, %and.i.i7
  %16 = and i32 %14, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.if.end_crit_edge, label %if.then

cpumask_test_cpu.exit.if.end_crit_edge:           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cpumask_test_cpu.exit
  %call5 = tail call i32 @profile_pc(ptr noundef %8) #12
  %17 = load i32, ptr @prof_on, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %type)
  %cmp.i8 = icmp eq i32 %17, %type
  br i1 %cmp.i8, label %if.then.i, label %if.then.if.end_crit_edge, !prof !97

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %18 = inttoptr i32 %call5 to ptr
  tail call void @profile_hits(i32 noundef %type, ptr noundef %18, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %cpumask_test_cpu.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @profile_pc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @create_prof_cpu_mask() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef null, ptr noundef nonnull @prof_cpu_mask_proc_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_proc_profile() #5 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @prof_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 44, ptr noundef nonnull @.str.13, i1 noundef zeroext true, ptr noundef nonnull @profile_prepare_cpu, ptr noundef nonnull @profile_dead_cpu, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i20 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.14, i1 noundef zeroext true, ptr noundef nonnull @profile_online_cpu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp = icmp slt i32 %call.i20, 0
  br i1 %cmp, label %if.end4.err_state_prep_crit_edge, label %if.end7

if.end4.err_state_prep_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_state_prep

if.end7:                                          ; preds = %if.end4
  %call8 = tail call ptr @proc_create(ptr noundef nonnull @.str.15, i16 noundef zeroext 420, ptr noundef null, ptr noundef nonnull @profile_proc_ops) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %err_state_onl, label %if.end11

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %1 = load i32, ptr @prof_len, align 4
  %add = shl i32 %1, 2
  %mul = add i32 %add, 4
  %conv = zext i32 %mul to i64
  tail call void @proc_set_size(ptr noundef nonnull %call8, i64 noundef %conv) #12
  br label %cleanup

err_state_onl:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__cpuhp_remove_state(i32 noundef %call.i20, i1 noundef zeroext true) #12
  br label %err_state_prep

err_state_prep:                                   ; preds = %err_state_onl, %if.end4.err_state_prep_crit_edge
  %err.0 = phi i32 [ %call.i20, %if.end4.err_state_prep_crit_edge ], [ 0, %err_state_onl ]
  tail call void @__cpuhp_remove_state(i32 noundef 44, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %err_state_prep, %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_state_prep ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profile_prepare_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @cpu_profile_flip to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %4 = load i32, ptr %arrayidx, align 4
  %add10 = add i32 %4, ptrtoint (ptr @cpu_profile_hits to i32)
  %5 = inttoptr i32 %add10 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  %call38.i = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool12.not = icmp eq ptr %call38.i, null
  br i1 %tobool12.not, label %if.end.if.then13_crit_edge, label %if.end15

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %if.end.1.if.then13_crit_edge, %if.end.if.then13_crit_edge
  %call14 = tail call i32 @profile_dead_cpu(i32 noundef %cpu)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call ptr @page_address(ptr noundef nonnull %call38.i) #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add25 = add i32 %9, ptrtoint (ptr @cpu_profile_hits to i32)
  %10 = inttoptr i32 %add25 to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %10, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %entry.for.inc_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add10.1 = add i32 %13, ptrtoint (ptr @cpu_profile_hits to i32)
  %14 = inttoptr i32 %add10.1 to ptr
  %arrayidx11.1 = getelementptr [2 x ptr], ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11.1, align 4
  %tobool.not.1 = icmp eq ptr %16, null
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.1:                                         ; preds = %for.inc
  %call38.i.1 = tail call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool12.not.1 = icmp eq ptr %call38.i.1, null
  br i1 %tobool12.not.1, label %if.end.1.if.then13_crit_edge, label %if.end15.1

if.end.1.if.then13_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end15.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %call16.1 = tail call ptr @page_address(ptr noundef nonnull %call38.i.1) #12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add25.1 = add i32 %18, ptrtoint (ptr @cpu_profile_hits to i32)
  %19 = inttoptr i32 %add25.1 to ptr
  %arrayidx26.1 = getelementptr [2 x ptr], ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call16.1, ptr %arrayidx26.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15.1, %for.inc.cleanup_crit_edge, %if.then13
  %retval.0 = phi i32 [ -12, %if.then13 ], [ 0, %if.end15.1 ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profile_dead_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prof_cpu_mask, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %1, %cpu
  br i1 %cmp.not.i.i.i, label %if.then.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then.cpumask_clear_cpu.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !100

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %if.then.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %cpu, ptr noundef nonnull %0) #12
  br label %if.end

if.end:                                           ; preds = %cpumask_clear_cpu.exit, %entry.if.end_crit_edge
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @cpu_profile_hits to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %6 to i32
  %sub = add i32 %8, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %7, i32 %shr
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %4, align 4
  tail call void @__free_pages(ptr noundef %add.ptr, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.end.for.inc_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add.1 = add i32 %11, ptrtoint (ptr @cpu_profile_hits to i32)
  %12 = inttoptr i32 %add.1 to ptr
  %arrayidx2.1 = getelementptr [2 x ptr], ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %14 to i32
  %sub.1 = add i32 %16, 1073741824
  %shr.1 = lshr i32 %sub.1, 12
  %add.ptr.1 = getelementptr %struct.page, ptr %15, i32 %shr.1
  %17 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx2.1, align 4
  tail call void @__free_pages(ptr noundef %add.ptr.1, i32 noundef 0) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @profile_online_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @prof_cpu_mask, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %1, %cpu
  br i1 %cmp.not.i.i.i, label %if.then.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then.cpumask_set_cpu.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !100

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef nonnull %0) #12
  br label %if.end

if.end:                                           ; preds = %cpumask_set_cpu.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_size(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prof_cpu_mask_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @prof_cpu_mask_proc_show, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prof_cpu_mask_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %new_value = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #12
  %0 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_value, align 4, !annotation !91
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %new_value, i32 noundef 3264) #12
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new_value, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = call i32 @bitmap_parse_user(ptr noundef %buffer, i32 noundef %count, ptr noundef %2, i32 noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = load ptr, ptr @prof_cpu_mask, align 4
  %5 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %new_value, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %7, 31
  %8 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %8, 536870908
  %9 = call ptr @memcpy(ptr %4, ptr %6, i32 %mul.i.i)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.if.end3_crit_edge ], [ %count, %if.then2 ]
  %10 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_value, align 4
  call void @free_cpumask_var(ptr noundef %11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prof_cpu_mask_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %1 = load ptr, ptr @prof_cpu_mask, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %0, ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_profile(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %sample_step = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sample_step) #12
  %2 = load i16, ptr @prof_shift, align 2
  %conv1 = zext i16 %2 to i32
  %shl = shl nuw i32 1, %conv1
  %3 = ptrtoint ptr %sample_step to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %sample_step, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @profile_flip_mutex, i32 noundef 0) #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %7, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %8 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu6.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu6.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr @cpu_profile_flip to i32)
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i58.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i58.i to ptr
  %preempt_count.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i59.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i59.i, align 4
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @__profile_flip_buffers, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #12
  %call1061.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1061.i, i32 %21)
  %cmp62.i = icmp ult i32 %call1061.i, %21
  br i1 %cmp62.i, label %entry.for.body.i_crit_edge, label %entry.profile_flip_buffers.exit_crit_edge

entry.profile_flip_buffers.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %profile_flip_buffers.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.inc.i
  %call10.i = tail call i32 @cpumask_next(i32 noundef %call1063.i, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call10.i, %22
  br i1 %cmp.i, label %for.cond.loopexit.i.for.body.i_crit_edge, label %for.cond.loopexit.i.profile_flip_buffers.exit_crit_edge

for.cond.loopexit.i.profile_flip_buffers.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %profile_flip_buffers.exit

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %call1063.i = phi i32 [ %call10.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %call1061.i, %entry.for.body.i_crit_edge ]
  %arrayidx18.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1063.i
  %23 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %24, ptrtoint (ptr @cpu_profile_hits to i32)
  %25 = inttoptr i32 %add19.i to ptr
  %arrayidx20.i = getelementptr [2 x ptr], ptr %25, i32 0, i32 %16
  %26 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx20.i, align 4
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc.i.for.body23.i_crit_edge, %for.body.i
  %i.060.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.inc.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.profile_hit, ptr %27, i32 %i.060.i
  %hits25.i = getelementptr %struct.profile_hit, ptr %27, i32 %i.060.i, i32 1
  %28 = ptrtoint ptr %hits25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hits25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.then.i48, label %if.end31.i

if.then.i48:                                      ; preds = %for.body23.i
  %30 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool27.not.i = icmp eq i32 %31, 0
  br i1 %tobool27.not.i, label %if.then.i48.for.inc.i_crit_edge, label %if.then.i48.for.inc.sink.split.i_crit_edge

if.then.i48.for.inc.sink.split.i_crit_edge:       ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.sink.split.i

if.then.i48.for.inc.i_crit_edge:                  ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end31.i:                                       ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = load ptr, ptr @prof_buffer, align 4
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx24.i, align 4
  %arrayidx36.i = getelementptr %struct.atomic_t, ptr %32, i32 %34
  %call.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx36.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx36.i, i32 1, i32 3, i32 1) #12
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx36.i, ptr %arrayidx36.i, i32 %29, ptr elementtype(i32) %arrayidx36.i) #12, !srcloc !95
  %36 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx24.i, align 4
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end31.i, %if.then.i48.for.inc.sink.split.i_crit_edge
  %arrayidx24.sink.i = phi ptr [ %hits25.i, %if.end31.i ], [ %arrayidx24.i, %if.then.i48.for.inc.sink.split.i_crit_edge ]
  %37 = ptrtoint ptr %arrayidx24.sink.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx24.sink.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.then.i48.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.inc.i.for.body23.i_crit_edge

for.inc.i.for.body23.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body23.i

profile_flip_buffers.exit:                        ; preds = %for.cond.loopexit.i.profile_flip_buffers.exit_crit_edge, %entry.profile_flip_buffers.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @profile_flip_mutex) #12
  %38 = load i32, ptr @prof_len, align 4
  %add = shl i32 %38, 2
  %mul = add i32 %add, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp.not = icmp ugt i32 %mul, %conv
  br i1 %cmp.not, label %if.end, label %profile_flip_buffers.exit.cleanup_crit_edge

profile_flip_buffers.exit.cleanup_crit_edge:      ; preds = %profile_flip_buffers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %profile_flip_buffers.exit
  %sub = sub i32 %mul, %conv
  %39 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv)
  %cmp1257 = icmp ugt i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp14.not58 = icmp eq i32 %39, 0
  %or.cond59 = select i1 %cmp1257, i1 true, i1 %cmp14.not58
  br i1 %or.cond59, label %if.end.while.end_crit_edge, label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %sample_step, i32 %conv
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 409) #12
  %42 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !103
  %and.i = and i32 %44, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i8 %41, i32 -1226833921) #12, !srcloc !106
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  br i1 %tobool.not, label %if.end18, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %inc = add nuw nsw i32 %conv, 1
  %dec = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv)
  %cmp12 = icmp ugt i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp14.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp14.not
  br i1 %or.cond, label %if.end18.while.end_crit_edge, label %while.body.1

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.1:                                     ; preds = %if.end18
  %add.ptr.1 = getelementptr i8, ptr %sample_step, i32 %inc
  %46 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.1, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 409) #12
  %48 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.1 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.1 to ptr
  %cpu_domain.i.i.1 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.1) #8, !srcloc !103
  %and.i.1 = and i32 %50, -13
  %or.i.1 = or i32 %and.i.1, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.1) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  %51 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %incdec.ptr, i8 %47, i32 -1226833921) #12, !srcloc !106
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.1 = icmp eq i32 %51, 0
  br i1 %tobool.not.1, label %if.end18.1, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18.1:                                       ; preds = %while.body.1
  %incdec.ptr.1 = getelementptr i8, ptr %buf, i32 2
  %inc.1 = add nuw nsw i32 %conv, 2
  %dec.1 = add i32 %39, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv)
  %cmp12.1 = icmp ugt i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp14.not.1 = icmp eq i32 %dec.1, 0
  %or.cond.1 = select i1 %cmp12.1, i1 true, i1 %cmp14.not.1
  br i1 %or.cond.1, label %if.end18.1.while.end_crit_edge, label %while.body.2

if.end18.1.while.end_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.2:                                     ; preds = %if.end18.1
  %add.ptr.2 = getelementptr i8, ptr %sample_step, i32 %inc.1
  %52 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr.2, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 409) #12
  %54 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.2 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.2 to ptr
  %cpu_domain.i.i.2 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.2) #8, !srcloc !103
  %and.i.2 = and i32 %56, -13
  %or.i.2 = or i32 %and.i.2, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.2) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  %57 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %incdec.ptr.1, i8 %53, i32 -1226833921) #12, !srcloc !106
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.2 = icmp eq i32 %57, 0
  br i1 %tobool.not.2, label %if.end18.2, label %while.body.2.cleanup_crit_edge

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18.2:                                       ; preds = %while.body.2
  %incdec.ptr.2 = getelementptr i8, ptr %buf, i32 3
  %inc.2 = add nuw nsw i32 %conv, 3
  %dec.2 = add i32 %39, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp12.2 = icmp ne i32 %conv, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %cmp14.not.2 = icmp eq i32 %dec.2, 0
  %or.cond.2 = select i1 %cmp12.2, i1 true, i1 %cmp14.not.2
  br i1 %or.cond.2, label %if.end18.2.while.end_crit_edge, label %while.body.3

if.end18.2.while.end_crit_edge:                   ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.3:                                     ; preds = %if.end18.2
  %add.ptr.3 = getelementptr i8, ptr %sample_step, i32 %inc.2
  %58 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr.3, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 409) #12
  %60 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.3 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.3 to ptr
  %cpu_domain.i.i.3 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.3) #8, !srcloc !103
  %and.i.3 = and i32 %62, -13
  %or.i.3 = or i32 %and.i.3, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.3) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  %63 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %incdec.ptr.2, i8 %59, i32 -1226833921) #12, !srcloc !106
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #12, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.3 = icmp eq i32 %63, 0
  br i1 %tobool.not.3, label %if.end18.3, label %while.body.3.cleanup_crit_edge

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18.3:                                       ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.3 = getelementptr i8, ptr %buf, i32 4
  %inc.3 = add nuw nsw i32 %conv, 4
  %dec.3 = add i32 %39, -4
  br label %while.end

while.end:                                        ; preds = %if.end18.3, %if.end18.2.while.end_crit_edge, %if.end18.1.while.end_crit_edge, %if.end18.while.end_crit_edge, %if.end.while.end_crit_edge
  %read.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ 1, %if.end18.while.end_crit_edge ], [ 2, %if.end18.1.while.end_crit_edge ], [ 3, %if.end18.2.while.end_crit_edge ], [ 4, %if.end18.3 ]
  %p.0.lcssa = phi i32 [ %conv, %if.end.while.end_crit_edge ], [ %inc, %if.end18.while.end_crit_edge ], [ %inc.1, %if.end18.1.while.end_crit_edge ], [ %inc.2, %if.end18.2.while.end_crit_edge ], [ %inc.3, %if.end18.3 ]
  %count.addr.1.lcssa = phi i32 [ %39, %if.end.while.end_crit_edge ], [ %dec, %if.end18.while.end_crit_edge ], [ %dec.1, %if.end18.1.while.end_crit_edge ], [ %dec.2, %if.end18.2.while.end_crit_edge ], [ %dec.3, %if.end18.3 ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %if.end.while.end_crit_edge ], [ %incdec.ptr, %if.end18.while.end_crit_edge ], [ %incdec.ptr.1, %if.end18.1.while.end_crit_edge ], [ %incdec.ptr.2, %if.end18.2.while.end_crit_edge ], [ %incdec.ptr.3, %if.end18.3 ]
  %64 = load ptr, ptr @prof_buffer, align 4
  %add.ptr20 = getelementptr i8, ptr %64, i32 %p.0.lcssa
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1.lcssa)
  %cmp9.i.i = icmp slt i32 %count.addr.1.lcssa, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !100

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %while.end
  tail call void @__check_object_size(ptr noundef %add.ptr21, i32 noundef %count.addr.1.lcssa, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0.lcssa, i32 %count.addr.1.lcssa, i32 -1226833920) #18, !srcloc !107
  %asmresult.i.i = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr21, i32 noundef %count.addr.1.lcssa) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0.lcssa, ptr noundef %add.ptr21, i32 noundef %count.addr.1.lcssa) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count.addr.1.lcssa, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count.addr.1.lcssa, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool23.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool23.not, label %if.end25, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add26 = add i32 %count.addr.1.lcssa, %read.0.lcssa
  %conv27 = sext i32 %add26 to i64
  %66 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ppos, align 8
  %add28 = add i64 %67, %conv27
  store i64 %add28, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %profile_flip_buffers.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %add26, %if.end25 ], [ 0, %profile_flip_buffers.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -14, %while.body.3.cleanup_crit_edge ], [ -14, %while.body.2.cleanup_crit_edge ], [ -14, %while.body.1.cleanup_crit_edge ], [ -14, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sample_step) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_profile(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %multiplier = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp = icmp eq i32 %count, 4
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %multiplier) #12
  %0 = ptrtoint ptr %multiplier to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %multiplier, align 4, !annotation !91
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.then11.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 4, i32 -1226833920) #18, !srcloc !108
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !100

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %multiplier, i32 noundef 4) #12
  %2 = call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !103
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %multiplier, ptr noundef %buf, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #12, !srcloc !104
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !100

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.then.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %multiplier, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup.thread

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %multiplier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %multiplier, align 4
  %call2 = call i32 @setup_profiling_timer(i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cleanup, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %if.then11.i.i
  %retval.0.ph = phi i32 [ -22, %if.end.cleanup.thread_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %multiplier) #12
  br label %return

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %multiplier) #12
  br label %if.end6

if.end6:                                          ; preds = %cleanup, %entry.if.end6_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @profile_flip_mutex, i32 noundef 0) #12
  %8 = call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i9 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i9 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %11, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  %12 = call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu6.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu6.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @cpu_profile_flip to i32)
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %21 = call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i23.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i23.i to ptr
  %preempt_count.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i24.i, align 4
  %sub.i.i10 = add i32 %24, -1
  store volatile i32 %sub.i.i10, ptr %preempt_count.i.i24.i, align 4
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @__profile_flip_buffers, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #12
  %call1025.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1025.i, i32 %25)
  %cmp26.i = icmp ult i32 %call1025.i, %25
  br i1 %cmp26.i, label %if.end6.for.body.i_crit_edge, label %if.end6.profile_discard_flip_buffers.exit_crit_edge

if.end6.profile_discard_flip_buffers.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %profile_discard_flip_buffers.exit

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %call1027.i = phi i32 [ %call10.i, %for.body.i.for.body.i_crit_edge ], [ %call1025.i, %if.end6.for.body.i_crit_edge ]
  %arrayidx18.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1027.i
  %26 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18.i, align 4
  %add19.i = add i32 %27, ptrtoint (ptr @cpu_profile_hits to i32)
  %28 = inttoptr i32 %add19.i to ptr
  %arrayidx20.i = getelementptr [2 x ptr], ptr %28, i32 0, i32 %20
  %29 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx20.i, align 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 4096)
  %call10.i = call i32 @cpumask_next(i32 noundef %call1027.i, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %32 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call10.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.profile_discard_flip_buffers.exit_crit_edge

for.body.i.profile_discard_flip_buffers.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %profile_discard_flip_buffers.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

profile_discard_flip_buffers.exit:                ; preds = %for.body.i.profile_discard_flip_buffers.exit_crit_edge, %if.end6.profile_discard_flip_buffers.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @profile_flip_mutex) #12
  %33 = load ptr, ptr @prof_buffer, align 4
  %34 = load i32, ptr @prof_len, align 4
  %mul = shl i32 %34, 2
  %35 = call ptr @memset(ptr %33, i32 0, i32 %mul)
  br label %return

return:                                           ; preds = %profile_discard_flip_buffers.exit, %cleanup.thread
  %retval.1 = phi i32 [ %count, %profile_discard_flip_buffers.exit ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__profile_flip_buffers(ptr nocapture noundef readnone %unused) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @cpu_profile_flip to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lnot.ext, ptr %6, align 4
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_profiling_timer(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !57, !59, !61, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !79}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__ksymtab_prof_on, !1, !"__ksymtab_prof_on", i1 false, i1 false}
!1 = !{!"../kernel/profile.c", i32 48, i32 1}
!2 = !{ptr @profile_setup.schedstr, !3, !"schedstr", i1 false, i1 false}
!3 = !{!"../kernel/profile.c", i32 59, i32 20}
!4 = !{ptr @profile_setup.sleepstr, !5, !"sleepstr", i1 false, i1 false}
!5 = !{!"../kernel/profile.c", i32 60, i32 20}
!6 = !{ptr @profile_setup.kvmstr, !7, !"kvmstr", i1 false, i1 false}
!7 = !{!"../kernel/profile.c", i32 61, i32 20}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/profile.c", i32 72, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @profile_setup._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @profile_setup._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/profile.c", i32 83, i32 3}
!16 = !{ptr @profile_setup._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @profile_setup._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/profile.c", i32 91, i32 3}
!20 = !{ptr @profile_setup._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @profile_setup._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/profile.c", i32 96, i32 3}
!24 = !{ptr @profile_setup._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @profile_setup._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__setup_profile_setup, !27, !"__setup_profile_setup", i1 false, i1 false}
!27 = !{!"../kernel/profile.c", i32 101, i32 1}
!28 = !{ptr @__ksymtab_profile_hits, !29, !"__ksymtab_profile_hits", i1 false, i1 false}
!29 = !{!"../kernel/profile.c", i32 328, i32 1}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/profile.c", i32 384, i32 14}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/profile.c", i32 466, i32 49}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/profile.c", i32 471, i32 47}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/profile.c", i32 478, i32 22}
!38 = !{ptr @__initcall__kmod_profile__258_493_create_proc_profile4, !39, !"__initcall__kmod_profile__258_493_create_proc_profile4", i1 false, i1 false}
!39 = !{!"../kernel/profile.c", i32 493, i32 1}
!40 = !{ptr @prof_buffer, !41, !"prof_buffer", i1 false, i1 false}
!41 = !{!"../kernel/profile.c", i32 43, i32 18}
!42 = !{ptr @prof_len, !43, !"prof_len", i1 false, i1 false}
!43 = !{!"../kernel/profile.c", i32 44, i32 22}
!44 = !{ptr @prof_shift, !45, !"prof_shift", i1 false, i1 false}
!45 = !{!"../kernel/profile.c", i32 45, i32 27}
!46 = !{ptr @prof_on, !47, !"prof_on", i1 false, i1 false}
!47 = !{!"../kernel/profile.c", i32 47, i32 5}
!48 = !{ptr @prof_cpu_mask, !49, !"prof_cpu_mask", i1 false, i1 false}
!49 = !{!"../kernel/profile.c", i32 50, i32 22}
!50 = !{ptr @__pcpu_unique_cpu_profile_hits, !51, !"__pcpu_unique_cpu_profile_hits", i1 false, i1 false}
!51 = !{!"../kernel/profile.c", i32 52, i32 8}
!52 = !{ptr @cpu_profile_hits, !51, !"cpu_profile_hits", i1 false, i1 false}
!53 = !{ptr @__pcpu_unique_cpu_profile_flip, !54, !"__pcpu_unique_cpu_profile_flip", i1 false, i1 false}
!54 = !{!"../kernel/profile.c", i32 53, i32 8}
!55 = !{ptr @cpu_profile_flip, !54, !"cpu_profile_flip", i1 false, i1 false}
!56 = !{ptr @__setup_str_profile_setup, !27, !"__setup_str_profile_setup", i1 false, i1 false}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @prof_cpu_mask_proc_ops, !63, !"prof_cpu_mask_proc_ops", i1 false, i1 false}
!63 = !{!"../kernel/profile.c", i32 373, i32 30}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/profile.c", i32 346, i32 16}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!68 = !{ptr @profile_proc_ops, !69, !"profile_proc_ops", i1 false, i1 false}
!69 = !{!"../kernel/profile.c", i32 448, i32 30}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/profile.c", i32 54, i32 8}
!72 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @profile_flip_mutex, !71, !"profile_flip_mutex", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i64 2154152690}
!93 = !{i64 2154154563}
!94 = !{i64 615446, i64 615507}
!95 = !{i64 2148222965, i64 2148222991, i64 2148223020, i64 2148223054, i64 2148223085, i64 2148223108}
!96 = !{i64 618178}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 618463}
!99 = !{i64 2154156350}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2154145735}
!102 = !{i64 2154145908}
!103 = !{i64 5255624}
!104 = !{i64 5255821}
!105 = !{i64 2152741054}
!106 = !{i64 2154203863, i64 2154204143, i64 2154204477, i64 2154204811}
!107 = !{i64 2152760750, i64 2152760775}
!108 = !{i64 2152760069, i64 2152760094}
!109 = !{i64 2154148870}
!110 = !{i64 2154149043}
