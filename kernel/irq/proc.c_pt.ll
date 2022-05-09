; ModuleID = '/llk/IR_all_yes/kernel/irq/proc.c_pt.bc'
source_filename = "../kernel/irq/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [76 x i8] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.32, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.33, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.34, ptr, %struct.address_space, %struct.list_head, %union.anon.37, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.32 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.33 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.34 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.37 = type { ptr }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@register_irq_proc.register_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_irq_proc.register_lock, i64 52), ptr getelementptr (i8, ptr @register_irq_proc.register_lock, i64 52) }, ptr @register_irq_proc.register_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"register_lock\00", [18 x i8] zeroinitializer }, align 32
@root_irq_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smp_affinity\00", [19 x i8] zeroinitializer }, align 32
@irq_affinity_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @irq_affinity_proc_open, ptr @seq_read, ptr null, ptr @irq_affinity_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"affinity_hint\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smp_affinity_list\00", [46 x i8] zeroinitializer }, align 32
@irq_affinity_list_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @irq_affinity_list_proc_open, ptr @seq_read, ptr null, ptr @irq_affinity_list_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"effective_affinity\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"effective_affinity_list\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spurious\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@show_interrupts.prec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%*s\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CPU%-8d\00", [24 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*d: \00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%10u \00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %8s\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %*lu\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %*s\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-8s\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Level\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Edge\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-%-8s\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"  %s\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c", %s\00", [27 x i8] zeroinitializer }, align 32
@no_irq_affinity = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%*pbl\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pb\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"count %u\0Aunhandled %u\0Alast_unhandled %u ms\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irq/default_smp_affinity\00", [39 x i8] zeroinitializer }, align 32
@default_affinity_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @default_affinity_open, ptr @seq_read, ptr null, ptr @default_affinity_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@irq_default_affinity = external dso_local local_unnamed_addr global ptr, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@chained_action = external dso_local global %struct.irqaction, align 128
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 328, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"register_lock\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 340, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"root_irq_dir\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 35, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 357, i32 16 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 366, i32 19 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"irq_affinity_proc_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 201, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 370, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 374, i32 19 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"irq_affinity_list_proc_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 209, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 377, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 380, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 382, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 386, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 411, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 436, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"prec\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 462, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 480, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 480, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 482, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 499, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 501, i32 17 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 509, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 511, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 513, i32 25 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 516, i32 17 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 518, i32 17 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 520, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 520, i32 63 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 520, i32 73 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 523, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 527, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 529, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"no_irq_affinity\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 103, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 73, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 77, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 283, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 292, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 425, i32 14 }
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"default_affinity_proc_ops\00", align 1
@___asan_gen_.158 = private constant [21 x i8] c"../kernel/irq/proc.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 271, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 695, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 723, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @register_irq_proc.register_lock, ptr @.str.1, ptr @.str.2, ptr @root_irq_dir, ptr @.str.3, ptr @.str.4, ptr @irq_affinity_proc_ops, ptr @.str.5, ptr @.str.6, ptr @irq_affinity_list_proc_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @show_interrupts.prec, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @no_irq_affinity, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @default_affinity_proc_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_irq_proc.register_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_irq_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_affinity_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_affinity_list_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_interrupts.prec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_irq_affinity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_affinity_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_handler_proc(i32 noundef %irq, ptr noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 128)
  %call = tail call ptr @irq_to_desc(i32 noundef %irq) #8
  %dir = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 27
  %1 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dir, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dir1 = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 12
  %3 = ptrtoint ptr %dir1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dir1, align 16
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %name4 = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 11
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call.i = tail call ptr @irq_to_desc(i32 noundef %irq) #8
  %lock.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 15
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %action2.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %action2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %action.027.i = load ptr, ptr %action2.i, align 4
  %tobool.not28.i = icmp eq ptr %action.027.i, null
  br i1 %tobool.not28.i, label %lor.lhs.false6.if.end_crit_edge, label %lor.lhs.false6.for.body.i_crit_edge

lor.lhs.false6.for.body.i_crit_edge:              ; preds = %lor.lhs.false6
  br label %for.body.i

