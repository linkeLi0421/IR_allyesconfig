; ModuleID = '/llk/IR_all_yes/arch/arm/net/bpf_jit_32.c_pt.bc'
source_filename = "../arch/arm/net/bpf_jit_32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.jit_ctx = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i16, i16, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.anon.154, [0 x %struct.sock_filter] }
%struct.anon.154 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.151 }
%struct.atomic64_t = type { i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.list_head = type { ptr, ptr }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.151 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }

@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@bpf_jit_enable = external dso_local local_unnamed_addr global i32, align 4
@bpf2a32 = internal constant { [15 x [2 x i8]], [34 x i8] } { [15 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\03\02", [2 x i8] c"\FC\F8", [2 x i8] c"\F4\F0", [2 x i8] c"\EC\E8", [2 x i8] c"\E4\E0", [2 x i8] c"\05\04", [2 x i8] c"\DC\D8", [2 x i8] c"\D4\D0", [2 x i8] c"\CC\C8", [2 x i8] c"\C4\C0", [2 x i8] c"\B4\B0", [2 x i8] c"\07\06", [2 x i8] c"\09\08", [2 x i8] c"\BC\B8"], [34 x i8] zeroinitializer }, align 32
@build_insn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016[%2d] imm=%d(0x%x) out of range\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"build_insn\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arch/arm/net/bpf_jit_32.c\00", [38 x i8] zeroinitializer }, align 32
@build_insn._entry_ptr = internal global ptr @build_insn._entry, section ".printk_index", align 4
@build_insn._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@build_insn._entry_ptr.4 = internal global ptr @build_insn._entry.3, section ".printk_index", align 4
@build_insn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@build_insn._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016*** NOT YET: opcode %02x ***\0A\00", [32 x i8] zeroinitializer }, align 32
@build_insn._entry_ptr.7 = internal global ptr @build_insn._entry.5, section ".printk_index", align 4
@build_insn.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@build_insn._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013unknown opcode %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@build_insn._entry_ptr.11 = internal global ptr @build_insn._entry.9, section ".printk_index", align 4
@out_offset = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@emit_bpf_tail_call.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@emit_bpf_tail_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013tail_call out_offset = %d, expected %d!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"emit_bpf_tail_call\00", [45 x i8] zeroinitializer }, align 32
@emit_bpf_tail_call._entry_ptr = internal global ptr @emit_bpf_tail_call._entry, section ".printk_index", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@bpf_jit_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013flen=%u proglen=%u pass=%u image=%pK from=%s pid=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpf_jit_dump\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_jit_dump._entry_ptr = internal global ptr @bpf_jit_dump._entry, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JIT code: \00", [21 x i8] zeroinitializer }, align 32
@switch.table.build_body = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4095, i32 255, i32 4095, i32 4091], [16 x i8] zeroinitializer }, align 32
@switch.table.emit_str_r = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4095, i32 255, i32 4095, i32 4091], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [118 x i64] [i64 116, i64 8, i64 4, i64 5, i64 7, i64 12, i64 15, i64 20, i64 21, i64 22, i64 23, i64 24, i64 28, i64 29, i64 30, i64 31, i64 36, i64 37, i64 38, i64 39, i64 44, i64 45, i64 46, i64 47, i64 52, i64 53, i64 54, i64 55, i64 60, i64 61, i64 62, i64 63, i64 68, i64 69, i64 70, i64 71, i64 76, i64 77, i64 78, i64 79, i64 84, i64 85, i64 86, i64 87, i64 92, i64 93, i64 94, i64 95, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 132, i64 133, i64 135, i64 148, i64 149, i64 151, i64 156, i64 159, i64 164, i64 165, i64 166, i64 167, i64 172, i64 173, i64 174, i64 175, i64 180, i64 181, i64 182, i64 183, i64 188, i64 189, i64 190, i64 191, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 204, i64 205, i64 206, i64 207, i64 212, i64 213, i64 214, i64 219, i64 220, i64 221, i64 222, i64 245]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.24 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 10, i64 12]
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"bpf2a32\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 148, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1784, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1824, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1828, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1831, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"out_offset\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1167, i32 12 }
@___asan_gen_.67 = private constant [29 x i8] c"../arch/arm/net/bpf_jit_32.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1240, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1084, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1088, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1088, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"switch.table.build_body\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [24 x i8] c"switch.table.emit_str_r\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @bpf_jit_dump._entry, ptr @bpf_jit_dump._entry_ptr, ptr @build_insn._entry, ptr @build_insn._entry.3, ptr @build_insn._entry.5, ptr @build_insn._entry.9, ptr @build_insn._entry_ptr, ptr @build_insn._entry_ptr.11, ptr @build_insn._entry_ptr.4, ptr @build_insn._entry_ptr.7, ptr @emit_bpf_tail_call._entry, ptr @emit_bpf_tail_call._entry_ptr, ptr @bpf2a32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @.str.10, ptr @out_offset, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.build_body, ptr @switch.table.emit_str_r], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf2a32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_insn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_insn._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_insn._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_insn._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emit_bpf_tail_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_jit_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.build_body to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.emit_str_r to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bpf_jit_needs_zext() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_int_jit_compile(ptr noundef %prog) local_unnamed_addr #1 align 64 {
entry:
  %ctx = alloca %struct.jit_ctx, align 4
  %image_ptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ctx) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %image_ptr) #14
  %0 = ptrtoint ptr %image_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %image_ptr, align 4, !annotation !49
  %jit_requested = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %1 = ptrtoint ptr %jit_requested to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %jit_requested, align 2
  %2 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @bpf_jit_blind_constants(ptr noundef %prog) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cmp.not = icmp eq ptr %call, %prog
  %3 = getelementptr inbounds i8, ptr %ctx, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %ctx, align 4
  %call7 = tail call i32 @cpu_architecture() #17
  %cpu_architecture = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %cpu_architecture to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call7, ptr %cpu_architecture, align 4
  %len = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #14
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end3.out_crit_edge, label %if.end7.i.i, !prof !50

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end7.i.i:                                      ; preds = %if.end3
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #18
  %offsets = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 6
  %12 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %offsets, align 4
  %cmp10 = icmp eq ptr %call8.i.i, null
  br i1 %cmp10, label %if.end7.i.i.out_crit_edge, label %if.end12

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end12:                                         ; preds = %if.end7.i.i
  %call13 = call fastcc i32 @build_body(ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_off_crit_edge

if.end12.out_off_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_off

if.end16:                                         ; preds = %if.end12
  %idx = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  call fastcc void @build_prologue(ptr noundef nonnull %ctx)
  %15 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx, align 4
  %sub = sub i32 %16, %14
  %mul = shl i32 %sub, 2
  %prologue_bytes = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %prologue_bytes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %prologue_bytes, align 4
  %epilogue_offset = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 3
  %18 = ptrtoint ptr %epilogue_offset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %epilogue_offset, align 4
  %target.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %19 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %target.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %20, null
  br i1 %cmp.not.i.i.i, label %emit.exit.thread.i, label %emit.exit.i

emit.exit.thread.i:                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i11.i = add i32 %16, 1
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.i.i11.i, ptr %idx, align 4
  br label %build_epilogue.exit

emit.exit.i:                                      ; preds = %if.end16
  %arrayidx.i.i.i = getelementptr i32, ptr %20, i32 %16
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 198222049, ptr %arrayidx.i.i.i, align 4
  %23 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load ptr, ptr %target.i.i.i, align 4
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 4
  %inc.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i, ptr %idx, align 4
  %cmp.not.i.i3.i = icmp eq ptr %.pr.i, null
  br i1 %cmp.not.i.i3.i, label %emit.exit.i.build_epilogue.exit_crit_edge, label %if.then.i.i6.i

emit.exit.i.build_epilogue.exit_crit_edge:        ; preds = %emit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %build_epilogue.exit

if.then.i.i6.i:                                   ; preds = %emit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i5.i = getelementptr i32, ptr %.pr.i, i32 %inc.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -259277336, ptr %arrayidx.i.i5.i, align 4
  br label %build_epilogue.exit

build_epilogue.exit:                              ; preds = %if.then.i.i6.i, %emit.exit.i.build_epilogue.exit_crit_edge, %emit.exit.thread.i
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idx, align 4
  %inc.i.i8.i = add i32 %28, 1
  %sub21 = sub i32 %inc.i.i8.i, %16
  %sub21.tr = trunc i32 %sub21 to i16
  %conv = shl i16 %sub21.tr, 2
  %epilogue_bytes = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 9
  %29 = ptrtoint ptr %epilogue_bytes to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %epilogue_bytes, align 4
  %imm_count = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 10
  %30 = ptrtoint ptr %imm_count to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %imm_count, align 2
  %conv23 = zext i16 %31 to i32
  %add = add i32 %inc.i.i8.i, %conv23
  store i32 %add, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool26.not = icmp eq i16 %31, 0
  br i1 %tobool26.not, label %build_epilogue.exit.if.end36_crit_edge, label %if.end7.i.i144

build_epilogue.exit.if.end36_crit_edge:           ; preds = %build_epilogue.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end7.i.i144:                                   ; preds = %build_epilogue.exit
  %32 = shl nuw nsw i32 %conv23, 2
  %call8.i.i143 = call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #18
  %imms = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 11
  %33 = ptrtoint ptr %imms to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i143, ptr %imms, align 4
  %cmp32 = icmp eq ptr %call8.i.i143, null
  br i1 %cmp32, label %if.end7.i.i144.out_off_crit_edge, label %if.end7.i.i144.if.end36_crit_edge

if.end7.i.i144.if.end36_crit_edge:                ; preds = %if.end7.i.i144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end7.i.i144.out_off_crit_edge:                 ; preds = %if.end7.i.i144
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_off

if.end36:                                         ; preds = %if.end7.i.i144.if.end36_crit_edge, %build_epilogue.exit.if.end36_crit_edge
  %34 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx, align 4
  %mul38 = shl i32 %35, 2
  %call39 = call ptr @bpf_jit_binary_alloc(i32 noundef %mul38, ptr noundef nonnull %image_ptr, i32 noundef 4, ptr noundef nonnull @jit_fill_hole) #14
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.end36.out_imms_crit_edge, label %if.end43

if.end36.out_imms_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_imms

if.end43:                                         ; preds = %if.end36
  %36 = ptrtoint ptr %image_ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %image_ptr, align 4
  %38 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %target.i.i.i, align 4
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %idx, align 4
  call fastcc void @build_prologue(ptr noundef nonnull %ctx)
  %call45 = call fastcc i32 @build_body(ptr noundef nonnull %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %image_ptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %image_ptr, align 4
  call void @bpf_jit_binary_free(ptr noundef nonnull %call39) #14
  br label %out_imms

if.end49:                                         ; preds = %if.end43
  %41 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %target.i.i.i, align 4
  %cmp.not.i.i.i148 = icmp eq ptr %42, null
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx, align 4
  br i1 %cmp.not.i.i.i148, label %emit.exit.thread.i151, label %emit.exit.i156

emit.exit.thread.i151:                            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i11.i150 = add i32 %44, 1
  %45 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc.i.i11.i150, ptr %idx, align 4
  br label %build_epilogue.exit160

emit.exit.i156:                                   ; preds = %if.end49
  %arrayidx.i.i.i152 = getelementptr i32, ptr %42, i32 %44
  %46 = ptrtoint ptr %arrayidx.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 198222049, ptr %arrayidx.i.i.i152, align 4
  %47 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i153 = load ptr, ptr %target.i.i.i, align 4
  %48 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx, align 4
  %inc.i.i.i154 = add i32 %49, 1
  store i32 %inc.i.i.i154, ptr %idx, align 4
  %cmp.not.i.i3.i155 = icmp eq ptr %.pr.i153, null
  br i1 %cmp.not.i.i3.i155, label %emit.exit.i156.build_epilogue.exit160_crit_edge, label %if.then.i.i6.i158

emit.exit.i156.build_epilogue.exit160_crit_edge:  ; preds = %emit.exit.i156
  call void @__sanitizer_cov_trace_pc() #16
  br label %build_epilogue.exit160

if.then.i.i6.i158:                                ; preds = %emit.exit.i156
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i5.i157 = getelementptr i32, ptr %.pr.i153, i32 %inc.i.i.i154
  %50 = ptrtoint ptr %arrayidx.i.i5.i157 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -259277336, ptr %arrayidx.i.i5.i157, align 4
  br label %build_epilogue.exit160

build_epilogue.exit160:                           ; preds = %if.then.i.i6.i158, %emit.exit.i156.build_epilogue.exit160_crit_edge, %emit.exit.thread.i151
  %51 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx, align 4
  %inc.i.i8.i159 = add i32 %52, 1
  store i32 %inc.i.i8.i159, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i8.i159)
  %cmp5.not.i = icmp eq i32 %inc.i.i8.i159, 0
  br i1 %cmp5.not.i, label %build_epilogue.exit160.if.end53_crit_edge, label %for.body.lr.ph.i

build_epilogue.exit160.if.end53_crit_edge:        ; preds = %build_epilogue.exit160
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

for.body.lr.ph.i:                                 ; preds = %build_epilogue.exit160
  %53 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %target.i.i.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %i.06.i, %52
  br i1 %exitcond.not.i, label %for.cond.i.if.end53_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.i.if.end53_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %54, i32 %i.06.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -237044249, i32 %56)
  %cmp1.i = icmp eq i32 %56, -237044249
  br i1 %cmp1.i, label %if.then52, label %for.cond.i

if.then52:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %image_ptr to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %image_ptr, align 4
  call void @bpf_jit_binary_free(ptr noundef nonnull %call39) #14
  br label %out_imms

if.end53:                                         ; preds = %for.cond.i.if.end53_crit_edge, %build_epilogue.exit160.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %59 = ptrtoint ptr %call39 to i32
  %60 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %target.i.i.i, align 4
  %add.ptr = getelementptr i32, ptr %61, i32 %inc.i.i8.i159
  %62 = ptrtoint ptr %add.ptr to i32
  call void %58(i32 noundef %59, i32 noundef %62) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bpf_jit_enable to i32))
  %63 = load i32, ptr @bpf_jit_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp56 = icmp sgt i32 %63, 1
  br i1 %cmp56, label %if.then58, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %66 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %target.i.i.i, align 4
  call fastcc void @bpf_jit_dump(i32 noundef %65, i32 noundef %mul38, ptr noundef %67)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end53.if.end61_crit_edge
  call fastcc void @bpf_jit_binary_lock_ro(ptr noundef nonnull %call39)
  %68 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %target.i.i.i, align 4
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 9
  %70 = ptrtoint ptr %bpf_func to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %bpf_func, align 4
  %jited = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 1
  %71 = ptrtoint ptr %jited to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load63 = load i16, ptr %jited, align 2
  %bf.set = or i16 %bf.load63, -32768
  store i16 %bf.set, ptr %jited, align 2
  %jited_len = getelementptr inbounds %struct.bpf_prog, ptr %call, i32 0, i32 5
  %72 = ptrtoint ptr %jited_len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul38, ptr %jited_len, align 4
  br label %out_imms

out_imms:                                         ; preds = %if.end61, %if.then52, %if.then48, %if.end36.out_imms_crit_edge
  %prog.addr.1 = phi ptr [ %prog, %if.then48 ], [ %prog, %if.then52 ], [ %call, %if.end61 ], [ %prog, %if.end36.out_imms_crit_edge ]
  %73 = ptrtoint ptr %imm_count to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %imm_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool66.not = icmp eq i16 %74, 0
  br i1 %tobool66.not, label %out_imms.out_off_crit_edge, label %if.then67

out_imms.out_off_crit_edge:                       ; preds = %out_imms
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_off

if.then67:                                        ; preds = %out_imms
  call void @__sanitizer_cov_trace_pc() #16
  %imms68 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 11
  %75 = ptrtoint ptr %imms68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %imms68, align 4
  call void @kfree(ptr noundef %76) #14
  br label %out_off

out_off:                                          ; preds = %if.then67, %out_imms.out_off_crit_edge, %if.end7.i.i144.out_off_crit_edge, %if.end12.out_off_crit_edge
  %prog.addr.2 = phi ptr [ %prog.addr.1, %if.then67 ], [ %prog.addr.1, %out_imms.out_off_crit_edge ], [ %prog, %if.end12.out_off_crit_edge ], [ %prog, %if.end7.i.i144.out_off_crit_edge ]
  %77 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %offsets, align 4
  call void @kfree(ptr noundef %78) #14
  br label %out

out:                                              ; preds = %out_off, %if.end7.i.i.out_crit_edge, %if.end3.out_crit_edge
  %prog.addr.3 = phi ptr [ %prog.addr.2, %out_off ], [ %prog, %if.end7.i.i.out_crit_edge ], [ %prog, %if.end3.out_crit_edge ]
  br i1 %cmp.not, label %out.cleanup_crit_edge, label %if.then72

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then72:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %cmp73 = icmp eq ptr %prog.addr.3, %prog
  %call.prog = select i1 %cmp73, ptr %call, ptr %prog
  call void @bpf_jit_prog_release_other(ptr noundef %prog.addr.3, ptr noundef %call.prog) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %out.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %prog, %entry.cleanup_crit_edge ], [ %prog, %if.end.cleanup_crit_edge ], [ %prog.addr.3, %if.then72 ], [ %prog.addr.3, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %image_ptr) #14
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ctx) #14
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_jit_blind_constants(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_body(ptr noundef %ctx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %len = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1009.not = icmp eq i32 %3, 0
  br i1 %cmp1009.not, label %entry.cleanup18_crit_edge, label %for.body.lr.ph

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

for.body.lr.ph:                                   ; preds = %entry
  %insnsi = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 1
  %target.i1226.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %epilogue_offset.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 3
  %idx.i1228.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %prologue_bytes.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 2
  %offsets.i1192.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 6
  %flags.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.01010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.bpf_insn], ptr %insnsi, i32 0, i32 %i.01010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 4
  %dst_reg.i = getelementptr inbounds %struct.bpf_insn, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %idxprom.i = zext i8 %bf.lshr.i to i32
  %arrayidx.i = getelementptr [15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 %idxprom.i
  %bf.clear.i = and i8 %bf.load.i, 15
  %idxprom3.i = zext i8 %bf.clear.i to i32
  %arrayidx4.i = getelementptr [15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 %idxprom3.i
  %off6.i = getelementptr inbounds %struct.bpf_insn, ptr %arrayidx, i32 0, i32 2
  %7 = ptrtoint ptr %off6.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %off6.i, align 2
  %imm7.i = getelementptr inbounds %struct.bpf_insn, ptr %arrayidx, i32 0, i32 3
  %9 = ptrtoint ptr %imm7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imm7.i, align 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %insnsi.i = getelementptr inbounds %struct.bpf_prog, ptr %12, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %insnsi.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 7
  %13 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %land.end495.i [
    i8 -76, label %for.body.sw.bb.i_crit_edge
    i8 -68, label %for.body.sw.bb.i_crit_edge1036
    i8 -73, label %for.body.sw.bb.i_crit_edge1037
    i8 -65, label %for.body.sw.bb.i_crit_edge1038
    i8 4, label %for.body.sw.bb19.i_crit_edge
    i8 12, label %for.body.sw.bb19.i_crit_edge1039
    i8 20, label %for.body.sw.bb19.i_crit_edge1040
    i8 28, label %for.body.sw.bb19.i_crit_edge1041
    i8 68, label %for.body.sw.bb19.i_crit_edge1042
    i8 76, label %for.body.sw.bb19.i_crit_edge1043
    i8 84, label %for.body.sw.bb19.i_crit_edge1044
    i8 92, label %for.body.sw.bb19.i_crit_edge1045
    i8 -92, label %for.body.sw.bb19.i_crit_edge1046
    i8 -84, label %for.body.sw.bb19.i_crit_edge1047
    i8 36, label %for.body.sw.bb19.i_crit_edge1048
    i8 44, label %for.body.sw.bb19.i_crit_edge1049
    i8 108, label %for.body.sw.bb19.i_crit_edge1050
    i8 124, label %for.body.sw.bb19.i_crit_edge1051
    i8 -52, label %for.body.sw.bb19.i_crit_edge1052
    i8 7, label %for.body.sw.bb19.i_crit_edge1053
    i8 15, label %for.body.sw.bb19.i_crit_edge1054
    i8 23, label %for.body.sw.bb19.i_crit_edge1055
    i8 31, label %for.body.sw.bb19.i_crit_edge1056
    i8 71, label %for.body.sw.bb19.i_crit_edge1057
    i8 79, label %for.body.sw.bb19.i_crit_edge1058
    i8 87, label %for.body.sw.bb19.i_crit_edge1059
    i8 95, label %for.body.sw.bb19.i_crit_edge1060
    i8 -89, label %for.body.sw.bb19.i_crit_edge1061
    i8 -81, label %for.body.sw.bb19.i_crit_edge1062
    i8 52, label %for.body.sw.bb34.i_crit_edge
    i8 60, label %for.body.sw.bb34.i_crit_edge1063
    i8 -108, label %for.body.sw.bb34.i_crit_edge1064
    i8 -100, label %for.body.sw.bb34.i_crit_edge1065
    i8 55, label %for.body.land.end.i_crit_edge
    i8 63, label %for.body.land.end.i_crit_edge1066
    i8 -105, label %for.body.land.end.i_crit_edge1067
    i8 -97, label %for.body.land.end.i_crit_edge1068
    i8 100, label %for.body.sw.bb57.i_crit_edge
    i8 116, label %for.body.sw.bb57.i_crit_edge1069
    i8 -60, label %for.body.sw.bb57.i_crit_edge1070
    i8 103, label %sw.bb78.i
    i8 119, label %sw.bb89.i
    i8 111, label %sw.bb100.i
    i8 127, label %sw.bb101.i
    i8 -49, label %sw.bb102.i
    i8 -57, label %sw.bb103.i
    i8 -124, label %sw.bb114.i
    i8 -121, label %sw.bb126.i
    i8 47, label %for.body.sw.bb127.i_crit_edge
    i8 39, label %for.body.sw.bb127.i_crit_edge1071
    i8 -44, label %for.body.sw.bb134.i_crit_edge
    i8 -36, label %for.body.sw.bb134.i_crit_edge1072
    i8 24, label %if.then
    i8 97, label %for.body.sw.bb208.i_crit_edge
    i8 105, label %for.body.sw.bb208.i_crit_edge1073
    i8 113, label %for.body.sw.bb208.i_crit_edge1074
    i8 121, label %for.body.sw.bb208.i_crit_edge1075
    i8 -62, label %for.body.sw.epilog517.i_crit_edge
    i8 98, label %for.body.sw.bb215.i_crit_edge
    i8 106, label %for.body.sw.bb215.i_crit_edge1076
    i8 114, label %for.body.sw.bb215.i_crit_edge1077
    i8 122, label %for.body.sw.bb215.i_crit_edge1078
    i8 -61, label %for.body.land.end.i_crit_edge1079
    i8 -37, label %for.body.land.end.i_crit_edge1080
    i8 99, label %for.body.sw.bb227.i_crit_edge
    i8 107, label %for.body.sw.bb227.i_crit_edge1081
    i8 115, label %for.body.sw.bb227.i_crit_edge1082
    i8 123, label %for.body.sw.bb227.i_crit_edge1083
    i8 29, label %for.body.sw.bb233.i_crit_edge
    i8 45, label %for.body.sw.bb233.i_crit_edge1084
    i8 61, label %for.body.sw.bb233.i_crit_edge1085
    i8 93, label %for.body.sw.bb233.i_crit_edge1086
    i8 109, label %for.body.sw.bb233.i_crit_edge1087
    i8 125, label %for.body.sw.bb233.i_crit_edge1088
    i8 77, label %for.body.sw.bb233.i_crit_edge1089
    i8 -67, label %for.body.sw.bb233.i_crit_edge1090
    i8 -83, label %for.body.sw.bb233.i_crit_edge1091
    i8 -51, label %for.body.sw.bb233.i_crit_edge1092
    i8 -35, label %for.body.sw.bb233.i_crit_edge1093
    i8 30, label %for.body.sw.bb233.i_crit_edge1094
    i8 46, label %for.body.sw.bb233.i_crit_edge1095
    i8 62, label %for.body.sw.bb233.i_crit_edge1096
    i8 94, label %for.body.sw.bb233.i_crit_edge1097
    i8 110, label %for.body.sw.bb233.i_crit_edge1098
    i8 126, label %for.body.sw.bb233.i_crit_edge1099
    i8 78, label %for.body.sw.bb233.i_crit_edge1100
    i8 -66, label %for.body.sw.bb233.i_crit_edge1101
    i8 -82, label %for.body.sw.bb233.i_crit_edge1102
    i8 -50, label %for.body.sw.bb233.i_crit_edge1103
    i8 -34, label %for.body.sw.bb233.i_crit_edge1104
    i8 21, label %for.body.sw.bb240.i_crit_edge
    i8 37, label %for.body.sw.bb240.i_crit_edge1105
    i8 53, label %for.body.sw.bb240.i_crit_edge1106
    i8 85, label %for.body.sw.bb240.i_crit_edge1107
    i8 101, label %for.body.sw.bb240.i_crit_edge1108
    i8 117, label %for.body.sw.bb240.i_crit_edge1109
    i8 69, label %for.body.sw.bb240.i_crit_edge1110
    i8 -91, label %for.body.sw.bb240.i_crit_edge1111
    i8 -75, label %for.body.sw.bb240.i_crit_edge1112
    i8 -59, label %for.body.sw.bb240.i_crit_edge1113
    i8 -43, label %for.body.sw.bb240.i_crit_edge1114
    i8 22, label %for.body.sw.bb240.i_crit_edge1115
    i8 38, label %for.body.sw.bb240.i_crit_edge1116
    i8 54, label %for.body.sw.bb240.i_crit_edge1117
    i8 86, label %for.body.sw.bb240.i_crit_edge1118
    i8 102, label %for.body.sw.bb240.i_crit_edge1119
    i8 118, label %for.body.sw.bb240.i_crit_edge1120
    i8 70, label %for.body.sw.bb240.i_crit_edge1121
    i8 -90, label %for.body.sw.bb240.i_crit_edge1122
    i8 -74, label %for.body.sw.bb240.i_crit_edge1123
    i8 -58, label %for.body.sw.bb240.i_crit_edge1124
    i8 -42, label %for.body.sw.bb240.i_crit_edge1125
    i8 5, label %sw.bb293.i
    i8 -11, label %sw.bb315.i
    i8 -123, label %sw.bb320.i
    i8 -107, label %sw.bb437.i
  ]

for.body.sw.bb240.i_crit_edge1125:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1124:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1123:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1122:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1121:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1120:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1119:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1118:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1117:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1116:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1115:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1114:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1113:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1112:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1111:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1110:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1109:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1108:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1107:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1106:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge1105:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb240.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb240.i

for.body.sw.bb233.i_crit_edge1104:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1103:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1102:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1101:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1100:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1099:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1098:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1097:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1096:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1095:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1094:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1093:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1092:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1091:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1090:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1089:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1088:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1087:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1086:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1085:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge1084:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb233.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb233.i

for.body.sw.bb227.i_crit_edge1083:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb227.i

for.body.sw.bb227.i_crit_edge1082:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb227.i

for.body.sw.bb227.i_crit_edge1081:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb227.i

for.body.sw.bb227.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb227.i

for.body.land.end.i_crit_edge1080:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end.i

for.body.land.end.i_crit_edge1079:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end.i

for.body.sw.bb215.i_crit_edge1078:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb215.i

for.body.sw.bb215.i_crit_edge1077:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb215.i

for.body.sw.bb215.i_crit_edge1076:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb215.i

for.body.sw.bb215.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb215.i

for.body.sw.epilog517.i_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

for.body.sw.bb208.i_crit_edge1075:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb208.i

for.body.sw.bb208.i_crit_edge1074:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb208.i

for.body.sw.bb208.i_crit_edge1073:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb208.i

for.body.sw.bb208.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb208.i

for.body.sw.bb134.i_crit_edge1072:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb134.i

for.body.sw.bb134.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb134.i

for.body.sw.bb127.i_crit_edge1071:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127.i

for.body.sw.bb127.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb127.i

for.body.sw.bb57.i_crit_edge1070:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb57.i

for.body.sw.bb57.i_crit_edge1069:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb57.i

for.body.sw.bb57.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb57.i

for.body.land.end.i_crit_edge1068:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end.i

for.body.land.end.i_crit_edge1067:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end.i

for.body.land.end.i_crit_edge1066:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end.i

for.body.land.end.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end.i

for.body.sw.bb34.i_crit_edge1065:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb34.i

for.body.sw.bb34.i_crit_edge1064:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb34.i

for.body.sw.bb34.i_crit_edge1063:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb34.i

for.body.sw.bb34.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb34.i

for.body.sw.bb19.i_crit_edge1062:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1061:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1060:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1059:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1058:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1057:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1056:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1055:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1054:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1053:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1052:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1051:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1050:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1049:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1048:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1047:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1046:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1045:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1044:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1043:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1042:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1041:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1040:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge1039:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb19.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb19.i

for.body.sw.bb.i_crit_edge1038:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge1037:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge1036:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge1036, %for.body.sw.bb.i_crit_edge1037, %for.body.sw.bb.i_crit_edge1038
  %and12.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %switch.not.i = icmp eq i32 %and12.i, 0
  br i1 %switch.not.i, label %sw.bb17.i, label %sw.bb13.i

sw.bb13.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp14.i = icmp eq i32 %10, 1
  br i1 %cmp14.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb13.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i.i859 = icmp slt i8 %15, 0
  %16 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i944 = icmp eq ptr %17, null
  br i1 %cmp.i.i859, label %if.then.i.i862, label %if.else.i871

if.then.i.i862:                                   ; preds = %if.then.i
  %18 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i944, label %emit_mov_i.exit951.thread, label %emit_mov_i.exit951

emit_mov_i.exit951.thread:                        ; preds = %if.then.i.i862
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i950953 = add i32 %19, 1
  %20 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i.i.i.i950953, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i870

emit_mov_i.exit951:                               ; preds = %if.then.i.i862
  %arrayidx.i.i.i.i948 = getelementptr i32, ptr %17, i32 %19
  %21 = ptrtoint ptr %arrayidx.i.i.i.i948 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6332643, ptr %arrayidx.i.i.i.i948, align 4
  %22 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %target.i1226.i, align 4
  %23 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i950 = add i32 %24, 1
  store i32 %inc.i.i.i.i950, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i861 = icmp eq ptr %.pr, null
  br i1 %cmp.not.i.i.i.i861, label %emit_mov_i.exit951.arm_bpf_put_reg32.exit.i870_crit_edge, label %if.end10.sink.split.sink.split.i.i867

emit_mov_i.exit951.arm_bpf_put_reg32.exit.i870_crit_edge: ; preds = %emit_mov_i.exit951
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i870

if.end10.sink.split.sink.split.i.i867:            ; preds = %emit_mov_i.exit951
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i863 = sext i8 %15 to i32
  %25 = sub nsw i32 0, %conv.i.i863
  %or.i.i.i.i864 = or i32 %25, -452239360
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i864) #14
  %arrayidx.i.i21.i.i866 = getelementptr i32, ptr %.pr, i32 %inc.i.i.i.i950
  %27 = ptrtoint ptr %arrayidx.i.i21.i.i866 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx.i.i21.i.i866, align 4
  br label %arm_bpf_put_reg32.exit.i870

arm_bpf_put_reg32.exit.i870:                      ; preds = %if.end10.sink.split.sink.split.i.i867, %emit_mov_i.exit951.arm_bpf_put_reg32.exit.i870_crit_edge, %emit_mov_i.exit951.thread
  %28 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i869 = add i32 %29, 1
  store i32 %inc.i.i24.i.i869, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

if.else.i871:                                     ; preds = %if.then.i
  br i1 %cmp.not.i.i.i944, label %if.else.i871.emit_mov_i.exit942_crit_edge, label %if.then.i.i.i937

if.else.i871.emit_mov_i.exit942_crit_edge:        ; preds = %if.else.i871
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_mov_i.exit942

if.then.i.i.i937:                                 ; preds = %if.else.i871
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i934 = zext i8 %15 to i32
  %shl.i935 = shl nuw nsw i32 %conv.i934, 12
  %or.i.i165.i936 = or i32 %shl.i935, -476053504
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i936) #14
  %31 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i939 = getelementptr i32, ptr %17, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i.i.i939 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %arrayidx.i.i.i.i939, align 4
  br label %emit_mov_i.exit942

emit_mov_i.exit942:                               ; preds = %if.then.i.i.i937, %if.else.i871.emit_mov_i.exit942_crit_edge
  %34 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i941 = add i32 %35, 1
  store i32 %inc.i.i.i.i941, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

if.end.i:                                         ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @emit_a32_mov_r64(i1 noundef zeroext %cmp.i, ptr noundef %arrayidx.i, ptr noundef %arrayidx4.i, ptr noundef %ctx) #14
  br label %sw.epilog517.i

sw.bb17.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i.i = icmp slt i32 %10, 0
  %36 = and i1 %cmp.i, %tobool2.not.i.i
  %or.i.i = or i64 %conv.i.i, -4294967296
  %val64.0.i.i = select i1 %36, i64 %or.i.i, i64 %conv.i.i
  tail call fastcc void @emit_a32_mov_i64(ptr noundef %arrayidx.i, i64 noundef %val64.0.i.i, ptr noundef %ctx) #14
  br label %sw.epilog517.i

sw.bb19.i:                                        ; preds = %for.body.sw.bb19.i_crit_edge, %for.body.sw.bb19.i_crit_edge1039, %for.body.sw.bb19.i_crit_edge1040, %for.body.sw.bb19.i_crit_edge1041, %for.body.sw.bb19.i_crit_edge1042, %for.body.sw.bb19.i_crit_edge1043, %for.body.sw.bb19.i_crit_edge1044, %for.body.sw.bb19.i_crit_edge1045, %for.body.sw.bb19.i_crit_edge1046, %for.body.sw.bb19.i_crit_edge1047, %for.body.sw.bb19.i_crit_edge1048, %for.body.sw.bb19.i_crit_edge1049, %for.body.sw.bb19.i_crit_edge1050, %for.body.sw.bb19.i_crit_edge1051, %for.body.sw.bb19.i_crit_edge1052, %for.body.sw.bb19.i_crit_edge1053, %for.body.sw.bb19.i_crit_edge1054, %for.body.sw.bb19.i_crit_edge1055, %for.body.sw.bb19.i_crit_edge1056, %for.body.sw.bb19.i_crit_edge1057, %for.body.sw.bb19.i_crit_edge1058, %for.body.sw.bb19.i_crit_edge1059, %for.body.sw.bb19.i_crit_edge1060, %for.body.sw.bb19.i_crit_edge1061, %for.body.sw.bb19.i_crit_edge1062
  %and21.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %switch816.not.i = icmp eq i32 %and21.i, 0
  br i1 %switch816.not.i, label %sw.bb27.i, label %sw.bb22.i

sw.bb22.i:                                        ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #16
  %and25.i = and i8 %5, -16
  tail call fastcc void @emit_a32_alu_r64(i1 noundef zeroext %cmp.i, ptr noundef %arrayidx.i, ptr noundef %arrayidx4.i, ptr noundef %ctx, i8 noundef zeroext %and25.i) #14
  br label %sw.epilog517.i

sw.bb27.i:                                        ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i825.i = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i826.i = icmp slt i32 %10, 0
  %37 = and i1 %cmp.i, %tobool2.not.i826.i
  %or.i827.i = or i64 %conv.i825.i, -4294967296
  %val64.0.i828.i = select i1 %37, i64 %or.i827.i, i64 %conv.i825.i
  tail call fastcc void @emit_a32_mov_i64(ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), i64 noundef %val64.0.i828.i, ptr noundef %ctx) #14
  %and31.i = and i8 %5, -16
  tail call fastcc void @emit_a32_alu_r64(i1 noundef zeroext %cmp.i, ptr noundef %arrayidx.i, ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), ptr noundef %ctx, i8 noundef zeroext %and31.i) #14
  br label %sw.epilog517.i

sw.bb34.i:                                        ; preds = %for.body.sw.bb34.i_crit_edge, %for.body.sw.bb34.i_crit_edge1063, %for.body.sw.bb34.i_crit_edge1064, %for.body.sw.bb34.i_crit_edge1065
  %arrayidx35.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %38 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.i.i.i = icmp slt i8 %39, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %sw.bb34.i.arm_bpf_get_reg32.exit.i_crit_edge

sw.bb34.i.arm_bpf_get_reg32.exit.i_crit_edge:     ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit.i

if.then.i.i:                                      ; preds = %sw.bb34.i
  %40 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %41, null
  br i1 %cmp.not.i.i.i.i, label %if.then.i.i.emit.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.emit.exit.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i829.i = sext i8 %39 to i32
  %42 = sub nsw i32 0, %conv.i829.i
  %or.i.i.i.i = or i32 %42, -451182592
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #14
  %44 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %41, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %arrayidx.i.i.i.i, align 4
  br label %emit.exit.i.i

emit.exit.i.i:                                    ; preds = %if.then.i.i.i.i, %if.then.i.i.emit.exit.i.i_crit_edge
  %47 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit.i

arm_bpf_get_reg32.exit.i:                         ; preds = %emit.exit.i.i, %sw.bb34.i.arm_bpf_get_reg32.exit.i_crit_edge
  %reg.addr.0.i.i = phi i8 [ 8, %emit.exit.i.i ], [ %39, %sw.bb34.i.arm_bpf_get_reg32.exit.i_crit_edge ]
  %and38.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %switch818.not.i = icmp eq i32 %and38.i, 0
  br i1 %switch818.not.i, label %sw.bb43.i, label %sw.bb39.i

sw.bb39.i:                                        ; preds = %arm_bpf_get_reg32.exit.i
  %arrayidx40.i = getelementptr i8, ptr %arrayidx4.i, i32 1
  %49 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i.i830.i = icmp slt i8 %50, 0
  br i1 %cmp.i.i830.i, label %if.then.i833.i, label %sw.epilog46.i

if.then.i833.i:                                   ; preds = %sw.bb39.i
  %51 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i832.i = icmp eq ptr %52, null
  br i1 %cmp.not.i.i.i832.i, label %if.then.i833.i.emit.exit.i842.i_crit_edge, label %if.then.i.i.i839.i

if.then.i833.i.emit.exit.i842.i_crit_edge:        ; preds = %if.then.i833.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i842.i

if.then.i.i.i839.i:                               ; preds = %if.then.i833.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i834.i = sext i8 %50 to i32
  %53 = sub nsw i32 0, %conv.i834.i
  %or.i.i.i836.i = or i32 %53, -451178496
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i836.i) #14
  %55 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i838.i = getelementptr i32, ptr %52, i32 %56
  %57 = ptrtoint ptr %arrayidx.i.i.i838.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %54, ptr %arrayidx.i.i.i838.i, align 4
  br label %emit.exit.i842.i

emit.exit.i842.i:                                 ; preds = %if.then.i.i.i839.i, %if.then.i833.i.emit.exit.i842.i_crit_edge
  %58 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i841.i = add i32 %59, 1
  store i32 %inc.i.i.i841.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog46.thread.i

sw.bb43.i:                                        ; preds = %arm_bpf_get_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @emit_mov_i(i8 noundef zeroext 9, i32 noundef %10, ptr noundef %ctx) #14
  br label %sw.epilog46.thread.i

sw.epilog46.thread.i:                             ; preds = %sw.bb43.i, %emit.exit.i842.i
  %and481241.i = and i8 %5, -16
  br label %if.then.i847.i

sw.epilog46.i:                                    ; preds = %sw.bb39.i
  %and48.i = and i8 %5, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp.not.i.i = icmp eq i8 %50, 1
  br i1 %cmp.not.i.i, label %sw.epilog46.i.if.end.i.i_crit_edge, label %sw.epilog46.i.if.then.i847.i_crit_edge

sw.epilog46.i.if.then.i847.i_crit_edge:           ; preds = %sw.epilog46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i847.i

sw.epilog46.i.if.end.i.i_crit_edge:               ; preds = %sw.epilog46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i847.i:                                   ; preds = %sw.epilog46.i.if.then.i847.i_crit_edge, %sw.epilog46.thread.i
  %and481244.i = phi i8 [ %and481241.i, %sw.epilog46.thread.i ], [ %and48.i, %sw.epilog46.i.if.then.i847.i_crit_edge ]
  %rt.01243.i = phi i8 [ 9, %sw.epilog46.thread.i ], [ %50, %sw.epilog46.i.if.then.i847.i_crit_edge ]
  %60 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i846.i = icmp eq ptr %61, null
  %62 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i846.i, label %emit.exit.thread.i.i, label %emit.exit.i850.i

emit.exit.thread.i.i:                             ; preds = %if.then.i847.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i134.i.i = add i32 %63, 1
  %64 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc.i.i134.i.i, ptr %idx.i1228.i, align 4
  br label %emit.exit74.i.i

emit.exit.i850.i:                                 ; preds = %if.then.i847.i
  %arrayidx.i.i.i848.i = getelementptr i32, ptr %61, i32 %63
  %65 = ptrtoint ptr %arrayidx.i.i.i848.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 24158433, ptr %arrayidx.i.i.i848.i, align 4
  %66 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr.i.i = load ptr, ptr %target.i1226.i, align 4
  %67 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i849.i = add i32 %68, 1
  store i32 %inc.i.i.i849.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i68.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %cmp.not.i.i68.i.i, label %emit.exit.i850.i.emit.exit74.i.i_crit_edge, label %if.then.i.i71.i.i

emit.exit.i850.i.emit.exit74.i.i_crit_edge:       ; preds = %emit.exit.i850.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit74.i.i

if.then.i.i71.i.i:                                ; preds = %emit.exit.i850.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i851.i = zext i8 %rt.01243.i to i32
  %or.i.i.i852.i = or i32 %conv.i851.i, -509603840
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i852.i) #14
  %arrayidx.i.i70.i.i = getelementptr i32, ptr %.pr.i.i, i32 %inc.i.i.i849.i
  %70 = ptrtoint ptr %arrayidx.i.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i.i70.i.i, align 4
  br label %emit.exit74.i.i

emit.exit74.i.i:                                  ; preds = %if.then.i.i71.i.i, %emit.exit.i850.i.emit.exit74.i.i_crit_edge, %emit.exit.thread.i.i
  %71 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i73.i.i = add i32 %72, 1
  store i32 %inc.i.i73.i.i, ptr %idx.i1228.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %emit.exit74.i.i, %sw.epilog46.i.if.end.i.i_crit_edge
  %cmp.not.i1247.i = phi i1 [ false, %emit.exit74.i.i ], [ true, %sw.epilog46.i.if.end.i.i_crit_edge ]
  %and481245.i = phi i8 [ %and481244.i, %emit.exit74.i.i ], [ %and48.i, %sw.epilog46.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reg.addr.0.i.i)
  %cmp8.not.i.i = icmp eq i8 %reg.addr.0.i.i, 0
  br i1 %cmp8.not.i.i, label %if.end.i.i.if.end19.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end19.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  %73 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i76.i.i = icmp eq ptr %74, null
  %75 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i76.i.i, label %emit.exit82.thread.i.i, label %emit.exit82.i.i

emit.exit82.thread.i.i:                           ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i81140.i.i = add i32 %76, 1
  %77 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %inc.i.i81140.i.i, ptr %idx.i1228.i, align 4
  br label %emit.exit91.i.i

emit.exit82.i.i:                                  ; preds = %if.then10.i.i
  %arrayidx.i.i78.i.i = getelementptr i32, ptr %74, i32 %76
  %78 = ptrtoint ptr %arrayidx.i.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 6332641, ptr %arrayidx.i.i78.i.i, align 4
  %79 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr138.i.i = load ptr, ptr %target.i1226.i, align 4
  %80 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i81.i.i = add i32 %81, 1
  store i32 %inc.i.i81.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i84.i.i = icmp eq ptr %.pr138.i.i, null
  br i1 %cmp.not.i.i84.i.i, label %emit.exit82.i.i.emit.exit91.i.i_crit_edge, label %if.then.i.i88.i.i

emit.exit82.i.i.emit.exit91.i.i_crit_edge:        ; preds = %emit.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit91.i.i

if.then.i.i88.i.i:                                ; preds = %emit.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv7.i.i = zext i8 %reg.addr.0.i.i to i32
  %or.i.i85.i.i = or i32 %conv7.i.i, -509607936
  %82 = tail call i32 @llvm.bswap.i32(i32 %or.i.i85.i.i) #14
  %arrayidx.i.i87.i.i = getelementptr i32, ptr %.pr138.i.i, i32 %inc.i.i81.i.i
  %83 = ptrtoint ptr %arrayidx.i.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx.i.i87.i.i, align 4
  br label %emit.exit91.i.i

emit.exit91.i.i:                                  ; preds = %if.then.i.i88.i.i, %emit.exit82.i.i.emit.exit91.i.i_crit_edge, %emit.exit82.thread.i.i
  %84 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i90.i.i = add i32 %85, 1
  store i32 %inc.i.i90.i.i, ptr %idx.i1228.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %emit.exit91.i.i, %if.end.i.i.if.end19.i.i_crit_edge
  %86 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i93.i.i = icmp eq ptr %87, null
  br i1 %cmp.not.i.i93.i.i, label %if.end19.i.i.emit.exit99.i.i_crit_edge, label %if.then.i.i96.i.i

if.end19.i.i.emit.exit99.i.i_crit_edge:           ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit99.i.i

if.then.i.i96.i.i:                                ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i95.i.i = getelementptr i32, ptr %87, i32 %89
  %90 = ptrtoint ptr %arrayidx.i.i95.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 201338345, ptr %arrayidx.i.i95.i.i, align 4
  br label %emit.exit99.i.i

emit.exit99.i.i:                                  ; preds = %if.then.i.i96.i.i, %if.end19.i.i.emit.exit99.i.i_crit_edge
  %91 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i98.i.i = add i32 %92, 1
  store i32 %inc.i.i98.i.i, ptr %idx.i1228.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %and481245.i)
  %cmp21.i.i = icmp eq i8 %and481245.i, 48
  %cond.i.i = select i1 %cmp21.i.i, i32 ptrtoint (ptr @jit_udiv32 to i32), i32 ptrtoint (ptr @jit_mod32 to i32)
  tail call fastcc void @emit_mov_i(i8 noundef zeroext 12, i32 noundef %cond.i.i, ptr noundef %ctx) #14
  %93 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i.i = icmp eq ptr %94, null
  %95 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i.i.i, label %emit_blx_r.exit.thread.i.i, label %emit_blx_r.exit.i.i

emit_blx_r.exit.thread.i.i:                       ; preds = %emit.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i145.i.i = add i32 %96, 1
  %97 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %inc.i.i.i145.i.i, ptr %idx.i1228.i, align 4
  br label %emit.exit107.i.i

emit_blx_r.exit.i.i:                              ; preds = %emit.exit99.i.i
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %94, i32 %96
  %98 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1023356897, ptr %arrayidx.i.i.i.i.i, align 4
  %99 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pr144.i.i = load ptr, ptr %target.i1226.i, align 4
  %100 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i.i = add i32 %101, 1
  store i32 %inc.i.i.i.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i101.i.i = icmp eq ptr %.pr144.i.i, null
  br i1 %cmp.not.i.i101.i.i, label %emit_blx_r.exit.i.i.emit.exit107.i.i_crit_edge, label %if.then.i.i104.i.i

emit_blx_r.exit.i.i.emit.exit107.i.i_crit_edge:   ; preds = %emit_blx_r.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit107.i.i

if.then.i.i104.i.i:                               ; preds = %emit_blx_r.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i103.i.i = getelementptr i32, ptr %.pr144.i.i, i32 %inc.i.i.i.i.i
  %102 = ptrtoint ptr %arrayidx.i.i103.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 201375208, ptr %arrayidx.i.i103.i.i, align 4
  br label %emit.exit107.i.i

emit.exit107.i.i:                                 ; preds = %if.then.i.i104.i.i, %emit_blx_r.exit.i.i.emit.exit107.i.i_crit_edge, %emit_blx_r.exit.thread.i.i
  %103 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i106.i.i = add i32 %104, 1
  store i32 %inc.i.i106.i.i, ptr %idx.i1228.i, align 4
  br i1 %cmp8.not.i.i, label %emit.exit107.i.i.if.end32.i.i_crit_edge, label %if.then26.i.i

emit.exit107.i.i.if.end32.i.i_crit_edge:          ; preds = %emit.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i.i

if.then26.i.i:                                    ; preds = %emit.exit107.i.i
  %105 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i109.i.i = icmp eq ptr %106, null
  br i1 %cmp.not.i.i109.i.i, label %if.then26.i.i.emit.exit116.i.i_crit_edge, label %if.then.i.i113.i.i

if.then26.i.i.emit.exit116.i.i_crit_edge:         ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit116.i.i

if.then.i.i113.i.i:                               ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv23.i.i = zext i8 %reg.addr.0.i.i to i32
  %shl28.i.i = shl nuw nsw i32 %conv23.i.i, 12
  %or.i.i110.i.i = or i32 %shl28.i.i, -509607936
  %107 = tail call i32 @llvm.bswap.i32(i32 %or.i.i110.i.i) #14
  %arrayidx.i.i112.i.i = getelementptr i32, ptr %106, i32 %inc.i.i106.i.i
  %108 = ptrtoint ptr %arrayidx.i.i112.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx.i.i112.i.i, align 4
  br label %emit.exit116.i.i

emit.exit116.i.i:                                 ; preds = %if.then.i.i113.i.i, %if.then26.i.i.emit.exit116.i.i_crit_edge
  %109 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i115.i.i = add i32 %110, 1
  store i32 %inc.i.i115.i.i, ptr %idx.i1228.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %emit.exit116.i.i, %emit.exit107.i.i.if.end32.i.i_crit_edge
  br i1 %cmp.not.i1247.i, label %if.end32.i.i.if.end40.i.i_crit_edge, label %if.then36.i.i

if.end32.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40.i.i

if.then36.i.i:                                    ; preds = %if.end32.i.i
  %111 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i118.i.i = icmp eq ptr %112, null
  br i1 %cmp.not.i.i118.i.i, label %if.then36.i.i.emit.exit124.i.i_crit_edge, label %if.then.i.i121.i.i

if.then36.i.i.emit.exit124.i.i_crit_edge:         ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit124.i.i

if.then.i.i121.i.i:                               ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %113 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i120.i.i = getelementptr i32, ptr %112, i32 %114
  %115 = ptrtoint ptr %arrayidx.i.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 118530273, ptr %arrayidx.i.i120.i.i, align 4
  br label %emit.exit124.i.i

emit.exit124.i.i:                                 ; preds = %if.then.i.i121.i.i, %if.then36.i.i.emit.exit124.i.i_crit_edge
  %116 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i123.i.i = add i32 %117, 1
  store i32 %inc.i.i123.i.i, ptr %idx.i1228.i, align 4
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %emit.exit124.i.i, %if.end32.i.i.if.end40.i.i_crit_edge
  br i1 %cmp8.not.i.i, label %if.end40.i.i.emit_udivmod.exit.i_crit_edge, label %if.then44.i.i

if.end40.i.i.emit_udivmod.exit.i_crit_edge:       ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_udivmod.exit.i

if.then44.i.i:                                    ; preds = %if.end40.i.i
  %118 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i126.i.i = icmp eq ptr %119, null
  br i1 %cmp.not.i.i126.i.i, label %if.then44.i.i.emit.exit132.i.i_crit_edge, label %if.then.i.i129.i.i

if.then44.i.i.emit.exit132.i.i_crit_edge:         ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit132.i.i

if.then.i.i129.i.i:                               ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %120 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i128.i.i = getelementptr i32, ptr %119, i32 %121
  %122 = ptrtoint ptr %arrayidx.i.i128.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 100704481, ptr %arrayidx.i.i128.i.i, align 4
  br label %emit.exit132.i.i

emit.exit132.i.i:                                 ; preds = %if.then.i.i129.i.i, %if.then44.i.i.emit.exit132.i.i_crit_edge
  %123 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i131.i.i = add i32 %124, 1
  store i32 %inc.i.i131.i.i, ptr %idx.i1228.i, align 4
  br label %emit_udivmod.exit.i

emit_udivmod.exit.i:                              ; preds = %emit.exit132.i.i, %if.end40.i.i.emit_udivmod.exit.i_crit_edge
  br i1 %cmp.i.i.i, label %if.then.i856.i, label %if.else.i.i

if.then.i856.i:                                   ; preds = %emit_udivmod.exit.i
  %125 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i855.i = icmp eq ptr %126, null
  br i1 %cmp.not.i.i.i855.i, label %if.then.i856.i.if.end10.sink.split.i.i_crit_edge, label %if.then.i.i.i860.i

if.then.i856.i.if.end10.sink.split.i.i_crit_edge: ; preds = %if.then.i856.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i

if.then.i.i.i860.i:                               ; preds = %if.then.i856.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i857.i = sext i8 %39 to i32
  %127 = sub nsw i32 0, %conv.i857.i
  %conv.i.i.i = zext i8 %reg.addr.0.i.i to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 12
  %or3.i.i858.i = or i32 %shl.i.i.i, %127
  %or.i.i.i859.i = or i32 %or3.i.i858.i, -452263936
  br label %if.end10.sink.split.sink.split.i.i

if.else.i.i:                                      ; preds = %emit_udivmod.exit.i
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %reg.addr.0.i.i)
  %cmp.not.i861.i = icmp eq i8 %39, %reg.addr.0.i.i
  br i1 %cmp.not.i861.i, label %if.else.i.i.arm_bpf_put_reg32.exit.i_crit_edge, label %if.then5.i.i

if.else.i.i.arm_bpf_put_reg32.exit.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  %128 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i.i = icmp eq ptr %129, null
  br i1 %cmp.not.i.i18.i.i, label %if.then5.i.i.if.end10.sink.split.i.i_crit_edge, label %if.then.i.i22.i.i

if.then5.i.i.if.end10.sink.split.i.i_crit_edge:   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i

if.then.i.i22.i.i:                                ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i.i = zext i8 %39 to i32
  %shl.i.i = shl nuw nsw i32 %conv226.i.i, 12
  %conv3.i1278.i = zext i8 %reg.addr.0.i.i to i32
  %or.i862.i = or i32 %shl.i.i, %conv3.i1278.i
  %or.i.i19.i.i = or i32 %or.i862.i, -509607936
  br label %if.end10.sink.split.sink.split.i.i

if.end10.sink.split.sink.split.i.i:               ; preds = %if.then.i.i22.i.i, %if.then.i.i.i860.i
  %or.i.i19.sink.i.i = phi i32 [ %or.i.i19.i.i, %if.then.i.i22.i.i ], [ %or.i.i.i859.i, %if.then.i.i.i860.i ]
  %.sink28.i.i = phi ptr [ %129, %if.then.i.i22.i.i ], [ %126, %if.then.i.i.i860.i ]
  %130 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i.i) #14
  %131 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i21.i.i = getelementptr i32, ptr %.sink28.i.i, i32 %132
  %133 = ptrtoint ptr %arrayidx.i.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %130, ptr %arrayidx.i.i21.i.i, align 4
  br label %if.end10.sink.split.i.i

if.end10.sink.split.i.i:                          ; preds = %if.end10.sink.split.sink.split.i.i, %if.then5.i.i.if.end10.sink.split.i.i_crit_edge, %if.then.i856.i.if.end10.sink.split.i.i_crit_edge
  %134 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i = add i32 %135, 1
  store i32 %inc.i.i24.i.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i

arm_bpf_put_reg32.exit.i:                         ; preds = %if.end10.sink.split.i.i, %if.else.i.i.arm_bpf_put_reg32.exit.i_crit_edge
  %136 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ctx, align 4
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %137, i32 0, i32 10
  %138 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %aux.i, align 4
  %verifier_zext.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %139, i32 0, i32 21
  %140 = ptrtoint ptr %verifier_zext.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %verifier_zext.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool52.not.i = icmp eq i8 %141, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %arm_bpf_put_reg32.exit.i.sw.epilog517.i_crit_edge

arm_bpf_put_reg32.exit.i.sw.epilog517.i_crit_edge: ; preds = %arm_bpf_put_reg32.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then53.i:                                      ; preds = %arm_bpf_put_reg32.exit.i
  %142 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp.i.i844 = icmp slt i8 %143, 0
  %144 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i924 = icmp eq ptr %145, null
  br i1 %cmp.i.i844, label %if.then.i.i847, label %if.else.i856

if.then.i.i847:                                   ; preds = %if.then53.i
  %146 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i924, label %emit_mov_i.exit931.thread, label %emit_mov_i.exit931

emit_mov_i.exit931.thread:                        ; preds = %if.then.i.i847
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i930957 = add i32 %147, 1
  %148 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %inc.i.i.i.i930957, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i855

emit_mov_i.exit931:                               ; preds = %if.then.i.i847
  %arrayidx.i.i.i.i928 = getelementptr i32, ptr %145, i32 %147
  %149 = ptrtoint ptr %arrayidx.i.i.i.i928 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 6332643, ptr %arrayidx.i.i.i.i928, align 4
  %150 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pr956 = load ptr, ptr %target.i1226.i, align 4
  %151 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i930 = add i32 %152, 1
  store i32 %inc.i.i.i.i930, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i846 = icmp eq ptr %.pr956, null
  br i1 %cmp.not.i.i.i.i846, label %emit_mov_i.exit931.arm_bpf_put_reg32.exit.i855_crit_edge, label %if.end10.sink.split.sink.split.i.i852

emit_mov_i.exit931.arm_bpf_put_reg32.exit.i855_crit_edge: ; preds = %emit_mov_i.exit931
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i855

if.end10.sink.split.sink.split.i.i852:            ; preds = %emit_mov_i.exit931
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i848 = sext i8 %143 to i32
  %153 = sub nsw i32 0, %conv.i.i848
  %or.i.i.i.i849 = or i32 %153, -452239360
  %154 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i849) #14
  %arrayidx.i.i21.i.i851 = getelementptr i32, ptr %.pr956, i32 %inc.i.i.i.i930
  %155 = ptrtoint ptr %arrayidx.i.i21.i.i851 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx.i.i21.i.i851, align 4
  br label %arm_bpf_put_reg32.exit.i855

arm_bpf_put_reg32.exit.i855:                      ; preds = %if.end10.sink.split.sink.split.i.i852, %emit_mov_i.exit931.arm_bpf_put_reg32.exit.i855_crit_edge, %emit_mov_i.exit931.thread
  %156 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i854 = add i32 %157, 1
  store i32 %inc.i.i24.i.i854, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

if.else.i856:                                     ; preds = %if.then53.i
  br i1 %cmp.not.i.i.i924, label %if.else.i856.emit_mov_i.exit922_crit_edge, label %if.then.i.i.i917

if.else.i856.emit_mov_i.exit922_crit_edge:        ; preds = %if.else.i856
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_mov_i.exit922

if.then.i.i.i917:                                 ; preds = %if.else.i856
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i914 = zext i8 %143 to i32
  %shl.i915 = shl nuw nsw i32 %conv.i914, 12
  %or.i.i165.i916 = or i32 %shl.i915, -476053504
  %158 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i916) #14
  %159 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i919 = getelementptr i32, ptr %145, i32 %160
  %161 = ptrtoint ptr %arrayidx.i.i.i.i919 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %158, ptr %arrayidx.i.i.i.i919, align 4
  br label %emit_mov_i.exit922

emit_mov_i.exit922:                               ; preds = %if.then.i.i.i917, %if.else.i856.emit_mov_i.exit922_crit_edge
  %162 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i921 = add i32 %163, 1
  store i32 %inc.i.i.i.i921, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb57.i:                                        ; preds = %for.body.sw.bb57.i_crit_edge, %for.body.sw.bb57.i_crit_edge1069, %for.body.sw.bb57.i_crit_edge1070
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp58.i = icmp sgt i32 %10, 31
  br i1 %cmp58.i, label %sw.bb57.i.if.end6_crit_edge, label %if.end63.i, !prof !50

sw.bb57.i.if.end6_crit_edge:                      ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end63.i:                                       ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool64.not.i = icmp eq i32 %10, 0
  br i1 %tobool64.not.i, label %if.end63.i.if.end70.i_crit_edge, label %if.then65.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70.i

if.then65.i:                                      ; preds = %if.end63.i
  %arrayidx66.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %164 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx66.i, align 1
  %and68.i = and i8 %5, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp.i.i.i778 = icmp slt i8 %165, 0
  br i1 %cmp.i.i.i778, label %if.then.i.i781, label %if.then65.i.arm_bpf_get_reg32.exit.i792_crit_edge

if.then65.i.arm_bpf_get_reg32.exit.i792_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit.i792

if.then.i.i781:                                   ; preds = %if.then65.i
  %166 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i780 = icmp eq ptr %167, null
  br i1 %cmp.not.i.i.i.i780, label %if.then.i.i781.emit.exit.i.i789_crit_edge, label %if.then.i.i.i.i786

if.then.i.i781.emit.exit.i.i789_crit_edge:        ; preds = %if.then.i.i781
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i789

if.then.i.i.i.i786:                               ; preds = %if.then.i.i781
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i782 = sext i8 %165 to i32
  %168 = sub nsw i32 0, %conv.i.i782
  %or.i.i.i.i783 = or i32 %168, -451186688
  %169 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i783) #14
  %170 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i785 = getelementptr i32, ptr %167, i32 %171
  %172 = ptrtoint ptr %arrayidx.i.i.i.i785 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %169, ptr %arrayidx.i.i.i.i785, align 4
  br label %emit.exit.i.i789

emit.exit.i.i789:                                 ; preds = %if.then.i.i.i.i786, %if.then.i.i781.emit.exit.i.i789_crit_edge
  %173 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i788 = add i32 %174, 1
  store i32 %inc.i.i.i.i788, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit.i792

arm_bpf_get_reg32.exit.i792:                      ; preds = %emit.exit.i.i789, %if.then65.i.arm_bpf_get_reg32.exit.i792_crit_edge
  %reg.addr.0.i.i790 = phi i8 [ 7, %emit.exit.i.i789 ], [ %165, %if.then65.i.arm_bpf_get_reg32.exit.i792_crit_edge ]
  %conv.i791 = zext i8 %and68.i to i32
  %175 = add nsw i32 %conv.i791, -96
  %176 = lshr exact i32 %175, 4
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %176, label %arm_bpf_get_reg32.exit.i792.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i795
    i32 1, label %sw.bb7.i
    i32 6, label %sw.bb16.i
    i32 2, label %sw.bb25.i
  ]

arm_bpf_get_reg32.exit.i792.sw.epilog.i_crit_edge: ; preds = %arm_bpf_get_reg32.exit.i792
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i795:                                       ; preds = %arm_bpf_get_reg32.exit.i792
  %178 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i794 = icmp eq ptr %179, null
  br i1 %cmp.not.i.i.i794, label %sw.bb.i795.sw.epilog.sink.split.i813_crit_edge, label %if.then.i.i.i799

sw.bb.i795.sw.epilog.sink.split.i813_crit_edge:   ; preds = %sw.bb.i795
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i813

if.then.i.i.i799:                                 ; preds = %sw.bb.i795
  call void @__sanitizer_cov_trace_pc() #16
  %conv187.i = zext i8 %reg.addr.0.i.i790 to i32
  %or.i796 = mul nuw nsw i32 %conv187.i, 4097
  %shl5.i = shl i32 %10, 7
  %or4.i797 = or i32 %shl5.i, %or.i796
  %or.i.i.i798 = or i32 %or4.i797, -509607936
  br label %sw.epilog.sink.split.sink.split.i

sw.bb7.i:                                         ; preds = %arm_bpf_get_reg32.exit.i792
  %180 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i51.i = icmp eq ptr %181, null
  br i1 %cmp.not.i.i51.i, label %sw.bb7.i.sw.epilog.sink.split.i813_crit_edge, label %if.then.i.i55.i

sw.bb7.i.sw.epilog.sink.split.i813_crit_edge:     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i813

if.then.i.i55.i:                                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv888.i = zext i8 %reg.addr.0.i.i790 to i32
  %or10.i = mul nuw nsw i32 %conv888.i, 4097
  %shl14.i = shl i32 %10, 7
  %or13.i = or i32 %shl14.i, %or10.i
  %or.i.i52.i = or i32 %or13.i, -509607904
  br label %sw.epilog.sink.split.sink.split.i

sw.bb16.i:                                        ; preds = %arm_bpf_get_reg32.exit.i792
  %182 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i60.i = icmp eq ptr %183, null
  br i1 %cmp.not.i.i60.i, label %sw.bb16.i.sw.epilog.sink.split.i813_crit_edge, label %if.then.i.i64.i

sw.bb16.i.sw.epilog.sink.split.i813_crit_edge:    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i813

if.then.i.i64.i:                                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv1789.i = zext i8 %reg.addr.0.i.i790 to i32
  %or19.i800 = mul nuw nsw i32 %conv1789.i, 4097
  %shl23.i = shl i32 %10, 7
  %or22.i = or i32 %shl23.i, %or19.i800
  %or.i.i61.i = or i32 %or22.i, -509607872
  br label %sw.epilog.sink.split.sink.split.i

sw.bb25.i:                                        ; preds = %arm_bpf_get_reg32.exit.i792
  %184 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i69.i802 = icmp eq ptr %185, null
  br i1 %cmp.not.i.i69.i802, label %sw.bb25.i.sw.epilog.sink.split.i813_crit_edge, label %if.then.i.i73.i808

sw.bb25.i.sw.epilog.sink.split.i813_crit_edge:    ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i813

if.then.i.i73.i808:                               ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv2690.i803 = zext i8 %reg.addr.0.i.i790 to i32
  %shl27.i804 = shl nuw nsw i32 %conv2690.i803, 12
  %shl30.i805 = shl nuw nsw i32 %conv2690.i803, 16
  %or28.i = or i32 %10, %shl30.i805
  %or31.i806 = or i32 %or28.i, %shl27.i804
  %or.i.i70.i807 = or i32 %or31.i806, -497025024
  br label %sw.epilog.sink.split.sink.split.i

sw.epilog.sink.split.sink.split.i:                ; preds = %if.then.i.i73.i808, %if.then.i.i64.i, %if.then.i.i55.i, %if.then.i.i.i799
  %or.i.i70.sink.i = phi i32 [ %or.i.i70.i807, %if.then.i.i73.i808 ], [ %or.i.i61.i, %if.then.i.i64.i ], [ %or.i.i52.i, %if.then.i.i55.i ], [ %or.i.i.i798, %if.then.i.i.i799 ]
  %.sink92.i = phi ptr [ %185, %if.then.i.i73.i808 ], [ %183, %if.then.i.i64.i ], [ %181, %if.then.i.i55.i ], [ %179, %if.then.i.i.i799 ]
  %186 = tail call i32 @llvm.bswap.i32(i32 %or.i.i70.sink.i) #14
  %187 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i72.i810 = getelementptr i32, ptr %.sink92.i, i32 %188
  %189 = ptrtoint ptr %arrayidx.i.i72.i810 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %186, ptr %arrayidx.i.i72.i810, align 4
  br label %sw.epilog.sink.split.i813

sw.epilog.sink.split.i813:                        ; preds = %sw.epilog.sink.split.sink.split.i, %sw.bb25.i.sw.epilog.sink.split.i813_crit_edge, %sw.bb16.i.sw.epilog.sink.split.i813_crit_edge, %sw.bb7.i.sw.epilog.sink.split.i813_crit_edge, %sw.bb.i795.sw.epilog.sink.split.i813_crit_edge
  %190 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i75.i812 = add i32 %191, 1
  store i32 %inc.i.i75.i812, ptr %idx.i1228.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i813, %arm_bpf_get_reg32.exit.i792.sw.epilog.i_crit_edge
  br i1 %cmp.i.i.i778, label %if.then.i80.i816, label %if.else.i.i824

if.then.i80.i816:                                 ; preds = %sw.epilog.i
  %192 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i79.i815 = icmp eq ptr %193, null
  br i1 %cmp.not.i.i.i79.i815, label %if.then.i80.i816.if.end10.sink.split.i.i841_crit_edge, label %if.then.i.i.i84.i822

if.then.i80.i816.if.end10.sink.split.i.i841_crit_edge: ; preds = %if.then.i80.i816
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i841

if.then.i.i.i84.i822:                             ; preds = %if.then.i80.i816
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i81.i817 = sext i8 %165 to i32
  %194 = sub nsw i32 0, %conv.i81.i817
  %conv.i.i.i818 = zext i8 %reg.addr.0.i.i790 to i32
  %shl.i.i.i819 = shl nuw nsw i32 %conv.i.i.i818, 12
  %or3.i.i82.i820 = or i32 %shl.i.i.i819, %194
  %or.i.i.i83.i821 = or i32 %or3.i.i82.i820, -452263936
  br label %if.end10.sink.split.sink.split.i.i838

if.else.i.i824:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.addr.0.i.i790, i8 %165)
  %cmp.not.i.i823 = icmp eq i8 %reg.addr.0.i.i790, %165
  br i1 %cmp.not.i.i823, label %if.else.i.i824.if.end70.i_crit_edge, label %if.then5.i.i827

if.else.i.i824.if.end70.i_crit_edge:              ; preds = %if.else.i.i824
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70.i

if.then5.i.i827:                                  ; preds = %if.else.i.i824
  %195 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i.i826 = icmp eq ptr %196, null
  br i1 %cmp.not.i.i18.i.i826, label %if.then5.i.i827.if.end10.sink.split.i.i841_crit_edge, label %if.then.i.i22.i.i833

if.then5.i.i827.if.end10.sink.split.i.i841_crit_edge: ; preds = %if.then5.i.i827
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i841

if.then.i.i22.i.i833:                             ; preds = %if.then5.i.i827
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i.i828 = zext i8 %165 to i32
  %shl.i.i829 = shl nuw nsw i32 %conv226.i.i828, 12
  %conv3.i86.i830 = zext i8 %reg.addr.0.i.i790 to i32
  %or.i.i831 = or i32 %shl.i.i829, %conv3.i86.i830
  %or.i.i19.i.i832 = or i32 %or.i.i831, -509607936
  br label %if.end10.sink.split.sink.split.i.i838

if.end10.sink.split.sink.split.i.i838:            ; preds = %if.then.i.i22.i.i833, %if.then.i.i.i84.i822
  %or.i.i19.sink.i.i834 = phi i32 [ %or.i.i19.i.i832, %if.then.i.i22.i.i833 ], [ %or.i.i.i83.i821, %if.then.i.i.i84.i822 ]
  %.sink28.i.i835 = phi ptr [ %196, %if.then.i.i22.i.i833 ], [ %193, %if.then.i.i.i84.i822 ]
  %197 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i.i834) #14
  %198 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i21.i.i837 = getelementptr i32, ptr %.sink28.i.i835, i32 %199
  %200 = ptrtoint ptr %arrayidx.i.i21.i.i837 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %197, ptr %arrayidx.i.i21.i.i837, align 4
  br label %if.end10.sink.split.i.i841

if.end10.sink.split.i.i841:                       ; preds = %if.end10.sink.split.sink.split.i.i838, %if.then5.i.i827.if.end10.sink.split.i.i841_crit_edge, %if.then.i80.i816.if.end10.sink.split.i.i841_crit_edge
  %201 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i840 = add i32 %202, 1
  store i32 %inc.i.i24.i.i840, ptr %idx.i1228.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end10.sink.split.i.i841, %if.else.i.i824.if.end70.i_crit_edge, %if.end63.i.if.end70.i_crit_edge
  %203 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ctx, align 4
  %aux72.i = getelementptr inbounds %struct.bpf_prog, ptr %204, i32 0, i32 10
  %205 = ptrtoint ptr %aux72.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %aux72.i, align 4
  %verifier_zext73.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %206, i32 0, i32 21
  %207 = ptrtoint ptr %verifier_zext73.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %verifier_zext73.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool74.not.i = icmp eq i8 %208, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.end70.i.sw.epilog517.i_crit_edge

if.end70.i.sw.epilog517.i_crit_edge:              ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then75.i:                                      ; preds = %if.end70.i
  %209 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %cmp.i.i763 = icmp slt i8 %210, 0
  %211 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i904 = icmp eq ptr %212, null
  br i1 %cmp.i.i763, label %if.then.i.i766, label %if.else.i775

if.then.i.i766:                                   ; preds = %if.then75.i
  %213 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i904, label %emit_mov_i.exit911.thread, label %emit_mov_i.exit911

emit_mov_i.exit911.thread:                        ; preds = %if.then.i.i766
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i910961 = add i32 %214, 1
  %215 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %inc.i.i.i.i910961, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i774

emit_mov_i.exit911:                               ; preds = %if.then.i.i766
  %arrayidx.i.i.i.i908 = getelementptr i32, ptr %212, i32 %214
  %216 = ptrtoint ptr %arrayidx.i.i.i.i908 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 6332643, ptr %arrayidx.i.i.i.i908, align 4
  %217 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %.pr959 = load ptr, ptr %target.i1226.i, align 4
  %218 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i910 = add i32 %219, 1
  store i32 %inc.i.i.i.i910, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i765 = icmp eq ptr %.pr959, null
  br i1 %cmp.not.i.i.i.i765, label %emit_mov_i.exit911.arm_bpf_put_reg32.exit.i774_crit_edge, label %if.end10.sink.split.sink.split.i.i771

emit_mov_i.exit911.arm_bpf_put_reg32.exit.i774_crit_edge: ; preds = %emit_mov_i.exit911
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i774

if.end10.sink.split.sink.split.i.i771:            ; preds = %emit_mov_i.exit911
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i767 = sext i8 %210 to i32
  %220 = sub nsw i32 0, %conv.i.i767
  %or.i.i.i.i768 = or i32 %220, -452239360
  %221 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i768) #14
  %arrayidx.i.i21.i.i770 = getelementptr i32, ptr %.pr959, i32 %inc.i.i.i.i910
  %222 = ptrtoint ptr %arrayidx.i.i21.i.i770 to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %arrayidx.i.i21.i.i770, align 4
  br label %arm_bpf_put_reg32.exit.i774

arm_bpf_put_reg32.exit.i774:                      ; preds = %if.end10.sink.split.sink.split.i.i771, %emit_mov_i.exit911.arm_bpf_put_reg32.exit.i774_crit_edge, %emit_mov_i.exit911.thread
  %223 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i773 = add i32 %224, 1
  store i32 %inc.i.i24.i.i773, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

if.else.i775:                                     ; preds = %if.then75.i
  br i1 %cmp.not.i.i.i904, label %if.else.i775.emit_mov_i.exit902_crit_edge, label %if.then.i.i.i897

if.else.i775.emit_mov_i.exit902_crit_edge:        ; preds = %if.else.i775
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_mov_i.exit902

if.then.i.i.i897:                                 ; preds = %if.else.i775
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i894 = zext i8 %210 to i32
  %shl.i895 = shl nuw nsw i32 %conv.i894, 12
  %or.i.i165.i896 = or i32 %shl.i895, -476053504
  %225 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i896) #14
  %226 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i899 = getelementptr i32, ptr %212, i32 %227
  %228 = ptrtoint ptr %arrayidx.i.i.i.i899 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %225, ptr %arrayidx.i.i.i.i899, align 4
  br label %emit_mov_i.exit902

emit_mov_i.exit902:                               ; preds = %if.then.i.i.i897, %if.else.i775.emit_mov_i.exit902_crit_edge
  %229 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i901 = add i32 %230, 1
  store i32 %inc.i.i.i.i901, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb78.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %10)
  %cmp79.i = icmp sgt i32 %10, 63
  br i1 %cmp79.i, label %sw.bb78.i.if.end6_crit_edge, label %if.end88.i, !prof !50

sw.bb78.i.if.end6_crit_edge:                      ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end88.i:                                       ; preds = %sw.bb78.i
  %arrayidx.i.i673 = getelementptr i8, ptr %arrayidx.i, i32 1
  %231 = ptrtoint ptr %arrayidx.i.i673 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx.i.i673, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %cmp.i.i.i674 = icmp slt i8 %232, 0
  br i1 %cmp.i.i.i674, label %if.then.i.i677, label %if.end88.i.arm_bpf_get_reg64.exit.i692_crit_edge

if.end88.i.arm_bpf_get_reg64.exit.i692_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i692

if.then.i.i677:                                   ; preds = %if.end88.i
  %233 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i676 = icmp eq ptr %234, null
  br i1 %cmp.not.i.i.i.i676, label %if.then.i.i677.emit.exit.i.i689_crit_edge, label %if.then.i.i.i.i686

if.then.i.i677.emit.exit.i.i689_crit_edge:        ; preds = %if.then.i.i677
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i689

if.then.i.i.i.i686:                               ; preds = %if.then.i.i677
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i678 = sext i8 %232 to i32
  %235 = sub nsw i32 0, %conv.i.i678
  %conv9.i7.i.i679 = shl nuw nsw i32 %235, 4
  %and.i.i.i680 = and i32 %conv9.i7.i.i679, 3840
  %and13.i.i.i681 = and i32 %235, 15
  %or11.i.i.i682 = or i32 %and13.i.i.i681, %and.i.i.i680
  %or.i.i.i.i683 = or i32 %or11.i.i.i682, -515153712
  %236 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i683) #14
  %237 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i685 = getelementptr i32, ptr %234, i32 %238
  %239 = ptrtoint ptr %arrayidx.i.i.i.i685 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %236, ptr %arrayidx.i.i.i.i685, align 4
  br label %emit.exit.i.i689

emit.exit.i.i689:                                 ; preds = %if.then.i.i.i.i686, %if.then.i.i677.emit.exit.i.i689_crit_edge
  %240 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i688 = add i32 %241, 1
  store i32 %inc.i.i.i.i688, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i692

arm_bpf_get_reg64.exit.i692:                      ; preds = %emit.exit.i.i689, %if.end88.i.arm_bpf_get_reg64.exit.i692_crit_edge
  %reg.addr.0.i.i690 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i.i689 ], [ %arrayidx.i, %if.end88.i.arm_bpf_get_reg64.exit.i692_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp.i691 = icmp ult i32 %10, 32
  br i1 %cmp.i691, label %if.then.i695, label %if.else.i720

if.then.i695:                                     ; preds = %arm_bpf_get_reg64.exit.i692
  %shl6.i = shl nuw nsw i32 %10, 7
  %242 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i694 = icmp eq ptr %243, null
  br i1 %cmp.not.i.i.i694, label %emit.exit.thread.i698, label %emit.exit.i706

emit.exit.thread.i698:                            ; preds = %if.then.i695
  call void @__sanitizer_cov_trace_pc() #16
  %244 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i154.i697 = add i32 %245, 1
  store i32 %inc.i.i154.i697, ptr %idx.i1228.i, align 4
  %arrayidx16155.i = getelementptr i8, ptr %reg.addr.0.i.i690, i32 1
  br label %emit.exit103.i715

emit.exit.i706:                                   ; preds = %if.then.i695
  %246 = ptrtoint ptr %reg.addr.0.i.i690 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %reg.addr.0.i.i690, align 1
  %conv3.i = sext i8 %247 to i32
  %or4.i = or i32 %shl6.i, %conv3.i
  %or.i.i.i699 = or i32 %or4.i, -509571072
  %248 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i699) #14
  %249 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i701 = getelementptr i32, ptr %243, i32 %250
  %251 = ptrtoint ptr %arrayidx.i.i.i701 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %248, ptr %arrayidx.i.i.i701, align 4
  %252 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %.pr.i702 = load ptr, ptr %target.i1226.i, align 4
  %253 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i704 = add i32 %253, 1
  store i32 %inc.i.i.i704, ptr %idx.i1228.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %reg.addr.0.i.i690, i32 1
  %cmp.not.i.i96.i705 = icmp eq ptr %.pr.i702, null
  br i1 %cmp.not.i.i96.i705, label %emit.exit.i706.emit.exit103.i715_crit_edge, label %if.then.i.i100.i712

emit.exit.i706.emit.exit103.i715_crit_edge:       ; preds = %emit.exit.i706
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit103.i715

if.then.i.i100.i712:                              ; preds = %emit.exit.i706
  call void @__sanitizer_cov_trace_pc() #16
  %254 = ptrtoint ptr %reg.addr.0.i.i690 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %reg.addr.0.i.i690, align 1
  %conv9.i = sext i8 %255 to i32
  %shl10.i = shl nsw i32 %conv9.i, 12
  %256 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i707 = sext i8 %257 to i32
  %.neg.i708 = mul i32 %10, 536870784
  %shl20.i = add i32 %.neg.i708, 4096
  %or15.i709 = or i32 %shl20.i, %conv17.i707
  %or19.i = or i32 %or15.i709, %shl10.i
  %or.i.i97.i710 = or i32 %or19.i, -511115232
  %258 = tail call i32 @llvm.bswap.i32(i32 %or.i.i97.i710) #14
  %arrayidx.i.i99.i711 = getelementptr i32, ptr %.pr.i702, i32 %inc.i.i.i704
  %259 = ptrtoint ptr %arrayidx.i.i99.i711 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %arrayidx.i.i99.i711, align 4
  br label %emit.exit103.i715

emit.exit103.i715:                                ; preds = %if.then.i.i100.i712, %emit.exit.i706.emit.exit103.i715_crit_edge, %emit.exit.thread.i698
  %arrayidx16158.i = phi ptr [ %arrayidx16155.i, %emit.exit.thread.i698 ], [ %arrayidx16.i, %emit.exit.i706.emit.exit103.i715_crit_edge ], [ %arrayidx16.i, %if.then.i.i100.i712 ]
  %260 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i102.i713 = add i32 %261, 1
  store i32 %inc.i.i102.i713, ptr %idx.i1228.i, align 4
  %262 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i105.i714 = icmp eq ptr %263, null
  br i1 %cmp.not.i.i105.i714, label %emit.exit103.i715.if.end68.i_crit_edge, label %if.then.i.i109.i718

emit.exit103.i715.if.end68.i_crit_edge:           ; preds = %emit.exit103.i715
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i

if.then.i.i109.i718:                              ; preds = %emit.exit103.i715
  call void @__sanitizer_cov_trace_pc() #16
  %264 = ptrtoint ptr %arrayidx16158.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx16158.i, align 1
  %conv23.i = sext i8 %265 to i32
  %shl24.i = shl nsw i32 %conv23.i, 12
  %or25.i = or i32 %shl6.i, %conv23.i
  %or29.i = or i32 %or25.i, %shl24.i
  %or.i.i106.i716 = or i32 %or29.i, -509607936
  %266 = tail call i32 @llvm.bswap.i32(i32 %or.i.i106.i716) #14
  %arrayidx.i.i108.i717 = getelementptr i32, ptr %263, i32 %inc.i.i102.i713
  %267 = ptrtoint ptr %arrayidx.i.i108.i717 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %arrayidx.i.i108.i717, align 4
  br label %if.end68.i

if.else.i720:                                     ; preds = %arm_bpf_get_reg64.exit.i692
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp33.i = icmp eq i32 %10, 32
  %268 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i114.i719 = icmp eq ptr %269, null
  br i1 %cmp33.i, label %if.then35.i, label %if.else44.i

if.then35.i:                                      ; preds = %if.else.i720
  br i1 %cmp.not.i.i114.i719, label %if.then35.i.if.end.i723.thread_crit_edge, label %if.then.i.i118.i722

if.then35.i.if.end.i723.thread_crit_edge:         ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i723.thread

if.then.i.i118.i722:                              ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #16
  %270 = ptrtoint ptr %reg.addr.0.i.i690 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %reg.addr.0.i.i690, align 1
  %conv37.i = sext i8 %271 to i32
  %shl38.i = shl nsw i32 %conv37.i, 12
  %arrayidx41.i = getelementptr i8, ptr %reg.addr.0.i.i690, i32 1
  %272 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx41.i, align 1
  %conv42.i = sext i8 %273 to i32
  %or39.i721 = or i32 %shl38.i, %conv42.i
  br label %if.end.i723

if.else44.i:                                      ; preds = %if.else.i720
  br i1 %cmp.not.i.i114.i719, label %if.else44.i.if.end.i723.thread_crit_edge, label %if.then.i.i127.i

if.else44.i.if.end.i723.thread_crit_edge:         ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i723.thread

if.then.i.i127.i:                                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #16
  %274 = ptrtoint ptr %reg.addr.0.i.i690 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %reg.addr.0.i.i690, align 1
  %conv46.i = sext i8 %275 to i32
  %shl47.i = shl nsw i32 %conv46.i, 12
  %arrayidx50.i = getelementptr i8, ptr %reg.addr.0.i.i690, i32 1
  %276 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = sext i8 %277 to i32
  %sub54.i = shl i32 %10, 7
  %shl55.i = add i32 %sub54.i, 536866816
  %or48.i = or i32 %shl55.i, %conv51.i
  %or52.i = or i32 %or48.i, %shl47.i
  br label %if.end.i723

if.end.i723.thread:                               ; preds = %if.else44.i.if.end.i723.thread_crit_edge, %if.then35.i.if.end.i723.thread_crit_edge
  %278 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i129.i966 = add i32 %279, 1
  store i32 %inc.i.i129.i966, ptr %idx.i1228.i, align 4
  br label %if.end68.i

if.end.i723:                                      ; preds = %if.then.i.i127.i, %if.then.i.i118.i722
  %or52.sink.i = phi i32 [ %or52.i, %if.then.i.i127.i ], [ %or39.i721, %if.then.i.i118.i722 ]
  %or.i.i124.i = or i32 %or52.sink.i, -509607936
  %280 = tail call i32 @llvm.bswap.i32(i32 %or.i.i124.i) #14
  %281 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i126.i = getelementptr i32, ptr %269, i32 %282
  %283 = ptrtoint ptr %arrayidx.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %280, ptr %arrayidx.i.i126.i, align 4
  %284 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %.pr964 = load ptr, ptr %target.i1226.i, align 4
  %285 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i129.i = add i32 %285, 1
  store i32 %inc.i.i129.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i132.i = icmp eq ptr %.pr964, null
  br i1 %cmp.not.i.i132.i, label %if.end.i723.if.end68.i_crit_edge, label %if.then.i.i136.i

if.end.i723.if.end68.i_crit_edge:                 ; preds = %if.end.i723
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68.i

if.then.i.i136.i:                                 ; preds = %if.end.i723
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx57.i = getelementptr i8, ptr %reg.addr.0.i.i690, i32 1
  %286 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = sext i8 %287 to i32
  %shl59.i = shl nsw i32 %conv58.i, 12
  %shl63.i = shl nsw i32 %conv58.i, 16
  %or60.i = or i32 %shl63.i, %conv58.i
  %or64.i = or i32 %or60.i, %shl59.i
  %or.i.i133.i = or i32 %or64.i, -534773760
  %288 = tail call i32 @llvm.bswap.i32(i32 %or.i.i133.i) #14
  %arrayidx.i.i135.i = getelementptr i32, ptr %.pr964, i32 %inc.i.i129.i
  %289 = ptrtoint ptr %arrayidx.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %arrayidx.i.i135.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then.i.i136.i, %if.end.i723.if.end68.i_crit_edge, %if.end.i723.thread, %if.then.i.i109.i718, %emit.exit103.i715.if.end68.i_crit_edge
  %290 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i138.i = add i32 %291, 1
  store i32 %inc.i.i138.i, ptr %idx.i1228.i, align 4
  br i1 %cmp.i.i.i674, label %if.then.i144.i, label %if.else.i.i730

if.then.i144.i:                                   ; preds = %if.end68.i
  %292 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i143.i = icmp eq ptr %293, null
  br i1 %cmp.not.i.i.i143.i, label %if.then.i144.i.if.end32.sink.split.i.i762_crit_edge, label %if.then.i.i.i151.i

if.then.i144.i.if.end32.sink.split.i.i762_crit_edge: ; preds = %if.then.i144.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i762

if.then.i.i.i151.i:                               ; preds = %if.then.i144.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i145.i = sext i8 %232 to i32
  %294 = sub nsw i32 0, %conv.i145.i
  %conv9.i62.i.i724 = shl nuw nsw i32 %294, 4
  %and.i.i146.i = and i32 %conv9.i62.i.i724, 3840
  %and13.i.i147.i = and i32 %294, 15
  %arrayidx1.i.i725 = getelementptr i8, ptr %reg.addr.0.i.i690, i32 1
  %295 = ptrtoint ptr %arrayidx1.i.i725 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx1.i.i725, align 1
  %conv.i.i.i726 = zext i8 %296 to i32
  %shl.i.i.i727 = shl nuw nsw i32 %conv.i.i.i726, 12
  %or11.i.i148.i = or i32 %and13.i.i147.i, %and.i.i146.i
  %or14.i.i149.i = or i32 %shl.i.i.i727, %or11.i.i148.i
  %or.i.i.i150.i = or i32 %or14.i.i149.i, -515178256
  br label %if.end32.sink.split.sink.split.i.i760

if.else.i.i730:                                   ; preds = %if.end68.i
  %arrayidx6.i.i728 = getelementptr i8, ptr %reg.addr.0.i.i690, i32 1
  %297 = ptrtoint ptr %arrayidx6.i.i728 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx6.i.i728, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %232, i8 %298)
  %cmp.not.i.i729 = icmp eq i8 %232, %298
  br i1 %cmp.not.i.i729, label %if.else.i.i730.if.end.i.i746_crit_edge, label %if.then9.i.i733

if.else.i.i730.if.end.i.i746_crit_edge:           ; preds = %if.else.i.i730
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i746

if.then9.i.i733:                                  ; preds = %if.else.i.i730
  %299 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i45.i.i732 = icmp eq ptr %300, null
  br i1 %cmp.not.i.i45.i.i732, label %if.then9.i.i733.emit.exit52.i.i744_crit_edge, label %if.then.i.i49.i.i741

if.then9.i.i733.emit.exit52.i.i744_crit_edge:     ; preds = %if.then9.i.i733
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i.i744

if.then.i.i49.i.i741:                             ; preds = %if.then9.i.i733
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i.i734 = zext i8 %232 to i32
  %shl.i.i735 = shl nuw nsw i32 %conv563.i.i734, 12
  %conv7.i.i736 = sext i8 %298 to i32
  %or.i.i737 = or i32 %shl.i.i735, %conv7.i.i736
  %or.i.i46.i.i738 = or i32 %or.i.i737, -509607936
  %301 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i.i738) #14
  %302 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i48.i.i740 = getelementptr i32, ptr %300, i32 %303
  %304 = ptrtoint ptr %arrayidx.i.i48.i.i740 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %301, ptr %arrayidx.i.i48.i.i740, align 4
  br label %emit.exit52.i.i744

emit.exit52.i.i744:                               ; preds = %if.then.i.i49.i.i741, %if.then9.i.i733.emit.exit52.i.i744_crit_edge
  %305 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i51.i.i743 = add i32 %306, 1
  store i32 %inc.i.i51.i.i743, ptr %idx.i1228.i, align 4
  br label %if.end.i.i746

if.end.i.i746:                                    ; preds = %emit.exit52.i.i744, %if.else.i.i730.if.end.i.i746_crit_edge
  %307 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx.i, align 1
  %309 = ptrtoint ptr %reg.addr.0.i.i690 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %reg.addr.0.i.i690, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %308, i8 %310)
  %cmp20.not.i.i745 = icmp eq i8 %308, %310
  br i1 %cmp20.not.i.i745, label %if.end.i.i746.sw.epilog517.i_crit_edge, label %if.then22.i.i749

if.end.i.i746.sw.epilog517.i_crit_edge:           ; preds = %if.end.i.i746
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then22.i.i749:                                 ; preds = %if.end.i.i746
  %311 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i54.i.i748 = icmp eq ptr %312, null
  br i1 %cmp.not.i.i54.i.i748, label %if.then22.i.i749.if.end32.sink.split.i.i762_crit_edge, label %if.then.i.i58.i.i755

if.then22.i.i749.if.end32.sink.split.i.i762_crit_edge: ; preds = %if.then22.i.i749
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i762

if.then.i.i58.i.i755:                             ; preds = %if.then22.i.i749
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i.i750 = sext i8 %308 to i32
  %shl25.i.i751 = shl nsw i32 %conv17.i.i750, 12
  %conv19.i.i752 = sext i8 %310 to i32
  %or26.i.i753 = or i32 %shl25.i.i751, %conv19.i.i752
  %or.i.i55.i.i754 = or i32 %or26.i.i753, -509607936
  br label %if.end32.sink.split.sink.split.i.i760

if.end32.sink.split.sink.split.i.i760:            ; preds = %if.then.i.i58.i.i755, %if.then.i.i.i151.i
  %or.i.i55.sink.i.i756 = phi i32 [ %or.i.i55.i.i754, %if.then.i.i58.i.i755 ], [ %or.i.i.i150.i, %if.then.i.i.i151.i ]
  %.sink65.i.i757 = phi ptr [ %312, %if.then.i.i58.i.i755 ], [ %293, %if.then.i.i.i151.i ]
  %313 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i.i756) #14
  %314 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i57.i.i759 = getelementptr i32, ptr %.sink65.i.i757, i32 %315
  %316 = ptrtoint ptr %arrayidx.i.i57.i.i759 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %313, ptr %arrayidx.i.i57.i.i759, align 4
  br label %if.end32.sink.split.i.i762

if.end32.sink.split.i.i762:                       ; preds = %if.end32.sink.split.sink.split.i.i760, %if.then22.i.i749.if.end32.sink.split.i.i762_crit_edge, %if.then.i144.i.if.end32.sink.split.i.i762_crit_edge
  %317 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i60.i.i761 = add i32 %318, 1
  store i32 %inc.i.i60.i.i761, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb89.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %10)
  %cmp90.i = icmp sgt i32 %10, 63
  br i1 %cmp90.i, label %sw.bb89.i.if.end6_crit_edge, label %if.end99.i, !prof !50

sw.bb89.i.if.end6_crit_edge:                      ; preds = %sw.bb89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end99.i:                                       ; preds = %sw.bb89.i
  %arrayidx.i.i575 = getelementptr i8, ptr %arrayidx.i, i32 1
  %319 = ptrtoint ptr %arrayidx.i.i575 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx.i.i575, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %cmp.i.i.i576 = icmp slt i8 %320, 0
  br i1 %cmp.i.i.i576, label %if.then.i.i579, label %if.end99.i.arm_bpf_get_reg64.exit.i594_crit_edge

if.end99.i.arm_bpf_get_reg64.exit.i594_crit_edge: ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i594

if.then.i.i579:                                   ; preds = %if.end99.i
  %321 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i578 = icmp eq ptr %322, null
  br i1 %cmp.not.i.i.i.i578, label %if.then.i.i579.emit.exit.i.i591_crit_edge, label %if.then.i.i.i.i588

if.then.i.i579.emit.exit.i.i591_crit_edge:        ; preds = %if.then.i.i579
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i591

if.then.i.i.i.i588:                               ; preds = %if.then.i.i579
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i580 = sext i8 %320 to i32
  %323 = sub nsw i32 0, %conv.i.i580
  %conv9.i7.i.i581 = shl nuw nsw i32 %323, 4
  %and.i.i.i582 = and i32 %conv9.i7.i.i581, 3840
  %and13.i.i.i583 = and i32 %323, 15
  %or11.i.i.i584 = or i32 %and13.i.i.i583, %and.i.i.i582
  %or.i.i.i.i585 = or i32 %or11.i.i.i584, -515153712
  %324 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i585) #14
  %325 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i587 = getelementptr i32, ptr %322, i32 %326
  %327 = ptrtoint ptr %arrayidx.i.i.i.i587 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %324, ptr %arrayidx.i.i.i.i587, align 4
  br label %emit.exit.i.i591

emit.exit.i.i591:                                 ; preds = %if.then.i.i.i.i588, %if.then.i.i579.emit.exit.i.i591_crit_edge
  %328 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i590 = add i32 %329, 1
  store i32 %inc.i.i.i.i590, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i594

arm_bpf_get_reg64.exit.i594:                      ; preds = %emit.exit.i.i591, %if.end99.i.arm_bpf_get_reg64.exit.i594_crit_edge
  %reg.addr.0.i.i592 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i.i591 ], [ %arrayidx.i, %if.end99.i.arm_bpf_get_reg64.exit.i594_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i593 = icmp eq i32 %10, 0
  br i1 %cmp.i593, label %arm_bpf_get_reg64.exit.i594.if.end73.i_crit_edge, label %if.else.i596

arm_bpf_get_reg64.exit.i594.if.end73.i_crit_edge: ; preds = %arm_bpf_get_reg64.exit.i594
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.i

if.else.i596:                                     ; preds = %arm_bpf_get_reg64.exit.i594
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp1.i595 = icmp ult i32 %10, 32
  br i1 %cmp1.i595, label %if.then2.i601, label %if.else35.i624

if.then2.i601:                                    ; preds = %if.else.i596
  %arrayidx4.i597 = getelementptr i8, ptr %reg.addr.0.i.i592, i32 1
  %shl8.i598 = shl nuw nsw i32 %10, 7
  %330 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i600 = icmp eq ptr %331, null
  br i1 %cmp.not.i.i.i600, label %emit.exit.thread.i602, label %emit.exit.i611

emit.exit.thread.i602:                            ; preds = %if.then2.i601
  call void @__sanitizer_cov_trace_pc() #16
  %332 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i169.i = add i32 %333, 1
  store i32 %inc.i.i169.i, ptr %idx.i1228.i, align 4
  br label %emit.exit109.i

emit.exit.i611:                                   ; preds = %if.then2.i601
  %334 = ptrtoint ptr %arrayidx4.i597 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx4.i597, align 1
  %conv5.i603 = sext i8 %335 to i32
  %or7.i604 = or i32 %shl8.i598, %conv5.i603
  %or.i.i.i605 = or i32 %or7.i604, -509575136
  %336 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i605) #14
  %337 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i607 = getelementptr i32, ptr %331, i32 %338
  %339 = ptrtoint ptr %arrayidx.i.i.i607 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %336, ptr %arrayidx.i.i.i607, align 4
  %340 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %.pr.i608 = load ptr, ptr %target.i1226.i, align 4
  %341 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i610 = add i32 %341, 1
  store i32 %inc.i.i.i610, ptr %idx.i1228.i, align 4
  %cmp.not.i.i102.i = icmp eq ptr %.pr.i608, null
  br i1 %cmp.not.i.i102.i, label %emit.exit109.i.thread, label %if.then.i.i106.i

emit.exit109.i.thread:                            ; preds = %emit.exit.i611
  call void @__sanitizer_cov_trace_pc() #16
  %342 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i108.i971 = add i32 %343, 1
  store i32 %inc.i.i108.i971, ptr %idx.i1228.i, align 4
  br label %if.end73.sink.split.i

if.then.i.i106.i:                                 ; preds = %emit.exit.i611
  call void @__sanitizer_cov_trace_pc() #16
  %344 = ptrtoint ptr %arrayidx4.i597 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx4.i597, align 1
  %conv11.i612 = sext i8 %345 to i32
  %shl12.i613 = shl nsw i32 %conv11.i612, 12
  %346 = ptrtoint ptr %reg.addr.0.i.i592 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %reg.addr.0.i.i592, align 1
  %conv19.i614 = sext i8 %347 to i32
  %.neg.i615 = mul i32 %10, 536870784
  %shl22.i616 = add i32 %.neg.i615, 4096
  %or17.i617 = or i32 %shl22.i616, %conv19.i614
  %or20.i618 = or i32 %or17.i617, %shl12.i613
  %or.i.i103.i = or i32 %or20.i618, -511180800
  %348 = tail call i32 @llvm.bswap.i32(i32 %or.i.i103.i) #14
  %arrayidx.i.i105.i = getelementptr i32, ptr %.pr.i608, i32 %inc.i.i.i610
  %349 = ptrtoint ptr %arrayidx.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %arrayidx.i.i105.i, align 4
  br label %emit.exit109.i

emit.exit109.i:                                   ; preds = %if.then.i.i106.i, %emit.exit.thread.i602
  %350 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %.pr969 = load ptr, ptr %target.i1226.i, align 4
  %351 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i108.i = add i32 %352, 1
  store i32 %inc.i.i108.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i111.i = icmp eq ptr %.pr969, null
  br i1 %cmp.not.i.i111.i, label %emit.exit109.i.if.end73.sink.split.i_crit_edge, label %if.then.i.i115.i

emit.exit109.i.if.end73.sink.split.i_crit_edge:   ; preds = %emit.exit109.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.sink.split.i

if.then.i.i115.i:                                 ; preds = %emit.exit109.i
  call void @__sanitizer_cov_trace_pc() #16
  %353 = ptrtoint ptr %reg.addr.0.i.i592 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %reg.addr.0.i.i592, align 1
  %conv25.i619 = sext i8 %354 to i32
  %shl26.i620 = shl nsw i32 %conv25.i619, 12
  %or27.i621 = or i32 %shl8.i598, %conv25.i619
  %or32.i622 = or i32 %or27.i621, %shl26.i620
  %or.i.i112.i = or i32 %or32.i622, -509607904
  %355 = tail call i32 @llvm.bswap.i32(i32 %or.i.i112.i) #14
  %arrayidx.i.i114.i = getelementptr i32, ptr %.pr969, i32 %inc.i.i108.i
  %356 = ptrtoint ptr %arrayidx.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %355, ptr %arrayidx.i.i114.i, align 4
  br label %if.end73.sink.split.i

if.else35.i624:                                   ; preds = %if.else.i596
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp36.i623 = icmp eq i32 %10, 32
  %357 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i120.i = icmp eq ptr %358, null
  br i1 %cmp36.i623, label %if.then38.i625, label %if.else53.i

if.then38.i625:                                   ; preds = %if.else35.i624
  br i1 %cmp.not.i.i120.i, label %emit.exit127.thread.i, label %emit.exit127.i

emit.exit127.thread.i:                            ; preds = %if.then38.i625
  call void @__sanitizer_cov_trace_pc() #16
  %359 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i126174.i = add i32 %360, 1
  store i32 %inc.i.i126174.i, ptr %idx.i1228.i, align 4
  br label %if.end73.sink.split.i

emit.exit127.i:                                   ; preds = %if.then38.i625
  %arrayidx39.i626 = getelementptr i8, ptr %reg.addr.0.i.i592, i32 1
  %361 = ptrtoint ptr %arrayidx39.i626 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx39.i626, align 1
  %conv40.i627 = sext i8 %362 to i32
  %shl41.i628 = shl nsw i32 %conv40.i627, 12
  %363 = ptrtoint ptr %reg.addr.0.i.i592 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %reg.addr.0.i.i592, align 1
  %conv45.i629 = sext i8 %364 to i32
  %or42.i630 = or i32 %shl41.i628, %conv45.i629
  %or.i.i121.i = or i32 %or42.i630, -509607936
  %365 = tail call i32 @llvm.bswap.i32(i32 %or.i.i121.i) #14
  %366 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i123.i = getelementptr i32, ptr %358, i32 %367
  %368 = ptrtoint ptr %arrayidx.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %365, ptr %arrayidx.i.i123.i, align 4
  %369 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %.pr172.i = load ptr, ptr %target.i1226.i, align 4
  %370 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i126.i = add i32 %370, 1
  store i32 %inc.i.i126.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i129.i = icmp eq ptr %.pr172.i, null
  br i1 %cmp.not.i.i129.i, label %emit.exit127.i.if.end73.sink.split.i_crit_edge, label %if.then.i.i133.i

emit.exit127.i.if.end73.sink.split.i_crit_edge:   ; preds = %emit.exit127.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.sink.split.i

if.then.i.i133.i:                                 ; preds = %emit.exit127.i
  call void @__sanitizer_cov_trace_pc() #16
  %371 = ptrtoint ptr %reg.addr.0.i.i592 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %reg.addr.0.i.i592, align 1
  %conv48.i631 = sext i8 %372 to i32
  %shl49.i632 = shl nsw i32 %conv48.i631, 12
  %or.i.i130.i = or i32 %shl49.i632, -476053504
  %373 = tail call i32 @llvm.bswap.i32(i32 %or.i.i130.i) #14
  %arrayidx.i.i132.i = getelementptr i32, ptr %.pr172.i, i32 %inc.i.i126.i
  %374 = ptrtoint ptr %arrayidx.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %373, ptr %arrayidx.i.i132.i, align 4
  br label %if.end73.sink.split.i

if.else53.i:                                      ; preds = %if.else35.i624
  br i1 %cmp.not.i.i120.i, label %emit.exit145.thread.i, label %emit.exit145.i

emit.exit145.thread.i:                            ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #16
  %375 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i144179.i = add i32 %376, 1
  store i32 %inc.i.i144179.i, ptr %idx.i1228.i, align 4
  br label %if.end73.sink.split.i

emit.exit145.i:                                   ; preds = %if.else53.i
  %arrayidx54.i = getelementptr i8, ptr %reg.addr.0.i.i592, i32 1
  %377 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx54.i, align 1
  %conv55.i = sext i8 %378 to i32
  %shl56.i = shl nsw i32 %conv55.i, 12
  %379 = ptrtoint ptr %reg.addr.0.i.i592 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %reg.addr.0.i.i592, align 1
  %conv60.i = sext i8 %380 to i32
  %sub63.i = shl i32 %10, 7
  %shl64.i = add i32 %sub63.i, 536866816
  %or57.i = or i32 %shl64.i, %conv60.i
  %or62.i = or i32 %or57.i, %shl56.i
  %or.i.i139.i = or i32 %or62.i, -509607904
  %381 = tail call i32 @llvm.bswap.i32(i32 %or.i.i139.i) #14
  %382 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i141.i = getelementptr i32, ptr %358, i32 %383
  %384 = ptrtoint ptr %arrayidx.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %381, ptr %arrayidx.i.i141.i, align 4
  %385 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %.pr177.i = load ptr, ptr %target.i1226.i, align 4
  %386 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i144.i = add i32 %386, 1
  store i32 %inc.i.i144.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i147.i = icmp eq ptr %.pr177.i, null
  br i1 %cmp.not.i.i147.i, label %emit.exit145.i.if.end73.sink.split.i_crit_edge, label %if.then.i.i151.i

emit.exit145.i.if.end73.sink.split.i_crit_edge:   ; preds = %emit.exit145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73.sink.split.i

if.then.i.i151.i:                                 ; preds = %emit.exit145.i
  call void @__sanitizer_cov_trace_pc() #16
  %387 = ptrtoint ptr %reg.addr.0.i.i592 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %reg.addr.0.i.i592, align 1
  %conv67.i = sext i8 %388 to i32
  %shl68.i633 = shl nsw i32 %conv67.i, 12
  %or.i.i148.i = or i32 %shl68.i633, -476053504
  %389 = tail call i32 @llvm.bswap.i32(i32 %or.i.i148.i) #14
  %arrayidx.i.i150.i = getelementptr i32, ptr %.pr177.i, i32 %inc.i.i144.i
  %390 = ptrtoint ptr %arrayidx.i.i150.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %389, ptr %arrayidx.i.i150.i, align 4
  br label %if.end73.sink.split.i

if.end73.sink.split.i:                            ; preds = %if.then.i.i151.i, %emit.exit145.i.if.end73.sink.split.i_crit_edge, %emit.exit145.thread.i, %if.then.i.i133.i, %emit.exit127.i.if.end73.sink.split.i_crit_edge, %emit.exit127.thread.i, %if.then.i.i115.i, %emit.exit109.i.if.end73.sink.split.i_crit_edge, %emit.exit109.i.thread
  %391 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i117.i = add i32 %392, 1
  store i32 %inc.i.i117.i, ptr %idx.i1228.i, align 4
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.end73.sink.split.i, %arm_bpf_get_reg64.exit.i594.if.end73.i_crit_edge
  br i1 %cmp.i.i.i576, label %if.then.i159.i, label %if.else.i.i640

if.then.i159.i:                                   ; preds = %if.end73.i
  %393 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i158.i = icmp eq ptr %394, null
  br i1 %cmp.not.i.i.i158.i, label %if.then.i159.i.if.end32.sink.split.i.i672_crit_edge, label %if.then.i.i.i166.i

if.then.i159.i.if.end32.sink.split.i.i672_crit_edge: ; preds = %if.then.i159.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i672

if.then.i.i.i166.i:                               ; preds = %if.then.i159.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i160.i = sext i8 %320 to i32
  %395 = sub nsw i32 0, %conv.i160.i
  %conv9.i62.i.i634 = shl nuw nsw i32 %395, 4
  %and.i.i161.i = and i32 %conv9.i62.i.i634, 3840
  %and13.i.i162.i = and i32 %395, 15
  %arrayidx1.i.i635 = getelementptr i8, ptr %reg.addr.0.i.i592, i32 1
  %396 = ptrtoint ptr %arrayidx1.i.i635 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx1.i.i635, align 1
  %conv.i.i.i636 = zext i8 %397 to i32
  %shl.i.i.i637 = shl nuw nsw i32 %conv.i.i.i636, 12
  %or11.i.i163.i = or i32 %and13.i.i162.i, %and.i.i161.i
  %or14.i.i164.i = or i32 %shl.i.i.i637, %or11.i.i163.i
  %or.i.i.i165.i = or i32 %or14.i.i164.i, -515178256
  br label %if.end32.sink.split.sink.split.i.i670

if.else.i.i640:                                   ; preds = %if.end73.i
  %arrayidx6.i.i638 = getelementptr i8, ptr %reg.addr.0.i.i592, i32 1
  %398 = ptrtoint ptr %arrayidx6.i.i638 to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx6.i.i638, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %320, i8 %399)
  %cmp.not.i.i639 = icmp eq i8 %320, %399
  br i1 %cmp.not.i.i639, label %if.else.i.i640.if.end.i.i656_crit_edge, label %if.then9.i.i643

if.else.i.i640.if.end.i.i656_crit_edge:           ; preds = %if.else.i.i640
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i656

if.then9.i.i643:                                  ; preds = %if.else.i.i640
  %400 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i45.i.i642 = icmp eq ptr %401, null
  br i1 %cmp.not.i.i45.i.i642, label %if.then9.i.i643.emit.exit52.i.i654_crit_edge, label %if.then.i.i49.i.i651

if.then9.i.i643.emit.exit52.i.i654_crit_edge:     ; preds = %if.then9.i.i643
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i.i654

if.then.i.i49.i.i651:                             ; preds = %if.then9.i.i643
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i.i644 = zext i8 %320 to i32
  %shl.i.i645 = shl nuw nsw i32 %conv563.i.i644, 12
  %conv7.i.i646 = sext i8 %399 to i32
  %or.i.i647 = or i32 %shl.i.i645, %conv7.i.i646
  %or.i.i46.i.i648 = or i32 %or.i.i647, -509607936
  %402 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i.i648) #14
  %403 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i48.i.i650 = getelementptr i32, ptr %401, i32 %404
  %405 = ptrtoint ptr %arrayidx.i.i48.i.i650 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %402, ptr %arrayidx.i.i48.i.i650, align 4
  br label %emit.exit52.i.i654

emit.exit52.i.i654:                               ; preds = %if.then.i.i49.i.i651, %if.then9.i.i643.emit.exit52.i.i654_crit_edge
  %406 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i51.i.i653 = add i32 %407, 1
  store i32 %inc.i.i51.i.i653, ptr %idx.i1228.i, align 4
  br label %if.end.i.i656

if.end.i.i656:                                    ; preds = %emit.exit52.i.i654, %if.else.i.i640.if.end.i.i656_crit_edge
  %408 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %arrayidx.i, align 1
  %410 = ptrtoint ptr %reg.addr.0.i.i592 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %reg.addr.0.i.i592, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %409, i8 %411)
  %cmp20.not.i.i655 = icmp eq i8 %409, %411
  br i1 %cmp20.not.i.i655, label %if.end.i.i656.sw.epilog517.i_crit_edge, label %if.then22.i.i659

if.end.i.i656.sw.epilog517.i_crit_edge:           ; preds = %if.end.i.i656
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then22.i.i659:                                 ; preds = %if.end.i.i656
  %412 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i54.i.i658 = icmp eq ptr %413, null
  br i1 %cmp.not.i.i54.i.i658, label %if.then22.i.i659.if.end32.sink.split.i.i672_crit_edge, label %if.then.i.i58.i.i665

if.then22.i.i659.if.end32.sink.split.i.i672_crit_edge: ; preds = %if.then22.i.i659
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i672

if.then.i.i58.i.i665:                             ; preds = %if.then22.i.i659
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i.i660 = sext i8 %409 to i32
  %shl25.i.i661 = shl nsw i32 %conv17.i.i660, 12
  %conv19.i.i662 = sext i8 %411 to i32
  %or26.i.i663 = or i32 %shl25.i.i661, %conv19.i.i662
  %or.i.i55.i.i664 = or i32 %or26.i.i663, -509607936
  br label %if.end32.sink.split.sink.split.i.i670

if.end32.sink.split.sink.split.i.i670:            ; preds = %if.then.i.i58.i.i665, %if.then.i.i.i166.i
  %or.i.i55.sink.i.i666 = phi i32 [ %or.i.i55.i.i664, %if.then.i.i58.i.i665 ], [ %or.i.i.i165.i, %if.then.i.i.i166.i ]
  %.sink65.i.i667 = phi ptr [ %413, %if.then.i.i58.i.i665 ], [ %394, %if.then.i.i.i166.i ]
  %414 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i.i666) #14
  %415 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i57.i.i669 = getelementptr i32, ptr %.sink65.i.i667, i32 %416
  %417 = ptrtoint ptr %arrayidx.i.i57.i.i669 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %414, ptr %arrayidx.i.i57.i.i669, align 4
  br label %if.end32.sink.split.i.i672

if.end32.sink.split.i.i672:                       ; preds = %if.end32.sink.split.sink.split.i.i670, %if.then22.i.i659.if.end32.sink.split.i.i672_crit_edge, %if.then.i159.i.if.end32.sink.split.i.i672_crit_edge
  %418 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i60.i.i671 = add i32 %419, 1
  store i32 %inc.i.i60.i.i671, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb100.i:                                       ; preds = %for.body
  %arrayidx.i446 = getelementptr i8, ptr %arrayidx4.i, i32 1
  %420 = ptrtoint ptr %arrayidx.i446 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %arrayidx.i446, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %421)
  %cmp.i.i.i447 = icmp slt i8 %421, 0
  br i1 %cmp.i.i.i447, label %if.then.i.i450, label %sw.bb100.i.arm_bpf_get_reg32.exit.i462_crit_edge

sw.bb100.i.arm_bpf_get_reg32.exit.i462_crit_edge: ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit.i462

if.then.i.i450:                                   ; preds = %sw.bb100.i
  %422 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i449 = icmp eq ptr %423, null
  br i1 %cmp.not.i.i.i.i449, label %if.then.i.i450.emit.exit.i.i458_crit_edge, label %if.then.i.i.i.i455

if.then.i.i450.emit.exit.i.i458_crit_edge:        ; preds = %if.then.i.i450
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i458

if.then.i.i.i.i455:                               ; preds = %if.then.i.i450
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i451 = sext i8 %421 to i32
  %424 = sub nsw i32 0, %conv.i.i451
  %or.i.i.i.i452 = or i32 %424, -451182592
  %425 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i452) #14
  %426 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i454 = getelementptr i32, ptr %423, i32 %427
  %428 = ptrtoint ptr %arrayidx.i.i.i.i454 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %425, ptr %arrayidx.i.i.i.i454, align 4
  br label %emit.exit.i.i458

emit.exit.i.i458:                                 ; preds = %if.then.i.i.i.i455, %if.then.i.i450.emit.exit.i.i458_crit_edge
  %429 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i457 = add i32 %430, 1
  store i32 %inc.i.i.i.i457, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit.i462

arm_bpf_get_reg32.exit.i462:                      ; preds = %emit.exit.i.i458, %sw.bb100.i.arm_bpf_get_reg32.exit.i462_crit_edge
  %reg.addr.0.i.i459 = phi i8 [ 8, %emit.exit.i.i458 ], [ %421, %sw.bb100.i.arm_bpf_get_reg32.exit.i462_crit_edge ]
  %arrayidx.i.i460 = getelementptr i8, ptr %arrayidx.i, i32 1
  %431 = ptrtoint ptr %arrayidx.i.i460 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx.i.i460, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %432)
  %cmp.i.i64.i461 = icmp slt i8 %432, 0
  br i1 %cmp.i.i64.i461, label %if.then.i67.i465, label %arm_bpf_get_reg32.exit.i462.arm_bpf_get_reg64.exit.i482_crit_edge

arm_bpf_get_reg32.exit.i462.arm_bpf_get_reg64.exit.i482_crit_edge: ; preds = %arm_bpf_get_reg32.exit.i462
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i482

if.then.i67.i465:                                 ; preds = %arm_bpf_get_reg32.exit.i462
  %433 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i66.i464 = icmp eq ptr %434, null
  br i1 %cmp.not.i.i.i66.i464, label %if.then.i67.i465.emit.exit.i75.i477_crit_edge, label %if.then.i.i.i72.i474

if.then.i67.i465.emit.exit.i75.i477_crit_edge:    ; preds = %if.then.i67.i465
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i75.i477

if.then.i.i.i72.i474:                             ; preds = %if.then.i67.i465
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i68.i466 = sext i8 %432 to i32
  %435 = sub nsw i32 0, %conv.i68.i466
  %conv9.i7.i.i467 = shl nuw nsw i32 %435, 4
  %and.i.i.i468 = and i32 %conv9.i7.i.i467, 3840
  %and13.i.i.i469 = and i32 %435, 15
  %or11.i.i.i470 = or i32 %and13.i.i.i469, %and.i.i.i468
  %or.i.i.i69.i471 = or i32 %or11.i.i.i470, -515153712
  %436 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i69.i471) #14
  %437 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i71.i473 = getelementptr i32, ptr %434, i32 %438
  %439 = ptrtoint ptr %arrayidx.i.i.i71.i473 to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %436, ptr %arrayidx.i.i.i71.i473, align 4
  br label %emit.exit.i75.i477

emit.exit.i75.i477:                               ; preds = %if.then.i.i.i72.i474, %if.then.i67.i465.emit.exit.i75.i477_crit_edge
  %440 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i74.i476 = add i32 %441, 1
  store i32 %inc.i.i.i74.i476, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i482

arm_bpf_get_reg64.exit.i482:                      ; preds = %emit.exit.i75.i477, %arm_bpf_get_reg32.exit.i462.arm_bpf_get_reg64.exit.i482_crit_edge
  %reg.addr.0.i76.i478 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i75.i477 ], [ %arrayidx.i, %arm_bpf_get_reg32.exit.i462.arm_bpf_get_reg64.exit.i482_crit_edge ]
  %conv169.i479 = zext i8 %reg.addr.0.i.i459 to i32
  %442 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i481 = icmp eq ptr %443, null
  br i1 %cmp.not.i.i.i481, label %emit.exit.thread.i485, label %emit.exit.i493

emit.exit.thread.i485:                            ; preds = %arm_bpf_get_reg64.exit.i482
  call void @__sanitizer_cov_trace_pc() #16
  %444 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i159.i484 = add i32 %445, 1
  store i32 %inc.i.i159.i484, ptr %idx.i1228.i, align 4
  br label %emit.exit85.i505

emit.exit.i493:                                   ; preds = %arm_bpf_get_reg64.exit.i482
  %shl.i486 = shl nuw nsw i32 %conv169.i479, 16
  %or.i.i.i487 = or i32 %shl.i486, -499072992
  %446 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i487) #14
  %447 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i489 = getelementptr i32, ptr %443, i32 %448
  %449 = ptrtoint ptr %arrayidx.i.i.i489 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %446, ptr %arrayidx.i.i.i489, align 4
  %450 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %.pr.i490 = load ptr, ptr %target.i1226.i, align 4
  %451 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i491 = add i32 %451, 1
  store i32 %inc.i.i.i491, ptr %idx.i1228.i, align 4
  %cmp.not.i.i78.i492 = icmp eq ptr %.pr.i490, null
  br i1 %cmp.not.i.i78.i492, label %emit.exit85.thread.i496, label %if.then.i.i82.i499

emit.exit85.thread.i496:                          ; preds = %emit.exit.i493
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i84172.i494 = add i32 %451, 2
  %452 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %inc.i.i84172.i494, ptr %idx.i1228.i, align 4
  %shl18173.i495 = shl nuw nsw i32 %conv169.i479, 8
  br label %emit.exit94.i513

if.then.i.i82.i499:                               ; preds = %emit.exit.i493
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i79.i497 = or i32 %shl.i486, -496988128
  %453 = tail call i32 @llvm.bswap.i32(i32 %or.i.i79.i497) #14
  %arrayidx.i.i81.i498 = getelementptr i32, ptr %.pr.i490, i32 %inc.i.i.i491
  %454 = ptrtoint ptr %arrayidx.i.i81.i498 to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %453, ptr %arrayidx.i.i81.i498, align 4
  br label %emit.exit85.i505

emit.exit85.i505:                                 ; preds = %if.then.i.i82.i499, %emit.exit.thread.i485
  %455 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %.pr170.i501 = load ptr, ptr %target.i1226.i, align 4
  %456 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i84.i502 = add i32 %457, 1
  store i32 %inc.i.i84.i502, ptr %idx.i1228.i, align 4
  %shl18.i503 = shl nuw nsw i32 %conv169.i479, 8
  %cmp.not.i.i87.i504 = icmp eq ptr %.pr170.i501, null
  br i1 %cmp.not.i.i87.i504, label %emit.exit85.i505.emit.exit94.i513_crit_edge, label %if.then.i.i91.i

emit.exit85.i505.emit.exit94.i513_crit_edge:      ; preds = %emit.exit85.i505
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit94.i513

if.then.i.i91.i:                                  ; preds = %emit.exit85.i505
  call void @__sanitizer_cov_trace_pc() #16
  %458 = ptrtoint ptr %reg.addr.0.i76.i478 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %reg.addr.0.i76.i478, align 1
  %conv13.i506 = sext i8 %459 to i32
  %or15.i = or i32 %shl18.i503, %conv13.i506
  %or.i.i88.i507 = or i32 %or15.i, -509550576
  %460 = tail call i32 @llvm.bswap.i32(i32 %or.i.i88.i507) #14
  %arrayidx.i.i90.i508 = getelementptr i32, ptr %.pr170.i501, i32 %inc.i.i84.i502
  %461 = ptrtoint ptr %arrayidx.i.i90.i508 to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %460, ptr %arrayidx.i.i90.i508, align 4
  br label %emit.exit94.i513

emit.exit94.i513:                                 ; preds = %if.then.i.i91.i, %emit.exit85.i505.emit.exit94.i513_crit_edge, %emit.exit85.thread.i496
  %shl18179.i509 = phi i32 [ %shl18173.i495, %emit.exit85.thread.i496 ], [ %shl18.i503, %emit.exit85.i505.emit.exit94.i513_crit_edge ], [ %shl18.i503, %if.then.i.i91.i ]
  %462 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i93.i511 = add i32 %463, 1
  store i32 %inc.i.i93.i511, ptr %idx.i1228.i, align 4
  %arrayidx20.i = getelementptr i8, ptr %reg.addr.0.i76.i478, i32 1
  %464 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i96.i512 = icmp eq ptr %465, null
  br i1 %cmp.not.i.i96.i512, label %emit.exit103.thread.i, label %emit.exit103.i520

emit.exit103.thread.i:                            ; preds = %emit.exit94.i513
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i102165.i = add i32 %463, 2
  %466 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %inc.i.i102165.i, ptr %idx.i1228.i, align 4
  br label %emit.exit112.i527.thread

emit.exit103.i520:                                ; preds = %emit.exit94.i513
  %467 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i514 = sext i8 %468 to i32
  %or.i.i97.i515 = or i32 %conv21.i514, -510727152
  %469 = tail call i32 @llvm.bswap.i32(i32 %or.i.i97.i515) #14
  %arrayidx.i.i99.i516 = getelementptr i32, ptr %465, i32 %inc.i.i93.i511
  %470 = ptrtoint ptr %arrayidx.i.i99.i516 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %469, ptr %arrayidx.i.i99.i516, align 4
  %471 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %.pr164.i517 = load ptr, ptr %target.i1226.i, align 4
  %472 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i102.i518 = add i32 %473, 1
  store i32 %inc.i.i102.i518, ptr %idx.i1228.i, align 4
  %cmp.not.i.i105.i519 = icmp eq ptr %.pr164.i517, null
  br i1 %cmp.not.i.i105.i519, label %emit.exit103.i520.emit.exit112.i527.thread_crit_edge, label %emit.exit112.i527

emit.exit103.i520.emit.exit112.i527.thread_crit_edge: ; preds = %emit.exit103.i520
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit112.i527.thread

emit.exit112.i527.thread:                         ; preds = %emit.exit103.i520.emit.exit112.i527.thread_crit_edge, %emit.exit103.thread.i
  %474 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i111.i5251013 = add i32 %475, 1
  store i32 %inc.i.i111.i5251013, ptr %idx.i1228.i, align 4
  br label %emit.exit121.i534

emit.exit112.i527:                                ; preds = %emit.exit103.i520
  %476 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %arrayidx20.i, align 1
  %conv27.i521 = sext i8 %477 to i32
  %or.i.i106.i522 = or i32 %conv27.i521, -510736080
  %478 = tail call i32 @llvm.bswap.i32(i32 %or.i.i106.i522) #14
  %arrayidx.i.i108.i523 = getelementptr i32, ptr %.pr164.i517, i32 %inc.i.i102.i518
  %479 = ptrtoint ptr %arrayidx.i.i108.i523 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %478, ptr %arrayidx.i.i108.i523, align 4
  %480 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %.pr1012 = load ptr, ptr %target.i1226.i, align 4
  %481 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i111.i525 = add i32 %482, 1
  store i32 %inc.i.i111.i525, ptr %idx.i1228.i, align 4
  %cmp.not.i.i114.i526 = icmp eq ptr %.pr1012, null
  br i1 %cmp.not.i.i114.i526, label %emit.exit112.i527.emit.exit121.i534_crit_edge, label %if.then.i.i118.i531

emit.exit112.i527.emit.exit121.i534_crit_edge:    ; preds = %emit.exit112.i527
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit121.i534

if.then.i.i118.i531:                              ; preds = %emit.exit112.i527
  call void @__sanitizer_cov_trace_pc() #16
  %483 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %arrayidx20.i, align 1
  %conv36.i528 = sext i8 %484 to i32
  %or38.i = or i32 %shl18179.i509, %conv36.i528
  %or.i.i115.i529 = or i32 %or38.i, -509550576
  %485 = tail call i32 @llvm.bswap.i32(i32 %or.i.i115.i529) #14
  %arrayidx.i.i117.i530 = getelementptr i32, ptr %.pr1012, i32 %inc.i.i111.i525
  %486 = ptrtoint ptr %arrayidx.i.i117.i530 to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 %485, ptr %arrayidx.i.i117.i530, align 4
  br label %emit.exit121.i534

emit.exit121.i534:                                ; preds = %if.then.i.i118.i531, %emit.exit112.i527.emit.exit121.i534_crit_edge, %emit.exit112.i527.thread
  %487 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i120.i532 = add i32 %488, 1
  store i32 %inc.i.i120.i532, ptr %idx.i1228.i, align 4
  br i1 %cmp.i.i64.i461, label %if.then.i125.i536, label %if.else.i.i541

if.then.i125.i536:                                ; preds = %emit.exit121.i534
  %489 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i124.i535 = icmp eq ptr %490, null
  br i1 %cmp.not.i.i.i124.i535, label %if.then.i125.i536.if.end10.sink.split.i.i553_crit_edge, label %if.then.i.i.i129.i539

if.then.i125.i536.if.end10.sink.split.i.i553_crit_edge: ; preds = %if.then.i125.i536
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i553

if.then.i.i.i129.i539:                            ; preds = %if.then.i125.i536
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i126.i537 = sext i8 %432 to i32
  %491 = sub nsw i32 0, %conv.i126.i537
  %or.i.i.i128.i538 = or i32 %491, -452206592
  br label %if.end10.sink.split.sink.split.i.i551

if.else.i.i541:                                   ; preds = %emit.exit121.i534
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %432)
  %cmp.not.i.i540 = icmp eq i8 %432, 14
  br i1 %cmp.not.i.i540, label %if.else.i.i541.arm_bpf_put_reg32.exit.i555_crit_edge, label %if.then5.i.i543

if.else.i.i541.arm_bpf_put_reg32.exit.i555_crit_edge: ; preds = %if.else.i.i541
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i555

if.then5.i.i543:                                  ; preds = %if.else.i.i541
  %492 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i.i542 = icmp eq ptr %493, null
  br i1 %cmp.not.i.i18.i.i542, label %if.then5.i.i543.if.end10.sink.split.i.i553_crit_edge, label %if.then.i.i22.i.i547

if.then5.i.i543.if.end10.sink.split.i.i553_crit_edge: ; preds = %if.then5.i.i543
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i553

if.then.i.i22.i.i547:                             ; preds = %if.then5.i.i543
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i.i544 = zext i8 %432 to i32
  %shl.i.i545 = shl nuw nsw i32 %conv226.i.i544, 12
  %or.i.i19.i.i546 = or i32 %shl.i.i545, -509607922
  br label %if.end10.sink.split.sink.split.i.i551

if.end10.sink.split.sink.split.i.i551:            ; preds = %if.then.i.i22.i.i547, %if.then.i.i.i129.i539
  %or.i.i19.sink.i.i548 = phi i32 [ %or.i.i19.i.i546, %if.then.i.i22.i.i547 ], [ %or.i.i.i128.i538, %if.then.i.i.i129.i539 ]
  %.sink28.i.i549 = phi ptr [ %493, %if.then.i.i22.i.i547 ], [ %490, %if.then.i.i.i129.i539 ]
  %494 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i.i548) #14
  %arrayidx.i.i21.i.i550 = getelementptr i32, ptr %.sink28.i.i549, i32 %inc.i.i120.i532
  %495 = ptrtoint ptr %arrayidx.i.i21.i.i550 to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %494, ptr %arrayidx.i.i21.i.i550, align 4
  br label %if.end10.sink.split.i.i553

if.end10.sink.split.i.i553:                       ; preds = %if.end10.sink.split.sink.split.i.i551, %if.then5.i.i543.if.end10.sink.split.i.i553_crit_edge, %if.then.i125.i536.if.end10.sink.split.i.i553_crit_edge
  %496 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i552 = add i32 %497, 1
  store i32 %inc.i.i24.i.i552, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i555

arm_bpf_put_reg32.exit.i555:                      ; preds = %if.end10.sink.split.i.i553, %if.else.i.i541.arm_bpf_put_reg32.exit.i555_crit_edge
  %498 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %499)
  %cmp.i.i131.i554 = icmp slt i8 %499, 0
  br i1 %cmp.i.i131.i554, label %if.then.i134.i557, label %if.else.i140.i562

if.then.i134.i557:                                ; preds = %arm_bpf_put_reg32.exit.i555
  %500 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i133.i556 = icmp eq ptr %501, null
  br i1 %cmp.not.i.i.i133.i556, label %if.then.i134.i557.if.end10.sink.split.i156.i574_crit_edge, label %if.then.i.i.i138.i560

if.then.i134.i557.if.end10.sink.split.i156.i574_crit_edge: ; preds = %if.then.i134.i557
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i156.i574

if.then.i.i.i138.i560:                            ; preds = %if.then.i134.i557
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i135.i558 = sext i8 %499 to i32
  %502 = sub nsw i32 0, %conv.i135.i558
  %or.i.i.i137.i559 = or i32 %502, -452214784
  br label %if.end10.sink.split.sink.split.i153.i572

if.else.i140.i562:                                ; preds = %arm_bpf_put_reg32.exit.i555
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %499)
  %cmp.not.i139.i561 = icmp eq i8 %499, 12
  br i1 %cmp.not.i139.i561, label %if.else.i140.i562.sw.epilog517.i_crit_edge, label %if.then5.i143.i564

if.else.i140.i562.sw.epilog517.i_crit_edge:       ; preds = %if.else.i140.i562
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then5.i143.i564:                               ; preds = %if.else.i140.i562
  %503 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i142.i563 = icmp eq ptr %504, null
  br i1 %cmp.not.i.i18.i142.i563, label %if.then5.i143.i564.if.end10.sink.split.i156.i574_crit_edge, label %if.then.i.i22.i148.i568

if.then5.i143.i564.if.end10.sink.split.i156.i574_crit_edge: ; preds = %if.then5.i143.i564
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i156.i574

if.then.i.i22.i148.i568:                          ; preds = %if.then5.i143.i564
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i144.i565 = zext i8 %499 to i32
  %shl.i145.i566 = shl nuw nsw i32 %conv226.i144.i565, 12
  %or.i.i19.i147.i567 = or i32 %shl.i145.i566, -509607924
  br label %if.end10.sink.split.sink.split.i153.i572

if.end10.sink.split.sink.split.i153.i572:         ; preds = %if.then.i.i22.i148.i568, %if.then.i.i.i138.i560
  %or.i.i19.sink.i149.i569 = phi i32 [ %or.i.i19.i147.i567, %if.then.i.i22.i148.i568 ], [ %or.i.i.i137.i559, %if.then.i.i.i138.i560 ]
  %.sink28.i150.i570 = phi ptr [ %504, %if.then.i.i22.i148.i568 ], [ %501, %if.then.i.i.i138.i560 ]
  %505 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i149.i569) #14
  %506 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i21.i152.i571 = getelementptr i32, ptr %.sink28.i150.i570, i32 %507
  %508 = ptrtoint ptr %arrayidx.i.i21.i152.i571 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %505, ptr %arrayidx.i.i21.i152.i571, align 4
  br label %if.end10.sink.split.i156.i574

if.end10.sink.split.i156.i574:                    ; preds = %if.end10.sink.split.sink.split.i153.i572, %if.then5.i143.i564.if.end10.sink.split.i156.i574_crit_edge, %if.then.i134.i557.if.end10.sink.split.i156.i574_crit_edge
  %509 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i155.i573 = add i32 %510, 1
  store i32 %inc.i.i24.i155.i573, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb101.i:                                       ; preds = %for.body
  %arrayidx.i360 = getelementptr i8, ptr %arrayidx4.i, i32 1
  %511 = ptrtoint ptr %arrayidx.i360 to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx.i360, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %512)
  %cmp.i.i.i361 = icmp slt i8 %512, 0
  br i1 %cmp.i.i.i361, label %if.then.i.i364, label %sw.bb101.i.arm_bpf_get_reg32.exit.i376_crit_edge

sw.bb101.i.arm_bpf_get_reg32.exit.i376_crit_edge: ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit.i376

if.then.i.i364:                                   ; preds = %sw.bb101.i
  %513 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i363 = icmp eq ptr %514, null
  br i1 %cmp.not.i.i.i.i363, label %if.then.i.i364.emit.exit.i.i372_crit_edge, label %if.then.i.i.i.i369

if.then.i.i364.emit.exit.i.i372_crit_edge:        ; preds = %if.then.i.i364
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i372

if.then.i.i.i.i369:                               ; preds = %if.then.i.i364
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i365 = sext i8 %512 to i32
  %515 = sub nsw i32 0, %conv.i.i365
  %or.i.i.i.i366 = or i32 %515, -451182592
  %516 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i366) #14
  %517 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i368 = getelementptr i32, ptr %514, i32 %518
  %519 = ptrtoint ptr %arrayidx.i.i.i.i368 to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 %516, ptr %arrayidx.i.i.i.i368, align 4
  br label %emit.exit.i.i372

emit.exit.i.i372:                                 ; preds = %if.then.i.i.i.i369, %if.then.i.i364.emit.exit.i.i372_crit_edge
  %520 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i371 = add i32 %521, 1
  store i32 %inc.i.i.i.i371, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit.i376

arm_bpf_get_reg32.exit.i376:                      ; preds = %emit.exit.i.i372, %sw.bb101.i.arm_bpf_get_reg32.exit.i376_crit_edge
  %reg.addr.0.i.i373 = phi i8 [ 8, %emit.exit.i.i372 ], [ %512, %sw.bb101.i.arm_bpf_get_reg32.exit.i376_crit_edge ]
  %arrayidx.i.i374 = getelementptr i8, ptr %arrayidx.i, i32 1
  %522 = ptrtoint ptr %arrayidx.i.i374 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx.i.i374, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %523)
  %cmp.i.i64.i375 = icmp slt i8 %523, 0
  br i1 %cmp.i.i64.i375, label %if.then.i67.i379, label %arm_bpf_get_reg32.exit.i376.arm_bpf_get_reg64.exit.i395_crit_edge

arm_bpf_get_reg32.exit.i376.arm_bpf_get_reg64.exit.i395_crit_edge: ; preds = %arm_bpf_get_reg32.exit.i376
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i395

if.then.i67.i379:                                 ; preds = %arm_bpf_get_reg32.exit.i376
  %524 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i66.i378 = icmp eq ptr %525, null
  br i1 %cmp.not.i.i.i66.i378, label %if.then.i67.i379.emit.exit.i75.i391_crit_edge, label %if.then.i.i.i72.i388

if.then.i67.i379.emit.exit.i75.i391_crit_edge:    ; preds = %if.then.i67.i379
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i75.i391

if.then.i.i.i72.i388:                             ; preds = %if.then.i67.i379
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i68.i380 = sext i8 %523 to i32
  %526 = sub nsw i32 0, %conv.i68.i380
  %conv9.i7.i.i381 = shl nuw nsw i32 %526, 4
  %and.i.i.i382 = and i32 %conv9.i7.i.i381, 3840
  %and13.i.i.i383 = and i32 %526, 15
  %or11.i.i.i384 = or i32 %and13.i.i.i383, %and.i.i.i382
  %or.i.i.i69.i385 = or i32 %or11.i.i.i384, -515153712
  %527 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i69.i385) #14
  %528 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i71.i387 = getelementptr i32, ptr %525, i32 %529
  %530 = ptrtoint ptr %arrayidx.i.i.i71.i387 to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %527, ptr %arrayidx.i.i.i71.i387, align 4
  br label %emit.exit.i75.i391

emit.exit.i75.i391:                               ; preds = %if.then.i.i.i72.i388, %if.then.i67.i379.emit.exit.i75.i391_crit_edge
  %531 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i74.i390 = add i32 %532, 1
  store i32 %inc.i.i.i74.i390, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i395

arm_bpf_get_reg64.exit.i395:                      ; preds = %emit.exit.i75.i391, %arm_bpf_get_reg32.exit.i376.arm_bpf_get_reg64.exit.i395_crit_edge
  %reg.addr.0.i76.i392 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i75.i391 ], [ %arrayidx.i, %arm_bpf_get_reg32.exit.i376.arm_bpf_get_reg64.exit.i395_crit_edge ]
  %conv169.i = zext i8 %reg.addr.0.i.i373 to i32
  %533 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i394 = icmp eq ptr %534, null
  br i1 %cmp.not.i.i.i394, label %emit.exit.thread.i396, label %emit.exit.i404

emit.exit.thread.i396:                            ; preds = %arm_bpf_get_reg64.exit.i395
  call void @__sanitizer_cov_trace_pc() #16
  %535 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i159.i = add i32 %536, 1
  store i32 %inc.i.i159.i, ptr %idx.i1228.i, align 4
  br label %emit.exit85.i412

emit.exit.i404:                                   ; preds = %arm_bpf_get_reg64.exit.i395
  %shl.i397 = shl nuw nsw i32 %conv169.i, 16
  %or.i.i.i398 = or i32 %shl.i397, -496975840
  %537 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i398) #14
  %538 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i400 = getelementptr i32, ptr %534, i32 %539
  %540 = ptrtoint ptr %arrayidx.i.i.i400 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %537, ptr %arrayidx.i.i.i400, align 4
  %541 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %.pr.i401 = load ptr, ptr %target.i1226.i, align 4
  %542 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i402 = add i32 %542, 1
  store i32 %inc.i.i.i402, ptr %idx.i1228.i, align 4
  %cmp.not.i.i78.i403 = icmp eq ptr %.pr.i401, null
  br i1 %cmp.not.i.i78.i403, label %emit.exit85.thread.i405, label %if.then.i.i82.i408

emit.exit85.thread.i405:                          ; preds = %emit.exit.i404
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i84172.i = add i32 %542, 2
  %543 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 %inc.i.i84172.i, ptr %idx.i1228.i, align 4
  %shl18173.i = shl nuw nsw i32 %conv169.i, 8
  br label %emit.exit94.thread.i413

if.then.i.i82.i408:                               ; preds = %emit.exit.i404
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i79.i406 = or i32 %shl.i397, -498036704
  %544 = tail call i32 @llvm.bswap.i32(i32 %or.i.i79.i406) #14
  %arrayidx.i.i81.i407 = getelementptr i32, ptr %.pr.i401, i32 %inc.i.i.i402
  %545 = ptrtoint ptr %arrayidx.i.i81.i407 to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %544, ptr %arrayidx.i.i81.i407, align 4
  br label %emit.exit85.i412

emit.exit85.i412:                                 ; preds = %if.then.i.i82.i408, %emit.exit.thread.i396
  %546 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %.pr170.i = load ptr, ptr %target.i1226.i, align 4
  %547 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i84.i409 = add i32 %548, 1
  store i32 %inc.i.i84.i409, ptr %idx.i1228.i, align 4
  %shl18.i410 = shl nuw nsw i32 %conv169.i, 8
  %cmp.not.i.i87.i411 = icmp eq ptr %.pr170.i, null
  br i1 %cmp.not.i.i87.i411, label %emit.exit85.i412.emit.exit94.thread.i413_crit_edge, label %emit.exit94.i421

emit.exit85.i412.emit.exit94.thread.i413_crit_edge: ; preds = %emit.exit85.i412
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit94.thread.i413

emit.exit94.thread.i413:                          ; preds = %emit.exit85.i412.emit.exit94.thread.i413_crit_edge, %emit.exit85.thread.i405
  %shl18180.i = phi i32 [ %shl18173.i, %emit.exit85.thread.i405 ], [ %shl18.i410, %emit.exit85.i412.emit.exit94.thread.i413_crit_edge ]
  %549 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i93165.i = add i32 %550, 1
  store i32 %inc.i.i93165.i, ptr %idx.i1228.i, align 4
  br label %emit.exit103.i427

emit.exit94.i421:                                 ; preds = %emit.exit85.i412
  %arrayidx12.i414 = getelementptr i8, ptr %reg.addr.0.i76.i392, i32 1
  %551 = ptrtoint ptr %arrayidx12.i414 to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %arrayidx12.i414, align 1
  %conv13.i415 = sext i8 %552 to i32
  %or16.i416 = or i32 %shl18.i410, %conv13.i415
  %or.i.i88.i417 = or i32 %or16.i416, -509550544
  %553 = tail call i32 @llvm.bswap.i32(i32 %or.i.i88.i417) #14
  %arrayidx.i.i90.i418 = getelementptr i32, ptr %.pr170.i, i32 %inc.i.i84.i409
  %554 = ptrtoint ptr %arrayidx.i.i90.i418 to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 %553, ptr %arrayidx.i.i90.i418, align 4
  %555 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %.pr164.i = load ptr, ptr %target.i1226.i, align 4
  %556 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i93.i419 = add i32 %557, 1
  store i32 %inc.i.i93.i419, ptr %idx.i1228.i, align 4
  %cmp.not.i.i96.i420 = icmp eq ptr %.pr164.i, null
  br i1 %cmp.not.i.i96.i420, label %emit.exit103.i427.thread, label %if.then.i.i100.i425

emit.exit103.i427.thread:                         ; preds = %emit.exit94.i421
  call void @__sanitizer_cov_trace_pc() #16
  %558 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i102.i4261017 = add i32 %559, 1
  store i32 %inc.i.i102.i4261017, ptr %idx.i1228.i, align 4
  br label %emit.exit112.i

if.then.i.i100.i425:                              ; preds = %emit.exit94.i421
  call void @__sanitizer_cov_trace_pc() #16
  %560 = ptrtoint ptr %reg.addr.0.i76.i392 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %reg.addr.0.i76.i392, align 1
  %conv21.i422 = sext i8 %561 to i32
  %or.i.i97.i423 = or i32 %conv21.i422, -510727152
  %562 = tail call i32 @llvm.bswap.i32(i32 %or.i.i97.i423) #14
  %arrayidx.i.i99.i424 = getelementptr i32, ptr %.pr164.i, i32 %inc.i.i93.i419
  %563 = ptrtoint ptr %arrayidx.i.i99.i424 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %562, ptr %arrayidx.i.i99.i424, align 4
  br label %emit.exit103.i427

emit.exit103.i427:                                ; preds = %if.then.i.i100.i425, %emit.exit94.thread.i413
  %shl18179.i.ph = phi i32 [ %shl18.i410, %if.then.i.i100.i425 ], [ %shl18180.i, %emit.exit94.thread.i413 ]
  %564 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %.pr1015 = load ptr, ptr %target.i1226.i, align 4
  %565 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i102.i426 = add i32 %566, 1
  store i32 %inc.i.i102.i426, ptr %idx.i1228.i, align 4
  %cmp.not.i.i105.i = icmp eq ptr %.pr1015, null
  br i1 %cmp.not.i.i105.i, label %emit.exit112.i.thread, label %if.then.i.i109.i

emit.exit112.i.thread:                            ; preds = %emit.exit103.i427
  call void @__sanitizer_cov_trace_pc() #16
  %567 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i111.i1022 = add i32 %568, 1
  store i32 %inc.i.i111.i1022, ptr %idx.i1228.i, align 4
  br label %emit.exit121.i

if.then.i.i109.i:                                 ; preds = %emit.exit103.i427
  call void @__sanitizer_cov_trace_pc() #16
  %569 = ptrtoint ptr %reg.addr.0.i76.i392 to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %reg.addr.0.i76.i392, align 1
  %conv27.i428 = sext i8 %570 to i32
  %or.i.i106.i = or i32 %conv27.i428, -510727888
  %571 = tail call i32 @llvm.bswap.i32(i32 %or.i.i106.i) #14
  %arrayidx.i.i108.i = getelementptr i32, ptr %.pr1015, i32 %inc.i.i102.i426
  %572 = ptrtoint ptr %arrayidx.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 %571, ptr %arrayidx.i.i108.i, align 4
  br label %emit.exit112.i

emit.exit112.i:                                   ; preds = %if.then.i.i109.i, %emit.exit103.i427.thread
  %shl18179.i1019.ph = phi i32 [ %shl18179.i.ph, %if.then.i.i109.i ], [ %shl18.i410, %emit.exit103.i427.thread ]
  %573 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %.pr1020 = load ptr, ptr %target.i1226.i, align 4
  %574 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i111.i = add i32 %575, 1
  store i32 %inc.i.i111.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i114.i = icmp eq ptr %.pr1020, null
  br i1 %cmp.not.i.i114.i, label %emit.exit112.i.emit.exit121.i_crit_edge, label %if.then.i.i118.i

emit.exit112.i.emit.exit121.i_crit_edge:          ; preds = %emit.exit112.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit121.i

if.then.i.i118.i:                                 ; preds = %emit.exit112.i
  call void @__sanitizer_cov_trace_pc() #16
  %576 = ptrtoint ptr %reg.addr.0.i76.i392 to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %reg.addr.0.i76.i392, align 1
  %conv36.i429 = sext i8 %577 to i32
  %or39.i430 = or i32 %shl18179.i1019.ph, %conv36.i429
  %or.i.i115.i = or i32 %or39.i430, -509558736
  %578 = tail call i32 @llvm.bswap.i32(i32 %or.i.i115.i) #14
  %arrayidx.i.i117.i = getelementptr i32, ptr %.pr1020, i32 %inc.i.i111.i
  %579 = ptrtoint ptr %arrayidx.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 %578, ptr %arrayidx.i.i117.i, align 4
  br label %emit.exit121.i

emit.exit121.i:                                   ; preds = %if.then.i.i118.i, %emit.exit112.i.emit.exit121.i_crit_edge, %emit.exit112.i.thread
  %580 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i120.i = add i32 %581, 1
  store i32 %inc.i.i120.i, ptr %idx.i1228.i, align 4
  br i1 %cmp.i.i64.i375, label %if.then.i125.i, label %if.else.i.i432

if.then.i125.i:                                   ; preds = %emit.exit121.i
  %582 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i124.i = icmp eq ptr %583, null
  br i1 %cmp.not.i.i.i124.i, label %if.then.i125.i.if.end10.sink.split.i.i444_crit_edge, label %if.then.i.i.i129.i

if.then.i125.i.if.end10.sink.split.i.i444_crit_edge: ; preds = %if.then.i125.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i444

if.then.i.i.i129.i:                               ; preds = %if.then.i125.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i126.i = sext i8 %523 to i32
  %584 = sub nsw i32 0, %conv.i126.i
  %or.i.i.i128.i = or i32 %584, -452206592
  br label %if.end10.sink.split.sink.split.i.i442

if.else.i.i432:                                   ; preds = %emit.exit121.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %523)
  %cmp.not.i.i431 = icmp eq i8 %523, 14
  br i1 %cmp.not.i.i431, label %if.else.i.i432.arm_bpf_put_reg32.exit.i445_crit_edge, label %if.then5.i.i434

if.else.i.i432.arm_bpf_put_reg32.exit.i445_crit_edge: ; preds = %if.else.i.i432
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i445

if.then5.i.i434:                                  ; preds = %if.else.i.i432
  %585 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i.i433 = icmp eq ptr %586, null
  br i1 %cmp.not.i.i18.i.i433, label %if.then5.i.i434.if.end10.sink.split.i.i444_crit_edge, label %if.then.i.i22.i.i438

if.then5.i.i434.if.end10.sink.split.i.i444_crit_edge: ; preds = %if.then5.i.i434
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i444

if.then.i.i22.i.i438:                             ; preds = %if.then5.i.i434
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i.i435 = zext i8 %523 to i32
  %shl.i.i436 = shl nuw nsw i32 %conv226.i.i435, 12
  %or.i.i19.i.i437 = or i32 %shl.i.i436, -509607922
  br label %if.end10.sink.split.sink.split.i.i442

if.end10.sink.split.sink.split.i.i442:            ; preds = %if.then.i.i22.i.i438, %if.then.i.i.i129.i
  %or.i.i19.sink.i.i439 = phi i32 [ %or.i.i19.i.i437, %if.then.i.i22.i.i438 ], [ %or.i.i.i128.i, %if.then.i.i.i129.i ]
  %.sink28.i.i440 = phi ptr [ %586, %if.then.i.i22.i.i438 ], [ %583, %if.then.i.i.i129.i ]
  %587 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i.i439) #14
  %arrayidx.i.i21.i.i441 = getelementptr i32, ptr %.sink28.i.i440, i32 %inc.i.i120.i
  %588 = ptrtoint ptr %arrayidx.i.i21.i.i441 to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 %587, ptr %arrayidx.i.i21.i.i441, align 4
  br label %if.end10.sink.split.i.i444

if.end10.sink.split.i.i444:                       ; preds = %if.end10.sink.split.sink.split.i.i442, %if.then5.i.i434.if.end10.sink.split.i.i444_crit_edge, %if.then.i125.i.if.end10.sink.split.i.i444_crit_edge
  %589 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i443 = add i32 %590, 1
  store i32 %inc.i.i24.i.i443, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i445

arm_bpf_put_reg32.exit.i445:                      ; preds = %if.end10.sink.split.i.i444, %if.else.i.i432.arm_bpf_put_reg32.exit.i445_crit_edge
  %591 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %592)
  %cmp.i.i131.i = icmp slt i8 %592, 0
  br i1 %cmp.i.i131.i, label %if.then.i134.i, label %if.else.i140.i

if.then.i134.i:                                   ; preds = %arm_bpf_put_reg32.exit.i445
  %593 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i133.i = icmp eq ptr %594, null
  br i1 %cmp.not.i.i.i133.i, label %if.then.i134.i.if.end10.sink.split.i156.i_crit_edge, label %if.then.i.i.i138.i

if.then.i134.i.if.end10.sink.split.i156.i_crit_edge: ; preds = %if.then.i134.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i156.i

if.then.i.i.i138.i:                               ; preds = %if.then.i134.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i135.i = sext i8 %592 to i32
  %595 = sub nsw i32 0, %conv.i135.i
  %or.i.i.i137.i = or i32 %595, -452214784
  br label %if.end10.sink.split.sink.split.i153.i

if.else.i140.i:                                   ; preds = %arm_bpf_put_reg32.exit.i445
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %592)
  %cmp.not.i139.i = icmp eq i8 %592, 12
  br i1 %cmp.not.i139.i, label %if.else.i140.i.sw.epilog517.i_crit_edge, label %if.then5.i143.i

if.else.i140.i.sw.epilog517.i_crit_edge:          ; preds = %if.else.i140.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then5.i143.i:                                  ; preds = %if.else.i140.i
  %596 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i142.i = icmp eq ptr %597, null
  br i1 %cmp.not.i.i18.i142.i, label %if.then5.i143.i.if.end10.sink.split.i156.i_crit_edge, label %if.then.i.i22.i148.i

if.then5.i143.i.if.end10.sink.split.i156.i_crit_edge: ; preds = %if.then5.i143.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i156.i

if.then.i.i22.i148.i:                             ; preds = %if.then5.i143.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i144.i = zext i8 %592 to i32
  %shl.i145.i = shl nuw nsw i32 %conv226.i144.i, 12
  %or.i.i19.i147.i = or i32 %shl.i145.i, -509607924
  br label %if.end10.sink.split.sink.split.i153.i

if.end10.sink.split.sink.split.i153.i:            ; preds = %if.then.i.i22.i148.i, %if.then.i.i.i138.i
  %or.i.i19.sink.i149.i = phi i32 [ %or.i.i19.i147.i, %if.then.i.i22.i148.i ], [ %or.i.i.i137.i, %if.then.i.i.i138.i ]
  %.sink28.i150.i = phi ptr [ %597, %if.then.i.i22.i148.i ], [ %594, %if.then.i.i.i138.i ]
  %598 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i149.i) #14
  %599 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i21.i152.i = getelementptr i32, ptr %.sink28.i150.i, i32 %600
  %601 = ptrtoint ptr %arrayidx.i.i21.i152.i to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 %598, ptr %arrayidx.i.i21.i152.i, align 4
  br label %if.end10.sink.split.i156.i

if.end10.sink.split.i156.i:                       ; preds = %if.end10.sink.split.sink.split.i153.i, %if.then5.i143.i.if.end10.sink.split.i156.i_crit_edge, %if.then.i134.i.if.end10.sink.split.i156.i_crit_edge
  %602 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i155.i = add i32 %603, 1
  store i32 %inc.i.i24.i155.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb102.i:                                       ; preds = %for.body
  %arrayidx.i309 = getelementptr i8, ptr %arrayidx4.i, i32 1
  %604 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %arrayidx.i309, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %605)
  %cmp.i.i.i310 = icmp slt i8 %605, 0
  br i1 %cmp.i.i.i310, label %if.then.i.i313, label %sw.bb102.i.arm_bpf_get_reg32.exit.i324_crit_edge

sw.bb102.i.arm_bpf_get_reg32.exit.i324_crit_edge: ; preds = %sw.bb102.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit.i324

if.then.i.i313:                                   ; preds = %sw.bb102.i
  %606 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i312 = icmp eq ptr %607, null
  br i1 %cmp.not.i.i.i.i312, label %if.then.i.i313.emit.exit.i.i321_crit_edge, label %if.then.i.i.i.i318

if.then.i.i313.emit.exit.i.i321_crit_edge:        ; preds = %if.then.i.i313
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i321

if.then.i.i.i.i318:                               ; preds = %if.then.i.i313
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i314 = sext i8 %605 to i32
  %608 = sub nsw i32 0, %conv.i.i314
  %or.i.i.i.i315 = or i32 %608, -451182592
  %609 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i315) #14
  %610 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i317 = getelementptr i32, ptr %607, i32 %611
  %612 = ptrtoint ptr %arrayidx.i.i.i.i317 to i32
  call void @__asan_store4_noabort(i32 %612)
  store i32 %609, ptr %arrayidx.i.i.i.i317, align 4
  br label %emit.exit.i.i321

emit.exit.i.i321:                                 ; preds = %if.then.i.i.i.i318, %if.then.i.i313.emit.exit.i.i321_crit_edge
  %613 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i320 = add i32 %614, 1
  store i32 %inc.i.i.i.i320, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit.i324

arm_bpf_get_reg32.exit.i324:                      ; preds = %emit.exit.i.i321, %sw.bb102.i.arm_bpf_get_reg32.exit.i324_crit_edge
  %reg.addr.0.i.i322 = phi i8 [ 8, %emit.exit.i.i321 ], [ %605, %sw.bb102.i.arm_bpf_get_reg32.exit.i324_crit_edge ]
  %arrayidx.i.i323 = getelementptr i8, ptr %arrayidx.i, i32 1
  %615 = ptrtoint ptr %arrayidx.i.i323 to i32
  call void @__asan_load1_noabort(i32 %615)
  %616 = load i8, ptr %arrayidx.i.i323, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %616)
  %cmp.i.i64.i = icmp slt i8 %616, 0
  br i1 %cmp.i.i64.i, label %if.then.i67.i, label %arm_bpf_get_reg32.exit.i324.arm_bpf_get_reg64.exit.i331_crit_edge

arm_bpf_get_reg32.exit.i324.arm_bpf_get_reg64.exit.i331_crit_edge: ; preds = %arm_bpf_get_reg32.exit.i324
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i331

if.then.i67.i:                                    ; preds = %arm_bpf_get_reg32.exit.i324
  %617 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i66.i = icmp eq ptr %618, null
  br i1 %cmp.not.i.i.i66.i, label %if.then.i67.i.emit.exit.i75.i_crit_edge, label %if.then.i.i.i72.i

if.then.i67.i.emit.exit.i75.i_crit_edge:          ; preds = %if.then.i67.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i75.i

if.then.i.i.i72.i:                                ; preds = %if.then.i67.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i68.i = sext i8 %616 to i32
  %619 = sub nsw i32 0, %conv.i68.i
  %conv9.i7.i.i325 = shl nuw nsw i32 %619, 4
  %and.i.i.i326 = and i32 %conv9.i7.i.i325, 3840
  %and13.i.i.i327 = and i32 %619, 15
  %or11.i.i.i328 = or i32 %and13.i.i.i327, %and.i.i.i326
  %or.i.i.i69.i = or i32 %or11.i.i.i328, -515153712
  %620 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i69.i) #14
  %621 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i71.i = getelementptr i32, ptr %618, i32 %622
  %623 = ptrtoint ptr %arrayidx.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %623)
  store i32 %620, ptr %arrayidx.i.i.i71.i, align 4
  br label %emit.exit.i75.i

emit.exit.i75.i:                                  ; preds = %if.then.i.i.i72.i, %if.then.i67.i.emit.exit.i75.i_crit_edge
  %624 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i74.i = add i32 %625, 1
  store i32 %inc.i.i.i74.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i331

arm_bpf_get_reg64.exit.i331:                      ; preds = %emit.exit.i75.i, %arm_bpf_get_reg32.exit.i324.arm_bpf_get_reg64.exit.i331_crit_edge
  %reg.addr.0.i76.i = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i75.i ], [ %arrayidx.i, %arm_bpf_get_reg32.exit.i324.arm_bpf_get_reg64.exit.i331_crit_edge ]
  %conv164.i = zext i8 %reg.addr.0.i.i322 to i32
  %626 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i330 = icmp eq ptr %627, null
  br i1 %cmp.not.i.i.i330, label %emit.exit.thread.i334, label %emit.exit.i341

emit.exit.thread.i334:                            ; preds = %arm_bpf_get_reg64.exit.i331
  call void @__sanitizer_cov_trace_pc() #16
  %628 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i154.i333 = add i32 %629, 1
  store i32 %inc.i.i154.i333, ptr %idx.i1228.i, align 4
  br label %emit.exit85.i

emit.exit.i341:                                   ; preds = %arm_bpf_get_reg64.exit.i331
  %shl.i335 = shl nuw nsw i32 %conv164.i, 16
  %or.i.i.i336 = or i32 %shl.i335, -496975840
  %630 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i336) #14
  %631 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i338 = getelementptr i32, ptr %627, i32 %632
  %633 = ptrtoint ptr %arrayidx.i.i.i338 to i32
  call void @__asan_store4_noabort(i32 %633)
  store i32 %630, ptr %arrayidx.i.i.i338, align 4
  %634 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %.pr.i339 = load ptr, ptr %target.i1226.i, align 4
  %635 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i340 = add i32 %635, 1
  store i32 %inc.i.i.i340, ptr %idx.i1228.i, align 4
  %cmp.not.i.i78.i = icmp eq ptr %.pr.i339, null
  br i1 %cmp.not.i.i78.i, label %emit.exit85.thread.i, label %if.then.i.i82.i

emit.exit85.thread.i:                             ; preds = %emit.exit.i341
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i84167.i = add i32 %635, 2
  %636 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 %inc.i.i84167.i, ptr %idx.i1228.i, align 4
  %shl18168.i = shl nuw nsw i32 %conv164.i, 8
  br label %emit.exit94.thread.i

if.then.i.i82.i:                                  ; preds = %emit.exit.i341
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i79.i = or i32 %shl.i335, -498036704
  %637 = tail call i32 @llvm.bswap.i32(i32 %or.i.i79.i) #14
  %arrayidx.i.i81.i = getelementptr i32, ptr %.pr.i339, i32 %inc.i.i.i340
  %638 = ptrtoint ptr %arrayidx.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 %637, ptr %arrayidx.i.i81.i, align 4
  br label %emit.exit85.i

emit.exit85.i:                                    ; preds = %if.then.i.i82.i, %emit.exit.thread.i334
  %639 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %.pr165.i = load ptr, ptr %target.i1226.i, align 4
  %640 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i84.i = add i32 %641, 1
  store i32 %inc.i.i84.i, ptr %idx.i1228.i, align 4
  %shl18.i = shl nuw nsw i32 %conv164.i, 8
  %cmp.not.i.i87.i = icmp eq ptr %.pr165.i, null
  br i1 %cmp.not.i.i87.i, label %emit.exit85.i.emit.exit94.thread.i_crit_edge, label %emit.exit94.i

emit.exit85.i.emit.exit94.thread.i_crit_edge:     ; preds = %emit.exit85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit94.thread.i

emit.exit94.thread.i:                             ; preds = %emit.exit85.i.emit.exit94.thread.i_crit_edge, %emit.exit85.thread.i
  %shl18175.i = phi i32 [ %shl18168.i, %emit.exit85.thread.i ], [ %shl18.i, %emit.exit85.i.emit.exit94.thread.i_crit_edge ]
  %642 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i93160.i = add i32 %643, 1
  store i32 %inc.i.i93160.i, ptr %idx.i1228.i, align 4
  br label %emit.exit103.i

emit.exit94.i:                                    ; preds = %emit.exit85.i
  %arrayidx12.i = getelementptr i8, ptr %reg.addr.0.i76.i, i32 1
  %644 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = sext i8 %645 to i32
  %or16.i = or i32 %shl18.i, %conv13.i
  %or.i.i88.i = or i32 %or16.i, -509550544
  %646 = tail call i32 @llvm.bswap.i32(i32 %or.i.i88.i) #14
  %arrayidx.i.i90.i = getelementptr i32, ptr %.pr165.i, i32 %inc.i.i84.i
  %647 = ptrtoint ptr %arrayidx.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 %646, ptr %arrayidx.i.i90.i, align 4
  %648 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %.pr159.i = load ptr, ptr %target.i1226.i, align 4
  %649 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i93.i = add i32 %650, 1
  store i32 %inc.i.i93.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i96.i = icmp eq ptr %.pr159.i, null
  br i1 %cmp.not.i.i96.i, label %emit.exit103.i.thread, label %if.then.i.i100.i

emit.exit103.i.thread:                            ; preds = %emit.exit94.i
  call void @__sanitizer_cov_trace_pc() #16
  %651 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i102.i1026 = add i32 %652, 1
  store i32 %inc.i.i102.i1026, ptr %idx.i1228.i, align 4
  br label %_emit.exit.i345

if.then.i.i100.i:                                 ; preds = %emit.exit94.i
  call void @__sanitizer_cov_trace_pc() #16
  %653 = ptrtoint ptr %reg.addr.0.i76.i to i32
  call void @__asan_load1_noabort(i32 %653)
  %654 = load i8, ptr %reg.addr.0.i76.i, align 1
  %conv21.i = sext i8 %654 to i32
  %or.i.i97.i = or i32 %conv21.i, -510727152
  %655 = tail call i32 @llvm.bswap.i32(i32 %or.i.i97.i) #14
  %arrayidx.i.i99.i = getelementptr i32, ptr %.pr159.i, i32 %inc.i.i93.i
  %656 = ptrtoint ptr %arrayidx.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %656)
  store i32 %655, ptr %arrayidx.i.i99.i, align 4
  br label %emit.exit103.i

emit.exit103.i:                                   ; preds = %if.then.i.i100.i, %emit.exit94.thread.i
  %shl18174.i.ph = phi i32 [ %shl18.i, %if.then.i.i100.i ], [ %shl18175.i, %emit.exit94.thread.i ]
  %657 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %.pr1024 = load ptr, ptr %target.i1226.i, align 4
  %658 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i102.i = add i32 %659, 1
  store i32 %inc.i.i102.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i342 = icmp eq ptr %.pr1024, null
  br i1 %cmp.not.i.i342, label %_emit.exit.i345.thread, label %if.then.i105.i

_emit.exit.i345.thread:                           ; preds = %emit.exit103.i
  call void @__sanitizer_cov_trace_pc() #16
  %660 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i3441031 = add i32 %661, 1
  store i32 %inc.i.i3441031, ptr %idx.i1228.i, align 4
  br label %emit.exit114.i

if.then.i105.i:                                   ; preds = %emit.exit103.i
  call void @__sanitizer_cov_trace_pc() #16
  %662 = ptrtoint ptr %reg.addr.0.i76.i to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %reg.addr.0.i76.i, align 1
  %conv27.i = sext i8 %663 to i32
  %or.i.i343 = or i32 %conv27.i, 1368320336
  %664 = tail call i32 @llvm.bswap.i32(i32 %or.i.i343) #14
  %arrayidx.i104.i = getelementptr i32, ptr %.pr1024, i32 %inc.i.i102.i
  %665 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_store4_noabort(i32 %665)
  store i32 %664, ptr %arrayidx.i104.i, align 4
  br label %_emit.exit.i345

_emit.exit.i345:                                  ; preds = %if.then.i105.i, %emit.exit103.i.thread
  %shl18174.i1028.ph = phi i32 [ %shl18174.i.ph, %if.then.i105.i ], [ %shl18.i, %emit.exit103.i.thread ]
  %666 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %.pr1029 = load ptr, ptr %target.i1226.i, align 4
  %667 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i344 = add i32 %668, 1
  store i32 %inc.i.i344, ptr %idx.i1228.i, align 4
  %cmp.not.i.i107.i = icmp eq ptr %.pr1029, null
  br i1 %cmp.not.i.i107.i, label %_emit.exit.i345.emit.exit114.i_crit_edge, label %if.then.i.i111.i

_emit.exit.i345.emit.exit114.i_crit_edge:         ; preds = %_emit.exit.i345
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit114.i

if.then.i.i111.i:                                 ; preds = %_emit.exit.i345
  call void @__sanitizer_cov_trace_pc() #16
  %669 = ptrtoint ptr %reg.addr.0.i76.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %reg.addr.0.i76.i, align 1
  %conv36.i = sext i8 %670 to i32
  %or39.i = or i32 %shl18174.i1028.ph, %conv36.i
  %or.i.i108.i = or i32 %or39.i, -509558704
  %671 = tail call i32 @llvm.bswap.i32(i32 %or.i.i108.i) #14
  %arrayidx.i.i110.i = getelementptr i32, ptr %.pr1029, i32 %inc.i.i344
  %672 = ptrtoint ptr %arrayidx.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 %671, ptr %arrayidx.i.i110.i, align 4
  br label %emit.exit114.i

emit.exit114.i:                                   ; preds = %if.then.i.i111.i, %_emit.exit.i345.emit.exit114.i_crit_edge, %_emit.exit.i345.thread
  %673 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i113.i = add i32 %674, 1
  store i32 %inc.i.i113.i, ptr %idx.i1228.i, align 4
  br i1 %cmp.i.i64.i, label %if.then.i118.i, label %if.else.i.i346

if.then.i118.i:                                   ; preds = %emit.exit114.i
  %675 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i117.i = icmp eq ptr %676, null
  br i1 %cmp.not.i.i.i117.i, label %if.then.i118.i.if.end10.sink.split.i.i358_crit_edge, label %if.then.i.i.i122.i

if.then.i118.i.if.end10.sink.split.i.i358_crit_edge: ; preds = %if.then.i118.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i358

if.then.i.i.i122.i:                               ; preds = %if.then.i118.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i119.i = sext i8 %616 to i32
  %677 = sub nsw i32 0, %conv.i119.i
  %or.i.i.i121.i = or i32 %677, -452206592
  br label %if.end10.sink.split.sink.split.i.i356

if.else.i.i346:                                   ; preds = %emit.exit114.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %616)
  %cmp.not.i123.i = icmp eq i8 %616, 14
  br i1 %cmp.not.i123.i, label %if.else.i.i346.arm_bpf_put_reg32.exit.i359_crit_edge, label %if.then5.i.i348

if.else.i.i346.arm_bpf_put_reg32.exit.i359_crit_edge: ; preds = %if.else.i.i346
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i359

if.then5.i.i348:                                  ; preds = %if.else.i.i346
  %678 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i.i347 = icmp eq ptr %679, null
  br i1 %cmp.not.i.i18.i.i347, label %if.then5.i.i348.if.end10.sink.split.i.i358_crit_edge, label %if.then.i.i22.i.i352

if.then5.i.i348.if.end10.sink.split.i.i358_crit_edge: ; preds = %if.then5.i.i348
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i358

if.then.i.i22.i.i352:                             ; preds = %if.then5.i.i348
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i.i349 = zext i8 %616 to i32
  %shl.i.i350 = shl nuw nsw i32 %conv226.i.i349, 12
  %or.i.i19.i.i351 = or i32 %shl.i.i350, -509607922
  br label %if.end10.sink.split.sink.split.i.i356

if.end10.sink.split.sink.split.i.i356:            ; preds = %if.then.i.i22.i.i352, %if.then.i.i.i122.i
  %or.i.i19.sink.i.i353 = phi i32 [ %or.i.i19.i.i351, %if.then.i.i22.i.i352 ], [ %or.i.i.i121.i, %if.then.i.i.i122.i ]
  %.sink28.i.i354 = phi ptr [ %679, %if.then.i.i22.i.i352 ], [ %676, %if.then.i.i.i122.i ]
  %680 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i.i353) #14
  %arrayidx.i.i21.i.i355 = getelementptr i32, ptr %.sink28.i.i354, i32 %inc.i.i113.i
  %681 = ptrtoint ptr %arrayidx.i.i21.i.i355 to i32
  call void @__asan_store4_noabort(i32 %681)
  store i32 %680, ptr %arrayidx.i.i21.i.i355, align 4
  br label %if.end10.sink.split.i.i358

if.end10.sink.split.i.i358:                       ; preds = %if.end10.sink.split.sink.split.i.i356, %if.then5.i.i348.if.end10.sink.split.i.i358_crit_edge, %if.then.i118.i.if.end10.sink.split.i.i358_crit_edge
  %682 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i357 = add i32 %683, 1
  store i32 %inc.i.i24.i.i357, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i359

arm_bpf_put_reg32.exit.i359:                      ; preds = %if.end10.sink.split.i.i358, %if.else.i.i346.arm_bpf_put_reg32.exit.i359_crit_edge
  %684 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %685)
  %cmp.i.i126.i = icmp slt i8 %685, 0
  br i1 %cmp.i.i126.i, label %if.then.i129.i, label %if.else.i135.i

if.then.i129.i:                                   ; preds = %arm_bpf_put_reg32.exit.i359
  %686 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i128.i = icmp eq ptr %687, null
  br i1 %cmp.not.i.i.i128.i, label %if.then.i129.i.if.end10.sink.split.i151.i_crit_edge, label %if.then.i.i.i133.i

if.then.i129.i.if.end10.sink.split.i151.i_crit_edge: ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i151.i

if.then.i.i.i133.i:                               ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i130.i = sext i8 %685 to i32
  %688 = sub nsw i32 0, %conv.i130.i
  %or.i.i.i132.i = or i32 %688, -452214784
  br label %if.end10.sink.split.sink.split.i148.i

if.else.i135.i:                                   ; preds = %arm_bpf_put_reg32.exit.i359
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %685)
  %cmp.not.i134.i = icmp eq i8 %685, 12
  br i1 %cmp.not.i134.i, label %if.else.i135.i.sw.epilog517.i_crit_edge, label %if.then5.i138.i

if.else.i135.i.sw.epilog517.i_crit_edge:          ; preds = %if.else.i135.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then5.i138.i:                                  ; preds = %if.else.i135.i
  %689 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i137.i = icmp eq ptr %690, null
  br i1 %cmp.not.i.i18.i137.i, label %if.then5.i138.i.if.end10.sink.split.i151.i_crit_edge, label %if.then.i.i22.i143.i

if.then5.i138.i.if.end10.sink.split.i151.i_crit_edge: ; preds = %if.then5.i138.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i151.i

if.then.i.i22.i143.i:                             ; preds = %if.then5.i138.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i139.i = zext i8 %685 to i32
  %shl.i140.i = shl nuw nsw i32 %conv226.i139.i, 12
  %or.i.i19.i142.i = or i32 %shl.i140.i, -509607924
  br label %if.end10.sink.split.sink.split.i148.i

if.end10.sink.split.sink.split.i148.i:            ; preds = %if.then.i.i22.i143.i, %if.then.i.i.i133.i
  %or.i.i19.sink.i144.i = phi i32 [ %or.i.i19.i142.i, %if.then.i.i22.i143.i ], [ %or.i.i.i132.i, %if.then.i.i.i133.i ]
  %.sink28.i145.i = phi ptr [ %690, %if.then.i.i22.i143.i ], [ %687, %if.then.i.i.i133.i ]
  %691 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i144.i) #14
  %692 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i21.i147.i = getelementptr i32, ptr %.sink28.i145.i, i32 %693
  %694 = ptrtoint ptr %arrayidx.i.i21.i147.i to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 %691, ptr %arrayidx.i.i21.i147.i, align 4
  br label %if.end10.sink.split.i151.i

if.end10.sink.split.i151.i:                       ; preds = %if.end10.sink.split.sink.split.i148.i, %if.then5.i138.i.if.end10.sink.split.i151.i_crit_edge, %if.then.i129.i.if.end10.sink.split.i151.i_crit_edge
  %695 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i150.i = add i32 %696, 1
  store i32 %inc.i.i24.i150.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb103.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %10)
  %cmp104.i = icmp sgt i32 %10, 63
  br i1 %cmp104.i, label %sw.bb103.i.if.end6_crit_edge, label %if.end113.i, !prof !50

sw.bb103.i.if.end6_crit_edge:                     ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end113.i:                                      ; preds = %sw.bb103.i
  %arrayidx.i.i242 = getelementptr i8, ptr %arrayidx.i, i32 1
  %697 = ptrtoint ptr %arrayidx.i.i242 to i32
  call void @__asan_load1_noabort(i32 %697)
  %698 = load i8, ptr %arrayidx.i.i242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %698)
  %cmp.i.i.i243 = icmp slt i8 %698, 0
  br i1 %cmp.i.i.i243, label %if.then.i.i246, label %if.end113.i.arm_bpf_get_reg64.exit.i261_crit_edge

if.end113.i.arm_bpf_get_reg64.exit.i261_crit_edge: ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i261

if.then.i.i246:                                   ; preds = %if.end113.i
  %699 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i245 = icmp eq ptr %700, null
  br i1 %cmp.not.i.i.i.i245, label %if.then.i.i246.emit.exit.i.i258_crit_edge, label %if.then.i.i.i.i255

if.then.i.i246.emit.exit.i.i258_crit_edge:        ; preds = %if.then.i.i246
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i258

if.then.i.i.i.i255:                               ; preds = %if.then.i.i246
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i247 = sext i8 %698 to i32
  %701 = sub nsw i32 0, %conv.i.i247
  %conv9.i7.i.i248 = shl nuw nsw i32 %701, 4
  %and.i.i.i249 = and i32 %conv9.i7.i.i248, 3840
  %and13.i.i.i250 = and i32 %701, 15
  %or11.i.i.i251 = or i32 %and13.i.i.i250, %and.i.i.i249
  %or.i.i.i.i252 = or i32 %or11.i.i.i251, -515153712
  %702 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i252) #14
  %703 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i254 = getelementptr i32, ptr %700, i32 %704
  %705 = ptrtoint ptr %arrayidx.i.i.i.i254 to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 %702, ptr %arrayidx.i.i.i.i254, align 4
  br label %emit.exit.i.i258

emit.exit.i.i258:                                 ; preds = %if.then.i.i.i.i255, %if.then.i.i246.emit.exit.i.i258_crit_edge
  %706 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i257 = add i32 %707, 1
  store i32 %inc.i.i.i.i257, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i261

arm_bpf_get_reg64.exit.i261:                      ; preds = %emit.exit.i.i258, %if.end113.i.arm_bpf_get_reg64.exit.i261_crit_edge
  %reg.addr.0.i.i259 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i.i258 ], [ %arrayidx.i, %if.end113.i.arm_bpf_get_reg64.exit.i261_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i260 = icmp eq i32 %10, 0
  br i1 %cmp.i260, label %arm_bpf_get_reg64.exit.i261.if.end81.i_crit_edge, label %if.else.i262

arm_bpf_get_reg64.exit.i261.if.end81.i_crit_edge: ; preds = %arm_bpf_get_reg64.exit.i261
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.i

if.else.i262:                                     ; preds = %arm_bpf_get_reg64.exit.i261
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp1.i = icmp ult i32 %10, 32
  br i1 %cmp1.i, label %if.then2.i, label %if.else35.i

if.then2.i:                                       ; preds = %if.else.i262
  %arrayidx4.i263 = getelementptr i8, ptr %reg.addr.0.i.i259, i32 1
  %shl8.i264 = shl nuw nsw i32 %10, 7
  %708 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i266 = icmp eq ptr %709, null
  br i1 %cmp.not.i.i.i266, label %emit.exit.thread.i267, label %emit.exit.i274

emit.exit.thread.i267:                            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  %710 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i179.i = add i32 %711, 1
  store i32 %inc.i.i179.i, ptr %idx.i1228.i, align 4
  br label %emit.exit119.i

emit.exit.i274:                                   ; preds = %if.then2.i
  %712 = ptrtoint ptr %arrayidx4.i263 to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %arrayidx4.i263, align 1
  %conv5.i = sext i8 %713 to i32
  %or7.i = or i32 %shl8.i264, %conv5.i
  %or.i.i.i268 = or i32 %or7.i, -509575136
  %714 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i268) #14
  %715 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i270 = getelementptr i32, ptr %709, i32 %716
  %717 = ptrtoint ptr %arrayidx.i.i.i270 to i32
  call void @__asan_store4_noabort(i32 %717)
  store i32 %714, ptr %arrayidx.i.i.i270, align 4
  %718 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %.pr.i271 = load ptr, ptr %target.i1226.i, align 4
  %719 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i273 = add i32 %719, 1
  store i32 %inc.i.i.i273, ptr %idx.i1228.i, align 4
  %cmp.not.i.i112.i = icmp eq ptr %.pr.i271, null
  br i1 %cmp.not.i.i112.i, label %emit.exit119.i.thread, label %if.then.i.i116.i

emit.exit119.i.thread:                            ; preds = %emit.exit.i274
  call void @__sanitizer_cov_trace_pc() #16
  %720 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i118.i975 = add i32 %721, 1
  store i32 %inc.i.i118.i975, ptr %idx.i1228.i, align 4
  br label %if.end81.sink.split.i

if.then.i.i116.i:                                 ; preds = %emit.exit.i274
  call void @__sanitizer_cov_trace_pc() #16
  %722 = ptrtoint ptr %arrayidx4.i263 to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %arrayidx4.i263, align 1
  %conv11.i = sext i8 %723 to i32
  %shl12.i275 = shl nsw i32 %conv11.i, 12
  %724 = ptrtoint ptr %reg.addr.0.i.i259 to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %reg.addr.0.i.i259, align 1
  %conv19.i276 = sext i8 %725 to i32
  %.neg.i = mul i32 %10, 536870784
  %shl22.i = add i32 %.neg.i, 4096
  %or17.i = or i32 %shl22.i, %conv19.i276
  %or20.i = or i32 %or17.i, %shl12.i275
  %or.i.i113.i = or i32 %or20.i, -511180800
  %726 = tail call i32 @llvm.bswap.i32(i32 %or.i.i113.i) #14
  %arrayidx.i.i115.i = getelementptr i32, ptr %.pr.i271, i32 %inc.i.i.i273
  %727 = ptrtoint ptr %arrayidx.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %727)
  store i32 %726, ptr %arrayidx.i.i115.i, align 4
  br label %emit.exit119.i

emit.exit119.i:                                   ; preds = %if.then.i.i116.i, %emit.exit.thread.i267
  %728 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %.pr973 = load ptr, ptr %target.i1226.i, align 4
  %729 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i118.i = add i32 %730, 1
  store i32 %inc.i.i118.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i121.i = icmp eq ptr %.pr973, null
  br i1 %cmp.not.i.i121.i, label %emit.exit119.i.if.end81.sink.split.i_crit_edge, label %if.then.i.i125.i

emit.exit119.i.if.end81.sink.split.i_crit_edge:   ; preds = %emit.exit119.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.sink.split.i

if.then.i.i125.i:                                 ; preds = %emit.exit119.i
  call void @__sanitizer_cov_trace_pc() #16
  %731 = ptrtoint ptr %reg.addr.0.i.i259 to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %reg.addr.0.i.i259, align 1
  %conv25.i = sext i8 %732 to i32
  %shl26.i = shl nsw i32 %conv25.i, 12
  %or27.i = or i32 %shl8.i264, %conv25.i
  %or32.i = or i32 %or27.i, %shl26.i
  %or.i.i122.i = or i32 %or32.i, -509607872
  %733 = tail call i32 @llvm.bswap.i32(i32 %or.i.i122.i) #14
  %arrayidx.i.i124.i = getelementptr i32, ptr %.pr973, i32 %inc.i.i118.i
  %734 = ptrtoint ptr %arrayidx.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %734)
  store i32 %733, ptr %arrayidx.i.i124.i, align 4
  br label %if.end81.sink.split.i

if.else35.i:                                      ; preds = %if.else.i262
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp36.i = icmp eq i32 %10, 32
  %735 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i130.i = icmp eq ptr %736, null
  br i1 %cmp36.i, label %if.then38.i, label %if.else57.i

if.then38.i:                                      ; preds = %if.else35.i
  br i1 %cmp.not.i.i130.i, label %emit.exit137.thread.i, label %emit.exit137.i

emit.exit137.thread.i:                            ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  %737 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i136184.i = add i32 %738, 1
  store i32 %inc.i.i136184.i, ptr %idx.i1228.i, align 4
  br label %if.end81.sink.split.i

emit.exit137.i:                                   ; preds = %if.then38.i
  %arrayidx39.i = getelementptr i8, ptr %reg.addr.0.i.i259, i32 1
  %739 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %739)
  %740 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = sext i8 %740 to i32
  %shl41.i = shl nsw i32 %conv40.i, 12
  %741 = ptrtoint ptr %reg.addr.0.i.i259 to i32
  call void @__asan_load1_noabort(i32 %741)
  %742 = load i8, ptr %reg.addr.0.i.i259, align 1
  %conv45.i = sext i8 %742 to i32
  %or42.i = or i32 %shl41.i, %conv45.i
  %or.i.i131.i = or i32 %or42.i, -509607936
  %743 = tail call i32 @llvm.bswap.i32(i32 %or.i.i131.i) #14
  %744 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i133.i = getelementptr i32, ptr %736, i32 %745
  %746 = ptrtoint ptr %arrayidx.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %746)
  store i32 %743, ptr %arrayidx.i.i133.i, align 4
  %747 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %.pr182.i = load ptr, ptr %target.i1226.i, align 4
  %748 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i136.i = add i32 %748, 1
  store i32 %inc.i.i136.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i139.i = icmp eq ptr %.pr182.i, null
  br i1 %cmp.not.i.i139.i, label %emit.exit137.i.if.end81.sink.split.i_crit_edge, label %if.then.i.i143.i

emit.exit137.i.if.end81.sink.split.i_crit_edge:   ; preds = %emit.exit137.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.sink.split.i

if.then.i.i143.i:                                 ; preds = %emit.exit137.i
  call void @__sanitizer_cov_trace_pc() #16
  %749 = ptrtoint ptr %reg.addr.0.i.i259 to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %reg.addr.0.i.i259, align 1
  %conv48.i = sext i8 %750 to i32
  %shl49.i = shl nsw i32 %conv48.i, 12
  %or50.i = or i32 %shl49.i, %conv48.i
  %or.i.i140.i = or i32 %or50.i, -509603904
  %751 = tail call i32 @llvm.bswap.i32(i32 %or.i.i140.i) #14
  %arrayidx.i.i142.i = getelementptr i32, ptr %.pr182.i, i32 %inc.i.i136.i
  %752 = ptrtoint ptr %arrayidx.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %752)
  store i32 %751, ptr %arrayidx.i.i142.i, align 4
  br label %if.end81.sink.split.i

if.else57.i:                                      ; preds = %if.else35.i
  br i1 %cmp.not.i.i130.i, label %emit.exit155.thread.i, label %emit.exit155.i

emit.exit155.thread.i:                            ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #16
  %753 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i154189.i = add i32 %754, 1
  store i32 %inc.i.i154189.i, ptr %idx.i1228.i, align 4
  br label %if.end81.sink.split.i

emit.exit155.i:                                   ; preds = %if.else57.i
  %arrayidx58.i = getelementptr i8, ptr %reg.addr.0.i.i259, i32 1
  %755 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = sext i8 %756 to i32
  %shl60.i = shl nsw i32 %conv59.i, 12
  %757 = ptrtoint ptr %reg.addr.0.i.i259 to i32
  call void @__asan_load1_noabort(i32 %757)
  %758 = load i8, ptr %reg.addr.0.i.i259, align 1
  %conv64.i = sext i8 %758 to i32
  %sub67.i = shl i32 %10, 7
  %shl68.i = add i32 %sub67.i, 536866816
  %or61.i = or i32 %shl68.i, %conv64.i
  %or66.i = or i32 %or61.i, %shl60.i
  %or.i.i149.i = or i32 %or66.i, -509607872
  %759 = tail call i32 @llvm.bswap.i32(i32 %or.i.i149.i) #14
  %760 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i151.i = getelementptr i32, ptr %736, i32 %761
  %762 = ptrtoint ptr %arrayidx.i.i151.i to i32
  call void @__asan_store4_noabort(i32 %762)
  store i32 %759, ptr %arrayidx.i.i151.i, align 4
  %763 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %.pr187.i = load ptr, ptr %target.i1226.i, align 4
  %764 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i154.i = add i32 %764, 1
  store i32 %inc.i.i154.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i157.i = icmp eq ptr %.pr187.i, null
  br i1 %cmp.not.i.i157.i, label %emit.exit155.i.if.end81.sink.split.i_crit_edge, label %if.then.i.i161.i

emit.exit155.i.if.end81.sink.split.i_crit_edge:   ; preds = %emit.exit155.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.sink.split.i

if.then.i.i161.i:                                 ; preds = %emit.exit155.i
  call void @__sanitizer_cov_trace_pc() #16
  %765 = ptrtoint ptr %reg.addr.0.i.i259 to i32
  call void @__asan_load1_noabort(i32 %765)
  %766 = load i8, ptr %reg.addr.0.i.i259, align 1
  %conv71.i = sext i8 %766 to i32
  %shl72.i = shl nsw i32 %conv71.i, 12
  %or73.i = or i32 %shl72.i, %conv71.i
  %or.i.i158.i = or i32 %or73.i, -509603904
  %767 = tail call i32 @llvm.bswap.i32(i32 %or.i.i158.i) #14
  %arrayidx.i.i160.i = getelementptr i32, ptr %.pr187.i, i32 %inc.i.i154.i
  %768 = ptrtoint ptr %arrayidx.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %768)
  store i32 %767, ptr %arrayidx.i.i160.i, align 4
  br label %if.end81.sink.split.i

if.end81.sink.split.i:                            ; preds = %if.then.i.i161.i, %emit.exit155.i.if.end81.sink.split.i_crit_edge, %emit.exit155.thread.i, %if.then.i.i143.i, %emit.exit137.i.if.end81.sink.split.i_crit_edge, %emit.exit137.thread.i, %if.then.i.i125.i, %emit.exit119.i.if.end81.sink.split.i_crit_edge, %emit.exit119.i.thread
  %769 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i127.i = add i32 %770, 1
  store i32 %inc.i.i127.i, ptr %idx.i1228.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end81.sink.split.i, %arm_bpf_get_reg64.exit.i261.if.end81.i_crit_edge
  br i1 %cmp.i.i.i243, label %if.then.i169.i, label %if.else.i.i281

if.then.i169.i:                                   ; preds = %if.end81.i
  %771 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i168.i = icmp eq ptr %772, null
  br i1 %cmp.not.i.i.i168.i, label %if.then.i169.i.if.end32.sink.split.i.i308_crit_edge, label %if.then.i.i.i176.i

if.then.i169.i.if.end32.sink.split.i.i308_crit_edge: ; preds = %if.then.i169.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i308

if.then.i.i.i176.i:                               ; preds = %if.then.i169.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i170.i = sext i8 %698 to i32
  %773 = sub nsw i32 0, %conv.i170.i
  %conv9.i62.i.i277 = shl nuw nsw i32 %773, 4
  %and.i.i171.i = and i32 %conv9.i62.i.i277, 3840
  %and13.i.i172.i = and i32 %773, 15
  %arrayidx1.i.i = getelementptr i8, ptr %reg.addr.0.i.i259, i32 1
  %774 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %774)
  %775 = load i8, ptr %arrayidx1.i.i, align 1
  %conv.i.i.i278 = zext i8 %775 to i32
  %shl.i.i.i279 = shl nuw nsw i32 %conv.i.i.i278, 12
  %or11.i.i173.i = or i32 %and13.i.i172.i, %and.i.i171.i
  %or14.i.i174.i = or i32 %shl.i.i.i279, %or11.i.i173.i
  %or.i.i.i175.i = or i32 %or14.i.i174.i, -515178256
  br label %if.end32.sink.split.sink.split.i.i306

if.else.i.i281:                                   ; preds = %if.end81.i
  %arrayidx6.i.i = getelementptr i8, ptr %reg.addr.0.i.i259, i32 1
  %776 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %776)
  %777 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %698, i8 %777)
  %cmp.not.i.i280 = icmp eq i8 %698, %777
  br i1 %cmp.not.i.i280, label %if.else.i.i281.if.end.i.i294_crit_edge, label %if.then9.i.i283

if.else.i.i281.if.end.i.i294_crit_edge:           ; preds = %if.else.i.i281
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i294

if.then9.i.i283:                                  ; preds = %if.else.i.i281
  %778 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i45.i.i282 = icmp eq ptr %779, null
  br i1 %cmp.not.i.i45.i.i282, label %if.then9.i.i283.emit.exit52.i.i292_crit_edge, label %if.then.i.i49.i.i290

if.then9.i.i283.emit.exit52.i.i292_crit_edge:     ; preds = %if.then9.i.i283
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i.i292

if.then.i.i49.i.i290:                             ; preds = %if.then9.i.i283
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i.i284 = zext i8 %698 to i32
  %shl.i.i285 = shl nuw nsw i32 %conv563.i.i284, 12
  %conv7.i.i286 = sext i8 %777 to i32
  %or.i.i287 = or i32 %shl.i.i285, %conv7.i.i286
  %or.i.i46.i.i288 = or i32 %or.i.i287, -509607936
  %780 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i.i288) #14
  %781 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i48.i.i289 = getelementptr i32, ptr %779, i32 %782
  %783 = ptrtoint ptr %arrayidx.i.i48.i.i289 to i32
  call void @__asan_store4_noabort(i32 %783)
  store i32 %780, ptr %arrayidx.i.i48.i.i289, align 4
  br label %emit.exit52.i.i292

emit.exit52.i.i292:                               ; preds = %if.then.i.i49.i.i290, %if.then9.i.i283.emit.exit52.i.i292_crit_edge
  %784 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i51.i.i291 = add i32 %785, 1
  store i32 %inc.i.i51.i.i291, ptr %idx.i1228.i, align 4
  br label %if.end.i.i294

if.end.i.i294:                                    ; preds = %emit.exit52.i.i292, %if.else.i.i281.if.end.i.i294_crit_edge
  %786 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %arrayidx.i, align 1
  %788 = ptrtoint ptr %reg.addr.0.i.i259 to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %reg.addr.0.i.i259, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %787, i8 %789)
  %cmp20.not.i.i293 = icmp eq i8 %787, %789
  br i1 %cmp20.not.i.i293, label %if.end.i.i294.sw.epilog517.i_crit_edge, label %if.then22.i.i296

if.end.i.i294.sw.epilog517.i_crit_edge:           ; preds = %if.end.i.i294
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then22.i.i296:                                 ; preds = %if.end.i.i294
  %790 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i54.i.i295 = icmp eq ptr %791, null
  br i1 %cmp.not.i.i54.i.i295, label %if.then22.i.i296.if.end32.sink.split.i.i308_crit_edge, label %if.then.i.i58.i.i302

if.then22.i.i296.if.end32.sink.split.i.i308_crit_edge: ; preds = %if.then22.i.i296
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i308

if.then.i.i58.i.i302:                             ; preds = %if.then22.i.i296
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i.i297 = sext i8 %787 to i32
  %shl25.i.i298 = shl nsw i32 %conv17.i.i297, 12
  %conv19.i.i299 = sext i8 %789 to i32
  %or26.i.i300 = or i32 %shl25.i.i298, %conv19.i.i299
  %or.i.i55.i.i301 = or i32 %or26.i.i300, -509607936
  br label %if.end32.sink.split.sink.split.i.i306

if.end32.sink.split.sink.split.i.i306:            ; preds = %if.then.i.i58.i.i302, %if.then.i.i.i176.i
  %or.i.i55.sink.i.i303 = phi i32 [ %or.i.i55.i.i301, %if.then.i.i58.i.i302 ], [ %or.i.i.i175.i, %if.then.i.i.i176.i ]
  %.sink65.i.i304 = phi ptr [ %791, %if.then.i.i58.i.i302 ], [ %772, %if.then.i.i.i176.i ]
  %792 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i.i303) #14
  %793 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i57.i.i305 = getelementptr i32, ptr %.sink65.i.i304, i32 %794
  %795 = ptrtoint ptr %arrayidx.i.i57.i.i305 to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 %792, ptr %arrayidx.i.i57.i.i305, align 4
  br label %if.end32.sink.split.i.i308

if.end32.sink.split.i.i308:                       ; preds = %if.end32.sink.split.sink.split.i.i306, %if.then22.i.i296.if.end32.sink.split.i.i308_crit_edge, %if.then.i169.i.if.end32.sink.split.i.i308_crit_edge
  %796 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i60.i.i307 = add i32 %797, 1
  store i32 %inc.i.i60.i.i307, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb114.i:                                       ; preds = %for.body
  %arrayidx115.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %798 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load1_noabort(i32 %798)
  %799 = load i8, ptr %arrayidx115.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %799)
  %cmp.i.i.i208 = icmp slt i8 %799, 0
  br i1 %cmp.i.i.i208, label %if.then.i.i211, label %sw.bb114.i.arm_bpf_get_reg32.exit.i221_crit_edge

sw.bb114.i.arm_bpf_get_reg32.exit.i221_crit_edge: ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit.i221

if.then.i.i211:                                   ; preds = %sw.bb114.i
  %800 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i210 = icmp eq ptr %801, null
  br i1 %cmp.not.i.i.i.i210, label %if.then.i.i211.emit.exit.i.i219_crit_edge, label %if.then.i.i.i.i216

if.then.i.i211.emit.exit.i.i219_crit_edge:        ; preds = %if.then.i.i211
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i219

if.then.i.i.i.i216:                               ; preds = %if.then.i.i211
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i212 = sext i8 %799 to i32
  %802 = sub nsw i32 0, %conv.i.i212
  %or.i.i.i.i213 = or i32 %802, -451186688
  %803 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i213) #14
  %804 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i215 = getelementptr i32, ptr %801, i32 %805
  %806 = ptrtoint ptr %arrayidx.i.i.i.i215 to i32
  call void @__asan_store4_noabort(i32 %806)
  store i32 %803, ptr %arrayidx.i.i.i.i215, align 4
  br label %emit.exit.i.i219

emit.exit.i.i219:                                 ; preds = %if.then.i.i.i.i216, %if.then.i.i211.emit.exit.i.i219_crit_edge
  %807 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i218 = add i32 %808, 1
  store i32 %inc.i.i.i.i218, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit.i221

arm_bpf_get_reg32.exit.i221:                      ; preds = %emit.exit.i.i219, %sw.bb114.i.arm_bpf_get_reg32.exit.i221_crit_edge
  %reg.addr.0.i.i220 = phi i8 [ 7, %emit.exit.i.i219 ], [ %799, %sw.bb114.i.arm_bpf_get_reg32.exit.i221_crit_edge ]
  %809 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i69.i = icmp eq ptr %810, null
  br i1 %cmp.not.i.i69.i, label %arm_bpf_get_reg32.exit.i221.sw.epilog.sink.split.i_crit_edge, label %if.then.i.i73.i

arm_bpf_get_reg32.exit.i221.sw.epilog.sink.split.i_crit_edge: ; preds = %arm_bpf_get_reg32.exit.i221
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i

if.then.i.i73.i:                                  ; preds = %arm_bpf_get_reg32.exit.i221
  call void @__sanitizer_cov_trace_pc() #16
  %conv2690.i = zext i8 %reg.addr.0.i.i220 to i32
  %shl27.i = shl nuw nsw i32 %conv2690.i, 12
  %shl30.i = shl nuw nsw i32 %conv2690.i, 16
  %or31.i = or i32 %shl27.i, %shl30.i
  %or.i.i70.i = or i32 %or31.i, -497025024
  %811 = tail call i32 @llvm.bswap.i32(i32 %or.i.i70.i) #14
  %812 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i72.i = getelementptr i32, ptr %810, i32 %813
  %814 = ptrtoint ptr %arrayidx.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %814)
  store i32 %811, ptr %arrayidx.i.i72.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.then.i.i73.i, %arm_bpf_get_reg32.exit.i221.sw.epilog.sink.split.i_crit_edge
  %815 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i75.i = add i32 %816, 1
  store i32 %inc.i.i75.i, ptr %idx.i1228.i, align 4
  br i1 %cmp.i.i.i208, label %if.then.i80.i, label %if.else.i.i226

if.then.i80.i:                                    ; preds = %sw.epilog.sink.split.i
  %817 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i79.i = icmp eq ptr %818, null
  br i1 %cmp.not.i.i.i79.i, label %if.then.i80.i.if.end10.sink.split.i.i240_crit_edge, label %if.then.i.i.i84.i

if.then.i80.i.if.end10.sink.split.i.i240_crit_edge: ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i240

if.then.i.i.i84.i:                                ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i81.i = sext i8 %799 to i32
  %819 = sub nsw i32 0, %conv.i81.i
  %conv.i.i.i223 = zext i8 %reg.addr.0.i.i220 to i32
  %shl.i.i.i224 = shl nuw nsw i32 %conv.i.i.i223, 12
  %or3.i.i82.i = or i32 %shl.i.i.i224, %819
  %or.i.i.i83.i = or i32 %or3.i.i82.i, -452263936
  br label %if.end10.sink.split.sink.split.i.i238

if.else.i.i226:                                   ; preds = %sw.epilog.sink.split.i
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.addr.0.i.i220, i8 %799)
  %cmp.not.i.i225 = icmp eq i8 %reg.addr.0.i.i220, %799
  br i1 %cmp.not.i.i225, label %if.else.i.i226.emit_a32_alu_i.exit_crit_edge, label %if.then5.i.i228

if.else.i.i226.emit_a32_alu_i.exit_crit_edge:     ; preds = %if.else.i.i226
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_a32_alu_i.exit

if.then5.i.i228:                                  ; preds = %if.else.i.i226
  %820 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i18.i.i227 = icmp eq ptr %821, null
  br i1 %cmp.not.i.i18.i.i227, label %if.then5.i.i228.if.end10.sink.split.i.i240_crit_edge, label %if.then.i.i22.i.i233

if.then5.i.i228.if.end10.sink.split.i.i240_crit_edge: ; preds = %if.then5.i.i228
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i240

if.then.i.i22.i.i233:                             ; preds = %if.then5.i.i228
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i.i229 = zext i8 %799 to i32
  %shl.i.i230 = shl nuw nsw i32 %conv226.i.i229, 12
  %conv3.i86.i = zext i8 %reg.addr.0.i.i220 to i32
  %or.i.i231 = or i32 %shl.i.i230, %conv3.i86.i
  %or.i.i19.i.i232 = or i32 %or.i.i231, -509607936
  br label %if.end10.sink.split.sink.split.i.i238

if.end10.sink.split.sink.split.i.i238:            ; preds = %if.then.i.i22.i.i233, %if.then.i.i.i84.i
  %or.i.i19.sink.i.i234 = phi i32 [ %or.i.i19.i.i232, %if.then.i.i22.i.i233 ], [ %or.i.i.i83.i, %if.then.i.i.i84.i ]
  %.sink28.i.i235 = phi ptr [ %821, %if.then.i.i22.i.i233 ], [ %818, %if.then.i.i.i84.i ]
  %822 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i.i234) #14
  %arrayidx.i.i21.i.i237 = getelementptr i32, ptr %.sink28.i.i235, i32 %inc.i.i75.i
  %823 = ptrtoint ptr %arrayidx.i.i21.i.i237 to i32
  call void @__asan_store4_noabort(i32 %823)
  store i32 %822, ptr %arrayidx.i.i21.i.i237, align 4
  br label %if.end10.sink.split.i.i240

if.end10.sink.split.i.i240:                       ; preds = %if.end10.sink.split.sink.split.i.i238, %if.then5.i.i228.if.end10.sink.split.i.i240_crit_edge, %if.then.i80.i.if.end10.sink.split.i.i240_crit_edge
  %824 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i239 = add i32 %825, 1
  store i32 %inc.i.i24.i.i239, ptr %idx.i1228.i, align 4
  br label %emit_a32_alu_i.exit

emit_a32_alu_i.exit:                              ; preds = %if.end10.sink.split.i.i240, %if.else.i.i226.emit_a32_alu_i.exit_crit_edge
  %826 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %ctx, align 4
  %aux120.i = getelementptr inbounds %struct.bpf_prog, ptr %827, i32 0, i32 10
  %828 = ptrtoint ptr %aux120.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %aux120.i, align 4
  %verifier_zext121.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %829, i32 0, i32 21
  %830 = ptrtoint ptr %verifier_zext121.i to i32
  call void @__asan_load1_noabort(i32 %830)
  %831 = load i8, ptr %verifier_zext121.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %831)
  %tobool122.not.i = icmp eq i8 %831, 0
  br i1 %tobool122.not.i, label %if.then123.i, label %emit_a32_alu_i.exit.sw.epilog517.i_crit_edge

emit_a32_alu_i.exit.sw.epilog517.i_crit_edge:     ; preds = %emit_a32_alu_i.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then123.i:                                     ; preds = %emit_a32_alu_i.exit
  %832 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %832)
  %833 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %833)
  %cmp.i.i195 = icmp slt i8 %833, 0
  %834 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i884 = icmp eq ptr %835, null
  br i1 %cmp.i.i195, label %if.then.i.i198, label %if.else.i206

if.then.i.i198:                                   ; preds = %if.then123.i
  %836 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i884, label %emit_mov_i.exit891.thread, label %emit_mov_i.exit891

emit_mov_i.exit891.thread:                        ; preds = %if.then.i.i198
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i890978 = add i32 %837, 1
  %838 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %inc.i.i.i.i890978, ptr %idx.i1228.i, align 4
  br label %arm_bpf_put_reg32.exit.i205

emit_mov_i.exit891:                               ; preds = %if.then.i.i198
  %arrayidx.i.i.i.i888 = getelementptr i32, ptr %835, i32 %837
  %839 = ptrtoint ptr %arrayidx.i.i.i.i888 to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 6332643, ptr %arrayidx.i.i.i.i888, align 4
  %840 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %.pr977 = load ptr, ptr %target.i1226.i, align 4
  %841 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i890 = add i32 %842, 1
  store i32 %inc.i.i.i.i890, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i197 = icmp eq ptr %.pr977, null
  br i1 %cmp.not.i.i.i.i197, label %emit_mov_i.exit891.arm_bpf_put_reg32.exit.i205_crit_edge, label %if.end10.sink.split.sink.split.i.i202

emit_mov_i.exit891.arm_bpf_put_reg32.exit.i205_crit_edge: ; preds = %emit_mov_i.exit891
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i205

if.end10.sink.split.sink.split.i.i202:            ; preds = %emit_mov_i.exit891
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i199 = sext i8 %833 to i32
  %843 = sub nsw i32 0, %conv.i.i199
  %or.i.i.i.i200 = or i32 %843, -452239360
  %844 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i200) #14
  %arrayidx.i.i21.i.i201 = getelementptr i32, ptr %.pr977, i32 %inc.i.i.i.i890
  %845 = ptrtoint ptr %arrayidx.i.i21.i.i201 to i32
  call void @__asan_store4_noabort(i32 %845)
  store i32 %844, ptr %arrayidx.i.i21.i.i201, align 4
  br label %arm_bpf_put_reg32.exit.i205

arm_bpf_put_reg32.exit.i205:                      ; preds = %if.end10.sink.split.sink.split.i.i202, %emit_mov_i.exit891.arm_bpf_put_reg32.exit.i205_crit_edge, %emit_mov_i.exit891.thread
  %846 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i24.i.i204 = add i32 %847, 1
  store i32 %inc.i.i24.i.i204, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

if.else.i206:                                     ; preds = %if.then123.i
  br i1 %cmp.not.i.i.i884, label %if.else.i206.emit_mov_i.exit_crit_edge, label %if.then.i.i.i878

if.else.i206.emit_mov_i.exit_crit_edge:           ; preds = %if.else.i206
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_mov_i.exit

if.then.i.i.i878:                                 ; preds = %if.else.i206
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i876 = zext i8 %833 to i32
  %shl.i877 = shl nuw nsw i32 %conv.i876, 12
  %or.i.i165.i = or i32 %shl.i877, -476053504
  %848 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i) #14
  %849 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i880 = getelementptr i32, ptr %835, i32 %850
  %851 = ptrtoint ptr %arrayidx.i.i.i.i880 to i32
  call void @__asan_store4_noabort(i32 %851)
  store i32 %848, ptr %arrayidx.i.i.i.i880, align 4
  br label %emit_mov_i.exit

emit_mov_i.exit:                                  ; preds = %if.then.i.i.i878, %if.else.i206.emit_mov_i.exit_crit_edge
  %852 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i882 = add i32 %853, 1
  store i32 %inc.i.i.i.i882, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb126.i:                                       ; preds = %for.body
  %arrayidx.i.i149 = getelementptr i8, ptr %arrayidx.i, i32 1
  %854 = ptrtoint ptr %arrayidx.i.i149 to i32
  call void @__asan_load1_noabort(i32 %854)
  %855 = load i8, ptr %arrayidx.i.i149, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %855)
  %cmp.i.i.i150 = icmp slt i8 %855, 0
  br i1 %cmp.i.i.i150, label %if.then.i.i153, label %sw.bb126.i.arm_bpf_get_reg64.exit.i170_crit_edge

sw.bb126.i.arm_bpf_get_reg64.exit.i170_crit_edge: ; preds = %sw.bb126.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i170

if.then.i.i153:                                   ; preds = %sw.bb126.i
  %856 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i152 = icmp eq ptr %857, null
  br i1 %cmp.not.i.i.i.i152, label %if.then.i.i153.emit.exit.i.i165_crit_edge, label %if.then.i.i.i.i162

if.then.i.i153.emit.exit.i.i165_crit_edge:        ; preds = %if.then.i.i153
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i165

if.then.i.i.i.i162:                               ; preds = %if.then.i.i153
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i154 = sext i8 %855 to i32
  %858 = sub nsw i32 0, %conv.i.i154
  %conv9.i7.i.i155 = shl nuw nsw i32 %858, 4
  %and.i.i.i156 = and i32 %conv9.i7.i.i155, 3840
  %and13.i.i.i157 = and i32 %858, 15
  %or11.i.i.i158 = or i32 %and13.i.i.i157, %and.i.i.i156
  %or.i.i.i.i159 = or i32 %or11.i.i.i158, -515153712
  %859 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i159) #14
  %860 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i.i161 = getelementptr i32, ptr %857, i32 %861
  %862 = ptrtoint ptr %arrayidx.i.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %862)
  store i32 %859, ptr %arrayidx.i.i.i.i161, align 4
  br label %emit.exit.i.i165

emit.exit.i.i165:                                 ; preds = %if.then.i.i.i.i162, %if.then.i.i153.emit.exit.i.i165_crit_edge
  %863 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i164 = add i32 %864, 1
  store i32 %inc.i.i.i.i164, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i170

arm_bpf_get_reg64.exit.i170:                      ; preds = %emit.exit.i.i165, %sw.bb126.i.arm_bpf_get_reg64.exit.i170_crit_edge
  %reg.addr.0.i.i166 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i.i165 ], [ %arrayidx.i, %sw.bb126.i.arm_bpf_get_reg64.exit.i170_crit_edge ]
  %arrayidx.i167 = getelementptr i8, ptr %reg.addr.0.i.i166, i32 1
  %865 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i169 = icmp eq ptr %866, null
  br i1 %cmp.not.i.i.i169, label %emit.exit.thread.i171, label %emit.exit.i181

emit.exit.thread.i171:                            ; preds = %arm_bpf_get_reg64.exit.i170
  call void @__sanitizer_cov_trace_pc() #16
  %867 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i46.i = add i32 %868, 1
  store i32 %inc.i.i46.i, ptr %idx.i1228.i, align 4
  br label %emit.exit31.i

emit.exit.i181:                                   ; preds = %arm_bpf_get_reg64.exit.i170
  %869 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load1_noabort(i32 %869)
  %870 = load i8, ptr %arrayidx.i167, align 1
  %conv.i172 = sext i8 %870 to i32
  %shl.i173 = shl nsw i32 %conv.i172, 12
  %shl3.i = shl nsw i32 %conv.i172, 16
  %or.i174 = or i32 %shl.i173, %shl3.i
  %or.i.i.i175 = or i32 %or.i174, -495976448
  %871 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i175) #14
  %872 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i177 = getelementptr i32, ptr %866, i32 %873
  %874 = ptrtoint ptr %arrayidx.i.i.i177 to i32
  call void @__asan_store4_noabort(i32 %874)
  store i32 %871, ptr %arrayidx.i.i.i177, align 4
  %875 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %875)
  %.pr.i178 = load ptr, ptr %target.i1226.i, align 4
  %876 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i180 = add i32 %876, 1
  store i32 %inc.i.i.i180, ptr %idx.i1228.i, align 4
  %cmp.not.i.i24.i = icmp eq ptr %.pr.i178, null
  br i1 %cmp.not.i.i24.i, label %emit.exit.i181.emit.exit31.i_crit_edge, label %if.then.i.i28.i

emit.exit.i181.emit.exit31.i_crit_edge:           ; preds = %emit.exit.i181
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit31.i

if.then.i.i28.i:                                  ; preds = %emit.exit.i181
  call void @__sanitizer_cov_trace_pc() #16
  %877 = ptrtoint ptr %reg.addr.0.i.i166 to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %reg.addr.0.i.i166, align 1
  %conv7.i182 = sext i8 %878 to i32
  %shl8.i = shl nsw i32 %conv7.i182, 12
  %shl12.i = shl nsw i32 %conv7.i182, 16
  %or9.i = or i32 %shl8.i, %shl12.i
  %or.i.i25.i = or i32 %or9.i, -488636416
  %879 = tail call i32 @llvm.bswap.i32(i32 %or.i.i25.i) #14
  %arrayidx.i.i27.i = getelementptr i32, ptr %.pr.i178, i32 %inc.i.i.i180
  %880 = ptrtoint ptr %arrayidx.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %880)
  store i32 %879, ptr %arrayidx.i.i27.i, align 4
  br label %emit.exit31.i

emit.exit31.i:                                    ; preds = %if.then.i.i28.i, %emit.exit.i181.emit.exit31.i_crit_edge, %emit.exit.thread.i171
  %881 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i30.i = add i32 %882, 1
  store i32 %inc.i.i30.i, ptr %idx.i1228.i, align 4
  br i1 %cmp.i.i.i150, label %if.then.i36.i, label %if.else.i.i186

if.then.i36.i:                                    ; preds = %emit.exit31.i
  %883 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i35.i = icmp eq ptr %884, null
  br i1 %cmp.not.i.i.i35.i, label %if.then.i36.i.if.end32.sink.split.i.i_crit_edge, label %if.then.i.i.i43.i

if.then.i36.i.if.end32.sink.split.i.i_crit_edge:  ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i

if.then.i.i.i43.i:                                ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i37.i = sext i8 %855 to i32
  %885 = sub nsw i32 0, %conv.i37.i
  %conv9.i62.i.i = shl nuw nsw i32 %885, 4
  %and.i.i38.i = and i32 %conv9.i62.i.i, 3840
  %and13.i.i39.i = and i32 %885, 15
  %886 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load1_noabort(i32 %886)
  %887 = load i8, ptr %arrayidx.i167, align 1
  %conv.i.i.i183 = zext i8 %887 to i32
  %shl.i.i.i184 = shl nuw nsw i32 %conv.i.i.i183, 12
  %or11.i.i40.i = or i32 %and13.i.i39.i, %and.i.i38.i
  %or14.i.i41.i = or i32 %shl.i.i.i184, %or11.i.i40.i
  %or.i.i.i42.i = or i32 %or14.i.i41.i, -515178256
  br label %if.end32.sink.split.sink.split.i.i

if.else.i.i186:                                   ; preds = %emit.exit31.i
  %888 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load1_noabort(i32 %888)
  %889 = load i8, ptr %arrayidx.i167, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %855, i8 %889)
  %cmp.not.i.i185 = icmp eq i8 %855, %889
  br i1 %cmp.not.i.i185, label %if.else.i.i186.if.end.i.i190_crit_edge, label %if.then9.i.i

if.else.i.i186.if.end.i.i190_crit_edge:           ; preds = %if.else.i.i186
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i190

if.then9.i.i:                                     ; preds = %if.else.i.i186
  %890 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i45.i.i = icmp eq ptr %891, null
  br i1 %cmp.not.i.i45.i.i, label %if.then9.i.i.emit.exit52.i.i_crit_edge, label %if.then.i.i49.i.i

if.then9.i.i.emit.exit52.i.i_crit_edge:           ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i.i

if.then.i.i49.i.i:                                ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i.i = zext i8 %855 to i32
  %shl.i.i187 = shl nuw nsw i32 %conv563.i.i, 12
  %conv7.i.i188 = sext i8 %889 to i32
  %or.i.i189 = or i32 %shl.i.i187, %conv7.i.i188
  %or.i.i46.i.i = or i32 %or.i.i189, -509607936
  %892 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i.i) #14
  %arrayidx.i.i48.i.i = getelementptr i32, ptr %891, i32 %inc.i.i30.i
  %893 = ptrtoint ptr %arrayidx.i.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %893)
  store i32 %892, ptr %arrayidx.i.i48.i.i, align 4
  br label %emit.exit52.i.i

emit.exit52.i.i:                                  ; preds = %if.then.i.i49.i.i, %if.then9.i.i.emit.exit52.i.i_crit_edge
  %894 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i51.i.i = add i32 %895, 1
  store i32 %inc.i.i51.i.i, ptr %idx.i1228.i, align 4
  br label %if.end.i.i190

if.end.i.i190:                                    ; preds = %emit.exit52.i.i, %if.else.i.i186.if.end.i.i190_crit_edge
  %896 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %896)
  %897 = load i8, ptr %arrayidx.i, align 1
  %898 = ptrtoint ptr %reg.addr.0.i.i166 to i32
  call void @__asan_load1_noabort(i32 %898)
  %899 = load i8, ptr %reg.addr.0.i.i166, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %897, i8 %899)
  %cmp20.not.i.i = icmp eq i8 %897, %899
  br i1 %cmp20.not.i.i, label %if.end.i.i190.sw.epilog517.i_crit_edge, label %if.then22.i.i

if.end.i.i190.sw.epilog517.i_crit_edge:           ; preds = %if.end.i.i190
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then22.i.i:                                    ; preds = %if.end.i.i190
  %900 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i54.i.i = icmp eq ptr %901, null
  br i1 %cmp.not.i.i54.i.i, label %if.then22.i.i.if.end32.sink.split.i.i_crit_edge, label %if.then.i.i58.i.i

if.then22.i.i.if.end32.sink.split.i.i_crit_edge:  ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i

if.then.i.i58.i.i:                                ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i.i191 = sext i8 %897 to i32
  %shl25.i.i = shl nsw i32 %conv17.i.i191, 12
  %conv19.i.i = sext i8 %899 to i32
  %or26.i.i192 = or i32 %shl25.i.i, %conv19.i.i
  %or.i.i55.i.i = or i32 %or26.i.i192, -509607936
  br label %if.end32.sink.split.sink.split.i.i

if.end32.sink.split.sink.split.i.i:               ; preds = %if.then.i.i58.i.i, %if.then.i.i.i43.i
  %or.i.i55.sink.i.i = phi i32 [ %or.i.i55.i.i, %if.then.i.i58.i.i ], [ %or.i.i.i42.i, %if.then.i.i.i43.i ]
  %.sink65.i.i = phi ptr [ %901, %if.then.i.i58.i.i ], [ %884, %if.then.i.i.i43.i ]
  %902 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i.i) #14
  %903 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i57.i.i193 = getelementptr i32, ptr %.sink65.i.i, i32 %904
  %905 = ptrtoint ptr %arrayidx.i.i57.i.i193 to i32
  call void @__asan_store4_noabort(i32 %905)
  store i32 %902, ptr %arrayidx.i.i57.i.i193, align 4
  br label %if.end32.sink.split.i.i

if.end32.sink.split.i.i:                          ; preds = %if.end32.sink.split.sink.split.i.i, %if.then22.i.i.if.end32.sink.split.i.i_crit_edge, %if.then.i36.i.if.end32.sink.split.i.i_crit_edge
  %906 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i60.i.i194 = add i32 %907, 1
  store i32 %inc.i.i60.i.i194, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb127.i:                                       ; preds = %for.body.sw.bb127.i_crit_edge, %for.body.sw.bb127.i_crit_edge1071
  %and129.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %switch820.not.i = icmp eq i32 %and129.i, 0
  br i1 %switch820.not.i, label %sw.bb131.i, label %sw.bb130.i

sw.bb130.i:                                       ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @emit_a32_mul_r64(ptr noundef %arrayidx.i, ptr noundef %arrayidx4.i, ptr noundef %ctx) #14
  br label %sw.epilog517.i

sw.bb131.i:                                       ; preds = %sw.bb127.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i864.i = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i865.i = icmp slt i32 %10, 0
  %908 = and i1 %cmp.i, %tobool2.not.i865.i
  %or.i866.i = or i64 %conv.i864.i, -4294967296
  %val64.0.i867.i = select i1 %908, i64 %or.i866.i, i64 %conv.i864.i
  tail call fastcc void @emit_a32_mov_i64(ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), i64 noundef %val64.0.i867.i, ptr noundef %ctx) #14
  tail call fastcc void @emit_a32_mul_r64(ptr noundef %arrayidx.i, ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), ptr noundef %ctx) #14
  br label %sw.epilog517.i

sw.bb134.i:                                       ; preds = %for.body.sw.bb134.i_crit_edge, %for.body.sw.bb134.i_crit_edge1072
  %arrayidx.i131 = getelementptr i8, ptr %arrayidx.i, i32 1
  %909 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load1_noabort(i32 %909)
  %910 = load i8, ptr %arrayidx.i131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %910)
  %cmp.i.i132 = icmp slt i8 %910, 0
  br i1 %cmp.i.i132, label %if.then.i135, label %sw.bb134.i.arm_bpf_get_reg64.exit_crit_edge

sw.bb134.i.arm_bpf_get_reg64.exit_crit_edge:      ; preds = %sw.bb134.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit

if.then.i135:                                     ; preds = %sw.bb134.i
  %911 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i134 = icmp eq ptr %912, null
  br i1 %cmp.not.i.i.i134, label %if.then.i135.emit.exit.i147_crit_edge, label %if.then.i.i.i144

if.then.i135.emit.exit.i147_crit_edge:            ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i147

if.then.i.i.i144:                                 ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i136 = sext i8 %910 to i32
  %913 = sub nsw i32 0, %conv.i136
  %conv9.i7.i = shl nuw nsw i32 %913, 4
  %and.i.i137 = and i32 %conv9.i7.i, 3840
  %and13.i.i138 = and i32 %913, 15
  %or11.i.i139 = or i32 %and13.i.i138, %and.i.i137
  %or.i.i.i141 = or i32 %or11.i.i139, -515153712
  %914 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i141) #14
  %915 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i143 = getelementptr i32, ptr %912, i32 %916
  %917 = ptrtoint ptr %arrayidx.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %917)
  store i32 %914, ptr %arrayidx.i.i.i143, align 4
  br label %emit.exit.i147

emit.exit.i147:                                   ; preds = %if.then.i.i.i144, %if.then.i135.emit.exit.i147_crit_edge
  %918 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i146 = add i32 %919, 1
  store i32 %inc.i.i.i146, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit

arm_bpf_get_reg64.exit:                           ; preds = %emit.exit.i147, %sw.bb134.i.arm_bpf_get_reg64.exit_crit_edge
  %reg.addr.0.i = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i147 ], [ %arrayidx.i, %sw.bb134.i.arm_bpf_get_reg64.exit_crit_edge ]
  %and137.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %cmp138.i = icmp eq i32 %and137.i, 0
  br i1 %cmp138.i, label %emit_bswap_uxt.i, label %if.end141.i

if.end141.i:                                      ; preds = %arm_bpf_get_reg64.exit
  %920 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %920, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %10, label %if.end141.i.exit.i_crit_edge [
    i32 16, label %sw.bb142.i
    i32 32, label %sw.bb145.i
    i32 64, label %sw.bb148.i
  ]

if.end141.i.exit.i_crit_edge:                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.i

sw.bb142.i:                                       ; preds = %if.end141.i
  %921 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i869.i = icmp eq ptr %922, null
  br i1 %cmp.not.i.i.i869.i, label %sw.bb142.i.emit_bswap_uxt.thread.i_crit_edge, label %if.then.i.i.i876.i

sw.bb142.i.emit_bswap_uxt.thread.i_crit_edge:     ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_bswap_uxt.thread.i

if.then.i.i.i876.i:                               ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx143.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %923 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %923)
  %924 = load i8, ptr %arrayidx143.i, align 1
  %conv.i870.i = zext i8 %924 to i32
  %shl.i871.i = shl nuw nsw i32 %conv.i870.i, 12
  %or.i872.i = or i32 %shl.i871.i, %conv.i870.i
  %or.i.i.i873.i = or i32 %or.i872.i, -423686224
  %925 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i873.i) #14
  %926 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i875.i = getelementptr i32, ptr %922, i32 %927
  %928 = ptrtoint ptr %arrayidx.i.i.i875.i to i32
  call void @__asan_store4_noabort(i32 %928)
  store i32 %925, ptr %arrayidx.i.i.i875.i, align 4
  br label %emit_bswap_uxt.thread.i

emit_bswap_uxt.thread.i:                          ; preds = %if.then.i.i.i876.i, %sw.bb142.i.emit_bswap_uxt.thread.i_crit_edge
  %929 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i878.i = add i32 %930, 1
  store i32 %inc.i.i.i878.i, ptr %idx.i1228.i, align 4
  br label %sw.bb157.i

sw.bb145.i:                                       ; preds = %if.end141.i
  %931 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i881.i = icmp eq ptr %932, null
  br i1 %cmp.not.i.i.i881.i, label %sw.bb145.i.emit_bswap_uxt.thread1252.i_crit_edge, label %if.then.i.i.i889.i

sw.bb145.i.emit_bswap_uxt.thread1252.i_crit_edge: ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_bswap_uxt.thread1252.i

if.then.i.i.i889.i:                               ; preds = %sw.bb145.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx146.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %933 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load1_noabort(i32 %933)
  %934 = load i8, ptr %arrayidx146.i, align 1
  %conv.i882.i = zext i8 %934 to i32
  %shl.i883.i = shl nuw nsw i32 %conv.i882.i, 12
  %or.i885.i = or i32 %shl.i883.i, %conv.i882.i
  %or.i.i.i886.i = or i32 %or.i885.i, -423686352
  %935 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i886.i) #14
  %936 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i888.i = getelementptr i32, ptr %932, i32 %937
  %938 = ptrtoint ptr %arrayidx.i.i.i888.i to i32
  call void @__asan_store4_noabort(i32 %938)
  store i32 %935, ptr %arrayidx.i.i.i888.i, align 4
  br label %emit_bswap_uxt.thread1252.i

emit_bswap_uxt.thread1252.i:                      ; preds = %if.then.i.i.i889.i, %sw.bb145.i.emit_bswap_uxt.thread1252.i_crit_edge
  %939 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i891.i = add i32 %940, 1
  store i32 %inc.i.i.i891.i, ptr %idx.i1228.i, align 4
  br label %sw.bb182.i

sw.bb148.i:                                       ; preds = %if.end141.i
  %941 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i894.i = icmp eq ptr %942, null
  br i1 %cmp.not.i.i.i894.i, label %emit_rev32.exit904.thread.i, label %emit_rev32.exit904.i

emit_rev32.exit904.thread.i:                      ; preds = %sw.bb148.i
  call void @__sanitizer_cov_trace_pc() #16
  %943 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i9021249.i = add i32 %944, 1
  store i32 %inc.i.i.i9021249.i, ptr %idx.i1228.i, align 4
  br label %emit_rev32.exit918.i

emit_rev32.exit904.i:                             ; preds = %sw.bb148.i
  %arrayidx149.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %945 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %945)
  %946 = load i8, ptr %arrayidx149.i, align 1
  %conv1.i895.i = zext i8 %946 to i32
  %or.i.i.i897.i = or i32 %conv1.i895.i, -423629008
  %947 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i897.i) #14
  %948 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i899.i = getelementptr i32, ptr %942, i32 %949
  %950 = ptrtoint ptr %arrayidx.i.i.i899.i to i32
  call void @__asan_store4_noabort(i32 %950)
  store i32 %947, ptr %arrayidx.i.i.i899.i, align 4
  %951 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %.pr.i = load ptr, ptr %target.i1226.i, align 4
  %952 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i902.i = add i32 %952, 1
  store i32 %inc.i.i.i902.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i906.i = icmp eq ptr %.pr.i, null
  br i1 %cmp.not.i.i.i906.i, label %emit_rev32.exit918.thread.i, label %if.then.i.i.i914.i

emit_rev32.exit918.thread.i:                      ; preds = %emit_rev32.exit904.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i9161283.i = add i32 %952, 2
  %953 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %953)
  store i32 %inc.i.i.i9161283.i, ptr %idx.i1228.i, align 4
  br label %exit.sink.split.i

if.then.i.i.i914.i:                               ; preds = %emit_rev32.exit904.i
  call void @__sanitizer_cov_trace_pc() #16
  %954 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %954)
  %955 = load i8, ptr %reg.addr.0.i, align 1
  %956 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %956)
  %957 = load i8, ptr %arrayidx149.i, align 1
  %conv.i907.i = zext i8 %957 to i32
  %shl.i908.i = shl nuw nsw i32 %conv.i907.i, 12
  %conv1.i909.i = zext i8 %955 to i32
  %or.i910.i = or i32 %shl.i908.i, %conv1.i909.i
  %or.i.i.i911.i = or i32 %or.i910.i, -423686352
  %958 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i911.i) #14
  %arrayidx.i.i.i913.i = getelementptr i32, ptr %.pr.i, i32 %inc.i.i.i902.i
  %959 = ptrtoint ptr %arrayidx.i.i.i913.i to i32
  call void @__asan_store4_noabort(i32 %959)
  store i32 %958, ptr %arrayidx.i.i.i913.i, align 4
  br label %emit_rev32.exit918.i

emit_rev32.exit918.i:                             ; preds = %if.then.i.i.i914.i, %emit_rev32.exit904.thread.i
  %960 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %960)
  %.pr1281.i = load ptr, ptr %target.i1226.i, align 4
  %961 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i916.i = add i32 %962, 1
  store i32 %inc.i.i.i916.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %.pr1281.i, null
  br i1 %cmp.not.i.i.i, label %emit_rev32.exit918.i.exit.sink.split.i_crit_edge, label %if.then.i.i.i

emit_rev32.exit918.i.exit.sink.split.i_crit_edge: ; preds = %emit_rev32.exit918.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.sink.split.i

if.then.i.i.i:                                    ; preds = %emit_rev32.exit918.i
  call void @__sanitizer_cov_trace_pc() #16
  %963 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %963)
  %964 = load i8, ptr %reg.addr.0.i, align 1
  %conv153.i = sext i8 %964 to i32
  %shl.i = shl nsw i32 %conv153.i, 12
  %or.i.i.i = or i32 %shl.i, -509607922
  %965 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #14
  %arrayidx.i.i.i = getelementptr i32, ptr %.pr1281.i, i32 %inc.i.i.i916.i
  %966 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %966)
  store i32 %965, ptr %arrayidx.i.i.i, align 4
  br label %exit.sink.split.i

emit_bswap_uxt.i:                                 ; preds = %arm_bpf_get_reg64.exit
  %967 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %967, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %10, label %emit_bswap_uxt.i.exit.i_crit_edge [
    i32 16, label %emit_bswap_uxt.i.sw.bb157.i_crit_edge
    i32 32, label %emit_bswap_uxt.i.sw.bb182.i_crit_edge
  ]

emit_bswap_uxt.i.sw.bb182.i_crit_edge:            ; preds = %emit_bswap_uxt.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb182.i

emit_bswap_uxt.i.sw.bb157.i_crit_edge:            ; preds = %emit_bswap_uxt.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb157.i

emit_bswap_uxt.i.exit.i_crit_edge:                ; preds = %emit_bswap_uxt.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.i

sw.bb157.i:                                       ; preds = %emit_bswap_uxt.i.sw.bb157.i_crit_edge, %emit_bswap_uxt.thread.i
  %968 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i920.i = icmp eq ptr %969, null
  br i1 %cmp.not.i.i920.i, label %sw.bb157.i.emit.exit927.i_crit_edge, label %if.then.i.i924.i

sw.bb157.i.emit.exit927.i_crit_edge:              ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit927.i

if.then.i.i924.i:                                 ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx158.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %970 = ptrtoint ptr %arrayidx158.i to i32
  call void @__asan_load1_noabort(i32 %970)
  %971 = load i8, ptr %arrayidx158.i, align 1
  %conv159.i = sext i8 %971 to i32
  %shl160.i = shl nsw i32 %conv159.i, 12
  %or161.i = or i32 %shl160.i, %conv159.i
  %or.i.i921.i = or i32 %or161.i, -419495824
  %972 = tail call i32 @llvm.bswap.i32(i32 %or.i.i921.i) #14
  %973 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i923.i = getelementptr i32, ptr %969, i32 %974
  %975 = ptrtoint ptr %arrayidx.i.i923.i to i32
  call void @__asan_store4_noabort(i32 %975)
  store i32 %972, ptr %arrayidx.i.i923.i, align 4
  br label %emit.exit927.i

emit.exit927.i:                                   ; preds = %if.then.i.i924.i, %sw.bb157.i.emit.exit927.i_crit_edge
  %976 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i926.i = add i32 %977, 1
  store i32 %inc.i.i926.i, ptr %idx.i1228.i, align 4
  %978 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %ctx, align 4
  %aux166.i = getelementptr inbounds %struct.bpf_prog, ptr %979, i32 0, i32 10
  %980 = ptrtoint ptr %aux166.i to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %aux166.i, align 4
  %verifier_zext167.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %981, i32 0, i32 21
  %982 = ptrtoint ptr %verifier_zext167.i to i32
  call void @__asan_load1_noabort(i32 %982)
  %983 = load i8, ptr %verifier_zext167.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %983)
  %tobool168.not.i = icmp eq i8 %983, 0
  br i1 %tobool168.not.i, label %if.then169.i, label %emit.exit927.i.exit.i_crit_edge

emit.exit927.i.exit.i_crit_edge:                  ; preds = %emit.exit927.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.i

if.then169.i:                                     ; preds = %emit.exit927.i
  %984 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i929.i = icmp eq ptr %985, null
  br i1 %cmp.not.i.i929.i, label %if.then169.i.exit.sink.split.i_crit_edge, label %if.then.i.i933.i

if.then169.i.exit.sink.split.i_crit_edge:         ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.sink.split.i

if.then.i.i933.i:                                 ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #16
  %986 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %986)
  %987 = load i8, ptr %reg.addr.0.i, align 1
  %conv171.i = sext i8 %987 to i32
  %shl172.i = shl nsw i32 %conv171.i, 12
  %shl176.i = shl nsw i32 %conv171.i, 16
  %or173.i = or i32 %shl176.i, %conv171.i
  %or177.i = or i32 %or173.i, %shl172.i
  %or.i.i930.i = or i32 %or177.i, -534773760
  %988 = tail call i32 @llvm.bswap.i32(i32 %or.i.i930.i) #14
  %arrayidx.i.i932.i = getelementptr i32, ptr %985, i32 %inc.i.i926.i
  %989 = ptrtoint ptr %arrayidx.i.i932.i to i32
  call void @__asan_store4_noabort(i32 %989)
  store i32 %988, ptr %arrayidx.i.i932.i, align 4
  br label %exit.sink.split.i

sw.bb182.i:                                       ; preds = %emit_bswap_uxt.i.sw.bb182.i_crit_edge, %emit_bswap_uxt.thread1252.i
  %990 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %ctx, align 4
  %aux184.i = getelementptr inbounds %struct.bpf_prog, ptr %991, i32 0, i32 10
  %992 = ptrtoint ptr %aux184.i to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %aux184.i, align 4
  %verifier_zext185.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %993, i32 0, i32 21
  %994 = ptrtoint ptr %verifier_zext185.i to i32
  call void @__asan_load1_noabort(i32 %994)
  %995 = load i8, ptr %verifier_zext185.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %995)
  %tobool186.not.i = icmp eq i8 %995, 0
  br i1 %tobool186.not.i, label %if.then187.i, label %sw.bb182.i.exit.i_crit_edge

sw.bb182.i.exit.i_crit_edge:                      ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.i

if.then187.i:                                     ; preds = %sw.bb182.i
  %996 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i938.i = icmp eq ptr %997, null
  br i1 %cmp.not.i.i938.i, label %if.then187.i.exit.sink.split.i_crit_edge, label %if.then.i.i942.i

if.then187.i.exit.sink.split.i_crit_edge:         ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit.sink.split.i

if.then.i.i942.i:                                 ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #16
  %998 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %998)
  %999 = load i8, ptr %reg.addr.0.i, align 1
  %conv189.i = sext i8 %999 to i32
  %shl190.i = shl nsw i32 %conv189.i, 12
  %shl194.i = shl nsw i32 %conv189.i, 16
  %or191.i = or i32 %shl194.i, %conv189.i
  %or195.i = or i32 %or191.i, %shl190.i
  %or.i.i939.i = or i32 %or195.i, -534773760
  %1000 = tail call i32 @llvm.bswap.i32(i32 %or.i.i939.i) #14
  %1001 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i941.i = getelementptr i32, ptr %997, i32 %1002
  %1003 = ptrtoint ptr %arrayidx.i.i941.i to i32
  call void @__asan_store4_noabort(i32 %1003)
  store i32 %1000, ptr %arrayidx.i.i941.i, align 4
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %if.then.i.i942.i, %if.then187.i.exit.sink.split.i_crit_edge, %if.then.i.i933.i, %if.then169.i.exit.sink.split.i_crit_edge, %if.then.i.i.i, %emit_rev32.exit918.i.exit.sink.split.i_crit_edge, %emit_rev32.exit918.thread.i
  %1004 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i935.i = add i32 %1005, 1
  store i32 %inc.i.i935.i, ptr %idx.i1228.i, align 4
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %sw.bb182.i.exit.i_crit_edge, %emit.exit927.i.exit.i_crit_edge, %emit_bswap_uxt.i.exit.i_crit_edge, %if.end141.i.exit.i_crit_edge
  br i1 %cmp.i.i132, label %if.then.i120, label %if.else.i

if.then.i120:                                     ; preds = %exit.i
  %1006 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i119 = icmp eq ptr %1007, null
  br i1 %cmp.not.i.i.i119, label %if.then.i120.if.end32.sink.split.i_crit_edge, label %if.then.i.i.i127

if.then.i120.if.end32.sink.split.i_crit_edge:     ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i

if.then.i.i.i127:                                 ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i121 = sext i8 %910 to i32
  %1008 = sub nsw i32 0, %conv.i121
  %conv9.i62.i = shl nuw nsw i32 %1008, 4
  %and.i.i122 = and i32 %conv9.i62.i, 3840
  %and13.i.i = and i32 %1008, 15
  %arrayidx1.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %1009 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %1009)
  %1010 = load i8, ptr %arrayidx1.i, align 1
  %conv.i.i123 = zext i8 %1010 to i32
  %shl.i.i124 = shl nuw nsw i32 %conv.i.i123, 12
  %or11.i.i125 = or i32 %and13.i.i, %and.i.i122
  %or14.i.i = or i32 %shl.i.i124, %or11.i.i125
  %or.i.i.i126 = or i32 %or14.i.i, -515178256
  br label %if.end32.sink.split.sink.split.i

if.else.i:                                        ; preds = %exit.i
  %arrayidx6.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %1011 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %1011)
  %1012 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %910, i8 %1012)
  %cmp.not.i = icmp eq i8 %910, %1012
  br i1 %cmp.not.i, label %if.else.i.if.end.i129_crit_edge, label %if.then9.i

if.else.i.if.end.i129_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i129

if.then9.i:                                       ; preds = %if.else.i
  %1013 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i45.i = icmp eq ptr %1014, null
  br i1 %cmp.not.i.i45.i, label %if.then9.i.emit.exit52.i_crit_edge, label %if.then.i.i49.i

if.then9.i.emit.exit52.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i

if.then.i.i49.i:                                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i = zext i8 %910 to i32
  %shl.i128 = shl nuw nsw i32 %conv563.i, 12
  %conv7.i = sext i8 %1012 to i32
  %or.i = or i32 %shl.i128, %conv7.i
  %or.i.i46.i = or i32 %or.i, -509607936
  %1015 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i) #14
  %1016 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i48.i = getelementptr i32, ptr %1014, i32 %1017
  %1018 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %1018)
  store i32 %1015, ptr %arrayidx.i.i48.i, align 4
  br label %emit.exit52.i

emit.exit52.i:                                    ; preds = %if.then.i.i49.i, %if.then9.i.emit.exit52.i_crit_edge
  %1019 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i51.i = add i32 %1020, 1
  store i32 %inc.i.i51.i, ptr %idx.i1228.i, align 4
  br label %if.end.i129

if.end.i129:                                      ; preds = %emit.exit52.i, %if.else.i.if.end.i129_crit_edge
  %1021 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1021)
  %1022 = load i8, ptr %arrayidx.i, align 1
  %1023 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %1023)
  %1024 = load i8, ptr %reg.addr.0.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1022, i8 %1024)
  %cmp20.not.i = icmp eq i8 %1022, %1024
  br i1 %cmp20.not.i, label %if.end.i129.sw.epilog517.i_crit_edge, label %if.then22.i

if.end.i129.sw.epilog517.i_crit_edge:             ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then22.i:                                      ; preds = %if.end.i129
  %1025 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i54.i = icmp eq ptr %1026, null
  br i1 %cmp.not.i.i54.i, label %if.then22.i.if.end32.sink.split.i_crit_edge, label %if.then.i.i58.i

if.then22.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i

if.then.i.i58.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i = sext i8 %1022 to i32
  %shl25.i = shl nsw i32 %conv17.i, 12
  %conv19.i = sext i8 %1024 to i32
  %or26.i = or i32 %shl25.i, %conv19.i
  %or.i.i55.i = or i32 %or26.i, -509607936
  br label %if.end32.sink.split.sink.split.i

if.end32.sink.split.sink.split.i:                 ; preds = %if.then.i.i58.i, %if.then.i.i.i127
  %or.i.i55.sink.i = phi i32 [ %or.i.i55.i, %if.then.i.i58.i ], [ %or.i.i.i126, %if.then.i.i.i127 ]
  %.sink65.i = phi ptr [ %1026, %if.then.i.i58.i ], [ %1007, %if.then.i.i.i127 ]
  %1027 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i) #14
  %1028 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i57.i = getelementptr i32, ptr %.sink65.i, i32 %1029
  %1030 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %1030)
  store i32 %1027, ptr %arrayidx.i.i57.i, align 4
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.end32.sink.split.sink.split.i, %if.then22.i.if.end32.sink.split.i_crit_edge, %if.then.i120.if.end32.sink.split.i_crit_edge
  %1031 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i60.i = add i32 %1032, 1
  store i32 %inc.i.i60.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb208.i:                                       ; preds = %for.body.sw.bb208.i_crit_edge, %for.body.sw.bb208.i_crit_edge1073, %for.body.sw.bb208.i_crit_edge1074, %for.body.sw.bb208.i_crit_edge1075
  %arrayidx209.i = getelementptr i8, ptr %arrayidx4.i, i32 1
  %1033 = ptrtoint ptr %arrayidx209.i to i32
  call void @__asan_load1_noabort(i32 %1033)
  %1034 = load i8, ptr %arrayidx209.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1034)
  %cmp.i.i946.i = icmp slt i8 %1034, 0
  br i1 %cmp.i.i946.i, label %if.then.i949.i, label %sw.bb208.i.arm_bpf_get_reg32.exit961.i_crit_edge

sw.bb208.i.arm_bpf_get_reg32.exit961.i_crit_edge: ; preds = %sw.bb208.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit961.i

if.then.i949.i:                                   ; preds = %sw.bb208.i
  %1035 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i948.i = icmp eq ptr %1036, null
  br i1 %cmp.not.i.i.i948.i, label %if.then.i949.i.emit.exit.i958.i_crit_edge, label %if.then.i.i.i955.i

if.then.i949.i.emit.exit.i958.i_crit_edge:        ; preds = %if.then.i949.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i958.i

if.then.i.i.i955.i:                               ; preds = %if.then.i949.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i950.i = sext i8 %1034 to i32
  %1037 = sub nsw i32 0, %conv.i950.i
  %or.i.i.i952.i = or i32 %1037, -451182592
  %1038 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i952.i) #14
  %1039 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i954.i = getelementptr i32, ptr %1036, i32 %1040
  %1041 = ptrtoint ptr %arrayidx.i.i.i954.i to i32
  call void @__asan_store4_noabort(i32 %1041)
  store i32 %1038, ptr %arrayidx.i.i.i954.i, align 4
  br label %emit.exit.i958.i

emit.exit.i958.i:                                 ; preds = %if.then.i.i.i955.i, %if.then.i949.i.emit.exit.i958.i_crit_edge
  %1042 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i957.i = add i32 %1043, 1
  store i32 %inc.i.i.i957.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit961.i

arm_bpf_get_reg32.exit961.i:                      ; preds = %emit.exit.i958.i, %sw.bb208.i.arm_bpf_get_reg32.exit961.i_crit_edge
  %reg.addr.0.i959.i = phi i8 [ 8, %emit.exit.i958.i ], [ %1034, %sw.bb208.i.arm_bpf_get_reg32.exit961.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %1044 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %1044)
  %1045 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1045)
  %cmp.i.i962.i = icmp slt i8 %1045, 0
  %.dst.i.i = select i1 %cmp.i.i962.i, ptr getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), ptr %arrayidx.i
  %and213.i = lshr i8 %5, 3
  %1046 = and i8 %and213.i, 3
  %1047 = zext i8 %1046 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.build_body, i32 0, i32 %1047
  %1048 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1048)
  %switch.load = load i32, ptr %switch.gep, align 4
  %sub.i.i.i = sub nsw i32 0, %switch.load
  %conv4.i.i.i = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv4.i.i.i)
  %cmp.not.i.i964.i = icmp sle i32 %sub.i.i.i, %conv4.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %conv4.i.i.i)
  %cmp8.i.i.i = icmp sge i32 %switch.load, %conv4.i.i.i
  %spec.select.i.i.i = and i1 %cmp.not.i.i964.i, %cmp8.i.i.i
  br i1 %spec.select.i.i.i, label %if.else.i968.i, label %if.then.i967.i

if.then.i967.i:                                   ; preds = %arm_bpf_get_reg32.exit961.i
  tail call fastcc void @emit_mov_i(i8 noundef zeroext 7, i32 noundef %conv4.i.i.i, ptr noundef %ctx) #14
  %1049 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i966.i = icmp eq ptr %1050, null
  br i1 %cmp.not.i.i.i966.i, label %if.then.i967.i.if.end25.sink.split.i.i_crit_edge, label %if.then.i967.i.if.end25.sink.split.sink.split.i.i_crit_edge

if.then.i967.i.if.end25.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then.i967.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.sink.split.sink.split.i.i

if.then.i967.i.if.end25.sink.split.i.i_crit_edge: ; preds = %if.then.i967.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.sink.split.i.i

if.else.i968.i:                                   ; preds = %arm_bpf_get_reg32.exit961.i
  %arrayidx12.i.i = getelementptr i8, ptr %.dst.i.i, i32 1
  %1051 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %1051)
  %1052 = load i8, ptr %arrayidx12.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1052, i8 %reg.addr.0.i959.i)
  %cmp.i.i = icmp eq i8 %1052, %reg.addr.0.i959.i
  br i1 %cmp.i.i, label %if.then16.i.i, label %if.else.i968.i.if.end25.i.i_crit_edge

if.else.i968.i.if.end25.i.i_crit_edge:            ; preds = %if.else.i968.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.i.i

if.then16.i.i:                                    ; preds = %if.else.i968.i
  %1053 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i105.i.i = icmp eq ptr %1054, null
  br i1 %cmp.not.i.i105.i.i, label %if.then16.i.i.if.end25.sink.split.i.i_crit_edge, label %if.then16.i.i.if.end25.sink.split.sink.split.i.i_crit_edge

if.then16.i.i.if.end25.sink.split.sink.split.i.i_crit_edge: ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.sink.split.sink.split.i.i

if.then16.i.i.if.end25.sink.split.i.i_crit_edge:  ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25.sink.split.i.i

if.end25.sink.split.sink.split.i.i:               ; preds = %if.then16.i.i.if.end25.sink.split.sink.split.i.i_crit_edge, %if.then.i967.i.if.end25.sink.split.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ -527994880, %if.then.i967.i.if.end25.sink.split.sink.split.i.i_crit_edge ], [ -509579264, %if.then16.i.i.if.end25.sink.split.sink.split.i.i_crit_edge ]
  %.sink307.i.i = phi ptr [ %1050, %if.then.i967.i.if.end25.sink.split.sink.split.i.i_crit_edge ], [ %1054, %if.then16.i.i.if.end25.sink.split.sink.split.i.i_crit_edge ]
  %off.addr.0.ph.ph.i.i = phi i16 [ 0, %if.then.i967.i.if.end25.sink.split.sink.split.i.i_crit_edge ], [ %8, %if.then16.i.i.if.end25.sink.split.sink.split.i.i_crit_edge ]
  %conv14.i1279.i = zext i8 %reg.addr.0.i959.i to i32
  %or.i.i106.i.i = or i32 %.sink.i.i, %conv14.i1279.i
  %1055 = tail call i32 @llvm.bswap.i32(i32 %or.i.i106.i.i) #14
  %1056 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i108.i.i = getelementptr i32, ptr %.sink307.i.i, i32 %1057
  %1058 = ptrtoint ptr %arrayidx.i.i108.i.i to i32
  call void @__asan_store4_noabort(i32 %1058)
  store i32 %1055, ptr %arrayidx.i.i108.i.i, align 4
  br label %if.end25.sink.split.i.i

if.end25.sink.split.i.i:                          ; preds = %if.end25.sink.split.sink.split.i.i, %if.then16.i.i.if.end25.sink.split.i.i_crit_edge, %if.then.i967.i.if.end25.sink.split.i.i_crit_edge
  %off.addr.0.ph.i.i = phi i16 [ 0, %if.then.i967.i.if.end25.sink.split.i.i_crit_edge ], [ %8, %if.then16.i.i.if.end25.sink.split.i.i_crit_edge ], [ %off.addr.0.ph.ph.i.i, %if.end25.sink.split.sink.split.i.i ]
  %1059 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i111.i.i = add i32 %1060, 1
  store i32 %inc.i.i111.i.i, ptr %idx.i1228.i, align 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end25.sink.split.i.i, %if.else.i968.i.if.end25.i.i_crit_edge
  %off.addr.0.i.i = phi i16 [ %8, %if.else.i968.i.if.end25.i.i_crit_edge ], [ %off.addr.0.ph.i.i, %if.end25.sink.split.i.i ]
  %rm.0.i.i = phi i8 [ %reg.addr.0.i959.i, %if.else.i968.i.if.end25.i.i_crit_edge ], [ 7, %if.end25.sink.split.i.i ]
  %1061 = zext i32 %1047 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1061, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %1047, label %if.end25.i.unreachabledefault.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb32.i.i
    i32 0, label %sw.bb42.i.i
    i32 3, label %sw.bb52.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end25.i.i
  %1062 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i115.i.i = icmp eq ptr %1063, null
  br i1 %cmp.not.i.i115.i.i, label %sw.bb.i.i.emit.exit122.i.i_crit_edge, label %if.then.i.i119.i.i

sw.bb.i.i.emit.exit122.i.i_crit_edge:             ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit122.i.i

if.then.i.i119.i.i:                               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx27.i.i = getelementptr i8, ptr %.dst.i.i, i32 1
  %1064 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %1064)
  %1065 = load i8, ptr %arrayidx27.i.i, align 1
  %conv.i113.i.i = zext i8 %1065 to i32
  %shl.i.i970.i = shl nuw nsw i32 %conv.i113.i.i, 12
  %conv1.i.i.i = zext i8 %rm.0.i.i to i32
  %shl2.i.i.i = shl nuw nsw i32 %conv1.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0.i.i)
  %cmp16.i.i.i = icmp slt i16 %off.addr.0.i.i, 0
  %1066 = tail call i16 @llvm.abs.i16(i16 %off.addr.0.i.i, i1 false) #14
  %1067 = and i16 %1066, 4095
  %and.i.i.i = zext i16 %1067 to i32
  %or.i.i971.i = select i1 %cmp16.i.i.i, i32 -447741952, i32 -439353344
  %op.addr.0.i.i.i = or i32 %shl2.i.i.i, %or.i.i971.i
  %or10.i.i.i = or i32 %op.addr.0.i.i.i, %and.i.i.i
  %or.i.i116.i.i = or i32 %or10.i.i.i, %shl.i.i970.i
  %1068 = tail call i32 @llvm.bswap.i32(i32 %or.i.i116.i.i) #14
  %1069 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i118.i.i = getelementptr i32, ptr %1063, i32 %1070
  %1071 = ptrtoint ptr %arrayidx.i.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %1071)
  store i32 %1068, ptr %arrayidx.i.i118.i.i, align 4
  br label %emit.exit122.i.i

emit.exit122.i.i:                                 ; preds = %if.then.i.i119.i.i, %sw.bb.i.i.emit.exit122.i.i_crit_edge
  %1072 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i121.i.i = add i32 %1073, 1
  store i32 %inc.i.i121.i.i, ptr %idx.i1228.i, align 4
  %1074 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %ctx, align 4
  %aux.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1075, i32 0, i32 10
  %1076 = ptrtoint ptr %aux.i.i to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %aux.i.i, align 4
  %verifier_zext.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %1077, i32 0, i32 21
  %1078 = ptrtoint ptr %verifier_zext.i.i to i32
  call void @__asan_load1_noabort(i32 %1078)
  %1079 = load i8, ptr %verifier_zext.i.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1079)
  %tobool.not.i.i = icmp eq i8 %1079, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %emit.exit122.i.i.sw.epilog.i.i_crit_edge

emit.exit122.i.i.sw.epilog.i.i_crit_edge:         ; preds = %emit.exit122.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

if.then29.i.i:                                    ; preds = %emit.exit122.i.i
  %1080 = ptrtoint ptr %.dst.i.i to i32
  call void @__asan_load1_noabort(i32 %1080)
  %1081 = load i8, ptr %.dst.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1081)
  %cmp.i.i.i.i = icmp slt i8 %1081, 0
  %1082 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i244.i.i = icmp eq ptr %1083, null
  br i1 %cmp.i.i.i.i, label %if.then.i.i123.i.i, label %if.else.i.i.i

if.then.i.i123.i.i:                               ; preds = %if.then29.i.i
  br i1 %cmp.not.i.i.i244.i.i, label %emit_mov_i.exit251.thread.i.i, label %emit_mov_i.exit251.i.i

emit_mov_i.exit251.thread.i.i:                    ; preds = %if.then.i.i123.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i250292.i.i = add i32 %1073, 2
  %1084 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1084)
  store i32 %inc.i.i.i.i250292.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog.sink.split.i.i

emit_mov_i.exit251.i.i:                           ; preds = %if.then.i.i123.i.i
  %arrayidx.i.i.i.i248.i.i = getelementptr i32, ptr %1083, i32 %inc.i.i121.i.i
  %1085 = ptrtoint ptr %arrayidx.i.i.i.i248.i.i to i32
  call void @__asan_store4_noabort(i32 %1085)
  store i32 6332643, ptr %arrayidx.i.i.i.i248.i.i, align 4
  %1086 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %.pr.i972.i = load ptr, ptr %target.i1226.i, align 4
  %1087 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i250.i.i = add i32 %1088, 1
  store i32 %inc.i.i.i.i250.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i.i.i = icmp eq ptr %.pr.i972.i, null
  br i1 %cmp.not.i.i.i.i.i.i, label %emit_mov_i.exit251.i.i.sw.epilog.sink.split.i.i_crit_edge, label %if.end10.sink.split.sink.split.i.i.i.i

emit_mov_i.exit251.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %emit_mov_i.exit251.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

if.end10.sink.split.sink.split.i.i.i.i:           ; preds = %emit_mov_i.exit251.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i = sext i8 %1081 to i32
  %1089 = sub nsw i32 0, %conv.i.i.i.i
  %or.i.i.i.i.i.i = or i32 %1089, -452239360
  %1090 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i.i.i) #14
  %arrayidx.i.i21.i.i.i.i = getelementptr i32, ptr %.pr.i972.i, i32 %inc.i.i.i.i250.i.i
  %1091 = ptrtoint ptr %arrayidx.i.i21.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1091)
  store i32 %1090, ptr %arrayidx.i.i21.i.i.i.i, align 4
  br label %sw.epilog.sink.split.i.i

if.else.i.i.i:                                    ; preds = %if.then29.i.i
  br i1 %cmp.not.i.i.i244.i.i, label %if.else.i.i.i.sw.epilog.sink.split.i.i_crit_edge, label %if.then.i.i.i241.i.i

if.else.i.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

if.then.i.i.i241.i.i:                             ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i239.i.i = zext i8 %1081 to i32
  %shl.i240.i.i = shl nuw nsw i32 %conv.i239.i.i, 12
  %or.i.i165.i.i.i = or i32 %shl.i240.i.i, -476053504
  %1092 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i.i.i) #14
  %arrayidx.i.i.i.i.i.i = getelementptr i32, ptr %1083, i32 %inc.i.i121.i.i
  %1093 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1093)
  store i32 %1092, ptr %arrayidx.i.i.i.i.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.bb32.i.i:                                      ; preds = %if.end25.i.i
  %1094 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i134.i.i = icmp eq ptr %1095, null
  br i1 %cmp.not.i.i134.i.i, label %sw.bb32.i.i.emit.exit141.i.i_crit_edge, label %if.then.i.i138.i.i

sw.bb32.i.i.emit.exit141.i.i_crit_edge:           ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit141.i.i

if.then.i.i138.i.i:                               ; preds = %sw.bb32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %1096 = tail call i16 @llvm.abs.i16(i16 %off.addr.0.i.i, i1 false) #14
  %conv9.i.i.i = sext i16 %1096 to i32
  %and.i132.i.i = shl nsw i32 %conv9.i.i.i, 4
  %shl10.i.i.i = and i32 %and.i132.i.i, 3840
  %and13.i.i.i = and i32 %conv9.i.i.i, 15
  %arrayidx33.i.i = getelementptr i8, ptr %.dst.i.i, i32 1
  %1097 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %1097)
  %1098 = load i8, ptr %arrayidx33.i.i, align 1
  %conv.i124.i.i = zext i8 %1098 to i32
  %shl.i125.i.i = shl nuw nsw i32 %conv.i124.i.i, 12
  %conv1.i126.i.i = zext i8 %rm.0.i.i to i32
  %shl2.i127.i.i = shl nuw nsw i32 %conv1.i126.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0.i.i)
  %cmp20.i.i.i = icmp slt i16 %off.addr.0.i.i, 0
  %or.i128.i.i = select i1 %cmp20.i.i.i, i32 -514850640, i32 -506462032
  %op.addr.0.i131.i.i = or i32 %and13.i.i.i, %or.i128.i.i
  %or11.i.i.i = or i32 %op.addr.0.i131.i.i, %shl2.i127.i.i
  %or14.i.i.i = or i32 %or11.i.i.i, %shl10.i.i.i
  %or.i.i135.i.i = or i32 %or14.i.i.i, %shl.i125.i.i
  %1099 = tail call i32 @llvm.bswap.i32(i32 %or.i.i135.i.i) #14
  %1100 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i137.i.i = getelementptr i32, ptr %1095, i32 %1101
  %1102 = ptrtoint ptr %arrayidx.i.i137.i.i to i32
  call void @__asan_store4_noabort(i32 %1102)
  store i32 %1099, ptr %arrayidx.i.i137.i.i, align 4
  br label %emit.exit141.i.i

emit.exit141.i.i:                                 ; preds = %if.then.i.i138.i.i, %sw.bb32.i.i.emit.exit141.i.i_crit_edge
  %1103 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i140.i.i = add i32 %1104, 1
  store i32 %inc.i.i140.i.i, ptr %idx.i1228.i, align 4
  %1105 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load ptr, ptr %ctx, align 4
  %aux36.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1106, i32 0, i32 10
  %1107 = ptrtoint ptr %aux36.i.i to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %aux36.i.i, align 4
  %verifier_zext37.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %1108, i32 0, i32 21
  %1109 = ptrtoint ptr %verifier_zext37.i.i to i32
  call void @__asan_load1_noabort(i32 %1109)
  %1110 = load i8, ptr %verifier_zext37.i.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1110)
  %tobool38.not.i.i = icmp eq i8 %1110, 0
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %emit.exit141.i.i.sw.epilog.i.i_crit_edge

emit.exit141.i.i.sw.epilog.i.i_crit_edge:         ; preds = %emit.exit141.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

if.then39.i.i:                                    ; preds = %emit.exit141.i.i
  %1111 = ptrtoint ptr %.dst.i.i to i32
  call void @__asan_load1_noabort(i32 %1111)
  %1112 = load i8, ptr %.dst.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1112)
  %cmp.i.i142.i.i = icmp slt i8 %1112, 0
  %1113 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i264.i.i = icmp eq ptr %1114, null
  br i1 %cmp.i.i142.i.i, label %if.then.i.i145.i.i, label %if.else.i154.i.i

if.then.i.i145.i.i:                               ; preds = %if.then39.i.i
  br i1 %cmp.not.i.i.i264.i.i, label %emit_mov_i.exit271.thread.i.i, label %emit_mov_i.exit271.i.i

emit_mov_i.exit271.thread.i.i:                    ; preds = %if.then.i.i145.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i270295.i.i = add i32 %1104, 2
  %1115 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1115)
  store i32 %inc.i.i.i.i270295.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog.sink.split.i.i

emit_mov_i.exit271.i.i:                           ; preds = %if.then.i.i145.i.i
  %arrayidx.i.i.i.i268.i.i = getelementptr i32, ptr %1114, i32 %inc.i.i140.i.i
  %1116 = ptrtoint ptr %arrayidx.i.i.i.i268.i.i to i32
  call void @__asan_store4_noabort(i32 %1116)
  store i32 6332643, ptr %arrayidx.i.i.i.i268.i.i, align 4
  %1117 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1117)
  %.pr294.i.i = load ptr, ptr %target.i1226.i, align 4
  %1118 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i270.i.i = add i32 %1119, 1
  store i32 %inc.i.i.i.i270.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i144.i.i = icmp eq ptr %.pr294.i.i, null
  br i1 %cmp.not.i.i.i.i144.i.i, label %emit_mov_i.exit271.i.i.sw.epilog.sink.split.i.i_crit_edge, label %if.end10.sink.split.sink.split.i.i150.i.i

emit_mov_i.exit271.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %emit_mov_i.exit271.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

if.end10.sink.split.sink.split.i.i150.i.i:        ; preds = %emit_mov_i.exit271.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i146.i.i = sext i8 %1112 to i32
  %1120 = sub nsw i32 0, %conv.i.i146.i.i
  %or.i.i.i.i147.i.i = or i32 %1120, -452239360
  %1121 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i147.i.i) #14
  %arrayidx.i.i21.i.i149.i.i = getelementptr i32, ptr %.pr294.i.i, i32 %inc.i.i.i.i270.i.i
  %1122 = ptrtoint ptr %arrayidx.i.i21.i.i149.i.i to i32
  call void @__asan_store4_noabort(i32 %1122)
  store i32 %1121, ptr %arrayidx.i.i21.i.i149.i.i, align 4
  br label %sw.epilog.sink.split.i.i

if.else.i154.i.i:                                 ; preds = %if.then39.i.i
  br i1 %cmp.not.i.i.i264.i.i, label %if.else.i154.i.i.sw.epilog.sink.split.i.i_crit_edge, label %if.then.i.i.i257.i.i

if.else.i154.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %if.else.i154.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

if.then.i.i.i257.i.i:                             ; preds = %if.else.i154.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i254.i.i = zext i8 %1112 to i32
  %shl.i255.i.i = shl nuw nsw i32 %conv.i254.i.i, 12
  %or.i.i165.i256.i.i = or i32 %shl.i255.i.i, -476053504
  %1123 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i256.i.i) #14
  %arrayidx.i.i.i.i259.i.i = getelementptr i32, ptr %1114, i32 %inc.i.i140.i.i
  %1124 = ptrtoint ptr %arrayidx.i.i.i.i259.i.i to i32
  call void @__asan_store4_noabort(i32 %1124)
  store i32 %1123, ptr %arrayidx.i.i.i.i259.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.bb42.i.i:                                      ; preds = %if.end25.i.i
  %1125 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i168.i.i = icmp eq ptr %1126, null
  br i1 %cmp.not.i.i168.i.i, label %sw.bb42.i.i.emit.exit175.i.i_crit_edge, label %if.then.i.i172.i.i

sw.bb42.i.i.emit.exit175.i.i_crit_edge:           ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit175.i.i

if.then.i.i172.i.i:                               ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx43.i.i = getelementptr i8, ptr %.dst.i.i, i32 1
  %1127 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %1127)
  %1128 = load i8, ptr %arrayidx43.i.i, align 1
  %conv.i156.i.i = zext i8 %1128 to i32
  %shl.i157.i.i = shl nuw nsw i32 %conv.i156.i.i, 12
  %conv1.i158.i.i = zext i8 %rm.0.i.i to i32
  %shl2.i159.i.i = shl nuw nsw i32 %conv1.i158.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0.i.i)
  %cmp16.i163.i.i = icmp slt i16 %off.addr.0.i.i, 0
  %1129 = tail call i16 @llvm.abs.i16(i16 %off.addr.0.i.i, i1 false) #14
  %1130 = and i16 %1129, 4095
  %and.i165.i.i = zext i16 %1130 to i32
  %or.i160.i.i = select i1 %cmp16.i163.i.i, i32 -451936256, i32 -443547648
  %op.addr.0.i164.i.i = or i32 %shl2.i159.i.i, %or.i160.i.i
  %or10.i166.i.i = or i32 %op.addr.0.i164.i.i, %and.i165.i.i
  %or.i.i169.i.i = or i32 %or10.i166.i.i, %shl.i157.i.i
  %1131 = tail call i32 @llvm.bswap.i32(i32 %or.i.i169.i.i) #14
  %1132 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i171.i.i = getelementptr i32, ptr %1126, i32 %1133
  %1134 = ptrtoint ptr %arrayidx.i.i171.i.i to i32
  call void @__asan_store4_noabort(i32 %1134)
  store i32 %1131, ptr %arrayidx.i.i171.i.i, align 4
  br label %emit.exit175.i.i

emit.exit175.i.i:                                 ; preds = %if.then.i.i172.i.i, %sw.bb42.i.i.emit.exit175.i.i_crit_edge
  %1135 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1135)
  %1136 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i174.i.i = add i32 %1136, 1
  store i32 %inc.i.i174.i.i, ptr %idx.i1228.i, align 4
  %1137 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1137)
  %1138 = load ptr, ptr %ctx, align 4
  %aux46.i.i = getelementptr inbounds %struct.bpf_prog, ptr %1138, i32 0, i32 10
  %1139 = ptrtoint ptr %aux46.i.i to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load ptr, ptr %aux46.i.i, align 4
  %verifier_zext47.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %1140, i32 0, i32 21
  %1141 = ptrtoint ptr %verifier_zext47.i.i to i32
  call void @__asan_load1_noabort(i32 %1141)
  %1142 = load i8, ptr %verifier_zext47.i.i, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1142)
  %tobool48.not.i.i = icmp eq i8 %1142, 0
  br i1 %tobool48.not.i.i, label %if.then49.i.i, label %emit.exit175.i.i.sw.epilog.i.i_crit_edge

emit.exit175.i.i.sw.epilog.i.i_crit_edge:         ; preds = %emit.exit175.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

if.then49.i.i:                                    ; preds = %emit.exit175.i.i
  %1143 = ptrtoint ptr %.dst.i.i to i32
  call void @__asan_load1_noabort(i32 %1143)
  %1144 = load i8, ptr %.dst.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1144)
  %cmp.i.i176.i.i = icmp slt i8 %1144, 0
  %1145 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i284.i.i = icmp eq ptr %1146, null
  br i1 %cmp.i.i176.i.i, label %if.then.i.i179.i.i, label %if.else.i188.i.i

if.then.i.i179.i.i:                               ; preds = %if.then49.i.i
  br i1 %cmp.not.i.i.i284.i.i, label %emit_mov_i.exit291.thread.i.i, label %emit_mov_i.exit291.i.i

emit_mov_i.exit291.thread.i.i:                    ; preds = %if.then.i.i179.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i290298.i.i = add i32 %1136, 2
  %1147 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1147)
  store i32 %inc.i.i.i.i290298.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog.sink.split.i.i

emit_mov_i.exit291.i.i:                           ; preds = %if.then.i.i179.i.i
  %arrayidx.i.i.i.i288.i.i = getelementptr i32, ptr %1146, i32 %inc.i.i174.i.i
  %1148 = ptrtoint ptr %arrayidx.i.i.i.i288.i.i to i32
  call void @__asan_store4_noabort(i32 %1148)
  store i32 6332643, ptr %arrayidx.i.i.i.i288.i.i, align 4
  %1149 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1149)
  %.pr297.i.i = load ptr, ptr %target.i1226.i, align 4
  %1150 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i290.i.i = add i32 %1151, 1
  store i32 %inc.i.i.i.i290.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i178.i.i = icmp eq ptr %.pr297.i.i, null
  br i1 %cmp.not.i.i.i.i178.i.i, label %emit_mov_i.exit291.i.i.sw.epilog.sink.split.i.i_crit_edge, label %if.end10.sink.split.sink.split.i.i184.i.i

emit_mov_i.exit291.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %emit_mov_i.exit291.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

if.end10.sink.split.sink.split.i.i184.i.i:        ; preds = %emit_mov_i.exit291.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i180.i.i = sext i8 %1144 to i32
  %1152 = sub nsw i32 0, %conv.i.i180.i.i
  %or.i.i.i.i181.i.i = or i32 %1152, -452239360
  %1153 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i181.i.i) #14
  %arrayidx.i.i21.i.i183.i.i = getelementptr i32, ptr %.pr297.i.i, i32 %inc.i.i.i.i290.i.i
  %1154 = ptrtoint ptr %arrayidx.i.i21.i.i183.i.i to i32
  call void @__asan_store4_noabort(i32 %1154)
  store i32 %1153, ptr %arrayidx.i.i21.i.i183.i.i, align 4
  br label %sw.epilog.sink.split.i.i

if.else.i188.i.i:                                 ; preds = %if.then49.i.i
  br i1 %cmp.not.i.i.i284.i.i, label %if.else.i188.i.i.sw.epilog.sink.split.i.i_crit_edge, label %if.then.i.i.i277.i.i

if.else.i188.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %if.else.i188.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

if.then.i.i.i277.i.i:                             ; preds = %if.else.i188.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i274.i.i = zext i8 %1144 to i32
  %shl.i275.i.i = shl nuw nsw i32 %conv.i274.i.i, 12
  %or.i.i165.i276.i.i = or i32 %shl.i275.i.i, -476053504
  %1155 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i276.i.i) #14
  %arrayidx.i.i.i.i279.i.i = getelementptr i32, ptr %1146, i32 %inc.i.i174.i.i
  %1156 = ptrtoint ptr %arrayidx.i.i.i.i279.i.i to i32
  call void @__asan_store4_noabort(i32 %1156)
  store i32 %1155, ptr %arrayidx.i.i.i.i279.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.bb52.i.i:                                      ; preds = %if.end25.i.i
  %conv1.i192.i.i = zext i8 %rm.0.i.i to i32
  %shl2.i193.i.i = shl nuw nsw i32 %conv1.i192.i.i, 16
  %1157 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i202.i.i = icmp eq ptr %1158, null
  br i1 %cmp.not.i.i202.i.i, label %emit.exit209.thread.i.i, label %emit.exit209.i.i

emit.exit209.thread.i.i:                          ; preds = %sw.bb52.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %1159 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i208302.i.i = add i32 %1160, 1
  store i32 %inc.i.i208302.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog.sink.split.i.i

emit.exit209.i.i:                                 ; preds = %sw.bb52.i.i
  %arrayidx53.i.i = getelementptr i8, ptr %.dst.i.i, i32 1
  %1161 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %1161)
  %1162 = load i8, ptr %arrayidx53.i.i, align 1
  %conv.i190.i.i = zext i8 %1162 to i32
  %shl.i191.i.i = shl nuw nsw i32 %conv.i190.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0.i.i)
  %cmp16.i197.i.i = icmp slt i16 %off.addr.0.i.i, 0
  %op.addr.0.i198.v.i.i = select i1 %cmp16.i197.i.i, i32 84934656, i32 93323264
  %1163 = tail call i16 @llvm.abs.i16(i16 %off.addr.0.i.i, i1 false) #14
  %1164 = and i16 %1163, 4095
  %and.i199.i.i = zext i16 %1164 to i32
  %or.i194.i.i = or i32 %shl2.i193.i.i, %op.addr.0.i198.v.i.i
  %op.addr.0.i198.i.i = or i32 %or.i194.i.i, %and.i199.i.i
  %or10.i200.i.i = or i32 %op.addr.0.i198.i.i, %shl.i191.i.i
  %or.i.i203.i.i = or i32 %or10.i200.i.i, -536870912
  %1165 = tail call i32 @llvm.bswap.i32(i32 %or.i.i203.i.i) #14
  %1166 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i205.i.i = getelementptr i32, ptr %1158, i32 %1167
  %1168 = ptrtoint ptr %arrayidx.i.i205.i.i to i32
  call void @__asan_store4_noabort(i32 %1168)
  store i32 %1165, ptr %arrayidx.i.i205.i.i, align 4
  %1169 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %.pr300.i.i = load ptr, ptr %target.i1226.i, align 4
  %1170 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i208.i.i = add i32 %1170, 1
  store i32 %inc.i.i208.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i222.i.i = icmp eq ptr %.pr300.i.i, null
  br i1 %cmp.not.i.i222.i.i, label %emit.exit209.i.i.sw.epilog.sink.split.i.i_crit_edge, label %if.then.i.i226.i.i

emit.exit209.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %emit.exit209.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i.i

if.then.i.i226.i.i:                               ; preds = %emit.exit209.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %1171 = ptrtoint ptr %.dst.i.i to i32
  call void @__asan_load1_noabort(i32 %1171)
  %1172 = load i8, ptr %.dst.i.i, align 1
  %conv.i210.i.i = zext i8 %1172 to i32
  %shl.i211.i.i = shl nuw nsw i32 %conv.i210.i.i, 12
  %add.i.i = add i16 %off.addr.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i)
  %cmp16.i217.i.i = icmp slt i16 %add.i.i, 0
  %op.addr.0.i218.v.i.i = select i1 %cmp16.i217.i.i, i32 84934656, i32 93323264
  %1173 = tail call i16 @llvm.abs.i16(i16 %add.i.i, i1 false) #14
  %1174 = and i16 %1173, 4095
  %and.i219.i.i = zext i16 %1174 to i32
  %or.i214.i.i = or i32 %shl2.i193.i.i, %op.addr.0.i218.v.i.i
  %op.addr.0.i218.i.i = or i32 %or.i214.i.i, %and.i219.i.i
  %or10.i220.i.i = or i32 %op.addr.0.i218.i.i, %shl.i211.i.i
  %or.i.i223.i.i = or i32 %or10.i220.i.i, -536870912
  %1175 = tail call i32 @llvm.bswap.i32(i32 %or.i.i223.i.i) #14
  %arrayidx.i.i225.i.i = getelementptr i32, ptr %.pr300.i.i, i32 %inc.i.i208.i.i
  %1176 = ptrtoint ptr %arrayidx.i.i225.i.i to i32
  call void @__asan_store4_noabort(i32 %1176)
  store i32 %1175, ptr %arrayidx.i.i225.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %if.then.i.i226.i.i, %emit.exit209.i.i.sw.epilog.sink.split.i.i_crit_edge, %emit.exit209.thread.i.i, %if.then.i.i.i277.i.i, %if.else.i188.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.end10.sink.split.sink.split.i.i184.i.i, %emit_mov_i.exit291.i.i.sw.epilog.sink.split.i.i_crit_edge, %emit_mov_i.exit291.thread.i.i, %if.then.i.i.i257.i.i, %if.else.i154.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.end10.sink.split.sink.split.i.i150.i.i, %emit_mov_i.exit271.i.i.sw.epilog.sink.split.i.i_crit_edge, %emit_mov_i.exit271.thread.i.i, %if.then.i.i.i241.i.i, %if.else.i.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.end10.sink.split.sink.split.i.i.i.i, %emit_mov_i.exit251.i.i.sw.epilog.sink.split.i.i_crit_edge, %emit_mov_i.exit251.thread.i.i
  %1177 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1177)
  %1178 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i281.i.i = add i32 %1178, 1
  store i32 %inc.i.i.i.i281.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog.i.i

if.end25.i.unreachabledefault.i:                  ; preds = %if.end25.i.i
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %emit.exit175.i.i.sw.epilog.i.i_crit_edge, %emit.exit141.i.i.sw.epilog.i.i_crit_edge, %emit.exit122.i.i.sw.epilog.i.i_crit_edge
  br i1 %cmp.i.i962.i, label %if.then.i.i974.i, label %if.else.i234.i.i

if.then.i.i974.i:                                 ; preds = %sw.epilog.i.i
  %1179 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i973.i = icmp eq ptr %1180, null
  br i1 %cmp.not.i.i.i.i973.i, label %if.then.i.i974.i.if.end32.sink.split.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i974.i.if.end32.sink.split.i.i.i_crit_edge: ; preds = %if.then.i.i974.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i974.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i231.i.i = sext i8 %1045 to i32
  %1181 = sub nsw i32 0, %conv.i231.i.i
  %conv9.i62.i.i.i = shl nuw nsw i32 %1181, 4
  %and.i.i.i.i = and i32 %conv9.i62.i.i.i, 3840
  %and13.i.i.i.i = and i32 %1181, 15
  %arrayidx1.i.i.i = getelementptr i8, ptr %.dst.i.i, i32 1
  %1182 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1182)
  %1183 = load i8, ptr %arrayidx1.i.i.i, align 1
  %conv.i.i232.i.i = zext i8 %1183 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i232.i.i, 12
  %or11.i.i.i.i = or i32 %and13.i.i.i.i, %and.i.i.i.i
  %or14.i.i.i.i = or i32 %shl.i.i.i.i, %or11.i.i.i.i
  %or.i.i.i.i.i = or i32 %or14.i.i.i.i, -515178256
  br label %if.end32.sink.split.sink.split.i.i.i

if.else.i234.i.i:                                 ; preds = %sw.epilog.i.i
  %arrayidx6.i.i.i = getelementptr i8, ptr %.dst.i.i, i32 1
  %1184 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1184)
  %1185 = load i8, ptr %arrayidx6.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1045, i8 %1185)
  %cmp.not.i233.i.i = icmp eq i8 %1045, %1185
  br i1 %cmp.not.i233.i.i, label %if.else.i234.i.i.if.end.i.i.i_crit_edge, label %if.then9.i.i.i

if.else.i234.i.i.if.end.i.i.i_crit_edge:          ; preds = %if.else.i234.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

if.then9.i.i.i:                                   ; preds = %if.else.i234.i.i
  %1186 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i45.i.i.i = icmp eq ptr %1187, null
  br i1 %cmp.not.i.i45.i.i.i, label %if.then9.i.i.i.emit.exit52.i.i.i_crit_edge, label %if.then.i.i49.i.i.i

if.then9.i.i.i.emit.exit52.i.i.i_crit_edge:       ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i.i.i

if.then.i.i49.i.i.i:                              ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i.i.i = zext i8 %1045 to i32
  %shl.i235.i.i = shl nuw nsw i32 %conv563.i.i.i, 12
  %conv7.i.i.i = sext i8 %1185 to i32
  %or.i236.i.i = or i32 %shl.i235.i.i, %conv7.i.i.i
  %or.i.i46.i.i.i = or i32 %or.i236.i.i, -509607936
  %1188 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i.i.i) #14
  %1189 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1189)
  %1190 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i48.i.i.i = getelementptr i32, ptr %1187, i32 %1190
  %1191 = ptrtoint ptr %arrayidx.i.i48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1191)
  store i32 %1188, ptr %arrayidx.i.i48.i.i.i, align 4
  br label %emit.exit52.i.i.i

emit.exit52.i.i.i:                                ; preds = %if.then.i.i49.i.i.i, %if.then9.i.i.i.emit.exit52.i.i.i_crit_edge
  %1192 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i51.i.i.i = add i32 %1193, 1
  store i32 %inc.i.i51.i.i.i, ptr %idx.i1228.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %emit.exit52.i.i.i, %if.else.i234.i.i.if.end.i.i.i_crit_edge
  %1194 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1194)
  %1195 = load i8, ptr %arrayidx.i, align 1
  %1196 = ptrtoint ptr %.dst.i.i to i32
  call void @__asan_load1_noabort(i32 %1196)
  %1197 = load i8, ptr %.dst.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1195, i8 %1197)
  %cmp20.not.i.i.i = icmp eq i8 %1195, %1197
  br i1 %cmp20.not.i.i.i, label %if.end.i.i.i.sw.epilog517.i_crit_edge, label %if.then22.i.i.i

if.end.i.i.i.sw.epilog517.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.then22.i.i.i:                                  ; preds = %if.end.i.i.i
  %1198 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i54.i.i.i = icmp eq ptr %1199, null
  br i1 %cmp.not.i.i54.i.i.i, label %if.then22.i.i.i.if.end32.sink.split.i.i.i_crit_edge, label %if.then.i.i58.i.i.i

if.then22.i.i.i.if.end32.sink.split.i.i.i_crit_edge: ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i.i.i

if.then.i.i58.i.i.i:                              ; preds = %if.then22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i.i.i = sext i8 %1195 to i32
  %shl25.i.i.i = shl nsw i32 %conv17.i.i.i, 12
  %conv19.i.i.i = sext i8 %1197 to i32
  %or26.i.i.i = or i32 %shl25.i.i.i, %conv19.i.i.i
  %or.i.i55.i.i.i = or i32 %or26.i.i.i, -509607936
  br label %if.end32.sink.split.sink.split.i.i.i

if.end32.sink.split.sink.split.i.i.i:             ; preds = %if.then.i.i58.i.i.i, %if.then.i.i.i.i.i
  %or.i.i55.sink.i.i.i = phi i32 [ %or.i.i55.i.i.i, %if.then.i.i58.i.i.i ], [ %or.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %.sink65.i.i.i = phi ptr [ %1199, %if.then.i.i58.i.i.i ], [ %1180, %if.then.i.i.i.i.i ]
  %1200 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i.i.i) #14
  %1201 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i57.i.i.i = getelementptr i32, ptr %.sink65.i.i.i, i32 %1202
  %1203 = ptrtoint ptr %arrayidx.i.i57.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1203)
  store i32 %1200, ptr %arrayidx.i.i57.i.i.i, align 4
  br label %if.end32.sink.split.i.i.i

if.end32.sink.split.i.i.i:                        ; preds = %if.end32.sink.split.sink.split.i.i.i, %if.then22.i.i.i.if.end32.sink.split.i.i.i_crit_edge, %if.then.i.i974.i.if.end32.sink.split.i.i.i_crit_edge
  %1204 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i60.i.i.i = add i32 %1205, 1
  store i32 %inc.i.i60.i.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb215.i:                                       ; preds = %for.body.sw.bb215.i_crit_edge, %for.body.sw.bb215.i_crit_edge1076, %for.body.sw.bb215.i_crit_edge1077, %for.body.sw.bb215.i_crit_edge1078
  %and217.i = and i32 %conv.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and217.i)
  %switch822.i = icmp eq i32 %and217.i, 24
  br i1 %switch822.i, label %sw.bb218.i, label %sw.bb219.i

sw.bb218.i:                                       ; preds = %sw.bb215.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i975.i = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i976.i = icmp slt i32 %10, 0
  %or.i977.i = or i64 %conv.i975.i, -4294967296
  %val64.0.i978.i = select i1 %tobool2.not.i976.i, i64 %or.i977.i, i64 %conv.i975.i
  tail call fastcc void @emit_a32_mov_i64(ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), i64 noundef %val64.0.i978.i, ptr noundef %ctx) #14
  br label %sw.epilog221.i

sw.bb219.i:                                       ; preds = %sw.bb215.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @emit_mov_i(i8 noundef zeroext 8, i32 noundef %10, ptr noundef %ctx) #14
  br label %sw.epilog221.i

sw.epilog221.i:                                   ; preds = %sw.bb219.i, %sw.bb218.i
  %arrayidx222.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %1206 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %1206)
  %1207 = load i8, ptr %arrayidx222.i, align 1
  %conv225.i = trunc i32 %and217.i to i8
  tail call fastcc void @emit_str_r(i8 noundef signext %1207, ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), i16 noundef signext %8, ptr noundef %ctx, i8 noundef zeroext %conv225.i) #14
  br label %sw.epilog517.i

sw.bb227.i:                                       ; preds = %for.body.sw.bb227.i_crit_edge, %for.body.sw.bb227.i_crit_edge1081, %for.body.sw.bb227.i_crit_edge1082, %for.body.sw.bb227.i_crit_edge1083
  %arrayidx.i981.i = getelementptr i8, ptr %arrayidx4.i, i32 1
  %1208 = ptrtoint ptr %arrayidx.i981.i to i32
  call void @__asan_load1_noabort(i32 %1208)
  %1209 = load i8, ptr %arrayidx.i981.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1209)
  %cmp.i.i982.i = icmp slt i8 %1209, 0
  br i1 %cmp.i.i982.i, label %if.then.i985.i, label %sw.bb227.i.arm_bpf_get_reg64.exit.i_crit_edge

sw.bb227.i.arm_bpf_get_reg64.exit.i_crit_edge:    ; preds = %sw.bb227.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit.i

if.then.i985.i:                                   ; preds = %sw.bb227.i
  %1210 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i984.i = icmp eq ptr %1211, null
  br i1 %cmp.not.i.i.i984.i, label %if.then.i985.i.emit.exit.i997.i_crit_edge, label %if.then.i.i.i994.i

if.then.i985.i.emit.exit.i997.i_crit_edge:        ; preds = %if.then.i985.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i997.i

if.then.i.i.i994.i:                               ; preds = %if.then.i985.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i986.i = sext i8 %1209 to i32
  %1212 = sub nsw i32 0, %conv.i986.i
  %conv9.i7.i.i = shl nuw nsw i32 %1212, 4
  %and.i.i987.i = and i32 %conv9.i7.i.i, 3840
  %and13.i.i988.i = and i32 %1212, 15
  %or11.i.i989.i = or i32 %and13.i.i988.i, %and.i.i987.i
  %or.i.i.i991.i = or i32 %or11.i.i989.i, -515145520
  %1213 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i991.i) #14
  %1214 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i993.i = getelementptr i32, ptr %1211, i32 %1215
  %1216 = ptrtoint ptr %arrayidx.i.i.i993.i to i32
  call void @__asan_store4_noabort(i32 %1216)
  store i32 %1213, ptr %arrayidx.i.i.i993.i, align 4
  br label %emit.exit.i997.i

emit.exit.i997.i:                                 ; preds = %if.then.i.i.i994.i, %if.then.i985.i.emit.exit.i997.i_crit_edge
  %1217 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1217)
  %1218 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i996.i = add i32 %1218, 1
  store i32 %inc.i.i.i996.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i

arm_bpf_get_reg64.exit.i:                         ; preds = %emit.exit.i997.i, %sw.bb227.i.arm_bpf_get_reg64.exit.i_crit_edge
  %reg.addr.0.i998.i = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), %emit.exit.i997.i ], [ %arrayidx4.i, %sw.bb227.i.arm_bpf_get_reg64.exit.i_crit_edge ]
  %arrayidx229.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %1219 = ptrtoint ptr %arrayidx229.i to i32
  call void @__asan_load1_noabort(i32 %1219)
  %1220 = load i8, ptr %arrayidx229.i, align 1
  %and231.i = and i8 %5, 24
  tail call fastcc void @emit_str_r(i8 noundef signext %1220, ptr noundef %reg.addr.0.i998.i, i16 noundef signext %8, ptr noundef %ctx, i8 noundef zeroext %and231.i) #14
  br label %sw.epilog517.i

sw.bb233.i:                                       ; preds = %for.body.sw.bb233.i_crit_edge, %for.body.sw.bb233.i_crit_edge1084, %for.body.sw.bb233.i_crit_edge1085, %for.body.sw.bb233.i_crit_edge1086, %for.body.sw.bb233.i_crit_edge1087, %for.body.sw.bb233.i_crit_edge1088, %for.body.sw.bb233.i_crit_edge1089, %for.body.sw.bb233.i_crit_edge1090, %for.body.sw.bb233.i_crit_edge1091, %for.body.sw.bb233.i_crit_edge1092, %for.body.sw.bb233.i_crit_edge1093, %for.body.sw.bb233.i_crit_edge1094, %for.body.sw.bb233.i_crit_edge1095, %for.body.sw.bb233.i_crit_edge1096, %for.body.sw.bb233.i_crit_edge1097, %for.body.sw.bb233.i_crit_edge1098, %for.body.sw.bb233.i_crit_edge1099, %for.body.sw.bb233.i_crit_edge1100, %for.body.sw.bb233.i_crit_edge1101, %for.body.sw.bb233.i_crit_edge1102, %for.body.sw.bb233.i_crit_edge1103, %for.body.sw.bb233.i_crit_edge1104
  %1221 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %1221)
  %1222 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1222)
  %cmp.i.i1000.i = icmp slt i8 %1222, 0
  br i1 %cmp.i.i1000.i, label %if.then.i1003.i, label %sw.bb233.i.arm_bpf_get_reg32.exit1015.i_crit_edge

sw.bb233.i.arm_bpf_get_reg32.exit1015.i_crit_edge: ; preds = %sw.bb233.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit1015.i

if.then.i1003.i:                                  ; preds = %sw.bb233.i
  %1223 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i1002.i = icmp eq ptr %1224, null
  br i1 %cmp.not.i.i.i1002.i, label %if.then.i1003.i.emit.exit.i1012.i_crit_edge, label %if.then.i.i.i1009.i

if.then.i1003.i.emit.exit.i1012.i_crit_edge:      ; preds = %if.then.i1003.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i1012.i

if.then.i.i.i1009.i:                              ; preds = %if.then.i1003.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i1004.i = sext i8 %1222 to i32
  %1225 = sub nsw i32 0, %conv.i1004.i
  %or.i.i.i1006.i = or i32 %1225, -451178496
  %1226 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i1006.i) #14
  %1227 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1227)
  %1228 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i1008.i = getelementptr i32, ptr %1224, i32 %1228
  %1229 = ptrtoint ptr %arrayidx.i.i.i1008.i to i32
  call void @__asan_store4_noabort(i32 %1229)
  store i32 %1226, ptr %arrayidx.i.i.i1008.i, align 4
  br label %emit.exit.i1012.i

emit.exit.i1012.i:                                ; preds = %if.then.i.i.i1009.i, %if.then.i1003.i.emit.exit.i1012.i_crit_edge
  %1230 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i1011.i = add i32 %1231, 1
  store i32 %inc.i.i.i1011.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg32.exit1015.i

arm_bpf_get_reg32.exit1015.i:                     ; preds = %emit.exit.i1012.i, %sw.bb233.i.arm_bpf_get_reg32.exit1015.i_crit_edge
  %reg.addr.0.i1013.i = phi i8 [ 9, %emit.exit.i1012.i ], [ %1222, %sw.bb233.i.arm_bpf_get_reg32.exit1015.i_crit_edge ]
  %arrayidx237.i = getelementptr i8, ptr %arrayidx4.i, i32 1
  %1232 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_load1_noabort(i32 %1232)
  %1233 = load i8, ptr %arrayidx237.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1233)
  %cmp.i.i1016.i = icmp slt i8 %1233, 0
  br i1 %cmp.i.i1016.i, label %if.then.i1019.i, label %arm_bpf_get_reg32.exit1015.i.go_jmp.i_crit_edge

arm_bpf_get_reg32.exit1015.i.go_jmp.i_crit_edge:  ; preds = %arm_bpf_get_reg32.exit1015.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %go_jmp.i

if.then.i1019.i:                                  ; preds = %arm_bpf_get_reg32.exit1015.i
  %1234 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i1018.i = icmp eq ptr %1235, null
  br i1 %cmp.not.i.i.i1018.i, label %if.then.i1019.i.emit.exit.i1028.i_crit_edge, label %if.then.i.i.i1025.i

if.then.i1019.i.emit.exit.i1028.i_crit_edge:      ; preds = %if.then.i1019.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i1028.i

if.then.i.i.i1025.i:                              ; preds = %if.then.i1019.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i1020.i = sext i8 %1233 to i32
  %1236 = sub nsw i32 0, %conv.i1020.i
  %or.i.i.i1022.i = or i32 %1236, -451182592
  %1237 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i1022.i) #14
  %1238 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i1024.i = getelementptr i32, ptr %1235, i32 %1239
  %1240 = ptrtoint ptr %arrayidx.i.i.i1024.i to i32
  call void @__asan_store4_noabort(i32 %1240)
  store i32 %1237, ptr %arrayidx.i.i.i1024.i, align 4
  br label %emit.exit.i1028.i

emit.exit.i1028.i:                                ; preds = %if.then.i.i.i1025.i, %if.then.i1019.i.emit.exit.i1028.i_crit_edge
  %1241 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i1027.i = add i32 %1242, 1
  store i32 %inc.i.i.i1027.i, ptr %idx.i1228.i, align 4
  br label %go_jmp.i

sw.bb240.i:                                       ; preds = %for.body.sw.bb240.i_crit_edge, %for.body.sw.bb240.i_crit_edge1105, %for.body.sw.bb240.i_crit_edge1106, %for.body.sw.bb240.i_crit_edge1107, %for.body.sw.bb240.i_crit_edge1108, %for.body.sw.bb240.i_crit_edge1109, %for.body.sw.bb240.i_crit_edge1110, %for.body.sw.bb240.i_crit_edge1111, %for.body.sw.bb240.i_crit_edge1112, %for.body.sw.bb240.i_crit_edge1113, %for.body.sw.bb240.i_crit_edge1114, %for.body.sw.bb240.i_crit_edge1115, %for.body.sw.bb240.i_crit_edge1116, %for.body.sw.bb240.i_crit_edge1117, %for.body.sw.bb240.i_crit_edge1118, %for.body.sw.bb240.i_crit_edge1119, %for.body.sw.bb240.i_crit_edge1120, %for.body.sw.bb240.i_crit_edge1121, %for.body.sw.bb240.i_crit_edge1122, %for.body.sw.bb240.i_crit_edge1123, %for.body.sw.bb240.i_crit_edge1124, %for.body.sw.bb240.i_crit_edge1125
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp242.i = icmp eq i16 %8, 0
  br i1 %cmp242.i, label %sw.bb240.i.sw.epilog517.i_crit_edge, label %if.end245.i

sw.bb240.i.sw.epilog517.i_crit_edge:              ; preds = %sw.bb240.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.end245.i:                                      ; preds = %sw.bb240.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i1032.i = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i1033.i = icmp slt i32 %10, 0
  %or.i1034.i = or i64 %conv.i1032.i, -4294967296
  %val64.0.i1035.i = select i1 %tobool2.not.i1033.i, i64 %or.i1034.i, i64 %conv.i1032.i
  tail call fastcc void @emit_a32_mov_i64(ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), i64 noundef %val64.0.i1035.i, ptr noundef %ctx) #14
  br label %go_jmp.i

go_jmp.i:                                         ; preds = %if.end245.i, %emit.exit.i1028.i, %arm_bpf_get_reg32.exit1015.i.go_jmp.i_crit_edge
  %rn.0.i = phi i8 [ 8, %if.end245.i ], [ 8, %emit.exit.i1028.i ], [ %1233, %arm_bpf_get_reg32.exit1015.i.go_jmp.i_crit_edge ]
  %rm.0.i = phi i8 [ 9, %if.end245.i ], [ %reg.addr.0.i1013.i, %emit.exit.i1028.i ], [ %reg.addr.0.i1013.i, %arm_bpf_get_reg32.exit1015.i.go_jmp.i_crit_edge ]
  %arrayidx.i1036.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %1243 = ptrtoint ptr %arrayidx.i1036.i to i32
  call void @__asan_load1_noabort(i32 %1243)
  %1244 = load i8, ptr %arrayidx.i1036.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1244)
  %cmp.i.i1037.i = icmp slt i8 %1244, 0
  br i1 %cmp.i.i1037.i, label %if.then.i1040.i, label %go_jmp.i.arm_bpf_get_reg64.exit1056.i_crit_edge

go_jmp.i.arm_bpf_get_reg64.exit1056.i_crit_edge:  ; preds = %go_jmp.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit1056.i

if.then.i1040.i:                                  ; preds = %go_jmp.i
  %1245 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i1039.i = icmp eq ptr %1246, null
  br i1 %cmp.not.i.i.i1039.i, label %if.then.i1040.i.emit.exit.i1053.i_crit_edge, label %if.then.i.i.i1050.i

if.then.i1040.i.emit.exit.i1053.i_crit_edge:      ; preds = %if.then.i1040.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i1053.i

if.then.i.i.i1050.i:                              ; preds = %if.then.i1040.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i1041.i = sext i8 %1244 to i32
  %1247 = sub nsw i32 0, %conv.i1041.i
  %conv9.i7.i1042.i = shl nuw nsw i32 %1247, 4
  %and.i.i1043.i = and i32 %conv9.i7.i1042.i, 3840
  %and13.i.i1044.i = and i32 %1247, 15
  %or11.i.i1045.i = or i32 %and13.i.i1044.i, %and.i.i1043.i
  %or.i.i.i1047.i = or i32 %or11.i.i1045.i, -515153712
  %1248 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i1047.i) #14
  %1249 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i1049.i = getelementptr i32, ptr %1246, i32 %1250
  %1251 = ptrtoint ptr %arrayidx.i.i.i1049.i to i32
  call void @__asan_store4_noabort(i32 %1251)
  store i32 %1248, ptr %arrayidx.i.i.i1049.i, align 4
  br label %emit.exit.i1053.i

emit.exit.i1053.i:                                ; preds = %if.then.i.i.i1050.i, %if.then.i1040.i.emit.exit.i1053.i_crit_edge
  %1252 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i1052.i = add i32 %1253, 1
  store i32 %inc.i.i.i1052.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit1056.i

arm_bpf_get_reg64.exit1056.i:                     ; preds = %emit.exit.i1053.i, %go_jmp.i.arm_bpf_get_reg64.exit1056.i_crit_edge
  %reg.addr.0.i1054.i = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i1053.i ], [ %arrayidx.i, %go_jmp.i.arm_bpf_get_reg64.exit1056.i_crit_edge ]
  %1254 = ptrtoint ptr %reg.addr.0.i1054.i to i32
  call void @__asan_load1_noabort(i32 %1254)
  %1255 = load i8, ptr %reg.addr.0.i1054.i, align 1
  %arrayidx250.i = getelementptr i8, ptr %reg.addr.0.i1054.i, i32 1
  %1256 = ptrtoint ptr %arrayidx250.i to i32
  call void @__asan_load1_noabort(i32 %1256)
  %1257 = load i8, ptr %arrayidx250.i, align 1
  %and252.i = and i32 %conv.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp256.i = icmp eq i32 %and.i, 5
  %1258 = add nsw i32 %and252.i, -16
  %1259 = lshr exact i32 %1258, 4
  %1260 = zext i32 %1259 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1260, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1259, label %arm_bpf_get_reg64.exit1056.i.emit_ar_r.exit.i_crit_edge [
    i32 3, label %sw.bb.i1060.i
    i32 0, label %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge
    i32 4, label %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1126
    i32 1, label %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1127
    i32 2, label %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1128
    i32 10, label %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1129
    i32 9, label %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1130
    i32 12, label %arm_bpf_get_reg64.exit1056.i.sw.bb34.i.i_crit_edge
    i32 5, label %arm_bpf_get_reg64.exit1056.i.sw.bb34.i.i_crit_edge1131
    i32 11, label %arm_bpf_get_reg64.exit1056.i.sw.bb48.i.i_crit_edge
    i32 6, label %arm_bpf_get_reg64.exit1056.i.sw.bb48.i.i_crit_edge1132
  ]

arm_bpf_get_reg64.exit1056.i.sw.bb48.i.i_crit_edge1132: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb48.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb48.i.i_crit_edge: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb48.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb34.i.i_crit_edge1131: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb34.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb34.i.i_crit_edge: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb34.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1130: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1129: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1128: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1127: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1126: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14.i.i

arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb14.i.i

arm_bpf_get_reg64.exit1056.i.emit_ar_r.exit.i_crit_edge: ; preds = %arm_bpf_get_reg64.exit1056.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_ar_r.exit.i

sw.bb.i1060.i:                                    ; preds = %arm_bpf_get_reg64.exit1056.i
  %1261 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i1059.i = icmp eq ptr %1262, null
  br i1 %cmp256.i, label %if.then.i1061.i, label %if.else.i1080.i

if.then.i1061.i:                                  ; preds = %sw.bb.i1060.i
  br i1 %cmp.not.i.i.i1059.i, label %emit.exit.thread.i1062.i, label %emit.exit.i1071.i

emit.exit.thread.i1062.i:                         ; preds = %if.then.i1061.i
  call void @__sanitizer_cov_trace_pc() #16
  %1263 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i175.i.i = add i32 %1264, 1
  store i32 %inc.i.i175.i.i, ptr %idx.i1228.i, align 4
  br label %emit.exit99.thread.i.i

emit.exit.i1071.i:                                ; preds = %if.then.i1061.i
  %conv1.i1063.i = zext i8 %1257 to i32
  %shl.i1064.i = shl nuw nsw i32 %conv1.i1063.i, 16
  %conv2.i.i = zext i8 %rn.0.i to i32
  %or.i1065.i = or i32 %shl.i1064.i, %conv2.i.i
  %or.i.i.i1066.i = or i32 %or.i1065.i, -536821760
  %1265 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i1066.i) #14
  %1266 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i.i1068.i = getelementptr i32, ptr %1262, i32 %1267
  %1268 = ptrtoint ptr %arrayidx.i.i.i1068.i to i32
  call void @__asan_store4_noabort(i32 %1268)
  store i32 %1265, ptr %arrayidx.i.i.i1068.i, align 4
  %1269 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1269)
  %.pr173.i.i = load ptr, ptr %target.i1226.i, align 4
  %1270 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i1070.i = add i32 %1270, 1
  store i32 %inc.i.i.i1070.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i92.i.i = icmp eq ptr %.pr173.i.i, null
  br i1 %cmp.not.i.i92.i.i, label %emit.exit.i1071.i.emit.exit99.thread.i.i_crit_edge, label %emit.exit99.i1077.i

emit.exit.i1071.i.emit.exit99.thread.i.i_crit_edge: ; preds = %emit.exit.i1071.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit99.thread.i.i

emit.exit99.thread.i.i:                           ; preds = %emit.exit.i1071.i.emit.exit99.thread.i.i_crit_edge, %emit.exit.thread.i1062.i
  %1271 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1271)
  %1272 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i98171.i.i = add i32 %1272, 1
  store i32 %inc.i.i98171.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog.sink.split.i1090.i

emit.exit99.i1077.i:                              ; preds = %emit.exit.i1071.i
  %conv4.i.i = zext i8 %1255 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %conv7.i1072.i = zext i8 %rm.0.i to i32
  %or6.i.i = or i32 %shl5.i.i, %conv7.i1072.i
  %or.i.i93.i.i = or i32 %or6.i.i, -536813568
  %1273 = tail call i32 @llvm.bswap.i32(i32 %or.i.i93.i.i) #14
  %arrayidx.i.i95.i1073.i = getelementptr i32, ptr %.pr173.i.i, i32 %inc.i.i.i1070.i
  %1274 = ptrtoint ptr %arrayidx.i.i95.i1073.i to i32
  call void @__asan_store4_noabort(i32 %1274)
  store i32 %1273, ptr %arrayidx.i.i95.i1073.i, align 4
  %1275 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1275)
  %.pr.i1074.i = load ptr, ptr %target.i1226.i, align 4
  %1276 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1276)
  %1277 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i98.i1075.i = add i32 %1277, 1
  store i32 %inc.i.i98.i1075.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i101.i1076.i = icmp eq ptr %.pr.i1074.i, null
  br i1 %cmp.not.i.i101.i1076.i, label %emit.exit99.i1077.i.sw.epilog.sink.split.i1090.i_crit_edge, label %if.then.i.i104.i1079.i

emit.exit99.i1077.i.sw.epilog.sink.split.i1090.i_crit_edge: ; preds = %emit.exit99.i1077.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i1090.i

if.then.i.i104.i1079.i:                           ; preds = %emit.exit99.i1077.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i103.i1078.i = getelementptr i32, ptr %.pr.i1074.i, i32 %inc.i.i98.i1075.i
  %1278 = ptrtoint ptr %arrayidx.i.i103.i1078.i to i32
  call void @__asan_store4_noabort(i32 %1278)
  store i32 213950177, ptr %arrayidx.i.i103.i1078.i, align 4
  br label %sw.epilog.sink.split.i1090.i

if.else.i1080.i:                                  ; preds = %sw.bb.i1060.i
  br i1 %cmp.not.i.i.i1059.i, label %if.else.i1080.i.sw.epilog.sink.split.i1090.i_crit_edge, label %if.then.i.i113.i1083.i

if.else.i1080.i.sw.epilog.sink.split.i1090.i_crit_edge: ; preds = %if.else.i1080.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i1090.i

if.then.i.i113.i1083.i:                           ; preds = %if.else.i1080.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv9.i.i = zext i8 %1257 to i32
  %shl10.i.i = shl nuw nsw i32 %conv9.i.i, 16
  %conv12.i.i = zext i8 %rn.0.i to i32
  %or11.i.i = or i32 %shl10.i.i, %conv12.i.i
  %or.i.i110.i1081.i = or i32 %or11.i.i, -535773184
  %1279 = tail call i32 @llvm.bswap.i32(i32 %or.i.i110.i1081.i) #14
  %1280 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1280)
  %1281 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i112.i1082.i = getelementptr i32, ptr %1262, i32 %1281
  %1282 = ptrtoint ptr %arrayidx.i.i112.i1082.i to i32
  call void @__asan_store4_noabort(i32 %1282)
  store i32 %1279, ptr %arrayidx.i.i112.i1082.i, align 4
  br label %sw.epilog.sink.split.i1090.i

sw.bb14.i.i:                                      ; preds = %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge, %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1126, %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1127, %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1128, %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1129, %arm_bpf_get_reg64.exit1056.i.sw.bb14.i.i_crit_edge1130
  %1283 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i118.i1085.i = icmp eq ptr %1284, null
  br i1 %cmp256.i, label %if.then16.i1086.i, label %if.else27.i.i

if.then16.i1086.i:                                ; preds = %sw.bb14.i.i
  br i1 %cmp.not.i.i118.i1085.i, label %emit.exit125.thread.i.i, label %emit.exit125.i.i

emit.exit125.thread.i.i:                          ; preds = %if.then16.i1086.i
  call void @__sanitizer_cov_trace_pc() #16
  %1285 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1285)
  %1286 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i124181.i.i = add i32 %1286, 1
  store i32 %inc.i.i124181.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog.sink.split.i1090.i

emit.exit125.i.i:                                 ; preds = %if.then16.i1086.i
  %conv17.i.i = zext i8 %1255 to i32
  %shl18.i.i = shl nuw nsw i32 %conv17.i.i, 16
  %conv20.i.i = zext i8 %rm.0.i to i32
  %or19.i.i = or i32 %shl18.i.i, %conv20.i.i
  %or.i.i119.i.i = or i32 %or19.i.i, -514850816
  %1287 = tail call i32 @llvm.bswap.i32(i32 %or.i.i119.i.i) #14
  %1288 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1288)
  %1289 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i121.i.i = getelementptr i32, ptr %1284, i32 %1289
  %1290 = ptrtoint ptr %arrayidx.i.i121.i.i to i32
  call void @__asan_store4_noabort(i32 %1290)
  store i32 %1287, ptr %arrayidx.i.i121.i.i, align 4
  %1291 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1291)
  %.pr179.i.i = load ptr, ptr %target.i1226.i, align 4
  %1292 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i124.i.i = add i32 %1292, 1
  store i32 %inc.i.i124.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i1087.i = icmp eq ptr %.pr179.i.i, null
  br i1 %cmp.not.i.i1087.i, label %emit.exit125.i.i.sw.epilog.sink.split.i1090.i_crit_edge, label %if.then.i.i1089.i

emit.exit125.i.i.sw.epilog.sink.split.i1090.i_crit_edge: ; preds = %emit.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i1090.i

if.then.i.i1089.i:                                ; preds = %emit.exit125.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv22.i.i = zext i8 %1257 to i32
  %shl23.i.i = shl nuw nsw i32 %conv22.i.i, 16
  %conv25.i.i = zext i8 %rn.0.i to i32
  %or24.i.i = or i32 %shl23.i.i, %conv25.i.i
  %or26.i.i = or i32 %or24.i.i, 22020096
  %1293 = tail call i32 @llvm.bswap.i32(i32 %or26.i.i) #14
  %arrayidx.i.i1088.i = getelementptr i32, ptr %.pr179.i.i, i32 %inc.i.i124.i.i
  %1294 = ptrtoint ptr %arrayidx.i.i1088.i to i32
  call void @__asan_store4_noabort(i32 %1294)
  store i32 %1293, ptr %arrayidx.i.i1088.i, align 4
  br label %sw.epilog.sink.split.i1090.i

if.else27.i.i:                                    ; preds = %sw.bb14.i.i
  br i1 %cmp.not.i.i118.i1085.i, label %if.else27.i.i.sw.epilog.sink.split.i1090.i_crit_edge, label %if.then.i.i131.i.i

if.else27.i.i.sw.epilog.sink.split.i1090.i_crit_edge: ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i1090.i

if.then.i.i131.i.i:                               ; preds = %if.else27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv28.i.i = zext i8 %1257 to i32
  %shl29.i.i = shl nuw nsw i32 %conv28.i.i, 16
  %conv31.i.i = zext i8 %rn.0.i to i32
  %or30.i.i = or i32 %shl29.i.i, %conv31.i.i
  %or.i.i128.i.i = or i32 %or30.i.i, -514850816
  %1295 = tail call i32 @llvm.bswap.i32(i32 %or.i.i128.i.i) #14
  %1296 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i130.i.i = getelementptr i32, ptr %1284, i32 %1297
  %1298 = ptrtoint ptr %arrayidx.i.i130.i.i to i32
  call void @__asan_store4_noabort(i32 %1298)
  store i32 %1295, ptr %arrayidx.i.i130.i.i, align 4
  br label %sw.epilog.sink.split.i1090.i

sw.bb34.i.i:                                      ; preds = %arm_bpf_get_reg64.exit1056.i.sw.bb34.i.i_crit_edge, %arm_bpf_get_reg64.exit1056.i.sw.bb34.i.i_crit_edge1131
  %1299 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1299)
  %1300 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i136.i.i = icmp eq ptr %1300, null
  br i1 %cmp.not.i.i136.i.i, label %sw.bb34.i.i.emit.exit143.i.i_crit_edge, label %if.then.i.i140.i.i

sw.bb34.i.i.emit.exit143.i.i_crit_edge:           ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit143.i.i

if.then.i.i140.i.i:                               ; preds = %sw.bb34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv35.i.i = zext i8 %rn.0.i to i32
  %shl36.i.i = shl nuw nsw i32 %conv35.i.i, 16
  %conv38.i.i = zext i8 %1257 to i32
  %or37.i.i = or i32 %shl36.i.i, %conv38.i.i
  %or.i.i137.i.i = or i32 %or37.i.i, -514850816
  %1301 = tail call i32 @llvm.bswap.i32(i32 %or.i.i137.i.i) #14
  %1302 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i139.i.i = getelementptr i32, ptr %1300, i32 %1303
  %1304 = ptrtoint ptr %arrayidx.i.i139.i.i to i32
  call void @__asan_store4_noabort(i32 %1304)
  store i32 %1301, ptr %arrayidx.i.i139.i.i, align 4
  br label %emit.exit143.i.i

emit.exit143.i.i:                                 ; preds = %if.then.i.i140.i.i, %sw.bb34.i.i.emit.exit143.i.i_crit_edge
  %1305 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1305)
  %1306 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i142.i.i = add i32 %1306, 1
  store i32 %inc.i.i142.i.i, ptr %idx.i1228.i, align 4
  br i1 %cmp256.i, label %if.then41.i.i, label %emit.exit143.i.i.emit_ar_r.exit.i_crit_edge

emit.exit143.i.i.emit_ar_r.exit.i_crit_edge:      ; preds = %emit.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_ar_r.exit.i

if.then41.i.i:                                    ; preds = %emit.exit143.i.i
  %1307 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1307)
  %1308 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i145.i.i = icmp eq ptr %1308, null
  br i1 %cmp.not.i.i145.i.i, label %if.then41.i.i.sw.epilog.sink.split.i1090.i_crit_edge, label %if.then.i.i149.i.i

if.then41.i.i.sw.epilog.sink.split.i1090.i_crit_edge: ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i1090.i

if.then.i.i149.i.i:                               ; preds = %if.then41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv42.i.i = zext i8 %rm.0.i to i32
  %shl43.i.i = shl nuw nsw i32 %conv42.i.i, 16
  %conv45.i.i = zext i8 %1255 to i32
  %or44.i.i = or i32 %shl43.i.i, %conv45.i.i
  %or.i.i146.i.i = or i32 %or44.i.i, -523190272
  %1309 = tail call i32 @llvm.bswap.i32(i32 %or.i.i146.i.i) #14
  %arrayidx.i.i148.i.i = getelementptr i32, ptr %1308, i32 %inc.i.i142.i.i
  %1310 = ptrtoint ptr %arrayidx.i.i148.i.i to i32
  call void @__asan_store4_noabort(i32 %1310)
  store i32 %1309, ptr %arrayidx.i.i148.i.i, align 4
  br label %sw.epilog.sink.split.i1090.i

sw.bb48.i.i:                                      ; preds = %arm_bpf_get_reg64.exit1056.i.sw.bb48.i.i_crit_edge, %arm_bpf_get_reg64.exit1056.i.sw.bb48.i.i_crit_edge1132
  %1311 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1311)
  %1312 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i154.i.i = icmp eq ptr %1312, null
  br i1 %cmp.not.i.i154.i.i, label %sw.bb48.i.i.emit.exit161.i.i_crit_edge, label %if.then.i.i158.i.i

sw.bb48.i.i.emit.exit161.i.i_crit_edge:           ; preds = %sw.bb48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit161.i.i

if.then.i.i158.i.i:                               ; preds = %sw.bb48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv49.i.i = zext i8 %1257 to i32
  %shl50.i.i = shl nuw nsw i32 %conv49.i.i, 16
  %conv52.i.i = zext i8 %rn.0.i to i32
  %or51.i.i = or i32 %shl50.i.i, %conv52.i.i
  %or.i.i155.i.i = or i32 %or51.i.i, -514850816
  %1313 = tail call i32 @llvm.bswap.i32(i32 %or.i.i155.i.i) #14
  %1314 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1314)
  %1315 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i157.i.i = getelementptr i32, ptr %1312, i32 %1315
  %1316 = ptrtoint ptr %arrayidx.i.i157.i.i to i32
  call void @__asan_store4_noabort(i32 %1316)
  store i32 %1313, ptr %arrayidx.i.i157.i.i, align 4
  br label %emit.exit161.i.i

emit.exit161.i.i:                                 ; preds = %if.then.i.i158.i.i, %sw.bb48.i.i.emit.exit161.i.i_crit_edge
  %1317 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1317)
  %1318 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i160.i.i = add i32 %1318, 1
  store i32 %inc.i.i160.i.i, ptr %idx.i1228.i, align 4
  br i1 %cmp256.i, label %if.then55.i.i, label %emit.exit161.i.i.emit_ar_r.exit.i_crit_edge

emit.exit161.i.i.emit_ar_r.exit.i_crit_edge:      ; preds = %emit.exit161.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_ar_r.exit.i

if.then55.i.i:                                    ; preds = %emit.exit161.i.i
  %1319 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i163.i.i = icmp eq ptr %1320, null
  br i1 %cmp.not.i.i163.i.i, label %if.then55.i.i.sw.epilog.sink.split.i1090.i_crit_edge, label %if.then.i.i167.i.i

if.then55.i.i.sw.epilog.sink.split.i1090.i_crit_edge: ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split.i1090.i

if.then.i.i167.i.i:                               ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv56.i.i = zext i8 %1255 to i32
  %shl57.i.i = shl nuw nsw i32 %conv56.i.i, 16
  %conv59.i.i = zext i8 %rm.0.i to i32
  %or58.i.i = or i32 %shl57.i.i, %conv59.i.i
  %or.i.i164.i.i = or i32 %or58.i.i, -523190272
  %1321 = tail call i32 @llvm.bswap.i32(i32 %or.i.i164.i.i) #14
  %arrayidx.i.i166.i.i = getelementptr i32, ptr %1320, i32 %inc.i.i160.i.i
  %1322 = ptrtoint ptr %arrayidx.i.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %1322)
  store i32 %1321, ptr %arrayidx.i.i166.i.i, align 4
  br label %sw.epilog.sink.split.i1090.i

sw.epilog.sink.split.i1090.i:                     ; preds = %if.then.i.i167.i.i, %if.then55.i.i.sw.epilog.sink.split.i1090.i_crit_edge, %if.then.i.i149.i.i, %if.then41.i.i.sw.epilog.sink.split.i1090.i_crit_edge, %if.then.i.i131.i.i, %if.else27.i.i.sw.epilog.sink.split.i1090.i_crit_edge, %if.then.i.i1089.i, %emit.exit125.i.i.sw.epilog.sink.split.i1090.i_crit_edge, %emit.exit125.thread.i.i, %if.then.i.i113.i1083.i, %if.else.i1080.i.sw.epilog.sink.split.i1090.i_crit_edge, %if.then.i.i104.i1079.i, %emit.exit99.i1077.i.sw.epilog.sink.split.i1090.i_crit_edge, %emit.exit99.thread.i.i
  %1323 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1323)
  %1324 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i169.i.i = add i32 %1324, 1
  store i32 %inc.i.i169.i.i, ptr %idx.i1228.i, align 4
  br label %emit_ar_r.exit.i

emit_ar_r.exit.i:                                 ; preds = %sw.epilog.sink.split.i1090.i, %emit.exit161.i.i.emit_ar_r.exit.i_crit_edge, %emit.exit143.i.i.emit_ar_r.exit.i_crit_edge, %arm_bpf_get_reg64.exit1056.i.emit_ar_r.exit.i_crit_edge
  %1325 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1325)
  %1326 = load ptr, ptr %target.i1226.i, align 4
  %cmp.i1092.i = icmp eq ptr %1326, null
  br i1 %cmp.i1092.i, label %emit_ar_r.exit.i.bpf2a32_offset.exit.i_crit_edge, label %if.end.i1094.i

emit_ar_r.exit.i.bpf2a32_offset.exit.i_crit_edge: ; preds = %emit_ar_r.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bpf2a32_offset.exit.i

if.end.i1094.i:                                   ; preds = %emit_ar_r.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv258.i = sext i16 %8 to i32
  %add.i = add nsw i32 %sub.ptr.div.i, %conv258.i
  %1327 = ptrtoint ptr %offsets.i1192.i to i32
  call void @__asan_load4_noabort(i32 %1327)
  %1328 = load ptr, ptr %offsets.i1192.i, align 4
  %arrayidx.i1093.i = getelementptr i32, ptr %1328, i32 %add.i
  %1329 = ptrtoint ptr %arrayidx.i1093.i to i32
  call void @__asan_load4_noabort(i32 %1329)
  %1330 = load i32, ptr %arrayidx.i1093.i, align 4
  %arrayidx2.i.i = getelementptr i32, ptr %1328, i32 %sub.ptr.div.i
  %1331 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %1331)
  %1332 = load i32, ptr %arrayidx2.i.i, align 4
  %1333 = xor i32 %1332, -1
  %sub3.i.i = add i32 %1330, %1333
  %phi.bo.i = and i32 %sub3.i.i, 16777215
  %phi.bo1280.i = or i32 %phi.bo.i, 167772160
  br label %bpf2a32_offset.exit.i

bpf2a32_offset.exit.i:                            ; preds = %if.end.i1094.i, %emit_ar_r.exit.i.bpf2a32_offset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo1280.i, %if.end.i1094.i ], [ 167772160, %emit_ar_r.exit.i.bpf2a32_offset.exit.i_crit_edge ]
  %1334 = zext i32 %1259 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1334, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1259, label %bpf2a32_offset.exit.i.sw.epilog517.i_crit_edge [
    i32 4, label %bpf2a32_offset.exit.i.sw.bb262.i_crit_edge
    i32 3, label %bpf2a32_offset.exit.i.sw.bb262.i_crit_edge1133
    i32 0, label %sw.bb265.i
    i32 1, label %sw.bb268.i
    i32 2, label %sw.bb271.i
    i32 5, label %sw.bb274.i
    i32 6, label %sw.bb277.i
    i32 10, label %sw.bb280.i
    i32 9, label %sw.bb283.i
    i32 11, label %sw.bb286.i
    i32 12, label %sw.bb289.i
  ]

bpf2a32_offset.exit.i.sw.bb262.i_crit_edge1133:   ; preds = %bpf2a32_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb262.i

bpf2a32_offset.exit.i.sw.bb262.i_crit_edge:       ; preds = %bpf2a32_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb262.i

bpf2a32_offset.exit.i.sw.epilog517.i_crit_edge:   ; preds = %bpf2a32_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

sw.bb262.i:                                       ; preds = %bpf2a32_offset.exit.i.sw.bb262.i_crit_edge, %bpf2a32_offset.exit.i.sw.bb262.i_crit_edge1133
  br i1 %cmp.i1092.i, label %sw.bb262.i._emit.exit.i_crit_edge, label %if.then.i1099.i

sw.bb262.i._emit.exit.i_crit_edge:                ; preds = %sw.bb262.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit.i

if.then.i1099.i:                                  ; preds = %sw.bb262.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1097.i = or i32 %retval.0.i.i, 268435456
  %1335 = tail call i32 @llvm.bswap.i32(i32 %or.i1097.i) #14
  %1336 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1336)
  %1337 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1098.i = getelementptr i32, ptr %1326, i32 %1337
  %1338 = ptrtoint ptr %arrayidx.i1098.i to i32
  call void @__asan_store4_noabort(i32 %1338)
  store i32 %1335, ptr %arrayidx.i1098.i, align 4
  br label %_emit.exit.i

_emit.exit.i:                                     ; preds = %if.then.i1099.i, %sw.bb262.i._emit.exit.i_crit_edge
  %1339 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1339)
  %1340 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i = add i32 %1340, 1
  store i32 %inc.i.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb265.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb265.i._emit.exit1109.i_crit_edge, label %if.then.i1105.i

sw.bb265.i._emit.exit1109.i_crit_edge:            ; preds = %sw.bb265.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1109.i

if.then.i1105.i:                                  ; preds = %sw.bb265.i
  call void @__sanitizer_cov_trace_pc() #16
  %1341 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #14
  %1342 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1104.i = getelementptr i32, ptr %1326, i32 %1343
  %1344 = ptrtoint ptr %arrayidx.i1104.i to i32
  call void @__asan_store4_noabort(i32 %1344)
  store i32 %1341, ptr %arrayidx.i1104.i, align 4
  br label %_emit.exit1109.i

_emit.exit1109.i:                                 ; preds = %if.then.i1105.i, %sw.bb265.i._emit.exit1109.i_crit_edge
  %1345 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1107.i = add i32 %1346, 1
  store i32 %inc.i1107.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb268.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb268.i._emit.exit1119.i_crit_edge, label %if.then.i1115.i

sw.bb268.i._emit.exit1119.i_crit_edge:            ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1119.i

if.then.i1115.i:                                  ; preds = %sw.bb268.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1112.i = or i32 %retval.0.i.i, -2147483648
  %1347 = tail call i32 @llvm.bswap.i32(i32 %or.i1112.i) #14
  %1348 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1114.i = getelementptr i32, ptr %1326, i32 %1349
  %1350 = ptrtoint ptr %arrayidx.i1114.i to i32
  call void @__asan_store4_noabort(i32 %1350)
  store i32 %1347, ptr %arrayidx.i1114.i, align 4
  br label %_emit.exit1119.i

_emit.exit1119.i:                                 ; preds = %if.then.i1115.i, %sw.bb268.i._emit.exit1119.i_crit_edge
  %1351 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1351)
  %1352 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1117.i = add i32 %1352, 1
  store i32 %inc.i1117.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb271.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb271.i._emit.exit1129.i_crit_edge, label %if.then.i1125.i

sw.bb271.i._emit.exit1129.i_crit_edge:            ; preds = %sw.bb271.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1129.i

if.then.i1125.i:                                  ; preds = %sw.bb271.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1122.i = or i32 %retval.0.i.i, 536870912
  %1353 = tail call i32 @llvm.bswap.i32(i32 %or.i1122.i) #14
  %1354 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1354)
  %1355 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1124.i = getelementptr i32, ptr %1326, i32 %1355
  %1356 = ptrtoint ptr %arrayidx.i1124.i to i32
  call void @__asan_store4_noabort(i32 %1356)
  store i32 %1353, ptr %arrayidx.i1124.i, align 4
  br label %_emit.exit1129.i

_emit.exit1129.i:                                 ; preds = %if.then.i1125.i, %sw.bb271.i._emit.exit1129.i_crit_edge
  %1357 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1357)
  %1358 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1127.i = add i32 %1358, 1
  store i32 %inc.i1127.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb274.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb274.i._emit.exit1139.i_crit_edge, label %if.then.i1135.i

sw.bb274.i._emit.exit1139.i_crit_edge:            ; preds = %sw.bb274.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1139.i

if.then.i1135.i:                                  ; preds = %sw.bb274.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1132.i = or i32 %retval.0.i.i, -1342177280
  %1359 = tail call i32 @llvm.bswap.i32(i32 %or.i1132.i) #14
  %1360 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1360)
  %1361 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1134.i = getelementptr i32, ptr %1326, i32 %1361
  %1362 = ptrtoint ptr %arrayidx.i1134.i to i32
  call void @__asan_store4_noabort(i32 %1362)
  store i32 %1359, ptr %arrayidx.i1134.i, align 4
  br label %_emit.exit1139.i

_emit.exit1139.i:                                 ; preds = %if.then.i1135.i, %sw.bb274.i._emit.exit1139.i_crit_edge
  %1363 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1363)
  %1364 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1137.i = add i32 %1364, 1
  store i32 %inc.i1137.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb277.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb277.i._emit.exit1149.i_crit_edge, label %if.then.i1145.i

sw.bb277.i._emit.exit1149.i_crit_edge:            ; preds = %sw.bb277.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1149.i

if.then.i1145.i:                                  ; preds = %sw.bb277.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1142.i = or i32 %retval.0.i.i, -1610612736
  %1365 = tail call i32 @llvm.bswap.i32(i32 %or.i1142.i) #14
  %1366 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1144.i = getelementptr i32, ptr %1326, i32 %1367
  %1368 = ptrtoint ptr %arrayidx.i1144.i to i32
  call void @__asan_store4_noabort(i32 %1368)
  store i32 %1365, ptr %arrayidx.i1144.i, align 4
  br label %_emit.exit1149.i

_emit.exit1149.i:                                 ; preds = %if.then.i1145.i, %sw.bb277.i._emit.exit1149.i_crit_edge
  %1369 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1369)
  %1370 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1147.i = add i32 %1370, 1
  store i32 %inc.i1147.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb280.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb280.i._emit.exit1159.i_crit_edge, label %if.then.i1155.i

sw.bb280.i._emit.exit1159.i_crit_edge:            ; preds = %sw.bb280.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1159.i

if.then.i1155.i:                                  ; preds = %sw.bb280.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1152.i = or i32 %retval.0.i.i, -1879048192
  %1371 = tail call i32 @llvm.bswap.i32(i32 %or.i1152.i) #14
  %1372 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1372)
  %1373 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1154.i = getelementptr i32, ptr %1326, i32 %1373
  %1374 = ptrtoint ptr %arrayidx.i1154.i to i32
  call void @__asan_store4_noabort(i32 %1374)
  store i32 %1371, ptr %arrayidx.i1154.i, align 4
  br label %_emit.exit1159.i

_emit.exit1159.i:                                 ; preds = %if.then.i1155.i, %sw.bb280.i._emit.exit1159.i_crit_edge
  %1375 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1375)
  %1376 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1157.i = add i32 %1376, 1
  store i32 %inc.i1157.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb283.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb283.i._emit.exit1169.i_crit_edge, label %if.then.i1165.i

sw.bb283.i._emit.exit1169.i_crit_edge:            ; preds = %sw.bb283.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1169.i

if.then.i1165.i:                                  ; preds = %sw.bb283.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1162.i = or i32 %retval.0.i.i, 805306368
  %1377 = tail call i32 @llvm.bswap.i32(i32 %or.i1162.i) #14
  %1378 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1378)
  %1379 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1164.i = getelementptr i32, ptr %1326, i32 %1379
  %1380 = ptrtoint ptr %arrayidx.i1164.i to i32
  call void @__asan_store4_noabort(i32 %1380)
  store i32 %1377, ptr %arrayidx.i1164.i, align 4
  br label %_emit.exit1169.i

_emit.exit1169.i:                                 ; preds = %if.then.i1165.i, %sw.bb283.i._emit.exit1169.i_crit_edge
  %1381 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1381)
  %1382 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1167.i = add i32 %1382, 1
  store i32 %inc.i1167.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb286.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb286.i._emit.exit1179.i_crit_edge, label %if.then.i1175.i

sw.bb286.i._emit.exit1179.i_crit_edge:            ; preds = %sw.bb286.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1179.i

if.then.i1175.i:                                  ; preds = %sw.bb286.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1172.i = or i32 %retval.0.i.i, -1342177280
  %1383 = tail call i32 @llvm.bswap.i32(i32 %or.i1172.i) #14
  %1384 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1384)
  %1385 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1174.i = getelementptr i32, ptr %1326, i32 %1385
  %1386 = ptrtoint ptr %arrayidx.i1174.i to i32
  call void @__asan_store4_noabort(i32 %1386)
  store i32 %1383, ptr %arrayidx.i1174.i, align 4
  br label %_emit.exit1179.i

_emit.exit1179.i:                                 ; preds = %if.then.i1175.i, %sw.bb286.i._emit.exit1179.i_crit_edge
  %1387 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1387)
  %1388 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1177.i = add i32 %1388, 1
  store i32 %inc.i1177.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb289.i:                                       ; preds = %bpf2a32_offset.exit.i
  br i1 %cmp.i1092.i, label %sw.bb289.i._emit.exit1189.i_crit_edge, label %if.then.i1185.i

sw.bb289.i._emit.exit1189.i_crit_edge:            ; preds = %sw.bb289.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit1189.i

if.then.i1185.i:                                  ; preds = %sw.bb289.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i1182.i = or i32 %retval.0.i.i, -1610612736
  %1389 = tail call i32 @llvm.bswap.i32(i32 %or.i1182.i) #14
  %1390 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1390)
  %1391 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i1184.i = getelementptr i32, ptr %1326, i32 %1391
  %1392 = ptrtoint ptr %arrayidx.i1184.i to i32
  call void @__asan_store4_noabort(i32 %1392)
  store i32 %1389, ptr %arrayidx.i1184.i, align 4
  br label %_emit.exit1189.i

_emit.exit1189.i:                                 ; preds = %if.then.i1185.i, %sw.bb289.i._emit.exit1189.i_crit_edge
  %1393 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1393)
  %1394 = load i32, ptr %idx.i1228.i, align 4
  %inc.i1187.i = add i32 %1394, 1
  store i32 %inc.i1187.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb293.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp295.i = icmp eq i16 %8, 0
  br i1 %cmp295.i, label %sw.bb293.i.sw.epilog517.i_crit_edge, label %if.end298.i

sw.bb293.i.sw.epilog517.i_crit_edge:              ; preds = %sw.bb293.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.end298.i:                                      ; preds = %sw.bb293.i
  %1395 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1395)
  %1396 = load ptr, ptr %target.i1226.i, align 4
  %cmp.i1191.i = icmp eq ptr %1396, null
  br i1 %cmp.i1191.i, label %if.end298.i.emit.exit1207.i_crit_edge, label %bpf2a32_offset.exit1198.thread.i

if.end298.i.emit.exit1207.i_crit_edge:            ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit1207.i

bpf2a32_offset.exit1198.thread.i:                 ; preds = %if.end298.i
  %conv294.i = sext i16 %8 to i32
  %add300.i = add nsw i32 %sub.ptr.div.i, %conv294.i
  %1397 = ptrtoint ptr %offsets.i1192.i to i32
  call void @__asan_load4_noabort(i32 %1397)
  %1398 = load ptr, ptr %offsets.i1192.i, align 4
  %arrayidx.i1193.i = getelementptr i32, ptr %1398, i32 %add300.i
  %1399 = ptrtoint ptr %arrayidx.i1193.i to i32
  call void @__asan_load4_noabort(i32 %1399)
  %1400 = load i32, ptr %arrayidx.i1193.i, align 4
  %arrayidx2.i1194.i = getelementptr i32, ptr %1398, i32 %sub.ptr.div.i
  %1401 = ptrtoint ptr %arrayidx2.i1194.i to i32
  call void @__asan_load4_noabort(i32 %1401)
  %1402 = load i32, ptr %arrayidx2.i1194.i, align 4
  %1403 = xor i32 %1402, -1
  %sub3.i1195.i = add i32 %1400, %1403
  %1404 = add i32 %sub3.i1195.i, -8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %1404)
  %1405 = icmp ult i32 %1404, -16777216
  br i1 %1405, label %do.end.i, label %if.then.i.i1204.i

do.end.i:                                         ; preds = %bpf2a32_offset.exit1198.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %call309.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub.ptr.div.i, i32 noundef %sub3.i1195.i, i32 noundef %sub3.i1195.i) #19
  br label %if.end6

if.then.i.i1204.i:                                ; preds = %bpf2a32_offset.exit1198.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %and3131260.i = and i32 %sub3.i1195.i, 16777215
  %or.i.i1201.i = or i32 %and3131260.i, -369098752
  %1406 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1201.i) #14
  %1407 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1407)
  %1408 = load i32, ptr %idx.i1228.i, align 4
  %arrayidx.i.i1203.i = getelementptr i32, ptr %1396, i32 %1408
  %1409 = ptrtoint ptr %arrayidx.i.i1203.i to i32
  call void @__asan_store4_noabort(i32 %1409)
  store i32 %1406, ptr %arrayidx.i.i1203.i, align 4
  br label %emit.exit1207.i

emit.exit1207.i:                                  ; preds = %if.then.i.i1204.i, %if.end298.i.emit.exit1207.i_crit_edge
  %1410 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1410)
  %1411 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i1206.i = add i32 %1411, 1
  store i32 %inc.i.i1206.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb315.i:                                       ; preds = %for.body
  %1412 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1412)
  %1413 = load i32, ptr %idx.i1228.i, align 4
  %1414 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1414)
  %1415 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i97 = icmp eq ptr %1415, null
  br i1 %cmp.not.i.i.i.i97, label %arm_bpf_get_reg32.exit498.i.thread, label %arm_bpf_get_reg32.exit.i101

arm_bpf_get_reg32.exit498.i.thread:               ; preds = %sw.bb315.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i497.i981 = add i32 %1413, 2
  br label %emit.exit.thread.i

arm_bpf_get_reg32.exit.i101:                      ; preds = %sw.bb315.i
  %arrayidx.i.i.i.i98 = getelementptr i32, ptr %1415, i32 %1413
  %1416 = ptrtoint ptr %arrayidx.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %1416)
  store i32 143662053, ptr %arrayidx.i.i.i.i98, align 4
  %1417 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1417)
  %.pr.i99 = load ptr, ptr %target.i1226.i, align 4
  %1418 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1418)
  %1419 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i100 = add i32 %1419, 1
  store i32 %inc.i.i.i.i100, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i492.i = icmp eq ptr %.pr.i99, null
  br i1 %cmp.not.i.i.i492.i, label %arm_bpf_get_reg32.exit498.thread.i, label %arm_bpf_get_reg32.exit498.i

arm_bpf_get_reg32.exit498.thread.i:               ; preds = %arm_bpf_get_reg32.exit.i101
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i497618.i = add i32 %1419, 2
  %1420 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1420)
  store i32 %inc.i.i.i497618.i, ptr %idx.i1228.i, align 4
  br label %emit.exit.i

arm_bpf_get_reg32.exit498.i:                      ; preds = %arm_bpf_get_reg32.exit.i101
  %arrayidx.i.i.i494.i = getelementptr i32, ptr %.pr.i99, i32 %inc.i.i.i.i100
  %1421 = ptrtoint ptr %arrayidx.i.i.i494.i to i32
  call void @__asan_store4_noabort(i32 %1421)
  store i32 276831205, ptr %arrayidx.i.i.i494.i, align 4
  %1422 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1422)
  %.pr617.i.pr = load ptr, ptr %target.i1226.i, align 4
  %1423 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1423)
  %1424 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i497.i = add i32 %1424, 1
  store i32 %inc.i.i.i497.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i102 = icmp eq ptr %.pr617.i.pr, null
  br i1 %cmp.not.i.i.i102, label %arm_bpf_get_reg32.exit498.i.emit.exit.thread.i_crit_edge, label %if.then.i.i.i104

arm_bpf_get_reg32.exit498.i.emit.exit.thread.i_crit_edge: ; preds = %arm_bpf_get_reg32.exit498.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.thread.i

emit.exit.thread.i:                               ; preds = %arm_bpf_get_reg32.exit498.i.emit.exit.thread.i_crit_edge, %arm_bpf_get_reg32.exit498.i.thread
  %inc.i.i.i497.i983 = phi i32 [ %inc.i.i.i497.i981, %arm_bpf_get_reg32.exit498.i.thread ], [ %inc.i.i.i497.i, %arm_bpf_get_reg32.exit498.i.emit.exit.thread.i_crit_edge ]
  %inc.i.i621.i = add i32 %inc.i.i.i497.i983, 1
  %1425 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1425)
  store i32 %inc.i.i621.i, ptr %idx.i1228.i, align 4
  br label %emit.exit506.i

if.then.i.i.i104:                                 ; preds = %arm_bpf_get_reg32.exit498.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i103 = getelementptr i32, ptr %.pr617.i.pr, i32 %inc.i.i.i497.i
  %1426 = ptrtoint ptr %arrayidx.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %1426)
  store i32 408984037, ptr %arrayidx.i.i.i103, align 4
  br label %emit.exit.i

emit.exit.i:                                      ; preds = %if.then.i.i.i104, %arm_bpf_get_reg32.exit498.thread.i
  %1427 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1427)
  %.pr620.i = load ptr, ptr %target.i1226.i, align 4
  %1428 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1428)
  %1429 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i105 = add i32 %1429, 1
  store i32 %inc.i.i.i105, ptr %idx.i1228.i, align 4
  %cmp.not.i.i500.i = icmp eq ptr %.pr620.i, null
  br i1 %cmp.not.i.i500.i, label %emit.exit506.thread.i, label %if.then.i.i503.i

emit.exit506.thread.i:                            ; preds = %emit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i505659.i = add i32 %1429, 2
  %1430 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1430)
  store i32 %inc.i.i505659.i, ptr %idx.i1228.i, align 4
  %1431 = load i32, ptr @out_offset, align 4
  br label %_emit.exit.thread.i

if.then.i.i503.i:                                 ; preds = %emit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i502.i = getelementptr i32, ptr %.pr620.i, i32 %inc.i.i.i105
  %1432 = ptrtoint ptr %arrayidx.i.i502.i to i32
  call void @__asan_store4_noabort(i32 %1432)
  store i32 100686049, ptr %arrayidx.i.i502.i, align 4
  br label %emit.exit506.i

emit.exit506.i:                                   ; preds = %if.then.i.i503.i, %emit.exit.thread.i
  %1433 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1433)
  %.pr658.i = load ptr, ptr %target.i1226.i, align 4
  %1434 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1434)
  %1435 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i505.i = add i32 %1435, 1
  store i32 %inc.i.i505.i, ptr %idx.i1228.i, align 4
  %1436 = load i32, ptr @out_offset, align 4
  %cmp.not.i.i106 = icmp eq ptr %.pr658.i, null
  br i1 %cmp.not.i.i106, label %emit.exit506.i._emit.exit.thread.i_crit_edge, label %_emit.exit.i111

emit.exit506.i._emit.exit.thread.i_crit_edge:     ; preds = %emit.exit506.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit.thread.i

_emit.exit.thread.i:                              ; preds = %emit.exit506.i._emit.exit.thread.i_crit_edge, %emit.exit506.thread.i
  %1437 = phi i32 [ %1431, %emit.exit506.thread.i ], [ %1436, %emit.exit506.i._emit.exit.thread.i_crit_edge ]
  %1438 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load i32, ptr %idx.i1228.i, align 4
  %inc.i624.i = add i32 %1439, 1
  store i32 %inc.i624.i, ptr %idx.i1228.i, align 4
  br label %arm_bpf_get_reg64.exit.i112

_emit.exit.i111:                                  ; preds = %emit.exit506.i
  %inc.i.i505.neg.i = xor i32 %1435, -1
  %sub.neg.i = add i32 %1413, 16777214
  %sub12.i = add i32 %sub.neg.i, %inc.i.i505.neg.i
  %sub13.i = add i32 %sub12.i, %1436
  %and.i107 = and i32 %sub13.i, 16777215
  %or.i.i108 = or i32 %and.i107, 704643072
  %1440 = tail call i32 @llvm.bswap.i32(i32 %or.i.i108) #14
  %arrayidx.i.i109 = getelementptr i32, ptr %.pr658.i, i32 %inc.i.i505.i
  %1441 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_store4_noabort(i32 %1441)
  store i32 %1440, ptr %arrayidx.i.i109, align 4
  %1442 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1442)
  %.pr623.i = load ptr, ptr %target.i1226.i, align 4
  %1443 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1443)
  %1444 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i110 = add i32 %1444, 1
  store i32 %inc.i.i110, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i508.i = icmp eq ptr %.pr623.i, null
  br i1 %cmp.not.i.i.i508.i, label %arm_bpf_get_reg64.exit.thread.i, label %if.then.i.i.i512.i

arm_bpf_get_reg64.exit.thread.i:                  ; preds = %_emit.exit.i111
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i514627.i = add i32 %1444, 2
  %1445 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1445)
  store i32 %inc.i.i.i514627.i, ptr %idx.i1228.i, align 4
  br label %emit.exit523.i

if.then.i.i.i512.i:                               ; preds = %_emit.exit.i111
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i511.i = getelementptr i32, ptr %.pr623.i, i32 %inc.i.i110
  %1446 = ptrtoint ptr %arrayidx.i.i.i511.i to i32
  call void @__asan_store4_noabort(i32 %1446)
  store i32 -664515615, ptr %arrayidx.i.i.i511.i, align 4
  br label %arm_bpf_get_reg64.exit.i112

arm_bpf_get_reg64.exit.i112:                      ; preds = %if.then.i.i.i512.i, %_emit.exit.thread.i
  %1447 = phi i32 [ %1437, %_emit.exit.thread.i ], [ %1436, %if.then.i.i.i512.i ]
  %1448 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1448)
  %.pr626.i = load ptr, ptr %target.i1226.i, align 4
  %1449 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1449)
  %1450 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i514.i = add i32 %1450, 1
  store i32 %inc.i.i.i514.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i516.i = icmp eq ptr %.pr626.i, null
  br i1 %cmp.not.i.i516.i, label %emit.exit523.thread.i, label %if.then.i.i520.i

emit.exit523.thread.i:                            ; preds = %arm_bpf_get_reg64.exit.i112
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i522630.i = add i32 %1450, 2
  %1451 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1451)
  store i32 %inc.i.i522630.i, ptr %idx.i1228.i, align 4
  br label %_emit.exit531.i

if.then.i.i520.i:                                 ; preds = %arm_bpf_get_reg64.exit.i112
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i519.i = getelementptr i32, ptr %.pr626.i, i32 %inc.i.i.i514.i
  %1452 = ptrtoint ptr %arrayidx.i.i519.i to i32
  call void @__asan_store4_noabort(i32 %1452)
  store i32 22499, ptr %arrayidx.i.i519.i, align 4
  br label %emit.exit523.i

emit.exit523.i:                                   ; preds = %if.then.i.i520.i, %arm_bpf_get_reg64.exit.thread.i
  %1453 = phi i32 [ %1436, %arm_bpf_get_reg64.exit.thread.i ], [ %1447, %if.then.i.i520.i ]
  %1454 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1454)
  %.pr629.i = load ptr, ptr %target.i1226.i, align 4
  %1455 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1455)
  %1456 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i522.i = add i32 %1456, 1
  store i32 %inc.i.i522.i, ptr %idx.i1228.i, align 4
  %cmp.not.i525.i = icmp eq ptr %.pr629.i, null
  br i1 %cmp.not.i525.i, label %_emit.exit531.thread.i, label %if.then.i528.i

_emit.exit531.thread.i:                           ; preds = %emit.exit523.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i530662.i = add i32 %1456, 2
  %1457 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1457)
  store i32 %inc.i530662.i, ptr %idx.i1228.i, align 4
  br label %_emit.exit540.thread.i

if.then.i528.i:                                   ; preds = %emit.exit523.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i527.i = getelementptr i32, ptr %.pr629.i, i32 %inc.i.i522.i
  %1458 = ptrtoint ptr %arrayidx.i527.i to i32
  call void @__asan_store4_noabort(i32 %1458)
  store i32 553670147, ptr %arrayidx.i527.i, align 4
  br label %_emit.exit531.i

_emit.exit531.i:                                  ; preds = %if.then.i528.i, %emit.exit523.thread.i
  %.ph.i = phi i32 [ %1453, %if.then.i528.i ], [ %1447, %emit.exit523.thread.i ]
  %1459 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1459)
  %.pr661.i = load ptr, ptr %target.i1226.i, align 4
  %1460 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1460)
  %1461 = load i32, ptr %idx.i1228.i, align 4
  %inc.i530.i = add i32 %1461, 1
  store i32 %inc.i530.i, ptr %idx.i1228.i, align 4
  %cmp.not.i533.i = icmp eq ptr %.pr661.i, null
  br i1 %cmp.not.i533.i, label %_emit.exit531.i._emit.exit540.thread.i_crit_edge, label %_emit.exit540.i

_emit.exit531.i._emit.exit540.thread.i_crit_edge: ; preds = %_emit.exit531.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit540.thread.i

_emit.exit540.thread.i:                           ; preds = %_emit.exit531.i._emit.exit540.thread.i_crit_edge, %_emit.exit531.thread.i
  %1462 = phi i32 [ %1453, %_emit.exit531.thread.i ], [ %.ph.i, %_emit.exit531.i._emit.exit540.thread.i_crit_edge ]
  %1463 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1463)
  %1464 = load i32, ptr %idx.i1228.i, align 4
  %inc.i539633.i = add i32 %1464, 1
  store i32 %inc.i539633.i, ptr %idx.i1228.i, align 4
  br label %emit.exit549.i

_emit.exit540.i:                                  ; preds = %_emit.exit531.i
  %inc.i530.neg.i = xor i32 %1461, -1
  %sub27.neg.i = add i32 %1413, 16777214
  %sub28.i = add i32 %sub27.neg.i, %.ph.i
  %sub29.i = add i32 %sub28.i, %inc.i530.neg.i
  %and30.i = and i32 %sub29.i, 16777215
  %or.i534.i = or i32 %and30.i, 704643072
  %1465 = tail call i32 @llvm.bswap.i32(i32 %or.i534.i) #14
  %arrayidx.i536.i = getelementptr i32, ptr %.pr661.i, i32 %inc.i530.i
  %1466 = ptrtoint ptr %arrayidx.i536.i to i32
  call void @__asan_store4_noabort(i32 %1466)
  store i32 %1465, ptr %arrayidx.i536.i, align 4
  %1467 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1467)
  %.pr632.i = load ptr, ptr %target.i1226.i, align 4
  %1468 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1468)
  %1469 = load i32, ptr %idx.i1228.i, align 4
  %inc.i539.i = add i32 %1469, 1
  store i32 %inc.i539.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i542.i = icmp eq ptr %.pr632.i, null
  br i1 %cmp.not.i.i542.i, label %emit.exit549.thread.i, label %if.then.i.i546.i

emit.exit549.thread.i:                            ; preds = %_emit.exit540.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i548636.i = add i32 %1469, 2
  %1470 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1470)
  store i32 %inc.i.i548636.i, ptr %idx.i1228.i, align 4
  br label %emit.exit558.i

if.then.i.i546.i:                                 ; preds = %_emit.exit540.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i545.i = getelementptr i32, ptr %.pr632.i, i32 %inc.i539.i
  %1471 = ptrtoint ptr %arrayidx.i.i545.i to i32
  call void @__asan_store4_noabort(i32 %1471)
  store i32 23107298, ptr %arrayidx.i.i545.i, align 4
  br label %emit.exit549.i

emit.exit549.i:                                   ; preds = %if.then.i.i546.i, %_emit.exit540.thread.i
  %1472 = phi i32 [ %1462, %_emit.exit540.thread.i ], [ %.ph.i, %if.then.i.i546.i ]
  %1473 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1473)
  %.pr635.i = load ptr, ptr %target.i1226.i, align 4
  %1474 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i548.i = add i32 %1475, 1
  store i32 %inc.i.i548.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i551.i = icmp eq ptr %.pr635.i, null
  br i1 %cmp.not.i.i551.i, label %emit.exit558.thread.i, label %if.then.i.i555.i

emit.exit558.thread.i:                            ; preds = %emit.exit549.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i557639.i = add i32 %1475, 2
  %1476 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1476)
  store i32 %inc.i.i557639.i, ptr %idx.i1228.i, align 4
  br label %if.then253.i

if.then.i.i555.i:                                 ; preds = %emit.exit549.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i554.i = getelementptr i32, ptr %.pr635.i, i32 %inc.i.i548.i
  %1477 = ptrtoint ptr %arrayidx.i.i554.i to i32
  call void @__asan_store4_noabort(i32 %1477)
  store i32 7383010, ptr %arrayidx.i.i554.i, align 4
  br label %emit.exit558.i

emit.exit558.i:                                   ; preds = %if.then.i.i555.i, %emit.exit549.thread.i
  %1478 = phi i32 [ %.ph.i, %emit.exit549.thread.i ], [ %1472, %if.then.i.i555.i ]
  %1479 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1479)
  %.pr638.i = load ptr, ptr %target.i1226.i, align 4
  %1480 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i557.i = add i32 %1481, 1
  store i32 %inc.i.i557.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i560.i = icmp eq ptr %.pr638.i, null
  br i1 %cmp.not.i.i.i560.i, label %if.then253.thread.i, label %if.then.i.i.i562.i

if.then253.thread.i:                              ; preds = %emit.exit558.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i60.i642.i = add i32 %1481, 2
  %1482 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1482)
  store i32 %inc.i.i60.i642.i, ptr %idx.i1228.i, align 4
  br label %emit.exit572.i

if.then.i.i.i562.i:                               ; preds = %emit.exit558.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i57.i.i = getelementptr i32, ptr %.pr638.i, i32 %inc.i.i557.i
  %1483 = ptrtoint ptr %arrayidx.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %1483)
  store i32 -127644703, ptr %arrayidx.i.i57.i.i, align 4
  br label %if.then253.i

if.then253.i:                                     ; preds = %if.then.i.i.i562.i, %emit.exit558.thread.i
  %1484 = phi i32 [ %1478, %if.then.i.i.i562.i ], [ %1472, %emit.exit558.thread.i ]
  %1485 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1485)
  %.pr641.i = load ptr, ptr %target.i1226.i, align 4
  %1486 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1486)
  %1487 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i60.i.i = add i32 %1487, 1
  store i32 %inc.i.i60.i.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i565.i = icmp eq ptr %.pr641.i, null
  br i1 %cmp.not.i.i565.i, label %emit.exit572.thread.i, label %if.then.i.i569.i

emit.exit572.thread.i:                            ; preds = %if.then253.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i571645.i = add i32 %1487, 2
  %1488 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1488)
  store i32 %inc.i.i571645.i, ptr %idx.i1228.i, align 4
  br label %emit.exit581.i

if.then.i.i569.i:                                 ; preds = %if.then253.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i568.i = getelementptr i32, ptr %.pr641.i, i32 %inc.i.i60.i.i
  %1489 = ptrtoint ptr %arrayidx.i.i568.i to i32
  call void @__asan_store4_noabort(i32 %1489)
  store i32 426674658, ptr %arrayidx.i.i568.i, align 4
  br label %emit.exit572.i

emit.exit572.i:                                   ; preds = %if.then.i.i569.i, %if.then253.thread.i
  %1490 = phi i32 [ %1478, %if.then253.thread.i ], [ %1484, %if.then.i.i569.i ]
  %1491 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1491)
  %.pr644.i = load ptr, ptr %target.i1226.i, align 4
  %1492 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1492)
  %1493 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i571.i = add i32 %1493, 1
  store i32 %inc.i.i571.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i574.i = icmp eq ptr %.pr644.i, null
  br i1 %cmp.not.i.i574.i, label %emit.exit581.thread.i, label %if.then.i.i578.i

emit.exit581.thread.i:                            ; preds = %emit.exit572.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i580648.i = add i32 %1493, 2
  %1494 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1494)
  store i32 %inc.i.i580648.i, ptr %idx.i1228.i, align 4
  br label %emit.exit589.i

if.then.i.i578.i:                                 ; preds = %emit.exit572.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i577.i = getelementptr i32, ptr %.pr644.i, i32 %inc.i.i571.i
  %1495 = ptrtoint ptr %arrayidx.i.i577.i to i32
  call void @__asan_store4_noabort(i32 %1495)
  store i32 140613351, ptr %arrayidx.i.i577.i, align 4
  br label %emit.exit581.i

emit.exit581.i:                                   ; preds = %if.then.i.i578.i, %emit.exit572.thread.i
  %1496 = phi i32 [ %1484, %emit.exit572.thread.i ], [ %1490, %if.then.i.i578.i ]
  %1497 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1497)
  %.pr647.i = load ptr, ptr %target.i1226.i, align 4
  %1498 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1498)
  %1499 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i580.i = add i32 %1499, 1
  store i32 %inc.i.i580.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i583.i = icmp eq ptr %.pr647.i, null
  br i1 %cmp.not.i.i583.i, label %emit.exit589.thread.i, label %if.then.i.i586.i

emit.exit589.thread.i:                            ; preds = %emit.exit581.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i588666.i = add i32 %1499, 2
  %1500 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1500)
  store i32 %inc.i.i588666.i, ptr %idx.i1228.i, align 4
  br label %_emit.exit597.thread.i

if.then.i.i586.i:                                 ; preds = %emit.exit581.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i585.i = getelementptr i32, ptr %.pr647.i, i32 %inc.i.i580.i
  %1501 = ptrtoint ptr %arrayidx.i.i585.i to i32
  call void @__asan_store4_noabort(i32 %1501)
  store i32 22243, ptr %arrayidx.i.i585.i, align 4
  br label %emit.exit589.i

emit.exit589.i:                                   ; preds = %if.then.i.i586.i, %emit.exit581.thread.i
  %.ph664.i = phi i32 [ %1496, %if.then.i.i586.i ], [ %1490, %emit.exit581.thread.i ]
  %1502 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1502)
  %.pr665.i = load ptr, ptr %target.i1226.i, align 4
  %1503 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1503)
  %1504 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i588.i = add i32 %1504, 1
  store i32 %inc.i.i588.i, ptr %idx.i1228.i, align 4
  %cmp.not.i591.i = icmp eq ptr %.pr665.i, null
  br i1 %cmp.not.i591.i, label %emit.exit589.i._emit.exit597.thread.i_crit_edge, label %_emit.exit597.i

emit.exit589.i._emit.exit597.thread.i_crit_edge:  ; preds = %emit.exit589.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_emit.exit597.thread.i

_emit.exit597.thread.i:                           ; preds = %emit.exit589.i._emit.exit597.thread.i_crit_edge, %emit.exit589.thread.i
  %1505 = phi i32 [ %1496, %emit.exit589.thread.i ], [ %.ph664.i, %emit.exit589.i._emit.exit597.thread.i_crit_edge ]
  %1506 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load i32, ptr %idx.i1228.i, align 4
  %inc.i596651.i = add i32 %1507, 1
  store i32 %inc.i596651.i, ptr %idx.i1228.i, align 4
  br label %emit.exit605.i

_emit.exit597.i:                                  ; preds = %emit.exit589.i
  %inc.i.i588.neg.i = xor i32 %1504, -1
  %sub306.neg.i = add i32 %1413, 16777214
  %sub307.i = add i32 %sub306.neg.i, %.ph664.i
  %sub308.i = add i32 %sub307.i, %inc.i.i588.neg.i
  %and309.i = and i32 %sub308.i, 16777215
  %or310.i = or i32 %and309.i, 167772160
  %1508 = tail call i32 @llvm.bswap.i32(i32 %or310.i) #14
  %arrayidx.i593.i = getelementptr i32, ptr %.pr665.i, i32 %inc.i.i588.i
  %1509 = ptrtoint ptr %arrayidx.i593.i to i32
  call void @__asan_store4_noabort(i32 %1509)
  store i32 %1508, ptr %arrayidx.i593.i, align 4
  %1510 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1510)
  %.pr650.i = load ptr, ptr %target.i1226.i, align 4
  %1511 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1511)
  %1512 = load i32, ptr %idx.i1228.i, align 4
  %inc.i596.i = add i32 %1512, 1
  store i32 %inc.i596.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i599.i = icmp eq ptr %.pr650.i, null
  br i1 %cmp.not.i.i599.i, label %emit.exit605.thread.i, label %if.then.i.i602.i

emit.exit605.thread.i:                            ; preds = %_emit.exit597.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i604654.i = add i32 %1512, 2
  %1513 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1513)
  store i32 %inc.i.i604654.i, ptr %idx.i1228.i, align 4
  br label %emit.exit614.i

if.then.i.i602.i:                                 ; preds = %_emit.exit597.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i601.i = getelementptr i32, ptr %.pr650.i, i32 %inc.i596.i
  %1514 = ptrtoint ptr %arrayidx.i.i601.i to i32
  call void @__asan_store4_noabort(i32 %1514)
  store i32 610309861, ptr %arrayidx.i.i601.i, align 4
  br label %emit.exit605.i

emit.exit605.i:                                   ; preds = %if.then.i.i602.i, %_emit.exit597.thread.i
  %1515 = phi i32 [ %1505, %_emit.exit597.thread.i ], [ %.ph664.i, %if.then.i.i602.i ]
  %1516 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1516)
  %.pr653.i = load ptr, ptr %target.i1226.i, align 4
  %1517 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1517)
  %1518 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i604.i = add i32 %1518, 1
  store i32 %inc.i.i604.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i607.i = icmp eq ptr %.pr653.i, null
  br i1 %cmp.not.i.i607.i, label %emit.exit614.thread.i, label %if.then.i.i611.i

emit.exit614.thread.i:                            ; preds = %emit.exit605.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i613670.i = add i32 %1518, 2
  %1519 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1519)
  store i32 %inc.i.i613670.i, ptr %idx.i1228.i, align 4
  br label %emit_bx_r.exit.i

if.then.i.i611.i:                                 ; preds = %emit.exit605.i
  call void @__sanitizer_cov_trace_pc() #16
  %1520 = ptrtoint ptr %prologue_bytes.i to i32
  call void @__asan_load4_noabort(i32 %1520)
  %1521 = load i32, ptr %prologue_bytes.i, align 4
  %or.i.i608.i = or i32 %1521, -494510080
  %1522 = tail call i32 @llvm.bswap.i32(i32 %or.i.i608.i) #14
  %arrayidx.i.i610.i = getelementptr i32, ptr %.pr653.i, i32 %inc.i.i604.i
  %1523 = ptrtoint ptr %arrayidx.i.i610.i to i32
  call void @__asan_store4_noabort(i32 %1523)
  store i32 %1522, ptr %arrayidx.i.i610.i, align 4
  br label %emit.exit614.i

emit.exit614.i:                                   ; preds = %if.then.i.i611.i, %emit.exit605.thread.i
  %.ph668.i = phi i32 [ %1515, %if.then.i.i611.i ], [ %.ph664.i, %emit.exit605.thread.i ]
  %1524 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1524)
  %.pr669.i = load ptr, ptr %target.i1226.i, align 4
  %1525 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1525)
  %1526 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i613.i = add i32 %1526, 1
  store i32 %inc.i.i613.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i2.i.i = icmp eq ptr %.pr669.i, null
  br i1 %cmp.not.i.i2.i.i, label %emit.exit614.i.emit_bx_r.exit.i_crit_edge, label %if.end.sink.split.i.i

emit.exit614.i.emit_bx_r.exit.i_crit_edge:        ; preds = %emit.exit614.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_bx_r.exit.i

if.end.sink.split.i.i:                            ; preds = %emit.exit614.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %1527 = load i32, ptr @elf_hwcap, align 4
  %and.i.i = and i32 %1527, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i113 = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i113, i32 116433121, i32 385822689
  %arrayidx.i.i4.i.i = getelementptr i32, ptr %.pr669.i, i32 %inc.i.i613.i
  %1528 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %1528)
  store i32 %..i.i, ptr %arrayidx.i.i4.i.i, align 4
  br label %emit_bx_r.exit.i

emit_bx_r.exit.i:                                 ; preds = %if.end.sink.split.i.i, %emit.exit614.i.emit_bx_r.exit.i_crit_edge, %emit.exit614.thread.i
  %1529 = phi i32 [ %1515, %emit.exit614.thread.i ], [ %.ph668.i, %emit.exit614.i.emit_bx_r.exit.i_crit_edge ], [ %.ph668.i, %if.end.sink.split.i.i ]
  %1530 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1530)
  %1531 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i7.i.i = add i32 %1531, 1
  store i32 %inc.i.i7.i.i, ptr %idx.i1228.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1529)
  %cmp328.i = icmp eq i32 %1529, -1
  %sub332.i = sub i32 %inc.i.i7.i.i, %1413
  br i1 %cmp328.i, label %if.then330.i, label %emit_bx_r.exit.i.if.end333.i_crit_edge

emit_bx_r.exit.i.if.end333.i_crit_edge:           ; preds = %emit_bx_r.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end333.i

if.then330.i:                                     ; preds = %emit_bx_r.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %sub332.i, ptr @out_offset, align 4
  br label %if.end333.i

if.end333.i:                                      ; preds = %if.then330.i, %emit_bx_r.exit.i.if.end333.i_crit_edge
  %1532 = load i32, ptr @out_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub332.i, i32 %1532)
  %cmp336.not.i = icmp eq i32 %sub332.i, %1532
  br i1 %cmp336.not.i, label %if.end333.i.sw.epilog517.i_crit_edge, label %land.end.i114

if.end333.i.sw.epilog517.i_crit_edge:             ; preds = %if.end333.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

land.end.i114:                                    ; preds = %if.end333.i
  %.b490.i = load i1, ptr @emit_bpf_tail_call.__already_done, align 1
  br i1 %.b490.i, label %land.end.i114.if.end6_crit_edge, label %if.then345.i, !prof !52

land.end.i114.if.end6_crit_edge:                  ; preds = %land.end.i114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then345.i:                                     ; preds = %land.end.i114
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @emit_bpf_tail_call.__already_done, align 1
  %call352.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %sub332.i, i32 noundef %1532) #19
  br label %if.end6

sw.bb320.i:                                       ; preds = %for.body
  %add321.i = add i32 %10, ptrtoint (ptr @__bpf_call_base to i32)
  tail call fastcc void @emit_a32_mov_r64(i1 noundef zeroext true, ptr noundef nonnull @bpf2a32, ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 1), ptr noundef %ctx) #14
  tail call fastcc void @emit_a32_mov_r64(i1 noundef zeroext true, ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 1), ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 2), ptr noundef %ctx) #14
  %1533 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1533)
  %1534 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i.i75 = icmp eq ptr %1534, null
  %1535 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1535)
  %1536 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i.i75, label %emit.exit.i.i82.thread, label %emit.exit.i.i82

emit.exit.i.i82.thread:                           ; preds = %sw.bb320.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i81988 = add i32 %1536, 1
  %1537 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1537)
  store i32 %inc.i.i.i.i81988, ptr %idx.i1228.i, align 4
  br label %emit_push_r64.exit95

emit.exit.i.i82:                                  ; preds = %sw.bb320.i
  %arrayidx.i.i.i.i78 = getelementptr i32, ptr %1534, i32 %1536
  %1538 = ptrtoint ptr %arrayidx.i.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %1538)
  store i32 -796767263, ptr %arrayidx.i.i.i.i78, align 4
  %1539 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1539)
  %.pr986 = load ptr, ptr %target.i1226.i, align 4
  %1540 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1540)
  %1541 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i81 = add i32 %1541, 1
  store i32 %inc.i.i.i.i81, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i85 = icmp eq ptr %.pr986, null
  br i1 %cmp.not.i.i.i85, label %emit_push_r64.exit95.thread, label %if.then.i.i.i92

emit_push_r64.exit95.thread:                      ; preds = %emit.exit.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  %1542 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i941034 = add i32 %1543, 1
  store i32 %inc.i.i.i941034, ptr %idx.i1228.i, align 4
  br label %emit.exit.i.i60.thread

if.then.i.i.i92:                                  ; preds = %emit.exit.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i91 = getelementptr i32, ptr %.pr986, i32 %inc.i.i.i.i81
  %1544 = ptrtoint ptr %arrayidx.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %1544)
  store i32 208361, ptr %arrayidx.i.i.i91, align 4
  br label %emit_push_r64.exit95

emit_push_r64.exit95:                             ; preds = %if.then.i.i.i92, %emit.exit.i.i82.thread
  %1545 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1545)
  %.pr1033 = load ptr, ptr %target.i1226.i, align 4
  %1546 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1546)
  %1547 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i94 = add i32 %1547, 1
  store i32 %inc.i.i.i94, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i53 = icmp eq ptr %.pr1033, null
  br i1 %cmp.not.i.i.i.i53, label %emit_push_r64.exit95.emit.exit.i.i60.thread_crit_edge, label %emit.exit.i.i60

emit_push_r64.exit95.emit.exit.i.i60.thread_crit_edge: ; preds = %emit_push_r64.exit95
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i60.thread

emit.exit.i.i60.thread:                           ; preds = %emit_push_r64.exit95.emit.exit.i.i60.thread_crit_edge, %emit_push_r64.exit95.thread
  %1548 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i59993 = add i32 %1549, 1
  store i32 %inc.i.i.i.i59993, ptr %idx.i1228.i, align 4
  br label %emit_push_r64.exit73

emit.exit.i.i60:                                  ; preds = %emit_push_r64.exit95
  %arrayidx.i.i.i.i56 = getelementptr i32, ptr %.pr1033, i32 %inc.i.i.i94
  %1550 = ptrtoint ptr %arrayidx.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %1550)
  store i32 -662615071, ptr %arrayidx.i.i.i.i56, align 4
  %1551 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1551)
  %.pr992 = load ptr, ptr %target.i1226.i, align 4
  %1552 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i59 = add i32 %1553, 1
  store i32 %inc.i.i.i.i59, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i63 = icmp eq ptr %.pr992, null
  br i1 %cmp.not.i.i.i63, label %emit_push_r64.exit73.thread, label %if.then.i.i.i70

emit_push_r64.exit73.thread:                      ; preds = %emit.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #16
  %1554 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i72996 = add i32 %1555, 1
  store i32 %inc.i.i.i72996, ptr %idx.i1228.i, align 4
  br label %emit.exit.i.i43

if.then.i.i.i70:                                  ; preds = %emit.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i69 = getelementptr i32, ptr %.pr992, i32 %inc.i.i.i.i59
  %1556 = ptrtoint ptr %arrayidx.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %1556)
  store i32 208361, ptr %arrayidx.i.i.i69, align 4
  br label %emit_push_r64.exit73

emit_push_r64.exit73:                             ; preds = %if.then.i.i.i70, %emit.exit.i.i60.thread
  %1557 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1557)
  %.pr995 = load ptr, ptr %target.i1226.i, align 4
  %1558 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1558)
  %1559 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i72 = add i32 %1559, 1
  store i32 %inc.i.i.i72, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i.i36 = icmp eq ptr %.pr995, null
  br i1 %cmp.not.i.i.i.i36, label %emit.exit.i.i43.thread, label %if.then.i.i.i.i40

emit.exit.i.i43.thread:                           ; preds = %emit_push_r64.exit73
  call void @__sanitizer_cov_trace_pc() #16
  %1560 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1560)
  %1561 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i42999 = add i32 %1561, 1
  store i32 %inc.i.i.i.i42999, ptr %idx.i1228.i, align 4
  br label %emit_push_r64.exit

if.then.i.i.i.i40:                                ; preds = %emit_push_r64.exit73
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i.i39 = getelementptr i32, ptr %.pr995, i32 %inc.i.i.i72
  %1562 = ptrtoint ptr %arrayidx.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %1562)
  store i32 -796832799, ptr %arrayidx.i.i.i.i39, align 4
  br label %emit.exit.i.i43

emit.exit.i.i43:                                  ; preds = %if.then.i.i.i.i40, %emit_push_r64.exit73.thread
  %1563 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1563)
  %.pr998 = load ptr, ptr %target.i1226.i, align 4
  %1564 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1564)
  %1565 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i.i42 = add i32 %1565, 1
  store i32 %inc.i.i.i.i42, ptr %idx.i1228.i, align 4
  %cmp.not.i.i.i45 = icmp eq ptr %.pr998, null
  br i1 %cmp.not.i.i.i45, label %emit.exit.i.i43.emit_push_r64.exit_crit_edge, label %if.then.i.i.i51

emit.exit.i.i43.emit_push_r64.exit_crit_edge:     ; preds = %emit.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_push_r64.exit

if.then.i.i.i51:                                  ; preds = %emit.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i.i50 = getelementptr i32, ptr %.pr998, i32 %inc.i.i.i.i42
  %1566 = ptrtoint ptr %arrayidx.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %1566)
  store i32 208361, ptr %arrayidx.i.i.i50, align 4
  br label %emit_push_r64.exit

emit_push_r64.exit:                               ; preds = %if.then.i.i.i51, %emit.exit.i.i43.emit_push_r64.exit_crit_edge, %emit.exit.i.i43.thread
  %1567 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i = add i32 %1568, 1
  store i32 %inc.i.i.i, ptr %idx.i1228.i, align 4
  tail call fastcc void @emit_mov_i(i8 noundef zeroext 6, i32 noundef %add321.i, ptr noundef %ctx) #14
  %1569 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load ptr, ptr %target.i1226.i, align 4
  %cmp.not.i.i.i1211.i = icmp eq ptr %1570, null
  %1571 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load i32, ptr %idx.i1228.i, align 4
  br i1 %cmp.not.i.i.i1211.i, label %emit_blx_r.exit.thread.i, label %emit_blx_r.exit.i

emit_blx_r.exit.thread.i:                         ; preds = %emit_push_r64.exit
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i12161265.i = add i32 %1572, 1
  %1573 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_store4_noabort(i32 %1573)
  store i32 %inc.i.i.i12161265.i, ptr %idx.i1228.i, align 4
  br label %emit.exit1225.i

emit_blx_r.exit.i:                                ; preds = %emit_push_r64.exit
  %arrayidx.i.i.i1213.i = getelementptr i32, ptr %1570, i32 %1572
  %1574 = ptrtoint ptr %arrayidx.i.i.i1213.i to i32
  call void @__asan_store4_noabort(i32 %1574)
  store i32 922693601, ptr %arrayidx.i.i.i1213.i, align 4
  %1575 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1575)
  %.pr1263.i = load ptr, ptr %target.i1226.i, align 4
  %1576 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1576)
  %1577 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i.i1216.i = add i32 %1577, 1
  store i32 %inc.i.i.i1216.i, ptr %idx.i1228.i, align 4
  %cmp.not.i.i1219.i = icmp eq ptr %.pr1263.i, null
  br i1 %cmp.not.i.i1219.i, label %emit_blx_r.exit.i.emit.exit1225.i_crit_edge, label %if.then.i.i1222.i

emit_blx_r.exit.i.emit.exit1225.i_crit_edge:      ; preds = %emit_blx_r.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit1225.i

if.then.i.i1222.i:                                ; preds = %emit_blx_r.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i1221.i = getelementptr i32, ptr %.pr1263.i, i32 %inc.i.i.i1216.i
  %1578 = ptrtoint ptr %arrayidx.i.i1221.i to i32
  call void @__asan_store4_noabort(i32 %1578)
  store i32 416320994, ptr %arrayidx.i.i1221.i, align 4
  br label %emit.exit1225.i

emit.exit1225.i:                                  ; preds = %if.then.i.i1222.i, %emit_blx_r.exit.i.emit.exit1225.i_crit_edge, %emit_blx_r.exit.thread.i
  %1579 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1579)
  %1580 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i1224.i = add i32 %1580, 1
  store i32 %inc.i.i1224.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

sw.bb437.i:                                       ; preds = %for.body
  %len.i = getelementptr inbounds %struct.bpf_prog, ptr %12, i32 0, i32 4
  %1581 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1581)
  %1582 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %1582, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %sub.i)
  %cmp439.i = icmp eq i32 %sub.ptr.div.i, %sub.i
  br i1 %cmp439.i, label %sw.bb437.i.sw.epilog517.i_crit_edge, label %if.end442.i

sw.bb437.i.sw.epilog517.i_crit_edge:              ; preds = %sw.bb437.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog517.i

if.end442.i:                                      ; preds = %sw.bb437.i
  %1583 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1583)
  %1584 = load ptr, ptr %target.i1226.i, align 4
  %cmp.i1227.i = icmp eq ptr %1584, null
  br i1 %cmp.i1227.i, label %if.end442.i.emit.exit1239.i_crit_edge, label %epilogue_offset.exit.thread.i

if.end442.i.emit.exit1239.i_crit_edge:            ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit1239.i

epilogue_offset.exit.thread.i:                    ; preds = %if.end442.i
  %1585 = ptrtoint ptr %epilogue_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %1585)
  %1586 = load i32, ptr %epilogue_offset.i.i, align 4
  %1587 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1587)
  %1588 = load i32, ptr %idx.i1228.i, align 4
  %sub.i.i = add i32 %1586, -2
  %sub1.i.i = sub i32 %sub.i.i, %1588
  %1589 = add i32 %sub1.i.i, -8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %1589)
  %1590 = icmp ult i32 %1589, -16777216
  br i1 %1590, label %do.end453.i, label %if.then.i.i1236.i

do.end453.i:                                      ; preds = %epilogue_offset.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %call455.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %sub.ptr.div.i, i32 noundef %sub1.i.i, i32 noundef %sub1.i.i) #19
  br label %if.end6

if.then.i.i1236.i:                                ; preds = %epilogue_offset.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  %and4591275.i = and i32 %sub1.i.i, 16777215
  %or.i.i1233.i = or i32 %and4591275.i, -369098752
  %1591 = tail call i32 @llvm.bswap.i32(i32 %or.i.i1233.i) #14
  %arrayidx.i.i1235.i = getelementptr i32, ptr %1584, i32 %1588
  %1592 = ptrtoint ptr %arrayidx.i.i1235.i to i32
  call void @__asan_store4_noabort(i32 %1592)
  store i32 %1591, ptr %arrayidx.i.i1235.i, align 4
  br label %emit.exit1239.i

emit.exit1239.i:                                  ; preds = %if.then.i.i1236.i, %if.end442.i.emit.exit1239.i_crit_edge
  %1593 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1593)
  %1594 = load i32, ptr %idx.i1228.i, align 4
  %inc.i.i1238.i = add i32 %1594, 1
  store i32 %inc.i.i1238.i, ptr %idx.i1228.i, align 4
  br label %sw.epilog517.i

land.end.i:                                       ; preds = %for.body.land.end.i_crit_edge, %for.body.land.end.i_crit_edge1066, %for.body.land.end.i_crit_edge1067, %for.body.land.end.i_crit_edge1068, %for.body.land.end.i_crit_edge1079, %for.body.land.end.i_crit_edge1080
  %.b812.i = load i1, ptr @build_insn.__already_done, align 1
  br i1 %.b812.i, label %land.end.i.if.end6_crit_edge, label %if.then472.i, !prof !52

land.end.i.if.end6_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then472.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @build_insn.__already_done, align 1
  %call478.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv.i) #19
  br label %if.end6

land.end495.i:                                    ; preds = %for.body
  %.b811814.i = load i1, ptr @build_insn.__already_done.8, align 1
  br i1 %.b811814.i, label %land.end495.i.if.end6_crit_edge, label %if.then502.i, !prof !52

land.end495.i.if.end6_crit_edge:                  ; preds = %land.end495.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then502.i:                                     ; preds = %land.end495.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @build_insn.__already_done.8, align 1
  %call508.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv.i) #19
  br label %if.end6

sw.epilog517.i:                                   ; preds = %emit.exit1239.i, %sw.bb437.i.sw.epilog517.i_crit_edge, %emit.exit1225.i, %if.end333.i.sw.epilog517.i_crit_edge, %emit.exit1207.i, %sw.bb293.i.sw.epilog517.i_crit_edge, %_emit.exit1189.i, %_emit.exit1179.i, %_emit.exit1169.i, %_emit.exit1159.i, %_emit.exit1149.i, %_emit.exit1139.i, %_emit.exit1129.i, %_emit.exit1119.i, %_emit.exit1109.i, %_emit.exit.i, %bpf2a32_offset.exit.i.sw.epilog517.i_crit_edge, %sw.bb240.i.sw.epilog517.i_crit_edge, %arm_bpf_get_reg64.exit.i, %sw.epilog221.i, %if.end32.sink.split.i.i.i, %if.end.i.i.i.sw.epilog517.i_crit_edge, %if.end32.sink.split.i, %if.end.i129.sw.epilog517.i_crit_edge, %sw.bb131.i, %sw.bb130.i, %if.end32.sink.split.i.i, %if.end.i.i190.sw.epilog517.i_crit_edge, %emit_mov_i.exit, %arm_bpf_put_reg32.exit.i205, %emit_a32_alu_i.exit.sw.epilog517.i_crit_edge, %if.end32.sink.split.i.i308, %if.end.i.i294.sw.epilog517.i_crit_edge, %if.end10.sink.split.i151.i, %if.else.i135.i.sw.epilog517.i_crit_edge, %if.end10.sink.split.i156.i, %if.else.i140.i.sw.epilog517.i_crit_edge, %if.end10.sink.split.i156.i574, %if.else.i140.i562.sw.epilog517.i_crit_edge, %if.end32.sink.split.i.i672, %if.end.i.i656.sw.epilog517.i_crit_edge, %if.end32.sink.split.i.i762, %if.end.i.i746.sw.epilog517.i_crit_edge, %emit_mov_i.exit902, %arm_bpf_put_reg32.exit.i774, %if.end70.i.sw.epilog517.i_crit_edge, %emit_mov_i.exit922, %arm_bpf_put_reg32.exit.i855, %arm_bpf_put_reg32.exit.i.sw.epilog517.i_crit_edge, %sw.bb27.i, %sw.bb22.i, %sw.bb17.i, %if.end.i, %emit_mov_i.exit942, %arm_bpf_put_reg32.exit.i870, %for.body.sw.epilog517.i_crit_edge
  %1595 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1595)
  %1596 = load i32, ptr %flags.i, align 4
  %1597 = and i32 %1596, 1
  %sext.i = sub nsw i32 0, %1597
  br label %if.end6

if.then:                                          ; preds = %for.body
  %conv202.i = zext i32 %10 to i64
  %imm204.i = getelementptr %struct.bpf_insn, ptr %arrayidx, i32 1, i32 3
  %1598 = ptrtoint ptr %imm204.i to i32
  call void @__asan_load4_noabort(i32 %1598)
  %1599 = load i32, ptr %imm204.i, align 4
  %conv205813.i = zext i32 %1599 to i64
  %shl206.i = shl nuw i64 %conv205813.i, 32
  %or207.i = or i64 %shl206.i, %conv202.i
  tail call fastcc void @emit_a32_mov_i64(ptr noundef %arrayidx.i, i64 noundef %or207.i, ptr noundef %ctx) #14
  %inc = add nuw i32 %i.01010, 1
  %1600 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1600)
  %1601 = load ptr, ptr %target.i1226.i, align 4
  %cmp3 = icmp eq ptr %1601, null
  br i1 %cmp3, label %if.then4, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %1602 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1602)
  %1603 = load i32, ptr %idx.i1228.i, align 4
  %1604 = ptrtoint ptr %offsets.i1192.i to i32
  call void @__asan_load4_noabort(i32 %1604)
  %1605 = load ptr, ptr %offsets.i1192.i, align 4
  %arrayidx5 = getelementptr i32, ptr %1605, i32 %inc
  %1606 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %1606)
  store i32 %1603, ptr %arrayidx5, align 4
  br label %for.inc

if.end6:                                          ; preds = %sw.epilog517.i, %if.then502.i, %land.end495.i.if.end6_crit_edge, %if.then472.i, %land.end.i.if.end6_crit_edge, %do.end453.i, %if.then345.i, %land.end.i114.if.end6_crit_edge, %do.end.i, %sw.bb103.i.if.end6_crit_edge, %sw.bb89.i.if.end6_crit_edge, %sw.bb78.i.if.end6_crit_edge, %sw.bb57.i.if.end6_crit_edge
  %retval.0.i.ph = phi i32 [ %sext.i, %sw.epilog517.i ], [ -22, %land.end495.i.if.end6_crit_edge ], [ -22, %if.then502.i ], [ -14, %land.end.i.if.end6_crit_edge ], [ -14, %if.then472.i ], [ -22, %sw.bb103.i.if.end6_crit_edge ], [ -22, %sw.bb89.i.if.end6_crit_edge ], [ -22, %sw.bb78.i.if.end6_crit_edge ], [ -22, %sw.bb57.i.if.end6_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end453.i ], [ -14, %if.then345.i ], [ -14, %land.end.i114.if.end6_crit_edge ]
  %1607 = ptrtoint ptr %target.i1226.i to i32
  call void @__asan_load4_noabort(i32 %1607)
  %1608 = load ptr, ptr %target.i1226.i, align 4
  %cmp8 = icmp eq ptr %1608, null
  br i1 %cmp8, label %if.then9, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %1609 = ptrtoint ptr %idx.i1228.i to i32
  call void @__asan_load4_noabort(i32 %1609)
  %1610 = load i32, ptr %idx.i1228.i, align 4
  %1611 = ptrtoint ptr %offsets.i1192.i to i32
  call void @__asan_load4_noabort(i32 %1611)
  %1612 = load ptr, ptr %offsets.i1192.i, align 4
  %arrayidx12 = getelementptr i32, ptr %1612, i32 %i.01010
  %1613 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %1613)
  store i32 %1610, ptr %arrayidx12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph)
  %tobool.not = icmp eq i32 %retval.0.i.ph, 0
  br i1 %tobool.not, label %if.end13.for.inc_crit_edge, label %if.end13.cleanup18_crit_edge

if.end13.cleanup18_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %if.then4, %if.then.for.inc_crit_edge
  %i.1.ph = phi i32 [ %inc, %if.then.for.inc_crit_edge ], [ %inc, %if.then4 ], [ %i.01010, %if.end13.for.inc_crit_edge ]
  %inc17 = add i32 %i.1.ph, 1
  %1614 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1614)
  %1615 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %inc17, %1615
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup18_crit_edge

for.inc.cleanup18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup18

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup18:                                        ; preds = %for.inc.cleanup18_crit_edge, %if.end13.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup18_crit_edge ], [ %retval.0.i.ph, %if.end13.cleanup18_crit_edge ], [ 0, %for.inc.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @build_prologue(ptr noundef %ctx) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %target.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, null
  %idx2.i.i258 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx2.i.i258, align 4
  br i1 %cmp.not.i.i, label %emit.exit.thread, label %emit.exit

emit.exit.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i259 = add i32 %3, 1
  %4 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc.i.i259, ptr %idx2.i.i258, align 4
  br label %emit.exit201

emit.exit:                                        ; preds = %entry
  %arrayidx.i.i = getelementptr i32, ptr %1, i32 %3
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -263508503, ptr %arrayidx.i.i, align 4
  %6 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %target.i.i, align 4
  %7 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i = add i32 %8, 1
  store i32 %inc.i.i, ptr %idx2.i.i258, align 4
  %cmp.not.i.i195 = icmp eq ptr %.pr, null
  br i1 %cmp.not.i.i195, label %emit.exit201.thread, label %if.then.i.i198

emit.exit201.thread:                              ; preds = %emit.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i200271 = add i32 %10, 1
  store i32 %inc.i.i200271, ptr %idx2.i.i258, align 4
  br label %emit.exit209.thread

if.then.i.i198:                                   ; preds = %emit.exit
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i197 = getelementptr i32, ptr %.pr, i32 %inc.i.i
  %11 = ptrtoint ptr %arrayidx.i.i197 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 229679329, ptr %arrayidx.i.i197, align 4
  br label %emit.exit201

emit.exit201:                                     ; preds = %if.then.i.i198, %emit.exit.thread
  %12 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr269 = load ptr, ptr %target.i.i, align 4
  %13 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i200 = add i32 %14, 1
  store i32 %inc.i.i200, ptr %idx2.i.i258, align 4
  %cmp.not.i.i203 = icmp eq ptr %.pr269, null
  br i1 %cmp.not.i.i203, label %emit.exit201.emit.exit209.thread_crit_edge, label %emit.exit209

emit.exit201.emit.exit209.thread_crit_edge:       ; preds = %emit.exit201
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit209.thread

emit.exit209.thread:                              ; preds = %emit.exit201.emit.exit209.thread_crit_edge, %emit.exit201.thread
  %15 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i208263 = add i32 %16, 1
  store i32 %inc.i.i208263, ptr %idx2.i.i258, align 4
  br label %emit.exit217

emit.exit209:                                     ; preds = %emit.exit201
  %arrayidx.i.i205 = getelementptr i32, ptr %.pr269, i32 %inc.i.i200
  %17 = ptrtoint ptr %arrayidx.i.i205 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3186915, ptr %arrayidx.i.i205, align 4
  %18 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr262 = load ptr, ptr %target.i.i, align 4
  %19 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i208 = add i32 %20, 1
  store i32 %inc.i.i208, ptr %idx2.i.i258, align 4
  %cmp.not.i.i211 = icmp eq ptr %.pr262, null
  br i1 %cmp.not.i.i211, label %emit.exit209.emit.exit217_crit_edge, label %if.then.i.i214

emit.exit209.emit.exit217_crit_edge:              ; preds = %emit.exit209
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit217

if.then.i.i214:                                   ; preds = %emit.exit209
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i213 = getelementptr i32, ptr %.pr262, i32 %inc.i.i208
  %21 = ptrtoint ptr %arrayidx.i.i213 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1344294370, ptr %arrayidx.i.i213, align 4
  br label %emit.exit217

emit.exit217:                                     ; preds = %if.then.i.i214, %emit.exit209.emit.exit217_crit_edge, %emit.exit209.thread
  %22 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i216 = add i32 %23, 1
  store i32 %inc.i.i216, ptr %idx2.i.i258, align 4
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aux, align 4
  %stack_depth = getelementptr inbounds %struct.bpf_prog_aux, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %stack_depth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stack_depth, align 4
  %add9 = add i32 %29, 87
  %and = and i32 %add9, -8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %emit.exit217
  %rot.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %emit.exit217 ]
  %mul.i = shl nuw nsw i32 %rot.011.i, 1
  %or.i.i = tail call i32 @llvm.fshr.i32(i32 255, i32 255, i32 %mul.i) #14
  %neg.i = xor i32 %or.i.i, -1
  %and.i = and i32 %and, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %and, i32 %and, i32 %mul.i) #14
  %shl.i = shl nuw nsw i32 %rot.011.i, 8
  %or.i232 = or i32 %or.i9.i, %shl.i
  br label %cond.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %rot.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.cond.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cond.end_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.end:                                         ; preds = %for.inc.i.cond.end_crit_edge, %if.then.i
  %cond = phi i32 [ %or.i232, %if.then.i ], [ -1, %for.inc.i.cond.end_crit_edge ]
  %stack_size = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 8
  %30 = ptrtoint ptr %stack_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond, ptr %stack_size, align 4
  %31 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i234 = icmp eq ptr %32, null
  br i1 %cmp.not.i.i234, label %cond.end.emit.exit241_crit_edge, label %if.then.i.i238

cond.end.emit.exit241_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit241

if.then.i.i238:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %or.i.i235 = or i32 %cond, -498216960
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i235) #14
  %arrayidx.i.i237 = getelementptr i32, ptr %32, i32 %inc.i.i216
  %34 = ptrtoint ptr %arrayidx.i.i237 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i.i237, align 4
  br label %emit.exit241

emit.exit241:                                     ; preds = %if.then.i.i238, %cond.end.emit.exit241_crit_edge
  %35 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i240 = add i32 %36, 1
  store i32 %inc.i.i240, ptr %idx2.i.i258, align 4
  tail call fastcc void @emit_a32_mov_r64(i1 noundef zeroext true, ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 10), ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 1), ptr noundef %ctx)
  %37 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i243 = icmp eq ptr %38, null
  br i1 %cmp.not.i.i243, label %emit.exit241.emit.exit249_crit_edge, label %if.then.i.i246

emit.exit241.emit.exit249_crit_edge:              ; preds = %emit.exit241
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit249

if.then.i.i246:                                   ; preds = %emit.exit241
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idx2.i.i258, align 4
  %arrayidx.i.i245 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i245 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2138339, ptr %arrayidx.i.i245, align 4
  br label %emit.exit249

emit.exit249:                                     ; preds = %if.then.i.i246, %emit.exit241.emit.exit249_crit_edge
  %42 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i248 = add i32 %43, 1
  store i32 %inc.i.i248, ptr %idx2.i.i258, align 4
  tail call fastcc void @emit_a32_mov_r64(i1 noundef zeroext true, ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 14), ptr noundef getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 1), ptr noundef %ctx)
  %44 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i251 = icmp eq ptr %45, null
  br i1 %cmp.not.i.i251, label %emit.exit249.emit.exit257_crit_edge, label %if.then.i.i254

emit.exit249.emit.exit257_crit_edge:              ; preds = %emit.exit249
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit257

if.then.i.i254:                                   ; preds = %emit.exit249
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %idx2.i.i258, align 4
  %arrayidx.i.i253 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i253 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2138337, ptr %arrayidx.i.i253, align 4
  br label %emit.exit257

emit.exit257:                                     ; preds = %if.then.i.i254, %emit.exit249.emit.exit257_crit_edge
  %49 = ptrtoint ptr %idx2.i.i258 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx2.i.i258, align 4
  %inc.i.i256 = add i32 %50, 1
  store i32 %inc.i.i256, ptr %idx2.i.i258, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_jit_binary_alloc(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal void @jit_fill_hole(ptr nocapture noundef writeonly %area, i32 noundef %size) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp2 = icmp ugt i32 %size, 3
  br i1 %cmp2, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ptr.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %area, %entry.for.body_crit_edge ]
  %size.addr.03 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %size, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %ptr.04, i32 1
  %0 = ptrtoint ptr %ptr.04 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -237044249, ptr %ptr.04, align 4
  %sub = add i32 %size.addr.03, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_jit_binary_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_jit_dump(i32 noundef %flen, i32 noundef %proglen, ptr noundef %image) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !39) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %flen, i32 noundef %proglen, i32 noundef 2, ptr noundef %image, ptr noundef %comm, i32 noundef %5) #19
  %tobool.not = icmp eq ptr %image, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %image, i32 noundef %proglen, i1 noundef zeroext false) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpf_jit_binary_lock_ro(ptr noundef %hdr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @find_vm_area(ptr noundef %hdr) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.set_vm_flush_reset_perms.exit_crit_edge, label %if.then.i

entry.set_vm_flush_reset_perms.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %set_vm_flush_reset_perms.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %1, 256
  store i32 %or.i, ptr %flags.i, align 4
  br label %set_vm_flush_reset_perms.exit

set_vm_flush_reset_perms.exit:                    ; preds = %if.then.i, %entry.set_vm_flush_reset_perms.exit_crit_edge
  %2 = ptrtoint ptr %hdr to i32
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hdr, align 8
  %call = tail call i32 @set_memory_ro(i32 noundef %2, i32 noundef %4) #14
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdr, align 8
  %call2 = tail call i32 @set_memory_x(i32 noundef %2, i32 noundef %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_jit_prog_release_other(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @emit_a32_mov_r64(i1 noundef zeroext %is64, ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %src, ptr noundef %ctx) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br i1 %is64, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr i8, ptr %dst, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr i8, ptr %src, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i.i = icmp slt i8 %3, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then.arm_bpf_get_reg32.exit.i_crit_edge

if.then.arm_bpf_get_reg32.exit.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit.i

if.then.i.i:                                      ; preds = %if.then
  %target.i.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %4 = ptrtoint ptr %target.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %5, null
  br i1 %cmp.not.i.i.i.i, label %if.then.i.i.emit.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.then.i.i.emit.exit.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = sext i8 %3 to i32
  %6 = sub nsw i32 0, %conv.i.i
  %or.i.i.i.i = or i32 %6, -451186688
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #14
  %idx.i.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %5, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx.i.i.i.i, align 4
  br label %emit.exit.i.i

emit.exit.i.i:                                    ; preds = %if.then.i.i.i.i, %if.then.i.i.emit.exit.i.i_crit_edge
  %idx2.i.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %idx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx2.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %12, 1
  store i32 %inc.i.i.i.i, ptr %idx2.i.i.i.i, align 4
  br label %arm_bpf_get_reg32.exit.i

arm_bpf_get_reg32.exit.i:                         ; preds = %emit.exit.i.i, %if.then.arm_bpf_get_reg32.exit.i_crit_edge
  %reg.addr.0.i.i = phi i8 [ 7, %emit.exit.i.i ], [ %3, %if.then.arm_bpf_get_reg32.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i2.i = icmp slt i8 %1, 0
  br i1 %cmp.i.i2.i, label %if.then.i5.i, label %if.else.i.i

if.then.i5.i:                                     ; preds = %arm_bpf_get_reg32.exit.i
  %target.i.i.i3.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %target.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %target.i.i.i3.i, align 4
  %cmp.not.i.i.i4.i = icmp eq ptr %14, null
  br i1 %cmp.not.i.i.i4.i, label %if.then.i5.i.if.end10.sink.split.i.i_crit_edge, label %if.then.i.i.i9.i

if.then.i5.i.if.end10.sink.split.i.i_crit_edge:   ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i

if.then.i.i.i9.i:                                 ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i6.i = sext i8 %1 to i32
  %15 = sub nsw i32 0, %conv.i6.i
  %conv.i.i.i = zext i8 %reg.addr.0.i.i to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 12
  %or3.i.i7.i = or i32 %shl.i.i.i, %15
  %or.i.i.i8.i = or i32 %or3.i.i7.i, -452263936
  br label %if.end10.sink.split.sink.split.i.i

if.else.i.i:                                      ; preds = %arm_bpf_get_reg32.exit.i
  call void @__sanitizer_cov_trace_cmp1(i8 %reg.addr.0.i.i, i8 %1)
  %cmp.not.i.i = icmp eq i8 %reg.addr.0.i.i, %1
  br i1 %cmp.not.i.i, label %if.else.i.i.emit_a32_mov_r.exit_crit_edge, label %if.then5.i.i

if.else.i.i.emit_a32_mov_r.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_a32_mov_r.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  %target.i.i17.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %16 = ptrtoint ptr %target.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %target.i.i17.i.i, align 4
  %cmp.not.i.i18.i.i = icmp eq ptr %17, null
  br i1 %cmp.not.i.i18.i.i, label %if.then5.i.i.if.end10.sink.split.i.i_crit_edge, label %if.then.i.i22.i.i

if.then5.i.i.if.end10.sink.split.i.i_crit_edge:   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i.i

if.then.i.i22.i.i:                                ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw nsw i32 %conv226.i.i, 12
  %conv3.i11.i = zext i8 %reg.addr.0.i.i to i32
  %or.i.i = or i32 %shl.i.i, %conv3.i11.i
  %or.i.i19.i.i = or i32 %or.i.i, -509607936
  br label %if.end10.sink.split.sink.split.i.i

if.end10.sink.split.sink.split.i.i:               ; preds = %if.then.i.i22.i.i, %if.then.i.i.i9.i
  %or.i.i19.sink.i.i = phi i32 [ %or.i.i19.i.i, %if.then.i.i22.i.i ], [ %or.i.i.i8.i, %if.then.i.i.i9.i ]
  %.sink28.i.i = phi ptr [ %17, %if.then.i.i22.i.i ], [ %14, %if.then.i.i.i9.i ]
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i.i) #14
  %idx.i.i20.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %idx.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx.i.i20.i.i, align 4
  %arrayidx.i.i21.i.i = getelementptr i32, ptr %.sink28.i.i, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %arrayidx.i.i21.i.i, align 4
  br label %if.end10.sink.split.i.i

if.end10.sink.split.i.i:                          ; preds = %if.end10.sink.split.sink.split.i.i, %if.then5.i.i.if.end10.sink.split.i.i_crit_edge, %if.then.i5.i.if.end10.sink.split.i.i_crit_edge
  %idx2.i.i.i10.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %22 = ptrtoint ptr %idx2.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx2.i.i.i10.i, align 4
  %inc.i.i24.i.i = add i32 %23, 1
  store i32 %inc.i.i24.i.i, ptr %idx2.i.i.i10.i, align 4
  br label %emit_a32_mov_r.exit

emit_a32_mov_r.exit:                              ; preds = %if.end10.sink.split.i.i, %if.else.i.i.emit_a32_mov_r.exit_crit_edge
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aux, align 4
  %verifier_zext = getelementptr inbounds %struct.bpf_prog_aux, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %verifier_zext to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %verifier_zext, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not = icmp eq i8 %29, 0
  br i1 %tobool2.not, label %if.then3, label %emit_a32_mov_r.exit.if.end50_crit_edge

emit_a32_mov_r.exit.if.end50_crit_edge:           ; preds = %emit_a32_mov_r.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then3:                                         ; preds = %emit_a32_mov_r.exit
  %30 = ptrtoint ptr %dst to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i.i = icmp slt i8 %31, 0
  %target.i.i.i171 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %32 = ptrtoint ptr %target.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %target.i.i.i171, align 4
  %cmp.not.i.i.i172 = icmp eq ptr %33, null
  br i1 %cmp.i.i, label %if.then.i.i77, label %if.else.i

if.then.i.i77:                                    ; preds = %if.then3
  %idx2.i.i.i.i177180 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %34 = ptrtoint ptr %idx2.i.i.i.i177180 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx2.i.i.i.i177180, align 4
  br i1 %cmp.not.i.i.i172, label %emit_mov_i.exit179.thread, label %emit_mov_i.exit179

emit_mov_i.exit179.thread:                        ; preds = %if.then.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i178181 = add i32 %35, 1
  %36 = ptrtoint ptr %idx2.i.i.i.i177180 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i.i.i.i178181, ptr %idx2.i.i.i.i177180, align 4
  br label %if.end50.sink.split

emit_mov_i.exit179:                               ; preds = %if.then.i.i77
  %arrayidx.i.i.i.i176 = getelementptr i32, ptr %33, i32 %35
  %37 = ptrtoint ptr %arrayidx.i.i.i.i176 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6332643, ptr %arrayidx.i.i.i.i176, align 4
  %38 = ptrtoint ptr %target.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load ptr, ptr %target.i.i.i171, align 4
  %39 = ptrtoint ptr %idx2.i.i.i.i177180 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idx2.i.i.i.i177180, align 4
  %inc.i.i.i.i178 = add i32 %40, 1
  store i32 %inc.i.i.i.i178, ptr %idx2.i.i.i.i177180, align 4
  %cmp.not.i.i.i.i76 = icmp eq ptr %.pr, null
  br i1 %cmp.not.i.i.i.i76, label %emit_mov_i.exit179.if.end50.sink.split_crit_edge, label %if.end10.sink.split.sink.split.i.i82

emit_mov_i.exit179.if.end50.sink.split_crit_edge: ; preds = %emit_mov_i.exit179
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.sink.split

if.end10.sink.split.sink.split.i.i82:             ; preds = %emit_mov_i.exit179
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i78 = sext i8 %31 to i32
  %41 = sub nsw i32 0, %conv.i.i78
  %or.i.i.i.i79 = or i32 %41, -452239360
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i79) #14
  %arrayidx.i.i21.i.i81 = getelementptr i32, ptr %.pr, i32 %inc.i.i.i.i178
  %43 = ptrtoint ptr %arrayidx.i.i21.i.i81 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx.i.i21.i.i81, align 4
  br label %if.end50.sink.split

if.else.i:                                        ; preds = %if.then3
  br i1 %cmp.not.i.i.i172, label %if.else.i.emit_mov_i.exit_crit_edge, label %if.then.i.i.i

if.else.i.emit_mov_i.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_mov_i.exit

if.then.i.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i165 = zext i8 %31 to i32
  %shl.i166 = shl nuw nsw i32 %conv.i165, 12
  %or.i.i165.i = or i32 %shl.i166, -476053504
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i) #14
  %idx.i.i.i.i167 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %45 = ptrtoint ptr %idx.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idx.i.i.i.i167, align 4
  %arrayidx.i.i.i.i168 = getelementptr i32, ptr %33, i32 %46
  %47 = ptrtoint ptr %arrayidx.i.i.i.i168 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %arrayidx.i.i.i.i168, align 4
  br label %emit_mov_i.exit

emit_mov_i.exit:                                  ; preds = %if.then.i.i.i, %if.else.i.emit_mov_i.exit_crit_edge
  %idx2.i.i.i.i169 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  br label %if.end50.sink.split

if.else:                                          ; preds = %entry
  %arrayidx5 = getelementptr i8, ptr %src, i32 1
  %48 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp.i = icmp slt i8 %49, 0
  %arrayidx6 = getelementptr i8, ptr %dst, i32 1
  %50 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp.i85 = icmp slt i8 %51, 0
  %target.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %52 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i86 = icmp eq ptr %53, null
  br i1 %cmp.i, label %land.lhs.true, label %if.else24

land.lhs.true:                                    ; preds = %if.else
  br i1 %cmp.i85, label %if.then8, label %if.then19

if.then8:                                         ; preds = %land.lhs.true
  br i1 %cmp.not.i.i86, label %emit.exit.thread, label %emit.exit

emit.exit.thread:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %idx2.i.i189 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %54 = ptrtoint ptr %idx2.i.i189 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %idx2.i.i189, align 4
  %inc.i.i190 = add i32 %55, 1
  store i32 %inc.i.i190, ptr %idx2.i.i189, align 4
  br label %if.end50.sink.split

emit.exit:                                        ; preds = %if.then8
  %conv = sext i8 %49 to i32
  %56 = sub nsw i32 0, %conv
  %conv9.i184 = shl nuw nsw i32 %56, 4
  %and.i = and i32 %conv9.i184, 3840
  %and13.i = and i32 %56, 15
  %or11.i = or i32 %and13.i, %and.i
  %or.i.i87 = or i32 %or11.i, -515153712
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i.i87) #14
  %idx.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %58 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %idx.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %53, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %arrayidx.i.i, align 4
  %61 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr188 = load ptr, ptr %target.i.i, align 4
  %idx2.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %62 = ptrtoint ptr %idx2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %idx2.i.i, align 4
  %inc.i.i = add i32 %63, 1
  store i32 %inc.i.i, ptr %idx2.i.i, align 4
  %cmp.not.i.i98 = icmp eq ptr %.pr188, null
  br i1 %cmp.not.i.i98, label %emit.exit.if.end50.sink.split_crit_edge, label %if.then.i.i102

emit.exit.if.end50.sink.split_crit_edge:          ; preds = %emit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.sink.split

if.then.i.i102:                                   ; preds = %emit.exit
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx6, align 1
  %66 = tail call i8 @llvm.abs.i8(i8 %65, i1 false)
  %conv9.i91185 = zext i8 %66 to i32
  %and.i92 = shl nuw nsw i32 %conv9.i91185, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp20.i89 = icmp slt i8 %65, 0
  %op.addr.0.i90 = select i1 %cmp20.i89, i32 21717232, i32 30105840
  %or11.i95 = or i32 %op.addr.0.i90, %conv9.i91185
  %or14.i96 = or i32 %or11.i95, %and.i92
  %or.i.i99 = or i32 %or14.i96, -536870912
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i99) #14
  %arrayidx.i.i101 = getelementptr i32, ptr %.pr188, i32 %inc.i.i
  %68 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx.i.i101, align 4
  br label %if.end50.sink.split

if.then19:                                        ; preds = %land.lhs.true
  br i1 %cmp.not.i.i86, label %if.then19.emit.exit123_crit_edge, label %if.then.i.i120

if.then19.emit.exit123_crit_edge:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit123

if.then.i.i120:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %conv22 = sext i8 %49 to i32
  %69 = sub nsw i32 0, %conv22
  %conv9.i109186 = shl nuw nsw i32 %69, 4
  %and.i110 = and i32 %conv9.i109186, 3840
  %and13.i112 = and i32 %69, 15
  %70 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx6, align 1
  %conv.i = zext i8 %71 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %or11.i113 = or i32 %and13.i112, %and.i110
  %or14.i114 = or i32 %or11.i113, %shl.i
  %or.i.i117 = or i32 %or14.i114, -515178288
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i117) #14
  %idx.i.i118 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %73 = ptrtoint ptr %idx.i.i118 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %idx.i.i118, align 4
  %arrayidx.i.i119 = getelementptr i32, ptr %53, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %arrayidx.i.i119, align 4
  br label %emit.exit123

emit.exit123:                                     ; preds = %if.then.i.i120, %if.then19.emit.exit123_crit_edge
  %idx2.i.i121 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  br label %if.end50.sink.split

if.else24:                                        ; preds = %if.else
  br i1 %cmp.i85, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.else24
  br i1 %cmp.not.i.i86, label %if.then27.emit.exit146_crit_edge, label %if.then.i.i143

if.then27.emit.exit146_crit_edge:                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit146

if.then.i.i143:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  %conv30 = sext i8 %51 to i32
  %76 = sub nsw i32 0, %conv30
  %conv9.i132187 = shl nuw nsw i32 %76, 4
  %and.i133 = and i32 %conv9.i132187, 3840
  %and13.i135 = and i32 %76, 15
  %conv.i125 = zext i8 %49 to i32
  %shl.i126 = shl nuw nsw i32 %conv.i125, 12
  %or3.i128 = or i32 %shl.i126, %and13.i135
  %or14.i137 = or i32 %or3.i128, %and.i133
  %or.i.i140 = or i32 %or14.i137, -515178256
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i.i140) #14
  %idx.i.i141 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %78 = ptrtoint ptr %idx.i.i141 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %idx.i.i141, align 4
  %arrayidx.i.i142 = getelementptr i32, ptr %53, i32 %79
  %80 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %77, ptr %arrayidx.i.i142, align 4
  br label %emit.exit146

emit.exit146:                                     ; preds = %if.then.i.i143, %if.then27.emit.exit146_crit_edge
  %idx2.i.i144 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  br label %if.end50.sink.split

if.else32:                                        ; preds = %if.else24
  br i1 %cmp.not.i.i86, label %emit.exit155.thread, label %emit.exit155

emit.exit155.thread:                              ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #16
  %idx2.i.i153194 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %81 = ptrtoint ptr %idx2.i.i153194 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %idx2.i.i153194, align 4
  %inc.i.i154195 = add i32 %82, 1
  store i32 %inc.i.i154195, ptr %idx2.i.i153194, align 4
  br label %if.end50.sink.split

emit.exit155:                                     ; preds = %if.else32
  %83 = ptrtoint ptr %dst to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dst, align 1
  %conv34 = sext i8 %84 to i32
  %shl = shl nsw i32 %conv34, 12
  %85 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %src, align 1
  %conv37 = sext i8 %86 to i32
  %or = or i32 %shl, %conv37
  %or.i.i149 = or i32 %or, -509607936
  %87 = tail call i32 @llvm.bswap.i32(i32 %or.i.i149) #14
  %idx.i.i150 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %88 = ptrtoint ptr %idx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %idx.i.i150, align 4
  %arrayidx.i.i151 = getelementptr i32, ptr %53, i32 %89
  %90 = ptrtoint ptr %arrayidx.i.i151 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %arrayidx.i.i151, align 4
  %91 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr193 = load ptr, ptr %target.i.i, align 4
  %idx2.i.i153 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %92 = ptrtoint ptr %idx2.i.i153 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %idx2.i.i153, align 4
  %inc.i.i154 = add i32 %93, 1
  store i32 %inc.i.i154, ptr %idx2.i.i153, align 4
  %cmp.not.i.i157 = icmp eq ptr %.pr193, null
  br i1 %cmp.not.i.i157, label %emit.exit155.if.end50.sink.split_crit_edge, label %if.then.i.i161

emit.exit155.if.end50.sink.split_crit_edge:       ; preds = %emit.exit155
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50.sink.split

if.then.i.i161:                                   ; preds = %emit.exit155
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx6, align 1
  %conv40 = sext i8 %95 to i32
  %shl41 = shl nsw i32 %conv40, 12
  %96 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx5, align 1
  %conv45 = sext i8 %97 to i32
  %or42 = or i32 %shl41, %conv45
  %or.i.i158 = or i32 %or42, -509607936
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i.i158) #14
  %arrayidx.i.i160 = getelementptr i32, ptr %.pr193, i32 %inc.i.i154
  %99 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx.i.i160, align 4
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %if.then.i.i161, %emit.exit155.if.end50.sink.split_crit_edge, %emit.exit155.thread, %emit.exit146, %emit.exit123, %if.then.i.i102, %emit.exit.if.end50.sink.split_crit_edge, %emit.exit.thread, %emit_mov_i.exit, %if.end10.sink.split.sink.split.i.i82, %emit_mov_i.exit179.if.end50.sink.split_crit_edge, %emit_mov_i.exit179.thread
  %idx2.i.i.i.i169.sink198 = phi ptr [ %idx2.i.i.i.i169, %emit_mov_i.exit ], [ %idx2.i.i144, %emit.exit146 ], [ %idx2.i.i121, %emit.exit123 ], [ %idx2.i.i.i.i177180, %emit_mov_i.exit179.thread ], [ %idx2.i.i.i.i177180, %if.end10.sink.split.sink.split.i.i82 ], [ %idx2.i.i.i.i177180, %emit_mov_i.exit179.if.end50.sink.split_crit_edge ], [ %idx2.i.i189, %emit.exit.thread ], [ %idx2.i.i, %emit.exit.if.end50.sink.split_crit_edge ], [ %idx2.i.i, %if.then.i.i102 ], [ %idx2.i.i153194, %emit.exit155.thread ], [ %idx2.i.i153, %emit.exit155.if.end50.sink.split_crit_edge ], [ %idx2.i.i153, %if.then.i.i161 ]
  %100 = ptrtoint ptr %idx2.i.i.i.i169.sink198 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %idx2.i.i.i.i169.sink198, align 4
  %inc.i.i.i.i170 = add i32 %101, 1
  store i32 %inc.i.i.i.i170, ptr %idx2.i.i.i.i169.sink198, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %emit_a32_mov_r.exit.if.end50_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @emit_a32_alu_r64(i1 noundef zeroext %is64, ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %src, ptr noundef %ctx, i8 noundef zeroext %op) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr i8, ptr %dst, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i = icmp slt i8 %1, 0
  br i1 %cmp.i.i, label %if.then.i, label %entry.arm_bpf_get_reg64.exit_crit_edge

entry.arm_bpf_get_reg64.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit

if.then.i:                                        ; preds = %entry
  %target.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %3, null
  br i1 %cmp.not.i.i.i, label %if.then.i.emit.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.emit.exit.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i8 %1 to i32
  %4 = sub nsw i32 0, %conv.i
  %conv9.i7.i = shl nuw nsw i32 %4, 4
  %and.i.i = and i32 %conv9.i7.i, 3840
  %and13.i.i = and i32 %4, 15
  %or11.i.i = or i32 %and13.i.i, %and.i.i
  %or.i.i.i = or i32 %or11.i.i, -515153712
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #14
  %idx.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %3, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx.i.i.i, align 4
  br label %emit.exit.i

emit.exit.i:                                      ; preds = %if.then.i.i.i, %if.then.i.emit.exit.i_crit_edge
  %idx2.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %idx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx2.i.i.i, align 4
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %idx2.i.i.i, align 4
  br label %arm_bpf_get_reg64.exit

arm_bpf_get_reg64.exit:                           ; preds = %emit.exit.i, %entry.arm_bpf_get_reg64.exit_crit_edge
  %reg.addr.0.i = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i ], [ %dst, %entry.arm_bpf_get_reg64.exit_crit_edge ]
  %arrayidx.i32 = getelementptr i8, ptr %src, i32 1
  %11 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.i33 = icmp slt i8 %12, 0
  br i1 %is64, label %if.then, label %if.else

if.then:                                          ; preds = %arm_bpf_get_reg64.exit
  br i1 %cmp.i.i33, label %if.then.i36, label %if.then.arm_bpf_get_reg64.exit51_crit_edge

if.then.arm_bpf_get_reg64.exit51_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit51

if.then.i36:                                      ; preds = %if.then
  %target.i.i.i34 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %target.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %target.i.i.i34, align 4
  %cmp.not.i.i.i35 = icmp eq ptr %14, null
  br i1 %cmp.not.i.i.i35, label %if.then.i36.emit.exit.i49_crit_edge, label %if.then.i.i.i46

if.then.i36.emit.exit.i49_crit_edge:              ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i49

if.then.i.i.i46:                                  ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i37 = sext i8 %12 to i32
  %15 = sub nsw i32 0, %conv.i37
  %conv9.i7.i38 = shl nuw nsw i32 %15, 4
  %and.i.i39 = and i32 %conv9.i7.i38, 3840
  %and13.i.i40 = and i32 %15, 15
  %or11.i.i41 = or i32 %and13.i.i40, %and.i.i39
  %or.i.i.i43 = or i32 %or11.i.i41, -515145520
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i43) #14
  %idx.i.i.i44 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %idx.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx.i.i.i44, align 4
  %arrayidx.i.i.i45 = getelementptr i32, ptr %14, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %arrayidx.i.i.i45, align 4
  br label %emit.exit.i49

emit.exit.i49:                                    ; preds = %if.then.i.i.i46, %if.then.i36.emit.exit.i49_crit_edge
  %idx2.i.i.i47 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %20 = ptrtoint ptr %idx2.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx2.i.i.i47, align 4
  %inc.i.i.i48 = add i32 %21, 1
  store i32 %inc.i.i.i48, ptr %idx2.i.i.i47, align 4
  br label %arm_bpf_get_reg64.exit51

arm_bpf_get_reg64.exit51:                         ; preds = %emit.exit.i49, %if.then.arm_bpf_get_reg64.exit51_crit_edge
  %reg.addr.0.i50 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), %emit.exit.i49 ], [ %src, %if.then.arm_bpf_get_reg64.exit51_crit_edge ]
  %arrayidx = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i8, ptr %reg.addr.0.i50, i32 1
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2, align 1
  tail call fastcc void @emit_alu_r(i8 noundef zeroext %23, i8 noundef zeroext %25, i1 noundef zeroext false, i8 noundef zeroext %op, ptr noundef %ctx)
  %26 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg.addr.0.i, align 1
  %28 = ptrtoint ptr %reg.addr.0.i50 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg.addr.0.i50, align 1
  tail call fastcc void @emit_alu_r(i8 noundef zeroext %27, i8 noundef zeroext %29, i1 noundef zeroext true, i8 noundef zeroext %op, ptr noundef %ctx)
  br label %if.end13

if.else:                                          ; preds = %arm_bpf_get_reg64.exit
  br i1 %cmp.i.i33, label %if.then.i55, label %if.else.arm_bpf_get_reg32.exit_crit_edge

if.else.arm_bpf_get_reg32.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit

if.then.i55:                                      ; preds = %if.else
  %target.i.i.i53 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %30 = ptrtoint ptr %target.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %target.i.i.i53, align 4
  %cmp.not.i.i.i54 = icmp eq ptr %31, null
  br i1 %cmp.not.i.i.i54, label %if.then.i55.emit.exit.i63_crit_edge, label %if.then.i.i.i60

if.then.i55.emit.exit.i63_crit_edge:              ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i63

if.then.i.i.i60:                                  ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i56 = sext i8 %12 to i32
  %32 = sub nsw i32 0, %conv.i56
  %or.i.i.i57 = or i32 %32, -451182592
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i57) #14
  %idx.i.i.i58 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %34 = ptrtoint ptr %idx.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idx.i.i.i58, align 4
  %arrayidx.i.i.i59 = getelementptr i32, ptr %31, i32 %35
  %36 = ptrtoint ptr %arrayidx.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %arrayidx.i.i.i59, align 4
  br label %emit.exit.i63

emit.exit.i63:                                    ; preds = %if.then.i.i.i60, %if.then.i55.emit.exit.i63_crit_edge
  %idx2.i.i.i61 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %37 = ptrtoint ptr %idx2.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %idx2.i.i.i61, align 4
  %inc.i.i.i62 = add i32 %38, 1
  store i32 %inc.i.i.i62, ptr %idx2.i.i.i61, align 4
  br label %arm_bpf_get_reg32.exit

arm_bpf_get_reg32.exit:                           ; preds = %emit.exit.i63, %if.else.arm_bpf_get_reg32.exit_crit_edge
  %reg.addr.0.i64 = phi i8 [ 8, %emit.exit.i63 ], [ %12, %if.else.arm_bpf_get_reg32.exit_crit_edge ]
  %arrayidx9 = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx9, align 1
  tail call fastcc void @emit_alu_r(i8 noundef zeroext %40, i8 noundef zeroext %reg.addr.0.i64, i1 noundef zeroext false, i8 noundef zeroext %op, ptr noundef %ctx)
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %aux, align 4
  %verifier_zext = getelementptr inbounds %struct.bpf_prog_aux, ptr %44, i32 0, i32 21
  %45 = ptrtoint ptr %verifier_zext to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %verifier_zext, align 8, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool10.not = icmp eq i8 %46, 0
  br i1 %tobool10.not, label %if.then11, label %arm_bpf_get_reg32.exit.if.end13_crit_edge

arm_bpf_get_reg32.exit.if.end13_crit_edge:        ; preds = %arm_bpf_get_reg32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %arm_bpf_get_reg32.exit
  %47 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reg.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp.i.i65 = icmp slt i8 %48, 0
  %target.i.i.i87 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %49 = ptrtoint ptr %target.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %target.i.i.i87, align 4
  %cmp.not.i.i.i88 = icmp eq ptr %50, null
  br i1 %cmp.i.i65, label %if.then.i.i, label %if.else.i

if.then.i.i:                                      ; preds = %if.then11
  %idx2.i.i.i.i9396 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %51 = ptrtoint ptr %idx2.i.i.i.i9396 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idx2.i.i.i.i9396, align 4
  br i1 %cmp.not.i.i.i88, label %emit_mov_i.exit95.thread, label %emit_mov_i.exit95

emit_mov_i.exit95.thread:                         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i.i.i9497 = add i32 %52, 1
  %53 = ptrtoint ptr %idx2.i.i.i.i9396 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc.i.i.i.i9497, ptr %idx2.i.i.i.i9396, align 4
  br label %arm_bpf_put_reg32.exit.i

emit_mov_i.exit95:                                ; preds = %if.then.i.i
  %arrayidx.i.i.i.i92 = getelementptr i32, ptr %50, i32 %52
  %54 = ptrtoint ptr %arrayidx.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6332643, ptr %arrayidx.i.i.i.i92, align 4
  %55 = ptrtoint ptr %target.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load ptr, ptr %target.i.i.i87, align 4
  %56 = ptrtoint ptr %idx2.i.i.i.i9396 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %idx2.i.i.i.i9396, align 4
  %inc.i.i.i.i94 = add i32 %57, 1
  store i32 %inc.i.i.i.i94, ptr %idx2.i.i.i.i9396, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %cmp.not.i.i.i.i, label %emit_mov_i.exit95.arm_bpf_put_reg32.exit.i_crit_edge, label %if.end10.sink.split.sink.split.i.i

emit_mov_i.exit95.arm_bpf_put_reg32.exit.i_crit_edge: ; preds = %emit_mov_i.exit95
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit.i

if.end10.sink.split.sink.split.i.i:               ; preds = %emit_mov_i.exit95
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i = sext i8 %48 to i32
  %58 = sub nsw i32 0, %conv.i.i
  %or.i.i.i.i = or i32 %58, -452239360
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #14
  %arrayidx.i.i21.i.i = getelementptr i32, ptr %.pr, i32 %inc.i.i.i.i94
  %60 = ptrtoint ptr %arrayidx.i.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx.i.i21.i.i, align 4
  br label %arm_bpf_put_reg32.exit.i

arm_bpf_put_reg32.exit.i:                         ; preds = %if.end10.sink.split.sink.split.i.i, %emit_mov_i.exit95.arm_bpf_put_reg32.exit.i_crit_edge, %emit_mov_i.exit95.thread
  %61 = ptrtoint ptr %idx2.i.i.i.i9396 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %idx2.i.i.i.i9396, align 4
  %inc.i.i24.i.i = add i32 %62, 1
  store i32 %inc.i.i24.i.i, ptr %idx2.i.i.i.i9396, align 4
  br label %if.end13

if.else.i:                                        ; preds = %if.then11
  br i1 %cmp.not.i.i.i88, label %if.else.i.emit_mov_i.exit_crit_edge, label %if.then.i.i.i85

if.else.i.emit_mov_i.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit_mov_i.exit

if.then.i.i.i85:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i83 = zext i8 %48 to i32
  %shl.i84 = shl nuw nsw i32 %conv.i83, 12
  %or.i.i165.i = or i32 %shl.i84, -476053504
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165.i) #14
  %idx.i.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %64 = ptrtoint ptr %idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %50, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %arrayidx.i.i.i.i, align 4
  br label %emit_mov_i.exit

emit_mov_i.exit:                                  ; preds = %if.then.i.i.i85, %if.else.i.emit_mov_i.exit_crit_edge
  %idx2.i.i.i.i86 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %67 = ptrtoint ptr %idx2.i.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %idx2.i.i.i.i86, align 4
  %inc.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i, ptr %idx2.i.i.i.i86, align 4
  br label %if.end13

if.end13:                                         ; preds = %emit_mov_i.exit, %arm_bpf_put_reg32.exit.i, %arm_bpf_get_reg32.exit.if.end13_crit_edge, %arm_bpf_get_reg64.exit51
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp.i.i67 = icmp slt i8 %70, 0
  br i1 %cmp.i.i67, label %if.then.i70, label %if.else.i79

if.then.i70:                                      ; preds = %if.end13
  %target.i.i.i68 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %71 = ptrtoint ptr %target.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %target.i.i.i68, align 4
  %cmp.not.i.i.i69 = icmp eq ptr %72, null
  br i1 %cmp.not.i.i.i69, label %if.then.i70.if.end32.sink.split.i_crit_edge, label %if.then.i.i.i78

if.then.i70.if.end32.sink.split.i_crit_edge:      ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i

if.then.i.i.i78:                                  ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i71 = sext i8 %70 to i32
  %73 = sub nsw i32 0, %conv.i71
  %conv9.i62.i = shl nuw nsw i32 %73, 4
  %and.i.i72 = and i32 %conv9.i62.i, 3840
  %and13.i.i73 = and i32 %73, 15
  %arrayidx1.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %74 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx1.i, align 1
  %conv.i.i74 = zext i8 %75 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i74, 12
  %or11.i.i75 = or i32 %and13.i.i73, %and.i.i72
  %or14.i.i76 = or i32 %shl.i.i, %or11.i.i75
  %or.i.i.i77 = or i32 %or14.i.i76, -515178256
  br label %if.end32.sink.split.sink.split.i

if.else.i79:                                      ; preds = %if.end13
  %arrayidx6.i = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %76 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %77)
  %cmp.not.i = icmp eq i8 %70, %77
  br i1 %cmp.not.i, label %if.else.i79.if.end.i_crit_edge, label %if.then9.i

if.else.i79.if.end.i_crit_edge:                   ; preds = %if.else.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then9.i:                                       ; preds = %if.else.i79
  %target.i.i44.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %78 = ptrtoint ptr %target.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %target.i.i44.i, align 4
  %cmp.not.i.i45.i = icmp eq ptr %79, null
  br i1 %cmp.not.i.i45.i, label %if.then9.i.emit.exit52.i_crit_edge, label %if.then.i.i49.i

if.then9.i.emit.exit52.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i

if.then.i.i49.i:                                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i = zext i8 %70 to i32
  %shl.i = shl nuw nsw i32 %conv563.i, 12
  %conv7.i = sext i8 %77 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %or.i.i46.i = or i32 %or.i, -509607936
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i) #14
  %idx.i.i47.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %81 = ptrtoint ptr %idx.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %idx.i.i47.i, align 4
  %arrayidx.i.i48.i = getelementptr i32, ptr %79, i32 %82
  %83 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %arrayidx.i.i48.i, align 4
  br label %emit.exit52.i

emit.exit52.i:                                    ; preds = %if.then.i.i49.i, %if.then9.i.emit.exit52.i_crit_edge
  %idx2.i.i50.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %84 = ptrtoint ptr %idx2.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %idx2.i.i50.i, align 4
  %inc.i.i51.i = add i32 %85, 1
  store i32 %inc.i.i51.i, ptr %idx2.i.i50.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %emit.exit52.i, %if.else.i79.if.end.i_crit_edge
  %86 = ptrtoint ptr %dst to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dst, align 1
  %88 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %reg.addr.0.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp20.not.i = icmp eq i8 %87, %89
  br i1 %cmp20.not.i, label %if.end.i.arm_bpf_put_reg64.exit_crit_edge, label %if.then22.i

if.end.i.arm_bpf_put_reg64.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg64.exit

if.then22.i:                                      ; preds = %if.end.i
  %target.i.i53.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %90 = ptrtoint ptr %target.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %target.i.i53.i, align 4
  %cmp.not.i.i54.i = icmp eq ptr %91, null
  br i1 %cmp.not.i.i54.i, label %if.then22.i.if.end32.sink.split.i_crit_edge, label %if.then.i.i58.i

if.then22.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i

if.then.i.i58.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i = sext i8 %87 to i32
  %shl25.i = shl nsw i32 %conv17.i, 12
  %conv19.i = sext i8 %89 to i32
  %or26.i = or i32 %shl25.i, %conv19.i
  %or.i.i55.i = or i32 %or26.i, -509607936
  br label %if.end32.sink.split.sink.split.i

if.end32.sink.split.sink.split.i:                 ; preds = %if.then.i.i58.i, %if.then.i.i.i78
  %or.i.i55.sink.i = phi i32 [ %or.i.i55.i, %if.then.i.i58.i ], [ %or.i.i.i77, %if.then.i.i.i78 ]
  %.sink65.i = phi ptr [ %91, %if.then.i.i58.i ], [ %72, %if.then.i.i.i78 ]
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i) #14
  %idx.i.i56.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %93 = ptrtoint ptr %idx.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %idx.i.i56.i, align 4
  %arrayidx.i.i57.i = getelementptr i32, ptr %.sink65.i, i32 %94
  %95 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %92, ptr %arrayidx.i.i57.i, align 4
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.end32.sink.split.sink.split.i, %if.then22.i.if.end32.sink.split.i_crit_edge, %if.then.i70.if.end32.sink.split.i_crit_edge
  %idx2.i.i.i80 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %96 = ptrtoint ptr %idx2.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %idx2.i.i.i80, align 4
  %inc.i.i60.i = add i32 %97, 1
  store i32 %inc.i.i60.i, ptr %idx2.i.i.i80, align 4
  br label %arm_bpf_put_reg64.exit

arm_bpf_put_reg64.exit:                           ; preds = %if.end32.sink.split.i, %if.end.i.arm_bpf_put_reg64.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @emit_a32_mul_r64(ptr nocapture noundef readonly %dst, ptr nocapture noundef readonly %src, ptr noundef %ctx) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i = getelementptr i8, ptr %dst, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i = icmp slt i8 %1, 0
  br i1 %cmp.i.i, label %if.then.i, label %entry.arm_bpf_get_reg64.exit_crit_edge

entry.arm_bpf_get_reg64.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit

if.then.i:                                        ; preds = %entry
  %target.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %3, null
  br i1 %cmp.not.i.i.i, label %if.then.i.emit.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.emit.exit.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i8 %1 to i32
  %4 = sub nsw i32 0, %conv.i
  %conv9.i7.i = shl nuw nsw i32 %4, 4
  %and.i.i = and i32 %conv9.i7.i, 3840
  %and13.i.i = and i32 %4, 15
  %or11.i.i = or i32 %and13.i.i, %and.i.i
  %or.i.i.i = or i32 %or11.i.i, -515153712
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #14
  %idx.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %3, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx.i.i.i, align 4
  br label %emit.exit.i

emit.exit.i:                                      ; preds = %if.then.i.i.i, %if.then.i.emit.exit.i_crit_edge
  %idx2.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %idx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx2.i.i.i, align 4
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %idx2.i.i.i, align 4
  br label %arm_bpf_get_reg64.exit

arm_bpf_get_reg64.exit:                           ; preds = %emit.exit.i, %entry.arm_bpf_get_reg64.exit_crit_edge
  %reg.addr.0.i = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), %emit.exit.i ], [ %dst, %entry.arm_bpf_get_reg64.exit_crit_edge ]
  %arrayidx.i53 = getelementptr i8, ptr %src, i32 1
  %11 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i.i54 = icmp slt i8 %12, 0
  br i1 %cmp.i.i54, label %if.then.i57, label %arm_bpf_get_reg64.exit.arm_bpf_get_reg64.exit72_crit_edge

arm_bpf_get_reg64.exit.arm_bpf_get_reg64.exit72_crit_edge: ; preds = %arm_bpf_get_reg64.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg64.exit72

if.then.i57:                                      ; preds = %arm_bpf_get_reg64.exit
  %target.i.i.i55 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %target.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %target.i.i.i55, align 4
  %cmp.not.i.i.i56 = icmp eq ptr %14, null
  br i1 %cmp.not.i.i.i56, label %if.then.i57.emit.exit.i70_crit_edge, label %if.then.i.i.i67

if.then.i57.emit.exit.i70_crit_edge:              ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i70

if.then.i.i.i67:                                  ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i58 = sext i8 %12 to i32
  %15 = sub nsw i32 0, %conv.i58
  %conv9.i7.i59 = shl nuw nsw i32 %15, 4
  %and.i.i60 = and i32 %conv9.i7.i59, 3840
  %and13.i.i61 = and i32 %15, 15
  %or11.i.i62 = or i32 %and13.i.i61, %and.i.i60
  %or.i.i.i64 = or i32 %or11.i.i62, -515145520
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i64) #14
  %idx.i.i.i65 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %idx.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %idx.i.i.i65, align 4
  %arrayidx.i.i.i66 = getelementptr i32, ptr %14, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %arrayidx.i.i.i66, align 4
  br label %emit.exit.i70

emit.exit.i70:                                    ; preds = %if.then.i.i.i67, %if.then.i57.emit.exit.i70_crit_edge
  %idx2.i.i.i68 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %20 = ptrtoint ptr %idx2.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx2.i.i.i68, align 4
  %inc.i.i.i69 = add i32 %21, 1
  store i32 %inc.i.i.i69, ptr %idx2.i.i.i68, align 4
  br label %arm_bpf_get_reg64.exit72

arm_bpf_get_reg64.exit72:                         ; preds = %emit.exit.i70, %arm_bpf_get_reg64.exit.arm_bpf_get_reg64.exit72_crit_edge
  %reg.addr.0.i71 = phi ptr [ getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 13), %emit.exit.i70 ], [ %src, %arm_bpf_get_reg64.exit.arm_bpf_get_reg64.exit72_crit_edge ]
  %arrayidx = getelementptr i8, ptr %reg.addr.0.i, i32 1
  %target.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %22 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %23, null
  br i1 %cmp.not.i.i, label %emit.exit.thread, label %emit.exit

emit.exit.thread:                                 ; preds = %arm_bpf_get_reg64.exit72
  call void @__sanitizer_cov_trace_pc() #16
  %idx2.i.i146 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %24 = ptrtoint ptr %idx2.i.i146 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx2.i.i146, align 4
  %inc.i.i147 = add i32 %25, 1
  store i32 %inc.i.i147, ptr %idx2.i.i146, align 4
  %arrayidx9148 = getelementptr i8, ptr %reg.addr.0.i71, i32 1
  br label %emit.exit81.thread

emit.exit:                                        ; preds = %arm_bpf_get_reg64.exit72
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %27 to i32
  %shl = shl nsw i32 %conv, 8
  %28 = ptrtoint ptr %reg.addr.0.i71 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg.addr.0.i71, align 1
  %conv3 = sext i8 %29 to i32
  %or = or i32 %shl, %conv3
  %or.i.i = or i32 %or, -536084336
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %idx.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %31 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %23, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %arrayidx.i.i, align 4
  %34 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr145 = load ptr, ptr %target.i.i, align 4
  %idx2.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %idx2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idx2.i.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %idx2.i.i, align 4
  %arrayidx9 = getelementptr i8, ptr %reg.addr.0.i71, i32 1
  %cmp.not.i.i74 = icmp eq ptr %.pr145, null
  br i1 %cmp.not.i.i74, label %emit.exit.emit.exit81.thread_crit_edge, label %emit.exit81

emit.exit.emit.exit81.thread_crit_edge:           ; preds = %emit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit81.thread

emit.exit81.thread:                               ; preds = %emit.exit.emit.exit81.thread_crit_edge, %emit.exit.thread
  %arrayidx9154 = phi ptr [ %arrayidx9148, %emit.exit.thread ], [ %arrayidx9, %emit.exit.emit.exit81.thread_crit_edge ]
  %idx2.i.i151 = phi ptr [ %idx2.i.i146, %emit.exit.thread ], [ %idx2.i.i, %emit.exit.emit.exit81.thread_crit_edge ]
  %37 = ptrtoint ptr %idx2.i.i151 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %idx2.i.i151, align 4
  %inc.i.i80143 = add i32 %38, 1
  store i32 %inc.i.i80143, ptr %idx2.i.i151, align 4
  br label %emit.exit89

emit.exit81:                                      ; preds = %emit.exit
  %39 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg.addr.0.i, align 1
  %conv6 = sext i8 %40 to i32
  %shl7 = shl nsw i32 %conv6, 8
  %41 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %42 to i32
  %or8 = or i32 %shl7, %conv10
  %or.i.i75 = or i32 %or8, -535953264
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i.i75) #14
  %arrayidx.i.i77 = getelementptr i32, ptr %.pr145, i32 %inc.i.i
  %44 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.i.i77, align 4
  %45 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load ptr, ptr %target.i.i, align 4
  %46 = ptrtoint ptr %idx2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %idx2.i.i, align 4
  %inc.i.i80 = add i32 %47, 1
  store i32 %inc.i.i80, ptr %idx2.i.i, align 4
  %cmp.not.i.i83 = icmp eq ptr %.pr, null
  br i1 %cmp.not.i.i83, label %emit.exit81.emit.exit89_crit_edge, label %if.then.i.i86

emit.exit81.emit.exit89_crit_edge:                ; preds = %emit.exit81
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit89

if.then.i.i86:                                    ; preds = %emit.exit81
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx.i.i85 = getelementptr i32, ptr %.pr, i32 %inc.i.i80
  %48 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 249597152, ptr %arrayidx.i.i85, align 4
  br label %emit.exit89

emit.exit89:                                      ; preds = %if.then.i.i86, %emit.exit81.emit.exit89_crit_edge, %emit.exit81.thread
  %arrayidx9153 = phi ptr [ %arrayidx9154, %emit.exit81.thread ], [ %arrayidx9, %emit.exit81.emit.exit89_crit_edge ], [ %arrayidx9, %if.then.i.i86 ]
  %idx2.i.i150 = phi ptr [ %idx2.i.i151, %emit.exit81.thread ], [ %idx2.i.i, %emit.exit81.emit.exit89_crit_edge ], [ %idx2.i.i, %if.then.i.i86 ]
  %49 = ptrtoint ptr %idx2.i.i150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %idx2.i.i150, align 4
  %inc.i.i88 = add i32 %50, 1
  store i32 %inc.i.i88, ptr %idx2.i.i150, align 4
  %51 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i91 = icmp eq ptr %52, null
  br i1 %cmp.not.i.i91, label %emit.exit89.emit.exit98_crit_edge, label %if.then.i.i95

emit.exit89.emit.exit98_crit_edge:                ; preds = %emit.exit89
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit98

if.then.i.i95:                                    ; preds = %emit.exit89
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %reg.addr.0.i, align 1
  %conv13 = sext i8 %54 to i32
  %shl14 = shl nsw i32 %conv13, 16
  %55 = ptrtoint ptr %arrayidx9153 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx9153, align 1
  %conv18 = sext i8 %56 to i32
  %shl19 = shl nsw i32 %conv18, 8
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  %conv22 = sext i8 %58 to i32
  %or16 = or i32 %shl14, %shl19
  %or20 = or i32 %or16, %conv22
  %or.i.i92 = or i32 %or20, -528433008
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i.i92) #14
  %arrayidx.i.i94 = getelementptr i32, ptr %52, i32 %inc.i.i88
  %60 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx.i.i94, align 4
  br label %emit.exit98

emit.exit98:                                      ; preds = %if.then.i.i95, %emit.exit89.emit.exit98_crit_edge
  %61 = ptrtoint ptr %idx2.i.i150 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %idx2.i.i150, align 4
  %inc.i.i97 = add i32 %62, 1
  store i32 %inc.i.i97, ptr %idx2.i.i150, align 4
  %63 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i100 = icmp eq ptr %64, null
  br i1 %cmp.not.i.i100, label %emit.exit98.emit.exit107_crit_edge, label %if.then.i.i104

emit.exit98.emit.exit107_crit_edge:               ; preds = %emit.exit98
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit107

if.then.i.i104:                                   ; preds = %emit.exit98
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %reg.addr.0.i, align 1
  %conv25 = sext i8 %66 to i32
  %shl26 = shl nsw i32 %conv25, 12
  %or28 = or i32 %shl26, %conv25
  %or.i.i101 = or i32 %or28, -527564800
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i101) #14
  %arrayidx.i.i103 = getelementptr i32, ptr %64, i32 %inc.i.i97
  %68 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx.i.i103, align 4
  br label %emit.exit107

emit.exit107:                                     ; preds = %if.then.i.i104, %emit.exit98.emit.exit107_crit_edge
  %69 = ptrtoint ptr %idx2.i.i150 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %idx2.i.i150, align 4
  %inc.i.i106 = add i32 %70, 1
  store i32 %inc.i.i106, ptr %idx2.i.i150, align 4
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp.i.i108 = icmp slt i8 %72, 0
  br i1 %cmp.i.i108, label %if.then.i111, label %if.else.i

if.then.i111:                                     ; preds = %emit.exit107
  %73 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i.i110 = icmp eq ptr %74, null
  br i1 %cmp.not.i.i.i110, label %if.then.i111.if.end10.sink.split.i_crit_edge, label %if.then.i.i.i114

if.then.i111.if.end10.sink.split.i_crit_edge:     ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i

if.then.i.i.i114:                                 ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i112 = sext i8 %72 to i32
  %75 = sub nsw i32 0, %conv.i112
  %or.i.i.i113 = or i32 %75, -452214784
  br label %if.end10.sink.split.sink.split.i

if.else.i:                                        ; preds = %emit.exit107
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %72)
  %cmp.not.i = icmp eq i8 %72, 12
  br i1 %cmp.not.i, label %if.else.i.arm_bpf_put_reg32.exit_crit_edge, label %if.then5.i

if.else.i.arm_bpf_put_reg32.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit

if.then5.i:                                       ; preds = %if.else.i
  %76 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i18.i = icmp eq ptr %77, null
  br i1 %cmp.not.i.i18.i, label %if.then5.i.if.end10.sink.split.i_crit_edge, label %if.then.i.i22.i

if.then5.i.if.end10.sink.split.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i

if.then.i.i22.i:                                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i = zext i8 %72 to i32
  %shl.i = shl nuw nsw i32 %conv226.i, 12
  %or.i.i19.i = or i32 %shl.i, -509607924
  br label %if.end10.sink.split.sink.split.i

if.end10.sink.split.sink.split.i:                 ; preds = %if.then.i.i22.i, %if.then.i.i.i114
  %or.i.i19.sink.i = phi i32 [ %or.i.i19.i, %if.then.i.i22.i ], [ %or.i.i.i113, %if.then.i.i.i114 ]
  %.sink28.i = phi ptr [ %77, %if.then.i.i22.i ], [ %74, %if.then.i.i.i114 ]
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i) #14
  %arrayidx.i.i21.i = getelementptr i32, ptr %.sink28.i, i32 %inc.i.i106
  %79 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx.i.i21.i, align 4
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.end10.sink.split.sink.split.i, %if.then5.i.if.end10.sink.split.i_crit_edge, %if.then.i111.if.end10.sink.split.i_crit_edge
  %80 = ptrtoint ptr %idx2.i.i150 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %idx2.i.i150, align 4
  %inc.i.i24.i = add i32 %81, 1
  store i32 %inc.i.i24.i, ptr %idx2.i.i150, align 4
  br label %arm_bpf_put_reg32.exit

arm_bpf_put_reg32.exit:                           ; preds = %if.end10.sink.split.i, %if.else.i.arm_bpf_put_reg32.exit_crit_edge
  %82 = ptrtoint ptr %dst to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %dst, align 1
  %84 = ptrtoint ptr %reg.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %reg.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp.i.i116 = icmp slt i8 %83, 0
  br i1 %cmp.i.i116, label %if.then.i119, label %if.else.i125

if.then.i119:                                     ; preds = %arm_bpf_put_reg32.exit
  %86 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i.i118 = icmp eq ptr %87, null
  br i1 %cmp.not.i.i.i118, label %if.then.i119.if.end10.sink.split.i141_crit_edge, label %if.then.i.i.i123

if.then.i119.if.end10.sink.split.i141_crit_edge:  ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i141

if.then.i.i.i123:                                 ; preds = %if.then.i119
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i120 = sext i8 %83 to i32
  %88 = sub nsw i32 0, %conv.i120
  %conv.i.i = zext i8 %85 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %or3.i.i121 = or i32 %shl.i.i, %88
  %or.i.i.i122 = or i32 %or3.i.i121, -452263936
  br label %if.end10.sink.split.sink.split.i138

if.else.i125:                                     ; preds = %arm_bpf_put_reg32.exit
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %85)
  %cmp.not.i124 = icmp eq i8 %83, %85
  br i1 %cmp.not.i124, label %if.else.i125.arm_bpf_put_reg32.exit142_crit_edge, label %if.then5.i128

if.else.i125.arm_bpf_put_reg32.exit142_crit_edge: ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg32.exit142

if.then5.i128:                                    ; preds = %if.else.i125
  %89 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i18.i127 = icmp eq ptr %90, null
  br i1 %cmp.not.i.i18.i127, label %if.then5.i128.if.end10.sink.split.i141_crit_edge, label %if.then.i.i22.i133

if.then5.i128.if.end10.sink.split.i141_crit_edge: ; preds = %if.then5.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.sink.split.i141

if.then.i.i22.i133:                               ; preds = %if.then5.i128
  call void @__sanitizer_cov_trace_pc() #16
  %conv226.i129 = zext i8 %83 to i32
  %shl.i130 = shl nuw nsw i32 %conv226.i129, 12
  %conv3.i = sext i8 %85 to i32
  %or.i131 = or i32 %shl.i130, %conv3.i
  %or.i.i19.i132 = or i32 %or.i131, -509607936
  br label %if.end10.sink.split.sink.split.i138

if.end10.sink.split.sink.split.i138:              ; preds = %if.then.i.i22.i133, %if.then.i.i.i123
  %or.i.i19.sink.i134 = phi i32 [ %or.i.i19.i132, %if.then.i.i22.i133 ], [ %or.i.i.i122, %if.then.i.i.i123 ]
  %.sink28.i135 = phi ptr [ %90, %if.then.i.i22.i133 ], [ %87, %if.then.i.i.i123 ]
  %91 = tail call i32 @llvm.bswap.i32(i32 %or.i.i19.sink.i134) #14
  %92 = ptrtoint ptr %idx2.i.i150 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %idx2.i.i150, align 4
  %arrayidx.i.i21.i137 = getelementptr i32, ptr %.sink28.i135, i32 %93
  %94 = ptrtoint ptr %arrayidx.i.i21.i137 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %arrayidx.i.i21.i137, align 4
  br label %if.end10.sink.split.i141

if.end10.sink.split.i141:                         ; preds = %if.end10.sink.split.sink.split.i138, %if.then5.i128.if.end10.sink.split.i141_crit_edge, %if.then.i119.if.end10.sink.split.i141_crit_edge
  %95 = ptrtoint ptr %idx2.i.i150 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %idx2.i.i150, align 4
  %inc.i.i24.i140 = add i32 %96, 1
  store i32 %inc.i.i24.i140, ptr %idx2.i.i150, align 4
  br label %arm_bpf_put_reg32.exit142

arm_bpf_put_reg32.exit142:                        ; preds = %if.end10.sink.split.i141, %if.else.i125.arm_bpf_put_reg32.exit142_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_a32_mov_i64(ptr nocapture noundef readonly %dst, i64 noundef %val, ptr nocapture noundef %ctx) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dst, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp slt i8 %1, 0
  %.dst = select i1 %cmp.i, ptr getelementptr inbounds ([15 x [2 x i8]], ptr @bpf2a32, i32 0, i32 12), ptr %dst
  %arrayidx1 = getelementptr i8, ptr %.dst, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = trunc i64 %val to i32
  tail call fastcc void @emit_mov_i(i8 noundef zeroext %3, i32 noundef %conv, ptr noundef %ctx)
  %4 = ptrtoint ptr %.dst to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %.dst, align 1
  %shr = lshr i64 %val, 32
  %conv3 = trunc i64 %shr to i32
  tail call fastcc void @emit_mov_i(i8 noundef zeroext %5, i32 noundef %conv3, ptr noundef %ctx)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.i = icmp slt i8 %7, 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %target.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %target.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %9, null
  br i1 %cmp.not.i.i.i, label %if.then.i.if.end32.sink.split.i_crit_edge, label %if.then.i.i.i

if.then.i.if.end32.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i8 %7 to i32
  %10 = sub nsw i32 0, %conv.i
  %conv9.i62.i = shl nuw nsw i32 %10, 4
  %and.i.i = and i32 %conv9.i62.i, 3840
  %and13.i.i = and i32 %10, 15
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1, align 1
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 12
  %or11.i.i = or i32 %and13.i.i, %and.i.i
  %or14.i.i = or i32 %shl.i.i, %or11.i.i
  %or.i.i.i = or i32 %or14.i.i, -515178256
  br label %if.end32.sink.split.sink.split.i

if.else.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %14)
  %cmp.not.i = icmp eq i8 %7, %14
  br i1 %cmp.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then9.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then9.i:                                       ; preds = %if.else.i
  %target.i.i44.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %15 = ptrtoint ptr %target.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %target.i.i44.i, align 4
  %cmp.not.i.i45.i = icmp eq ptr %16, null
  br i1 %cmp.not.i.i45.i, label %if.then9.i.emit.exit52.i_crit_edge, label %if.then.i.i49.i

if.then9.i.emit.exit52.i_crit_edge:               ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit52.i

if.then.i.i49.i:                                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv563.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv563.i, 12
  %conv7.i = sext i8 %14 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %or.i.i46.i = or i32 %or.i, -509607936
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i46.i) #14
  %idx.i.i47.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %18 = ptrtoint ptr %idx.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx.i.i47.i, align 4
  %arrayidx.i.i48.i = getelementptr i32, ptr %16, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %arrayidx.i.i48.i, align 4
  br label %emit.exit52.i

emit.exit52.i:                                    ; preds = %if.then.i.i49.i, %if.then9.i.emit.exit52.i_crit_edge
  %idx2.i.i50.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %idx2.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx2.i.i50.i, align 4
  %inc.i.i51.i = add i32 %22, 1
  store i32 %inc.i.i51.i, ptr %idx2.i.i50.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %emit.exit52.i, %if.else.i.if.end.i_crit_edge
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dst, align 1
  %25 = ptrtoint ptr %.dst to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %.dst, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp20.not.i = icmp eq i8 %24, %26
  br i1 %cmp20.not.i, label %if.end.i.arm_bpf_put_reg64.exit_crit_edge, label %if.then22.i

if.end.i.arm_bpf_put_reg64.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_put_reg64.exit

if.then22.i:                                      ; preds = %if.end.i
  %target.i.i53.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %27 = ptrtoint ptr %target.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %target.i.i53.i, align 4
  %cmp.not.i.i54.i = icmp eq ptr %28, null
  br i1 %cmp.not.i.i54.i, label %if.then22.i.if.end32.sink.split.i_crit_edge, label %if.then.i.i58.i

if.then22.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.sink.split.i

if.then.i.i58.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv17.i = sext i8 %24 to i32
  %shl25.i = shl nsw i32 %conv17.i, 12
  %conv19.i = sext i8 %26 to i32
  %or26.i = or i32 %shl25.i, %conv19.i
  %or.i.i55.i = or i32 %or26.i, -509607936
  br label %if.end32.sink.split.sink.split.i

if.end32.sink.split.sink.split.i:                 ; preds = %if.then.i.i58.i, %if.then.i.i.i
  %or.i.i55.sink.i = phi i32 [ %or.i.i55.i, %if.then.i.i58.i ], [ %or.i.i.i, %if.then.i.i.i ]
  %.sink65.i = phi ptr [ %28, %if.then.i.i58.i ], [ %9, %if.then.i.i.i ]
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i.i55.sink.i) #14
  %idx.i.i56.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %30 = ptrtoint ptr %idx.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %idx.i.i56.i, align 4
  %arrayidx.i.i57.i = getelementptr i32, ptr %.sink65.i, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %arrayidx.i.i57.i, align 4
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.end32.sink.split.sink.split.i, %if.then22.i.if.end32.sink.split.i_crit_edge, %if.then.i.if.end32.sink.split.i_crit_edge
  %idx2.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %33 = ptrtoint ptr %idx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx2.i.i.i, align 4
  %inc.i.i60.i = add i32 %34, 1
  store i32 %inc.i.i60.i, ptr %idx2.i.i.i, align 4
  br label %arm_bpf_put_reg64.exit

arm_bpf_put_reg64.exit:                           ; preds = %if.end32.sink.split.i, %if.end.i.arm_bpf_put_reg64.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_str_r(i8 noundef signext %dst, ptr nocapture noundef readonly %src, i16 noundef signext %off, ptr noundef %ctx, i8 noundef zeroext %sz) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dst)
  %cmp.i.i = icmp slt i8 %dst, 0
  br i1 %cmp.i.i, label %if.then.i, label %entry.arm_bpf_get_reg32.exit_crit_edge

entry.arm_bpf_get_reg32.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %arm_bpf_get_reg32.exit

if.then.i:                                        ; preds = %entry
  %target.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %target.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i.i, label %if.then.i.emit.exit.i_crit_edge, label %if.then.i.i.i

if.then.i.emit.exit.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = sext i8 %dst to i32
  %2 = sub nsw i32 0, %conv.i
  %or.i.i.i = or i32 %2, -451190784
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #14
  %idx.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %1, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %arrayidx.i.i.i, align 4
  br label %emit.exit.i

emit.exit.i:                                      ; preds = %if.then.i.i.i, %if.then.i.emit.exit.i_crit_edge
  %idx2.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %idx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx2.i.i.i, align 4
  %inc.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i, ptr %idx2.i.i.i, align 4
  br label %arm_bpf_get_reg32.exit

arm_bpf_get_reg32.exit:                           ; preds = %emit.exit.i, %entry.arm_bpf_get_reg32.exit_crit_edge
  %reg.addr.0.i = phi i8 [ 6, %emit.exit.i ], [ %dst, %entry.arm_bpf_get_reg32.exit_crit_edge ]
  %conv.i55 = zext i8 %sz to i32
  %9 = tail call i32 @llvm.fshl.i32(i32 %conv.i55, i32 %conv.i55, i32 29) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %switch.lookup, label %arm_bpf_get_reg32.exit.is_ldst_imm.exit_crit_edge

arm_bpf_get_reg32.exit.is_ldst_imm.exit_crit_edge: ; preds = %arm_bpf_get_reg32.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %is_ldst_imm.exit

switch.lookup:                                    ; preds = %arm_bpf_get_reg32.exit
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.emit_str_r, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %is_ldst_imm.exit

is_ldst_imm.exit:                                 ; preds = %switch.lookup, %arm_bpf_get_reg32.exit.is_ldst_imm.exit_crit_edge
  %off_max.0.i = phi i32 [ 0, %arm_bpf_get_reg32.exit.is_ldst_imm.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %sub.i = sub nsw i32 0, %off_max.0.i
  %conv4.i = sext i16 %off to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv4.i)
  %cmp.not.i = icmp sle i32 %sub.i, %conv4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %off_max.0.i, i32 %conv4.i)
  %cmp8.i = icmp sge i32 %off_max.0.i, %conv4.i
  %spec.select.i = and i1 %cmp.not.i, %cmp8.i
  br i1 %spec.select.i, label %is_ldst_imm.exit.if.end_crit_edge, label %if.then

is_ldst_imm.exit.if.end_crit_edge:                ; preds = %is_ldst_imm.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %is_ldst_imm.exit
  tail call fastcc void @emit_mov_i(i8 noundef zeroext 7, i32 noundef %conv4.i, ptr noundef %ctx) #14
  %target.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %12 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %13, null
  br i1 %cmp.not.i.i, label %if.then.emit.exit_crit_edge, label %if.then.i.i

if.then.emit.exit_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %conv9144 = zext i8 %reg.addr.0.i to i32
  %or.i.i = or i32 %conv9144, -527994880
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #14
  %idx.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %15 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx.i.i, align 4
  br label %emit.exit

emit.exit:                                        ; preds = %if.then.i.i, %if.then.emit.exit_crit_edge
  %idx2.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %18 = ptrtoint ptr %idx2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx2.i.i, align 4
  %inc.i.i = add i32 %19, 1
  store i32 %inc.i.i, ptr %idx2.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %emit.exit, %is_ldst_imm.exit.if.end_crit_edge
  %off.addr.0 = phi i16 [ %off, %is_ldst_imm.exit.if.end_crit_edge ], [ 0, %emit.exit ]
  %rd.0 = phi i8 [ %reg.addr.0.i, %is_ldst_imm.exit.if.end_crit_edge ], [ 7, %emit.exit ]
  %20 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb15
    i32 0, label %sw.bb18
    i32 3, label %sw.bb21
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %target.i.i57 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %21 = ptrtoint ptr %target.i.i57 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %target.i.i57, align 4
  %cmp.not.i.i58 = icmp eq ptr %22, null
  br i1 %cmp.not.i.i58, label %sw.bb.emit.exit65_crit_edge, label %if.then.i.i62

sw.bb.emit.exit65_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit65

if.then.i.i62:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx13 = getelementptr i8, ptr %src, i32 1
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx13, align 1
  %conv.i56 = zext i8 %24 to i32
  %shl.i = shl nuw nsw i32 %conv.i56, 12
  %conv1.i = zext i8 %rd.0 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0)
  %cmp16.i = icmp slt i16 %off.addr.0, 0
  %25 = tail call i16 @llvm.abs.i16(i16 %off.addr.0, i1 false) #14
  %26 = and i16 %25, 4095
  %and.i = zext i16 %26 to i32
  %or.i = select i1 %cmp16.i, i32 -448790528, i32 -440401920
  %op.addr.0.i = or i32 %or.i, %shl2.i
  %or10.i = or i32 %op.addr.0.i, %and.i
  %or.i.i59 = or i32 %or10.i, %shl.i
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i59) #14
  %idx.i.i60 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %28 = ptrtoint ptr %idx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx.i.i60, align 4
  %arrayidx.i.i61 = getelementptr i32, ptr %22, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx.i.i61, align 4
  br label %emit.exit65

emit.exit65:                                      ; preds = %if.then.i.i62, %sw.bb.emit.exit65_crit_edge
  %idx2.i.i63 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %if.end
  %target.i.i75 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %31 = ptrtoint ptr %target.i.i75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %target.i.i75, align 4
  %cmp.not.i.i76 = icmp eq ptr %32, null
  br i1 %cmp.not.i.i76, label %sw.bb15.emit.exit83_crit_edge, label %if.then.i.i80

sw.bb15.emit.exit83_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit83

if.then.i.i80:                                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #16
  %33 = tail call i16 @llvm.abs.i16(i16 %off.addr.0, i1 false) #14
  %conv9.i = sext i16 %33 to i32
  %and.i74 = shl nsw i32 %conv9.i, 4
  %shl10.i = and i32 %and.i74, 3840
  %and13.i = and i32 %conv9.i, 15
  %arrayidx16 = getelementptr i8, ptr %src, i32 1
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx16, align 1
  %conv.i66 = zext i8 %35 to i32
  %shl.i67 = shl nuw nsw i32 %conv.i66, 12
  %conv1.i68 = zext i8 %rd.0 to i32
  %shl2.i69 = shl nuw nsw i32 %conv1.i68, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0)
  %cmp20.i = icmp slt i16 %off.addr.0, 0
  %or.i70 = select i1 %cmp20.i, i32 -515899216, i32 -507510608
  %op.addr.0.i73 = or i32 %or.i70, %and13.i
  %or11.i = or i32 %op.addr.0.i73, %shl2.i69
  %or14.i = or i32 %or11.i, %shl10.i
  %or.i.i77 = or i32 %or14.i, %shl.i67
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i.i77) #14
  %idx.i.i78 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %37 = ptrtoint ptr %idx.i.i78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %idx.i.i78, align 4
  %arrayidx.i.i79 = getelementptr i32, ptr %32, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i79 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %arrayidx.i.i79, align 4
  br label %emit.exit83

emit.exit83:                                      ; preds = %if.then.i.i80, %sw.bb15.emit.exit83_crit_edge
  %idx2.i.i81 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %if.end
  %target.i.i95 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %40 = ptrtoint ptr %target.i.i95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %target.i.i95, align 4
  %cmp.not.i.i96 = icmp eq ptr %41, null
  br i1 %cmp.not.i.i96, label %sw.bb18.emit.exit103_crit_edge, label %if.then.i.i100

sw.bb18.emit.exit103_crit_edge:                   ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  br label %emit.exit103

if.then.i.i100:                                   ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx19 = getelementptr i8, ptr %src, i32 1
  %42 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx19, align 1
  %conv.i84 = zext i8 %43 to i32
  %shl.i85 = shl nuw nsw i32 %conv.i84, 12
  %conv1.i86 = zext i8 %rd.0 to i32
  %shl2.i87 = shl nuw nsw i32 %conv1.i86, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0)
  %cmp16.i91 = icmp slt i16 %off.addr.0, 0
  %44 = tail call i16 @llvm.abs.i16(i16 %off.addr.0, i1 false) #14
  %45 = and i16 %44, 4095
  %and.i93 = zext i16 %45 to i32
  %or.i88 = select i1 %cmp16.i91, i32 -452984832, i32 -444596224
  %op.addr.0.i92 = or i32 %or.i88, %shl2.i87
  %or10.i94 = or i32 %op.addr.0.i92, %and.i93
  %or.i.i97 = or i32 %or10.i94, %shl.i85
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i97) #14
  %idx.i.i98 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %47 = ptrtoint ptr %idx.i.i98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %idx.i.i98, align 4
  %arrayidx.i.i99 = getelementptr i32, ptr %41, i32 %48
  %49 = ptrtoint ptr %arrayidx.i.i99 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %arrayidx.i.i99, align 4
  br label %emit.exit103

emit.exit103:                                     ; preds = %if.then.i.i100, %sw.bb18.emit.exit103_crit_edge
  %idx2.i.i101 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %if.end
  %conv1.i106 = zext i8 %rd.0 to i32
  %shl2.i107 = shl nuw nsw i32 %conv1.i106, 16
  %target.i.i115 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %50 = ptrtoint ptr %target.i.i115 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %target.i.i115, align 4
  %cmp.not.i.i116 = icmp eq ptr %51, null
  br i1 %cmp.not.i.i116, label %emit.exit123.thread, label %emit.exit123

emit.exit123.thread:                              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  %idx2.i.i121145 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %52 = ptrtoint ptr %idx2.i.i121145 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx2.i.i121145, align 4
  %inc.i.i122146 = add i32 %53, 1
  store i32 %inc.i.i122146, ptr %idx2.i.i121145, align 4
  br label %sw.epilog.sink.split

emit.exit123:                                     ; preds = %sw.bb21
  %arrayidx22 = getelementptr i8, ptr %src, i32 1
  %54 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx22, align 1
  %conv.i104 = zext i8 %55 to i32
  %shl.i105 = shl nuw nsw i32 %conv.i104, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off.addr.0)
  %cmp16.i111 = icmp slt i16 %off.addr.0, 0
  %op.addr.0.i112.v = select i1 %cmp16.i111, i32 83886080, i32 92274688
  %56 = tail call i16 @llvm.abs.i16(i16 %off.addr.0, i1 false) #14
  %57 = and i16 %56, 4095
  %and.i113 = zext i16 %57 to i32
  %or.i108 = or i32 %shl2.i107, %op.addr.0.i112.v
  %op.addr.0.i112 = or i32 %or.i108, %and.i113
  %or10.i114 = or i32 %op.addr.0.i112, %shl.i105
  %or.i.i117 = or i32 %or10.i114, -536870912
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i.i117) #14
  %idx.i.i118 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %59 = ptrtoint ptr %idx.i.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %idx.i.i118, align 4
  %arrayidx.i.i119 = getelementptr i32, ptr %51, i32 %60
  %61 = ptrtoint ptr %arrayidx.i.i119 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %arrayidx.i.i119, align 4
  %62 = ptrtoint ptr %target.i.i115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load ptr, ptr %target.i.i115, align 4
  %idx2.i.i121 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %63 = ptrtoint ptr %idx2.i.i121 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %idx2.i.i121, align 4
  %inc.i.i122 = add i32 %64, 1
  store i32 %inc.i.i122, ptr %idx2.i.i121, align 4
  %cmp.not.i.i136 = icmp eq ptr %.pr, null
  br i1 %cmp.not.i.i136, label %emit.exit123.sw.epilog.sink.split_crit_edge, label %if.then.i.i140

emit.exit123.sw.epilog.sink.split_crit_edge:      ; preds = %emit.exit123
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i140:                                   ; preds = %emit.exit123
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %src to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %src, align 1
  %conv.i124 = zext i8 %66 to i32
  %shl.i125 = shl nuw nsw i32 %conv.i124, 12
  %add = add i16 %off.addr.0, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %cmp16.i131 = icmp slt i16 %add, 0
  %op.addr.0.i132.v = select i1 %cmp16.i131, i32 83886080, i32 92274688
  %67 = tail call i16 @llvm.abs.i16(i16 %add, i1 false) #14
  %68 = and i16 %67, 4095
  %and.i133 = zext i16 %68 to i32
  %or.i128 = or i32 %shl2.i107, %op.addr.0.i132.v
  %op.addr.0.i132 = or i32 %or.i128, %and.i133
  %or10.i134 = or i32 %op.addr.0.i132, %shl.i125
  %or.i.i137 = or i32 %or10.i134, -536870912
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i.i137) #14
  %arrayidx.i.i139 = getelementptr i32, ptr %.pr, i32 %inc.i.i122
  %70 = ptrtoint ptr %arrayidx.i.i139 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx.i.i139, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then.i.i140, %emit.exit123.sw.epilog.sink.split_crit_edge, %emit.exit123.thread, %emit.exit103, %emit.exit83, %emit.exit65
  %idx2.i.i121148.sink149 = phi ptr [ %idx2.i.i101, %emit.exit103 ], [ %idx2.i.i81, %emit.exit83 ], [ %idx2.i.i63, %emit.exit65 ], [ %idx2.i.i121145, %emit.exit123.thread ], [ %idx2.i.i121, %emit.exit123.sw.epilog.sink.split_crit_edge ], [ %idx2.i.i121, %if.then.i.i140 ]
  %71 = ptrtoint ptr %idx2.i.i121148.sink149 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %idx2.i.i121148.sink149, align 4
  %inc.i.i142 = add i32 %72, 1
  store i32 %inc.i.i142, ptr %idx2.i.i121148.sink149, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__bpf_call_base(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @emit_mov_i(i8 noundef zeroext %rd, i32 noundef %val, ptr nocapture noundef %ctx) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %rot.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry ]
  %mul.i = shl nuw nsw i32 %rot.011.i, 1
  %or.i.i = tail call i32 @llvm.fshr.i32(i32 255, i32 255, i32 %mul.i) #14
  %neg.i = xor i32 %or.i.i, -1
  %and.i = and i32 %neg.i, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %val, i32 %val, i32 %mul.i) #14
  %shl.i = shl nuw nsw i32 %rot.011.i, 8
  %or.i164 = or i32 %or.i9.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i164)
  %cmp = icmp sgt i32 %or.i164, -1
  br i1 %cmp, label %if.then107, label %if.then.i.if.else111_crit_edge

if.then.i.if.else111_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else111

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %rot.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.if.else111_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.else111_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else111

if.then107:                                       ; preds = %if.then.i
  %target.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i, label %if.then107.if.end112_crit_edge, label %if.then.i.i

if.then107.if.end112_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then.i.i:                                      ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i8 %rd to i32
  %shl = shl nuw nsw i32 %conv, 12
  %or108 = or i32 %shl, %or.i164
  %or.i.i165 = or i32 %or108, -476053504
  br label %if.end112.sink.split

if.else111:                                       ; preds = %for.inc.i.if.else111_crit_edge, %if.then.i.if.else111_crit_edge
  %target.i.i166 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %target.i.i166 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target.i.i166, align 4
  %cmp.i.i = icmp eq ptr %3, null
  %imm_count.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %imm_count.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %imm_count.i.i, align 2
  br i1 %cmp.i.i, label %if.then.i.i168, label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.else111
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp263.not.i.i = icmp eq i16 %5, 0
  br i1 %cmp263.not.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %land.rhs.lr.ph.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

land.rhs.lr.ph.i.i:                               ; preds = %while.cond.preheader.i.i
  %imms.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 11
  %6 = ptrtoint ptr %imms.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imms.i.i, align 4
  br label %land.rhs.i.i

if.then.i.i168:                                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #16
  %inc.i.i167 = add i16 %5, 1
  %8 = ptrtoint ptr %imm_count.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %inc.i.i167, ptr %imm_count.i.i, align 2
  br label %imm_offset.exit.thread.i

land.rhs.i.i:                                     ; preds = %if.end9.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %i.064.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc10.i.i, %if.end9.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i169 = getelementptr i32, ptr %7, i32 %i.064.i.i
  %9 = ptrtoint ptr %arrayidx.i.i169 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp6.i.i = icmp eq i32 %10, %val
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge, label %if.end9.i.i

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

if.end9.i.i:                                      ; preds = %land.rhs.i.i
  %inc10.i.i = add nuw nsw i32 %i.064.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc10.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %if.end9.i.i.while.end.i.i_crit_edge, label %if.end9.i.i.land.rhs.i.i_crit_edge

if.end9.i.i.land.rhs.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

if.end9.i.i.while.end.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end9.i.i.while.end.i.i_crit_edge, %land.rhs.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %while.cond.preheader.i.i.while.end.i.i_crit_edge ], [ %conv.i.i, %if.end9.i.i.while.end.i.i_crit_edge ], [ %i.064.i.i, %land.rhs.i.i.while.end.i.i_crit_edge ]
  %imms11.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 11
  %11 = ptrtoint ptr %imms11.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %imms11.i.i, align 4
  %arrayidx12.i.i = getelementptr i32, ptr %12, i32 %i.0.lcssa.i.i
  %13 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.i.i = icmp eq i32 %14, 0
  br i1 %cmp13.i.i, label %if.then15.i.i, label %while.end.i.i.if.end18.i.i_crit_edge

while.end.i.i.if.end18.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %val, ptr %arrayidx12.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %while.end.i.i.if.end18.i.i_crit_edge
  %offsets.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 6
  %16 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %offsets.i.i, align 4
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %len.i.i = getelementptr inbounds %struct.bpf_prog, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %21, -1
  %arrayidx19.i.i = getelementptr i32, ptr %17, i32 %sub.i.i
  %22 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19.i.i, align 4
  %prologue_bytes.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 2
  %24 = ptrtoint ptr %prologue_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prologue_bytes.i.i, align 4
  %epilogue_bytes.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 9
  %26 = ptrtoint ptr %epilogue_bytes.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %epilogue_bytes.i.i, align 4
  %conv20.i.i = zext i16 %27 to i32
  %reass.add.i = add i32 %23, %i.0.lcssa.i.i
  %reass.mul.i = shl i32 %reass.add.i, 2
  %add21.i.i = add i32 %reass.mul.i, %25
  %add23.i.i = add i32 %add21.i.i, %conv20.i.i
  %28 = ptrtoint ptr %target.i.i166 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %target.i.i166, align 4
  %div62.i.i = lshr i32 %add23.i.i, 2
  %arrayidx25.i.i = getelementptr i32, ptr %29, i32 %div62.i.i
  %30 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %val, ptr %arrayidx25.i.i, align 4
  %idx.i.i170 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %31 = ptrtoint ptr %idx.i.i170 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idx.i.i170, align 4
  %mul26.neg.i.i = mul i32 %32, 65532
  %add27.neg.i.i = add i32 %add23.i.i, 65528
  %sub28.i.i = add i32 %add27.neg.i.i, %mul26.neg.i.i
  %and.i.i = and i32 %sub28.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool31.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool31.not.i.i, label %imm_offset.exit.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %flags.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 4
  %or.i.i171 = or i32 %34, 1
  store i32 %or.i.i171, ptr %flags.i.i, align 4
  br label %imm_offset.exit.thread.i

imm_offset.exit.thread.i:                         ; preds = %if.then32.i.i, %if.then.i.i168
  %conv.i37.i = zext i8 %rd to i32
  %shl.i8.i = shl nuw nsw i32 %conv.i37.i, 12
  %or6.i11.i = or i32 %shl.i8.i, 94306304
  br label %35

imm_offset.exit.i:                                ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv29.i.i = trunc i32 %sub28.i.i to i16
  %conv.i3.i = zext i8 %rd to i32
  %shl.i.i = shl nuw nsw i32 %conv.i3.i, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv29.i.i)
  %cmp16.i.i = icmp slt i16 %conv29.i.i, 0
  %spec.select.v.i = select i1 %cmp16.i.i, i32 85917696, i32 94306304
  %spec.select.i = or i32 %spec.select.v.i, %shl.i.i
  br label %35

35:                                               ; preds = %imm_offset.exit.i, %imm_offset.exit.thread.i
  %retval.0.i13.i = phi i16 [ 0, %imm_offset.exit.thread.i ], [ %conv29.i.i, %imm_offset.exit.i ]
  %36 = phi i32 [ %or6.i11.i, %imm_offset.exit.thread.i ], [ %spec.select.i, %imm_offset.exit.i ]
  %37 = ptrtoint ptr %target.i.i166 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %target.i.i166, align 4
  %cmp.not.i.i.i = icmp eq ptr %38, null
  br i1 %cmp.not.i.i.i, label %.if.end112_crit_edge, label %if.then.i.i.i

.if.end112_crit_edge:                             ; preds = %35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end112

if.then.i.i.i:                                    ; preds = %35
  call void @__sanitizer_cov_trace_pc() #16
  %39 = tail call i16 @llvm.abs.i16(i16 %retval.0.i13.i, i1 false) #14
  %40 = and i16 %39, 4095
  %and.i5.i = zext i16 %40 to i32
  %or10.i.i = or i32 %36, %and.i5.i
  %or.i.i.i = or i32 %or10.i.i, -536870912
  br label %if.end112.sink.split

if.end112.sink.split:                             ; preds = %if.then.i.i.i, %if.then.i.i
  %or.i.i.i.sink = phi i32 [ %or.i.i.i, %if.then.i.i.i ], [ %or.i.i165, %if.then.i.i ]
  %.sink185 = phi ptr [ %38, %if.then.i.i.i ], [ %1, %if.then.i.i ]
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.sink) #14
  %idx.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %42 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %.sink185, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %arrayidx.i.i.i, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %.if.end112_crit_edge, %if.then107.if.end112_crit_edge
  %idx2.i.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %45 = ptrtoint ptr %idx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idx2.i.i.i, align 4
  %inc.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i, ptr %idx2.i.i.i, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @emit_alu_r(i8 noundef zeroext %dst, i8 noundef zeroext %src, i1 noundef zeroext %hi, i8 noundef zeroext %op, ptr noundef %ctx) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = lshr i8 %op, 4
  %1 = zext i8 %0 to i32
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 4, label %sw.bb6
    i32 5, label %sw.bb13
    i32 10, label %sw.bb22
    i32 2, label %sw.bb31
    i32 6, label %sw.bb40
    i32 7, label %sw.bb50
    i32 12, label %sw.bb60
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %target.i.i1.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %3 = ptrtoint ptr %target.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %target.i.i1.i, align 4
  %cmp.not.i.i2.i = icmp eq ptr %4, null
  br i1 %cmp.not.i.i2.i, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.end31.sink.split.i

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.end31.sink.split.i:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %..i = select i1 %hi, i32 -526385152, i32 -527433728
  %conv.i = zext i8 %dst to i32
  %shl15.i = shl nuw nsw i32 %conv.i, 12
  %shl18.i = shl nuw nsw i32 %conv.i, 16
  %conv20.i = zext i8 %src to i32
  %or16.i = or i32 %shl18.i, %shl15.i
  %or19.i = or i32 %or16.i, %conv20.i
  %or.i.i3.i = or i32 %or19.i, %..i
  br label %sw.epilog.sink.split.sink.split

sw.bb3:                                           ; preds = %entry
  %target.i.i1.i1 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %5 = ptrtoint ptr %target.i.i1.i1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %target.i.i1.i1, align 4
  %cmp.not.i.i2.i2 = icmp eq ptr %6, null
  br i1 %cmp.not.i.i2.i2, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %if.end31.sink.split.i13

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.end31.sink.split.i13:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #16
  %..i3 = select i1 %hi, i32 -524288000, i32 -531628032
  %conv.i4 = zext i8 %dst to i32
  %shl15.i5 = shl nuw nsw i32 %conv.i4, 12
  %shl18.i6 = shl nuw nsw i32 %conv.i4, 16
  %conv20.i7 = zext i8 %src to i32
  %or16.i8 = or i32 %shl18.i6, %shl15.i5
  %or19.i9 = or i32 %or16.i8, %conv20.i7
  %or.i.i3.i10 = or i32 %or19.i9, %..i3
  br label %sw.epilog.sink.split.sink.split

sw.bb6:                                           ; preds = %entry
  %target.i.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %7 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %target.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, null
  br i1 %cmp.not.i.i, label %sw.bb6.sw.epilog.sink.split_crit_edge, label %if.then.i.i

sw.bb6.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #16
  %conv7 = zext i8 %dst to i32
  %shl = shl nuw nsw i32 %conv7, 12
  %shl9 = shl nuw nsw i32 %conv7, 16
  %conv11 = zext i8 %src to i32
  %or = or i32 %shl9, %shl
  %or10 = or i32 %or, %conv11
  %or.i.i = or i32 %or10, -511705088
  br label %sw.epilog.sink.split.sink.split

sw.bb13:                                          ; preds = %entry
  %target.i.i16 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %9 = ptrtoint ptr %target.i.i16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target.i.i16, align 4
  %cmp.not.i.i17 = icmp eq ptr %10, null
  br i1 %cmp.not.i.i17, label %sw.bb13.sw.epilog.sink.split_crit_edge, label %if.then.i.i21

sw.bb13.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i21:                                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #16
  %conv14 = zext i8 %dst to i32
  %shl15 = shl nuw nsw i32 %conv14, 12
  %shl18 = shl nuw nsw i32 %conv14, 16
  %conv20 = zext i8 %src to i32
  %or19 = or i32 %shl18, %shl15
  %or21 = or i32 %or19, %conv20
  %or.i.i18 = or i32 %or21, -536870912
  br label %sw.epilog.sink.split.sink.split

sw.bb22:                                          ; preds = %entry
  %target.i.i25 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %11 = ptrtoint ptr %target.i.i25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target.i.i25, align 4
  %cmp.not.i.i26 = icmp eq ptr %12, null
  br i1 %cmp.not.i.i26, label %sw.bb22.sw.epilog.sink.split_crit_edge, label %if.then.i.i30

sw.bb22.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i30:                                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #16
  %conv23 = zext i8 %dst to i32
  %shl24 = shl nuw nsw i32 %conv23, 12
  %shl27 = shl nuw nsw i32 %conv23, 16
  %conv29 = zext i8 %src to i32
  %or25 = or i32 %shl27, %shl24
  %or28 = or i32 %or25, %conv29
  %or.i.i27 = or i32 %or28, -534773760
  br label %sw.epilog.sink.split.sink.split

sw.bb31:                                          ; preds = %entry
  %target.i.i34 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %target.i.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %target.i.i34, align 4
  %cmp.not.i.i35 = icmp eq ptr %14, null
  br i1 %cmp.not.i.i35, label %sw.bb31.sw.epilog.sink.split_crit_edge, label %if.then.i.i39

sw.bb31.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i39:                                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #16
  %conv32 = zext i8 %dst to i32
  %or34 = mul nuw nsw i32 %conv32, 65792
  %conv38 = zext i8 %src to i32
  %or37 = or i32 %or34, %conv38
  %or.i.i36 = or i32 %or37, -536870768
  br label %sw.epilog.sink.split.sink.split

sw.bb40:                                          ; preds = %entry
  %target.i.i43 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %15 = ptrtoint ptr %target.i.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %target.i.i43, align 4
  %cmp.not.i.i44 = icmp eq ptr %16, null
  br i1 %cmp.not.i.i44, label %sw.bb40.sw.epilog.sink.split_crit_edge, label %if.then.i.i48

sw.bb40.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i48:                                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #16
  %conv41 = zext i8 %dst to i32
  %or43 = mul nuw nsw i32 %conv41, 4097
  %conv47 = zext i8 %src to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  %or46 = or i32 %shl48, %or43
  %or.i.i45 = or i32 %or46, -509607920
  br label %sw.epilog.sink.split.sink.split

sw.bb50:                                          ; preds = %entry
  %target.i.i52 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %17 = ptrtoint ptr %target.i.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %target.i.i52, align 4
  %cmp.not.i.i53 = icmp eq ptr %18, null
  br i1 %cmp.not.i.i53, label %sw.bb50.sw.epilog.sink.split_crit_edge, label %if.then.i.i57

sw.bb50.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i57:                                    ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #16
  %conv51 = zext i8 %dst to i32
  %or53 = mul nuw nsw i32 %conv51, 4097
  %conv57 = zext i8 %src to i32
  %shl58 = shl nuw nsw i32 %conv57, 8
  %or56 = or i32 %shl58, %or53
  %or.i.i54 = or i32 %or56, -509607888
  br label %sw.epilog.sink.split.sink.split

sw.bb60:                                          ; preds = %entry
  %target.i.i61 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 7
  %19 = ptrtoint ptr %target.i.i61 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %target.i.i61, align 4
  %cmp.not.i.i62 = icmp eq ptr %20, null
  br i1 %cmp.not.i.i62, label %sw.bb60.sw.epilog.sink.split_crit_edge, label %if.then.i.i66

sw.bb60.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.then.i.i66:                                    ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #16
  %conv61 = zext i8 %dst to i32
  %or63 = mul nuw nsw i32 %conv61, 4097
  %conv69 = zext i8 %src to i32
  %shl70 = shl nuw nsw i32 %conv69, 8
  %or68 = or i32 %shl70, %or63
  %or.i.i63 = or i32 %or68, -509607856
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %if.then.i.i66, %if.then.i.i57, %if.then.i.i48, %if.then.i.i39, %if.then.i.i30, %if.then.i.i21, %if.then.i.i, %if.end31.sink.split.i13, %if.end31.sink.split.i
  %or.i.i63.sink = phi i32 [ %or.i.i63, %if.then.i.i66 ], [ %or.i.i54, %if.then.i.i57 ], [ %or.i.i45, %if.then.i.i48 ], [ %or.i.i36, %if.then.i.i39 ], [ %or.i.i27, %if.then.i.i30 ], [ %or.i.i18, %if.then.i.i21 ], [ %or.i.i, %if.then.i.i ], [ %or.i.i3.i10, %if.end31.sink.split.i13 ], [ %or.i.i3.i, %if.end31.sink.split.i ]
  %.sink71 = phi ptr [ %20, %if.then.i.i66 ], [ %18, %if.then.i.i57 ], [ %16, %if.then.i.i48 ], [ %14, %if.then.i.i39 ], [ %12, %if.then.i.i30 ], [ %10, %if.then.i.i21 ], [ %8, %if.then.i.i ], [ %6, %if.end31.sink.split.i13 ], [ %4, %if.end31.sink.split.i ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i63.sink) #14
  %idx.i.i64 = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %22 = ptrtoint ptr %idx.i.i64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx.i.i64, align 4
  %arrayidx.i.i65 = getelementptr i32, ptr %.sink71, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i65 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx.i.i65, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb60.sw.epilog.sink.split_crit_edge, %sw.bb50.sw.epilog.sink.split_crit_edge, %sw.bb40.sw.epilog.sink.split_crit_edge, %sw.bb31.sw.epilog.sink.split_crit_edge, %sw.bb22.sw.epilog.sink.split_crit_edge, %sw.bb13.sw.epilog.sink.split_crit_edge, %sw.bb6.sw.epilog.sink.split_crit_edge, %sw.bb3.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %idx2.i.i7.i = getelementptr inbounds %struct.jit_ctx, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %idx2.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx2.i.i7.i, align 4
  %inc.i.i68 = add i32 %26, 1
  store i32 %inc.i.i68, ptr %idx2.i.i7.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jit_udiv32(i32 noundef %dividend, i32 noundef %divisor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %dividend, %divisor
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jit_mod32(i32 noundef %dividend, i32 noundef %divisor) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = urem i32 %dividend, %divisor
  ret i32 %rem
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !35, !37}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/net/bpf_jit_32.c", i32 1784, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @build_insn._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @build_insn._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @build_insn._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../arch/arm/net/bpf_jit_32.c", i32 1824, i32 3}
!8 = !{ptr @build_insn._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../arch/arm/net/bpf_jit_32.c", i32 1828, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @build_insn._entry.5, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @build_insn._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../arch/arm/net/bpf_jit_32.c", i32 1831, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @build_insn._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @build_insn._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @bpf2a32, !20, !"bpf2a32", i1 false, i1 false}
!20 = !{!"../arch/arm/net/bpf_jit_32.c", i32 148, i32 17}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../arch/arm/net/bpf_jit_32.c", i32 1240, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @emit_bpf_tail_call._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @emit_bpf_tail_call._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @out_offset, !28, !"out_offset", i1 false, i1 false}
!28 = !{!"../arch/arm/net/bpf_jit_32.c", i32 1167, i32 12}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/filter.h", i32 1084, i32 2}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @bpf_jit_dump._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @bpf_jit_dump._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/filter.h", i32 1088, i32 18}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/filter.h", i32 1088, i32 28}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i8 0, i8 2}
!52 = !{!"branch_weights", i32 2000, i32 1}