lor.lhs.false6.if.end_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %lor.lhs.false6.for.body.i_crit_edge
  %action.029.i = phi ptr [ %action.0.i, %for.inc.i.for.body.i_crit_edge ], [ %action.027.i, %lor.lhs.false6.for.body.i_crit_edge ]
  %cmp3.not.i = icmp eq ptr %action.029.i, %action
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.irqaction, ptr %action.029.i, i32 0, i32 11
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %10 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name4, align 4
  %call9.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %name_unique.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.irqaction, ptr %action.029.i, i32 0, i32 3
  %12 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %action.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %action.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

name_unique.exit:                                 ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #8
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %lor.lhs.false6.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #8
  %13 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name4, align 4
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %14)
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dir, align 4
  %call13 = call ptr @proc_mkdir(ptr noundef nonnull %name, ptr noundef %16) #8
  %17 = ptrtoint ptr %dir1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call13, ptr %dir1, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %name_unique.exit, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %name) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_irq_proc(i32 noundef %irq, ptr nocapture noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %irq to ptr
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #8
  %1 = call ptr @memset(ptr %name, i32 255, i32 10)
  %2 = load ptr, ptr @root_irq_dir, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chip = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %cmp = icmp eq ptr %4, @no_irq_chip
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_irq_proc.register_lock, i32 noundef 0) #8
  %dir = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 27
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dir, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end3, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end3:                                          ; preds = %if.end
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.3, i32 noundef %irq)
  %7 = load ptr, ptr @root_irq_dir, align 4
  %call5 = call ptr @proc_mkdir(ptr noundef nonnull %name, ptr noundef %7) #8
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %dir, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %if.end3.out_unlock_crit_edge, label %if.end10

if.end3.out_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call ptr @proc_create_data(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef nonnull %call5, ptr noundef nonnull @irq_affinity_proc_ops, ptr noundef %0) #8
  %9 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dir, align 4
  %call14 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %10, ptr noundef nonnull @irq_affinity_hint_proc_show, ptr noundef %0) #8
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dir, align 4
  %call16 = call ptr @proc_create_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %12, ptr noundef nonnull @irq_affinity_list_proc_ops, ptr noundef %0) #8
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dir, align 4
  %call18 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %14, ptr noundef nonnull @irq_node_proc_show, ptr noundef %0) #8
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dir, align 4
  %call20 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %16, ptr noundef nonnull @irq_effective_aff_proc_show, ptr noundef %0) #8
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir, align 4
  %call22 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %18, ptr noundef nonnull @irq_effective_aff_list_proc_show, ptr noundef %0) #8
  %19 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dir, align 4
  %call24 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %20, ptr noundef nonnull @irq_spurious_proc_show, ptr noundef %0) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.end10, %if.end3.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @register_irq_proc.register_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_hint_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  %call = tail call ptr @irq_to_desc(i32 noundef %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask, align 4, !annotation !97
  %call1 = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %mask, i32 noundef 3264) #8
  br i1 %call1, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 15
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %affinity_hint = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 18
  %4 = ptrtoint ptr %affinity_hint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %affinity_hint, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body.do.body6_crit_edge, label %if.then3

do.body.do.body6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %8, 31
  %9 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %9, 536870908
  %10 = call ptr @memcpy(ptr %7, ptr %5, i32 %mul.i.i)
  br label %do.body6

do.body6:                                         ; preds = %if.then3, %do.body.do.body6_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mask, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %11, ptr noundef %13) #8
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mask, align 4
  call void @free_cpumask_var(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body6 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_node_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  %call = tail call ptr @irq_to_desc(i32 noundef %2) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_effective_aff_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call ptr @irq_to_desc(i32 noundef %2) #8
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common.i.i, align 4
  %effective_affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %effective_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %mask.0.i = load ptr, ptr %effective_affinity.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %6, ptr noundef %mask.0.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_effective_aff_list_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call ptr @irq_to_desc(i32 noundef %2) #8
  %common.i.i = getelementptr inbounds %struct.irq_desc, ptr %call.i, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common.i.i, align 4
  %effective_affinity.i.i = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %effective_affinity.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %mask.0.i = load ptr, ptr %effective_affinity.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %6, ptr noundef %mask.0.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_spurious_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  %call = tail call ptr @irq_to_desc(i32 noundef %2) #8
  %irq_count = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_count, align 8
  %irqs_unhandled = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 12
  %5 = ptrtoint ptr %irqs_unhandled to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqs_unhandled, align 32
  %last_unhandled = getelementptr inbounds %struct.irq_desc, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %last_unhandled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_unhandled, align 4
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %8) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %4, i32 noundef %6, i32 noundef %call1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_irq_proc(i32 noundef %irq, ptr nocapture noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 10)
  %1 = load ptr, ptr @root_irq_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dir = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 27
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dir, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %5) #8
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %7) #8
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %9) #8
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %11) #8
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.9, ptr noundef %13) #8
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dir, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.10, ptr noundef %15) #8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.11, i32 noundef %irq)
  %16 = load ptr, ptr @root_irq_dir, align 4
  call void @remove_proc_entry(ptr noundef nonnull %name, ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_handler_proc(i32 noundef %irq, ptr nocapture noundef readonly %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dir = getelementptr inbounds %struct.irqaction, ptr %action, i32 0, i32 12
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 16
  tail call void @proc_remove(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_irq_proc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.12, ptr noundef null) #8
  store ptr %call, ptr @root_irq_dir, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @proc_create(ptr noundef nonnull @.str.33, i16 noundef zeroext 420, ptr noundef null, ptr noundef nonnull @default_affinity_proc_ops) #8
  %call1 = tail call ptr @irq_to_desc(i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %0 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp12.not = icmp eq i32 %0, 0
  br i1 %cmp12.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %desc.015 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %irq.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %tobool2.not = icmp eq ptr %desc.015, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @register_irq_proc(i32 noundef %irq.013, ptr noundef nonnull %desc.015)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %irq.013, 1
  %call5 = tail call ptr @irq_to_desc(i32 noundef %inc) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %1 = load i32, ptr @nr_irqs, align 4
  %cmp = icmp ult i32 %inc, %1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_show_interrupts(ptr noundef %p, i32 noundef %prec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @show_interrupts(ptr noundef %p, ptr nocapture noundef readonly %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %v, align 8
  %conv = trunc i64 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %2 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp = icmp slt i32 %2, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp2 = icmp eq i32 %2, %conv
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = load i32, ptr @show_interrupts.prec, align 4
  %call = tail call i32 @arch_show_interrupts(ptr noundef %p, i32 noundef %3)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %for.cond.preheader, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

for.cond.preheader:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %2)
  %cmp11.not218 = icmp slt i32 %2, 1000
  br i1 %cmp11.not218, label %for.cond.preheader.for.end_crit_edge, label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %2)
  %cmp11.not = icmp slt i32 %2, 10000
  br i1 %cmp11.not, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %2)
  %cmp11.not.1 = icmp slt i32 %2, 100000
  br i1 %cmp11.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %2)
  %cmp11.not.2 = icmp slt i32 %2, 1000000
  br i1 %cmp11.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %2)
  %cmp11.not.3 = icmp slt i32 %2, 10000000
  br i1 %cmp11.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %2)
  %cmp11.not.4 = icmp slt i32 %2, 100000000
  br i1 %cmp11.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %2)
  %cmp11.not.5 = icmp slt i32 %2, 1000000000
  %spec.select = select i1 %cmp11.not.5, i32 9, i32 10
  br label %for.end

for.end:                                          ; preds = %for.body.5, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %storemerge.lcssa217 = phi i32 [ 3, %for.cond.preheader.for.end_crit_edge ], [ 4, %for.body.for.end_crit_edge ], [ 5, %for.body.1.for.end_crit_edge ], [ 6, %for.body.2.for.end_crit_edge ], [ 7, %for.body.3.for.end_crit_edge ], [ 8, %for.body.4.for.end_crit_edge ], [ %spec.select, %for.body.5 ]
  store i32 %storemerge.lcssa217, ptr @show_interrupts.prec, align 4
  %add = add nuw nsw i32 %storemerge.lcssa217, 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.13, i32 noundef %add, ptr noundef nonnull @.str.14) #8
  %call14222 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call14222, i32 %4)
  %cmp15223 = icmp ult i32 %call14222, %4
  br i1 %cmp15223, label %for.end.for.body17_crit_edge, label %for.end.for.end18_crit_edge

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18

for.end.for.body17_crit_edge:                     ; preds = %for.end
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.end.for.body17_crit_edge
  %call14224 = phi i32 [ %call14, %for.body17.for.body17_crit_edge ], [ %call14222, %for.end.for.body17_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.15, i32 noundef %call14224) #8
  %call14 = tail call i32 @cpumask_next(i32 noundef %call14224, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp15 = icmp ult i32 %call14, %5
  br i1 %cmp15, label %for.body17.for.body17_crit_edge, label %for.body17.for.end18_crit_edge

for.body17.for.end18_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end18

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.end18:                                        ; preds = %for.body17.for.end18_crit_edge, %for.end.for.end18_crit_edge
  tail call void @seq_putc(ptr noundef %p, i8 noundef zeroext 10) #8
  br label %if.end19

if.end19:                                         ; preds = %for.end18, %if.end5.if.end19_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end19.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end19.rcu_read_lock.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end19
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end19.rcu_read_lock.exit_crit_edge
  %call20 = tail call ptr @irq_to_desc(i32 noundef %conv) #8
  %tobool.not = icmp eq ptr %call20, null
  br i1 %tobool.not, label %rcu_read_lock.exit.outsparse_crit_edge, label %lor.lhs.false

rcu_read_lock.exit.outsparse_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %outsparse

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %status_use_accessors.i = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 5
  %10 = ptrtoint ptr %status_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status_use_accessors.i, align 4
  %and.i = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end24, label %lor.lhs.false.outsparse_crit_edge

lor.lhs.false.outsparse_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %outsparse

if.end24:                                         ; preds = %lor.lhs.false
  %kstat_irqs = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 2
  %12 = ptrtoint ptr %kstat_irqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kstat_irqs, align 8
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.end38.thread, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call28225 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call28225, i32 %14)
  %cmp29226 = icmp ult i32 %call28225, %14
  br i1 %cmp29226, label %for.body31.lr.ph, label %if.end38.thread235

for.body31.lr.ph:                                 ; preds = %for.cond27.preheader
  %15 = ptrtoint ptr %13 to i32
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %call28228 = phi i32 [ %call28225, %for.body31.lr.ph ], [ %call28, %for.body31.for.body31_crit_edge ]
  %any_count.0227 = phi i32 [ 0, %for.body31.lr.ph ], [ %or, %for.body31.for.body31_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call28228
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add35 = add i32 %17, %15
  %18 = inttoptr i32 %add35 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %or = or i32 %20, %any_count.0227
  %call28 = tail call i32 @cpumask_next(i32 noundef %call28228, ptr noundef nonnull @__cpu_online_mask) #12
  %cmp29 = icmp ult i32 %call28, %14
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %if.end38

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

if.end38:                                         ; preds = %for.body31
  %action39 = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 4
  %21 = ptrtoint ptr %action39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %action39, align 64
  %tobool40.not = icmp eq ptr %22, null
  br i1 %tobool40.not, label %land.lhs.true, label %if.end38.lor.lhs.false41_crit_edge

if.end38.lor.lhs.false41_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false41

if.end38.thread235:                               ; preds = %for.cond27.preheader
  %action39237 = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 4
  %23 = ptrtoint ptr %action39237 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %action39237, align 64
  %tobool40.not238 = icmp eq ptr %24, null
  br i1 %tobool40.not238, label %if.end38.thread235.outsparse_crit_edge, label %if.end38.thread235.lor.lhs.false41_crit_edge

if.end38.thread235.lor.lhs.false41_crit_edge:     ; preds = %if.end38.thread235
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false41

if.end38.thread235.outsparse_crit_edge:           ; preds = %if.end38.thread235
  call void @__sanitizer_cov_trace_pc() #10
  br label %outsparse

if.end38.thread:                                  ; preds = %if.end24
  %action39206 = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 4
  %25 = ptrtoint ptr %action39206 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %action39206, align 64
  %tobool40.not207 = icmp eq ptr %26, null
  br i1 %tobool40.not207, label %if.end38.thread.outsparse_crit_edge, label %if.end38.thread.lor.lhs.false41_crit_edge

if.end38.thread.lor.lhs.false41_crit_edge:        ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false41

if.end38.thread.outsparse_crit_edge:              ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %outsparse

lor.lhs.false41:                                  ; preds = %if.end38.thread.lor.lhs.false41_crit_edge, %if.end38.thread235.lor.lhs.false41_crit_edge, %if.end38.lor.lhs.false41_crit_edge
  %27 = phi ptr [ %26, %if.end38.thread.lor.lhs.false41_crit_edge ], [ %22, %if.end38.lor.lhs.false41_crit_edge ], [ %24, %if.end38.thread235.lor.lhs.false41_crit_edge ]
  %action39211 = phi ptr [ %action39206, %if.end38.thread.lor.lhs.false41_crit_edge ], [ %action39, %if.end38.lor.lhs.false41_crit_edge ], [ %action39237, %if.end38.thread235.lor.lhs.false41_crit_edge ]
  %any_count.1209 = phi i32 [ 0, %if.end38.thread.lor.lhs.false41_crit_edge ], [ %or, %if.end38.lor.lhs.false41_crit_edge ], [ 0, %if.end38.thread235.lor.lhs.false41_crit_edge ]
  %cmp.i = icmp eq ptr %27, @chained_action
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %any_count.1209)
  %tobool44.not = icmp eq i32 %any_count.1209, 0
  %or.cond = select i1 %cmp.i, i1 %tobool44.not, i1 false
  br i1 %or.cond, label %lor.lhs.false41.outsparse_crit_edge, label %lor.lhs.false41.if.end46_crit_edge

lor.lhs.false41.if.end46_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

lor.lhs.false41.outsparse_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %outsparse

land.lhs.true:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool44.not.old = icmp eq i32 %or, 0
  br i1 %tobool44.not.old, label %land.lhs.true.outsparse_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true.outsparse_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %outsparse

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %lor.lhs.false41.if.end46_crit_edge
  %action39210 = phi ptr [ %action39, %land.lhs.true.if.end46_crit_edge ], [ %action39211, %lor.lhs.false41.if.end46_crit_edge ]
  %28 = load i32, ptr @show_interrupts.prec, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.16, i32 noundef %28, i32 noundef %conv) #8
  %call48230 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call48230, i32 %29)
  %cmp49231 = icmp ult i32 %call48230, %29
  br i1 %cmp49231, label %if.end46.for.body51_crit_edge, label %if.end46.do.body65_crit_edge

if.end46.do.body65_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65

if.end46.for.body51_crit_edge:                    ; preds = %if.end46
  br label %for.body51

for.body51:                                       ; preds = %cond.end.for.body51_crit_edge, %if.end46.for.body51_crit_edge
  %call48232 = phi i32 [ %call48, %cond.end.for.body51_crit_edge ], [ %call48230, %if.end46.for.body51_crit_edge ]
  %30 = ptrtoint ptr %kstat_irqs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kstat_irqs, align 8
  %tobool53.not = icmp eq ptr %31, null
  br i1 %tobool53.not, label %for.body51.cond.end_crit_edge, label %do.body54

for.body51.cond.end_crit_edge:                    ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

do.body54:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %31 to i32
  %arrayidx62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call48232
  %33 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %34, %32
  %35 = inttoptr i32 %add63 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %do.body54, %for.body51.cond.end_crit_edge
  %cond = phi i32 [ %37, %do.body54 ], [ 0, %for.body51.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.17, i32 noundef %cond) #8
  %call48 = tail call i32 @cpumask_next(i32 noundef %call48232, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %cmp49 = icmp ult i32 %call48, %38
  br i1 %cmp49, label %cond.end.for.body51_crit_edge, label %cond.end.do.body65_crit_edge

cond.end.do.body65_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65

cond.end.for.body51_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body51

do.body65:                                        ; preds = %cond.end.do.body65_crit_edge, %if.end46.do.body65_crit_edge
  %lock = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 15
  %call69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %irq_data = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 1
  %chip = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 1, i32 4
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 8
  %tobool72.not = icmp eq ptr %40, null
  br i1 %tobool72.not, label %if.else92, label %if.then73

if.then73:                                        ; preds = %do.body65
  %irq_print_chip = getelementptr inbounds %struct.irq_chip, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %irq_print_chip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_print_chip, align 4
  %tobool76.not = icmp eq ptr %42, null
  br i1 %tobool76.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %42(ptr noundef %irq_data, ptr noundef %p) #8
  br label %if.end93

if.else:                                          ; preds = %if.then73
  %name = getelementptr inbounds %struct.irq_chip, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 4
  %tobool84.not = icmp eq ptr %44, null
  br i1 %tobool84.not, label %if.else89, label %if.then85

if.then85:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.18, ptr noundef nonnull %44) #8
  br label %if.end93

if.else89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #8
  br label %if.end93

if.else92:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20) #8
  br label %if.end93

if.end93:                                         ; preds = %if.else92, %if.else89, %if.then85, %if.then77
  %domain = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 1, i32 5
  %45 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %domain, align 4
  %tobool95.not = icmp eq ptr %46, null
  %47 = load i32, ptr @show_interrupts.prec, align 4
  br i1 %tobool95.not, label %if.else98, label %if.then96

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %hwirq = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hwirq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.21, i32 noundef %47, i32 noundef %49) #8
  br label %if.end99

if.else98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.22, i32 noundef %47, ptr noundef nonnull @.str.14) #8
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %if.then96
  %common.i = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %common.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and.i194 = and i32 %53, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194)
  %tobool.i195.not = icmp eq i32 %and.i194, 0
  %cond103 = select i1 %tobool.i195.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond103) #8
  %name104 = getelementptr inbounds %struct.irq_desc, ptr %call20, i32 0, i32 35
  %54 = ptrtoint ptr %name104 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name104, align 4
  %tobool105.not = icmp eq ptr %55, null
  br i1 %tobool105.not, label %if.end99.if.end108_crit_edge, label %if.then106

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then106:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.26, ptr noundef nonnull %55) #8
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end99.if.end108_crit_edge
  %56 = ptrtoint ptr %action39210 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %action39210, align 64
  %tobool110.not = icmp eq ptr %57, null
  br i1 %tobool110.not, label %if.end108.if.end116_crit_edge, label %if.then111

if.end108.if.end116_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then111:                                       ; preds = %if.end108
  %name112 = getelementptr inbounds %struct.irqaction, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %name112 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name112, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.27, ptr noundef %59) #8
  %next233 = getelementptr inbounds %struct.irqaction, ptr %57, i32 0, i32 3
  %60 = ptrtoint ptr %next233 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %next233, align 4
  %cmp113.not234 = icmp eq ptr %61, null
  br i1 %cmp113.not234, label %if.then111.if.end116_crit_edge, label %if.then111.while.body_crit_edge

if.then111.while.body_crit_edge:                  ; preds = %if.then111
  br label %while.body

if.then111.if.end116_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then111.while.body_crit_edge
  %62 = phi ptr [ %66, %while.body.while.body_crit_edge ], [ %61, %if.then111.while.body_crit_edge ]
  %name115 = getelementptr inbounds %struct.irqaction, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %name115 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name115, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.28, ptr noundef %64) #8
  %next = getelementptr inbounds %struct.irqaction, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %next, align 4
  %cmp113.not = icmp eq ptr %66, null
  br i1 %cmp113.not, label %while.body.if.end116_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end116_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.end116:                                        ; preds = %while.body.if.end116_crit_edge, %if.then111.if.end116_crit_edge, %if.end108.if.end116_crit_edge
  tail call void @seq_putc(ptr noundef %p, i8 noundef zeroext 10) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call69) #8
  br label %outsparse

outsparse:                                        ; preds = %if.end116, %land.lhs.true.outsparse_crit_edge, %lor.lhs.false41.outsparse_crit_edge, %if.end38.thread.outsparse_crit_edge, %if.end38.thread235.outsparse_crit_edge, %lor.lhs.false.outsparse_crit_edge, %rcu_read_lock.exit.outsparse_crit_edge
  %call.i196 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i196, label %outsparse.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i199

outsparse.rcu_read_unlock.exit_crit_edge:         ; preds = %outsparse
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i199:                               ; preds = %outsparse
  %call1.i197 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i197)
  %tobool.not.i198 = icmp eq i32 %call1.i197, 0
  br i1 %tobool.not.i198, label %land.lhs.true.i199.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i201

land.lhs.true.i199.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i201:                              ; preds = %land.lhs.true.i199
  %.b4.i200 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i200, label %land.lhs.true2.i201.rcu_read_unlock.exit_crit_edge, label %if.then.i202

land.lhs.true2.i201.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i202:                                     ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.36) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i202, %land.lhs.true2.i201.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i199.rcu_read_unlock.exit_crit_edge, %outsparse.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !99
  %67 = tail call i32 @llvm.read_register.i32(metadata !87) #8
  %and.i.i.i.i.i203 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i203 to ptr
  %preempt_count.i.i.i.i204 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i204, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i204, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ 0, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_proc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %call1 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @irq_affinity_proc_show, ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_proc_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write_irq_affinity(i32 noundef 0, ptr noundef %file, ptr noundef %buffer, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call ptr @irq_to_desc(i32 noundef %2) #8
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %mask.0.i = load ptr, ptr %affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %4, ptr noundef %mask.0.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_irq_affinity(i32 noundef %type, ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %new_value = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #8
  %5 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_value, align 4, !annotation !97
  %call2 = tail call zeroext i1 @irq_can_set_affinity_usr(i32 noundef %4) #8
  br i1 %call2, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = load i32, ptr @no_irq_affinity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %new_value, i32 noundef 3264) #8
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool6.not = icmp eq i32 %type, 0
  %7 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %new_value, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @bitmap_parselist_user(ptr noundef %buffer, i32 noundef %count, ptr noundef %8, i32 noundef %9) #8
  br label %if.end10

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1 = call i32 @bitmap_parse_user(ptr noundef %buffer, i32 noundef %count, ptr noundef %8, i32 noundef %9) #8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %err.0 = phi i32 [ %call.i, %if.then7 ], [ %call.i1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool11.not = icmp eq i32 %err.0, 0
  br i1 %tobool11.not, label %if.else.i.i, label %if.end10.free_cpumask_crit_edge

if.end10.free_cpumask_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_cpumask

if.else.i.i:                                      ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_value, align 4
  %call.i.i = call i32 @__bitmap_intersects(ptr noundef %12, ptr noundef nonnull @__cpu_online_mask, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %if.else.i.i.free_cpumask_crit_edge, label %if.else18

if.else.i.i.free_cpumask_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_cpumask

if.else18:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %new_value, align 4
  %call19 = call i32 @irq_set_affinity(i32 noundef %4, ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %spec.select = select i1 %tobool20.not, i32 %count, i32 %call19
  br label %free_cpumask

free_cpumask:                                     ; preds = %if.else18, %if.else.i.i.free_cpumask_crit_edge, %if.end10.free_cpumask_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end10.free_cpumask_crit_edge ], [ %spec.select, %if.else18 ], [ -22, %if.else.i.i.free_cpumask_crit_edge ]
  %15 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_value, align 4
  call void @free_cpumask_var(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %free_cpumask, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_cpumask ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_can_set_affinity_usr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_list_proc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %call1 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @irq_affinity_list_proc_show, ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_list_proc_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @write_irq_affinity(i32 noundef 1, ptr noundef %file, ptr noundef %buffer, i32 noundef %count)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_affinity_list_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call ptr @irq_to_desc(i32 noundef %2) #8
  %affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %affinity.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %mask.0.i = load ptr, ptr %affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %4, ptr noundef %mask.0.i) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_affinity_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %call1 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @default_affinity_show, ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_affinity_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %new_value = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_value) #8
  %0 = ptrtoint ptr %new_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_value, align 4, !annotation !97
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %new_value, i32 noundef 3264) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new_value, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = call i32 @bitmap_parse_user(ptr noundef %buffer, i32 noundef %count, ptr noundef %2, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else.i.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else.i.i:                                      ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %new_value, align 4
  %call.i.i = call i32 @__bitmap_intersects(ptr noundef %6, ptr noundef nonnull @__cpu_online_mask, i32 noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.not, label %if.else.i.i.out_crit_edge, label %if.end6

if.else.i.i.out_crit_edge:                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %7 = load ptr, ptr @irq_default_affinity, align 4
  %8 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_value, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i10 = add i32 %10, 31
  %11 = lshr i32 %sub.i.i10, 3
  %mul.i.i = and i32 %11, 536870908
  %12 = call ptr @memcpy(ptr %7, ptr %9, i32 %mul.i.i)
  br label %out

out:                                              ; preds = %if.end6, %if.else.i.i.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %count, %if.end6 ], [ -22, %if.else.i.i.out_crit_edge ]
  %13 = ptrtoint ptr %new_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %new_value, align 4
  call void @free_cpumask_var(ptr noundef %14) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @default_affinity_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_default_affinity to i32))
  %1 = load ptr, ptr @irq_default_affinity, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %0, ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/irq/proc.c", i32 328, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/irq/proc.c", i32 340, i32 9}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @register_irq_proc.register_lock, !3, !"register_lock", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/irq/proc.c", i32 357, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/irq/proc.c", i32 366, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/irq/proc.c", i32 370, i32 26}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/irq/proc.c", i32 374, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/irq/proc.c", i32 377, i32 26}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/irq/proc.c", i32 380, i32 26}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/irq/proc.c", i32 382, i32 26}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/irq/proc.c", i32 386, i32 26}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/irq/proc.c", i32 411, i32 16}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/irq/proc.c", i32 436, i32 28}
!26 = !{ptr @show_interrupts.prec, !27, !"prec", i1 false, i1 false}
!27 = !{!"../kernel/irq/proc.c", i32 462, i32 13}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/irq/proc.c", i32 480, i32 17}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/irq/proc.c", i32 480, i32 34}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/irq/proc.c", i32 482, i32 18}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/irq/proc.c", i32 499, i32 16}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/irq/proc.c", i32 501, i32 17}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/irq/proc.c", i32 509, i32 18}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/irq/proc.c", i32 511, i32 26}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/irq/proc.c", i32 513, i32 25}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/irq/proc.c", i32 516, i32 17}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/irq/proc.c", i32 518, i32 17}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/irq/proc.c", i32 520, i32 16}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/irq/proc.c", i32 520, i32 63}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/irq/proc.c", i32 520, i32 73}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/irq/proc.c", i32 523, i32 17}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/irq/proc.c", i32 527, i32 17}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/irq/proc.c", i32 529, i32 18}
!60 = !{ptr @root_irq_dir, !61, !"root_irq_dir", i1 false, i1 false}
!61 = !{!"../kernel/irq/proc.c", i32 35, i32 31}
!62 = !{ptr @no_irq_affinity, !63, !"no_irq_affinity", i1 false, i1 false}
!63 = !{!"../kernel/irq/proc.c", i32 103, i32 5}
!64 = !{ptr @irq_affinity_proc_ops, !65, !"irq_affinity_proc_ops", i1 false, i1 false}
!65 = !{!"../kernel/irq/proc.c", i32 201, i32 30}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/irq/proc.c", i32 73, i32 17}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/irq/proc.c", i32 77, i32 17}
!70 = !{ptr @irq_affinity_list_proc_ops, !71, !"irq_affinity_list_proc_ops", i1 false, i1 false}
!71 = !{!"../kernel/irq/proc.c", i32 209, i32 30}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/irq/proc.c", i32 283, i32 16}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/irq/proc.c", i32 292, i32 16}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/irq/proc.c", i32 425, i32 14}
!78 = !{ptr @default_affinity_proc_ops, !79, !"default_affinity_proc_ops", i1 false, i1 false}
!79 = !{!"../kernel/irq/proc.c", i32 271, i32 30}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"auto-init"}
!98 = !{i64 2149941346}
!99 = !{i64 2149941612}
