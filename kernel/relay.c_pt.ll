; ModuleID = '/llk/IR_all_yes/kernel/relay.c_pt.bc'
source_filename = "../kernel/relay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+relay_buf_full\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_buf_full\09\09\09\09"
module asm "\09.long\09__crc_relay_buf_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_buf_full:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_buf_full\22\09\09\09\09\09"
module asm "__kstrtabns_relay_buf_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_reset\09\09\09\09"
module asm "\09.long\09__crc_relay_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_reset\22\09\09\09\09\09"
module asm "__kstrtabns_relay_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_open\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_open\09\09\09\09"
module asm "\09.long\09__crc_relay_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_open:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_open\22\09\09\09\09\09"
module asm "__kstrtabns_relay_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_late_setup_files\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_late_setup_files\09\09\09\09"
module asm "\09.long\09__crc_relay_late_setup_files\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_late_setup_files:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_late_setup_files\22\09\09\09\09\09"
module asm "__kstrtabns_relay_late_setup_files:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_switch_subbuf\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_switch_subbuf\09\09\09\09"
module asm "\09.long\09__crc_relay_switch_subbuf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_switch_subbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_switch_subbuf\22\09\09\09\09\09"
module asm "__kstrtabns_relay_switch_subbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_subbufs_consumed\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_subbufs_consumed\09\09\09\09"
module asm "\09.long\09__crc_relay_subbufs_consumed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_subbufs_consumed:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_subbufs_consumed\22\09\09\09\09\09"
module asm "__kstrtabns_relay_subbufs_consumed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_close\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_close\09\09\09\09"
module asm "\09.long\09__crc_relay_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_close:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_close\22\09\09\09\09\09"
module asm "__kstrtabns_relay_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_flush\09\09\09\09"
module asm "\09.long\09__crc_relay_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_flush\22\09\09\09\09\09"
module asm "__kstrtabns_relay_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+relay_file_operations\22, \22a\22\09"
module asm "\09.weak\09__crc_relay_file_operations\09\09\09\09"
module asm "\09.long\09__crc_relay_file_operations\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_relay_file_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22relay_file_operations\22\09\09\09\09\09"
module asm "__kstrtabns_relay_file_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.59 }
%union.anon.59 = type { i32 }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.rchan_buf = type { ptr, ptr, i32, i32, i32, ptr, %struct.wait_queue_head, %struct.irq_work, ptr, %struct.kref, ptr, i32, i32, ptr, i32, i32, i32, i32, [124 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rchan = type { i32, i32, i32, i32, ptr, %struct.kref, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, [255 x i8] }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.rchan_callbacks = type { ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.66 = type { ptr }
%struct.rchan_percpu_buf_dispatcher = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.partial_page = type { i32, i32, i32 }
%struct.splice_pipe_desc = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.16, i32, ptr, ptr, %union.anon.17, ptr, ptr, ptr, ptr, ptr }
%union.anon.17 = type { i32 }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }

@__kstrtab_relay_buf_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_buf_full = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_buf_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_buf_full to i32), ptr @__kstrtab_relay_buf_full, ptr @__kstrtabns_relay_buf_full }, section "___ksymtab_gpl+relay_buf_full", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@relay_channels_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @relay_channels_mutex, i64 52), ptr getelementptr (i8, ptr @relay_channels_mutex, i64 52) }, ptr @relay_channels_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_relay_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_reset to i32), ptr @__kstrtab_relay_reset, ptr @__kstrtabns_relay_reset }, section "___ksymtab_gpl+relay_reset", align 4
@relay_channels = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @relay_channels, ptr @relay_channels }, [24 x i8] zeroinitializer }, align 32
@relay_prepare_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013relay: cpu %d buffer creation failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"relay_prepare_cpu\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel/relay.c\00", [17 x i8] zeroinitializer }, align 32
@relay_prepare_cpu._entry_ptr = internal global ptr @relay_prepare_cpu._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_relay_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_open = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_open to i32), ptr @__kstrtab_relay_open, ptr @__kstrtabns_relay_open }, section "___ksymtab_gpl+relay_open", align 4
@relay_late_setup_files.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@relay_late_setup_files.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@relay_late_setup_files.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013CPU has no buffer!\0A\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_relay_late_setup_files = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_late_setup_files = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_late_setup_files = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_late_setup_files to i32), ptr @__kstrtab_relay_late_setup_files, ptr @__kstrtabns_relay_late_setup_files }, section "___ksymtab_gpl+relay_late_setup_files", align 4
@__kstrtab_relay_switch_subbuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_switch_subbuf = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_switch_subbuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_switch_subbuf to i32), ptr @__kstrtab_relay_switch_subbuf, ptr @__kstrtabns_relay_switch_subbuf }, section "___ksymtab_gpl+relay_switch_subbuf", align 4
@__kstrtab_relay_subbufs_consumed = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_subbufs_consumed = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_subbufs_consumed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_subbufs_consumed to i32), ptr @__kstrtab_relay_subbufs_consumed, ptr @__kstrtabns_relay_subbufs_consumed }, section "___ksymtab_gpl+relay_subbufs_consumed", align 4
@relay_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014relay: one or more items not logged [item size (%zd) > sub-buffer size (%zd)]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"relay_close\00", [20 x i8] zeroinitializer }, align 32
@relay_close._entry_ptr = internal global ptr @relay_close._entry, section ".printk_index", align 4
@__kstrtab_relay_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_close = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_close to i32), ptr @__kstrtab_relay_close, ptr @__kstrtabns_relay_close }, section "___ksymtab_gpl+relay_close", align 4
@__kstrtab_relay_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_flush to i32), ptr @__kstrtab_relay_flush, ptr @__kstrtabns_relay_flush }, section "___ksymtab_gpl+relay_flush", align 4
@relay_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @relay_file_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @relay_file_poll, ptr null, ptr null, ptr @relay_file_mmap, i32 0, ptr @relay_file_open, ptr null, ptr @relay_file_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @relay_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_relay_file_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_relay_file_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_relay_file_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @relay_file_operations to i32), ptr @__kstrtab_relay_file_operations, ptr @__kstrtabns_relay_file_operations }, section "___ksymtab_gpl+relay_file_operations", align 4
@__relay_reset.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&buf->read_wait\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"relay_channels_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"relay_channels_mutex\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@relay_file_mmap_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @relay_buf_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@relay_pipe_buf_ops = internal constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr null, ptr @relay_pipe_buf_release, ptr @generic_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"relay_channels_mutex\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"relay_channels\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 28, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 447, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 618, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 772, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"relay_file_operations\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1240, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 291, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 27, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 360, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 230, i32 6 }
@___asan_gen_.66 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 214, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 174, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"relay_file_mmap_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 54, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1160, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"relay_pipe_buf_ops\00", align 1
@___asan_gen_.78 = private constant [18 x i8] c"../kernel/relay.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1097, i32 41 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_relay_buf_full, ptr @__ksymtab_relay_close, ptr @__ksymtab_relay_file_operations, ptr @__ksymtab_relay_flush, ptr @__ksymtab_relay_late_setup_files, ptr @__ksymtab_relay_open, ptr @__ksymtab_relay_reset, ptr @__ksymtab_relay_subbufs_consumed, ptr @__ksymtab_relay_switch_subbuf, ptr @relay_close._entry, ptr @relay_close._entry_ptr, ptr @relay_prepare_cpu._entry, ptr @relay_prepare_cpu._entry_ptr, ptr @relay_channels_mutex, ptr @relay_channels, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @relay_file_operations, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @relay_file_mmap_ops, ptr @.str.16, ptr @relay_pipe_buf_ops], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relay_channels_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relay_channels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relay_prepare_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relay_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relay_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relay_file_mmap_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @relay_pipe_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @relay_buf_full(ptr nocapture noundef readonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %subbufs_produced = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %subbufs_produced to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subbufs_produced, align 4
  %subbufs_consumed = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %subbufs_consumed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subbufs_consumed, align 16
  %sub = sub i32 %1, %3
  %chan = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 5
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %n_subbufs = getelementptr inbounds %struct.rchan, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %n_subbufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_subbufs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp.not = icmp uge i32 %sub, %7
  %cond = zext i1 %cmp.not to i32
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @relay_reset(ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_global = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %is_global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_global, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %do.body

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

do.body:                                          ; preds = %if.end
  %buf2 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %2 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %5 = load i32, ptr @__per_cpu_offset, align 4
  %add = add i32 %5, %4
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.body.if.end6_crit_edge, label %if.then5

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %do.body
  %wakeup_work1.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 7
  tail call void @irq_work_sync(ptr noundef %wakeup_work1.i) #15
  %subbufs_produced.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %subbufs_produced.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %subbufs_produced.i, align 4
  %subbufs_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 4
  %10 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %subbufs_consumed.i, align 16
  %bytes_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 15
  %11 = ptrtoint ptr %bytes_consumed.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bytes_consumed.i, align 8
  %finalized.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 12
  %12 = ptrtoint ptr %finalized.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %finalized.i, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 128
  %data.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %data.i, align 4
  %offset.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %offset.i, align 8
  %chan.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan.i, align 4
  %n_subbufs19.i = getelementptr inbounds %struct.rchan, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %n_subbufs19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_subbufs19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20.not.i = icmp eq i32 %20, 0
  br i1 %cmp20.not.i, label %if.then5.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then5.for.end.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then5
  %padding.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %padding.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %padding.i, align 16
  %arrayidx.i = getelementptr i32, ptr %22, i32 %i.021.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.021.i, 1
  %24 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan.i, align 4
  %n_subbufs.i = getelementptr inbounds %struct.rchan, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %n_subbufs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_subbufs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then5.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %18, %if.then5.for.end.i_crit_edge ], [ %25, %for.body.i.for.end.i_crit_edge ]
  %cb.i.i = getelementptr inbounds %struct.rchan, ptr %.lcssa.i, i32 0, i32 4
  %28 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cb.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %for.end.i.cleanup_crit_edge, label %if.end.i.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %call5.i.i = tail call i32 %31(ptr noundef nonnull %8, ptr noundef %33, ptr noundef null, i32 noundef 0) #15
  br label %cleanup

if.end6:                                          ; preds = %do.body.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @relay_channels_mutex, i32 noundef 0) #15
  %call53 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call53, i32 %34)
  %cmp54 = icmp ult i32 %call53, %34
  br i1 %cmp54, label %do.body7.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.body7.lr.ph:                                   ; preds = %if.end6
  %buf13 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  br label %do.body7

do.body7:                                         ; preds = %if.end18.do.body7_crit_edge, %do.body7.lr.ph
  %call55 = phi i32 [ %call53, %do.body7.lr.ph ], [ %call, %if.end18.do.body7_crit_edge ]
  %35 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf13, align 4
  %37 = ptrtoint ptr %36 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call55
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %add15 = add i32 %39, %37
  %40 = inttoptr i32 %add15 to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool16.not = icmp eq ptr %42, null
  br i1 %tobool16.not, label %do.body7.if.end18_crit_edge, label %if.then17

do.body7.if.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then17:                                        ; preds = %do.body7
  %wakeup_work1.i27 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 7
  tail call void @irq_work_sync(ptr noundef %wakeup_work1.i27) #15
  %subbufs_produced.i28 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %subbufs_produced.i28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %subbufs_produced.i28, align 4
  %subbufs_consumed.i29 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 4
  %44 = ptrtoint ptr %subbufs_consumed.i29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %subbufs_consumed.i29, align 16
  %bytes_consumed.i30 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 15
  %45 = ptrtoint ptr %bytes_consumed.i30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %bytes_consumed.i30, align 8
  %finalized.i31 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 12
  %46 = ptrtoint ptr %finalized.i31 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %finalized.i31, align 4
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 128
  %data.i32 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 1
  %49 = ptrtoint ptr %data.i32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %data.i32, align 4
  %offset.i33 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 2
  %50 = ptrtoint ptr %offset.i33 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %offset.i33, align 8
  %chan.i34 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 5
  %51 = ptrtoint ptr %chan.i34 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chan.i34, align 4
  %n_subbufs19.i35 = getelementptr inbounds %struct.rchan, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %n_subbufs19.i35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_subbufs19.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp20.not.i36 = icmp eq i32 %54, 0
  br i1 %cmp20.not.i36, label %if.then17.for.end.i48_crit_edge, label %for.body.lr.ph.i38

if.then17.for.end.i48_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i48

for.body.lr.ph.i38:                               ; preds = %if.then17
  %padding.i37 = getelementptr inbounds %struct.rchan_buf, ptr %42, i32 0, i32 13
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %for.body.lr.ph.i38
  %i.021.i39 = phi i32 [ 0, %for.body.lr.ph.i38 ], [ %inc.i41, %for.body.i44.for.body.i44_crit_edge ]
  %55 = ptrtoint ptr %padding.i37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %padding.i37, align 16
  %arrayidx.i40 = getelementptr i32, ptr %56, i32 %i.021.i39
  %57 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx.i40, align 4
  %inc.i41 = add nuw i32 %i.021.i39, 1
  %58 = ptrtoint ptr %chan.i34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chan.i34, align 4
  %n_subbufs.i42 = getelementptr inbounds %struct.rchan, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %n_subbufs.i42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_subbufs.i42, align 4
  %cmp.i43 = icmp ult i32 %inc.i41, %61
  br i1 %cmp.i43, label %for.body.i44.for.body.i44_crit_edge, label %for.body.i44.for.end.i48_crit_edge

for.body.i44.for.end.i48_crit_edge:               ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i48

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i44

for.end.i48:                                      ; preds = %for.body.i44.for.end.i48_crit_edge, %if.then17.for.end.i48_crit_edge
  %.lcssa.i45 = phi ptr [ %52, %if.then17.for.end.i48_crit_edge ], [ %59, %for.body.i44.for.end.i48_crit_edge ]
  %cb.i.i46 = getelementptr inbounds %struct.rchan, ptr %.lcssa.i45, i32 0, i32 4
  %62 = ptrtoint ptr %cb.i.i46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cb.i.i46, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool.not.i.i47 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i47, label %for.end.i48.if.end18_crit_edge, label %if.end.i.i50

for.end.i48.if.end18_crit_edge:                   ; preds = %for.end.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end.i.i50:                                     ; preds = %for.end.i48
  call void @__sanitizer_cov_trace_pc() #17
  %66 = ptrtoint ptr %data.i32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i32, align 4
  %call5.i.i49 = tail call i32 %65(ptr noundef nonnull %42, ptr noundef %67, ptr noundef null, i32 noundef 0) #15
  br label %if.end18

if.end18:                                         ; preds = %if.end.i.i50, %for.end.i48.if.end18_crit_edge, %do.body7.if.end18_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call55, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %68 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %68
  br i1 %cmp, label %if.end18.do.body7_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end18.do.body7_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body7

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.i.i, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @relay_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @relay_channels_mutex, i32 noundef 0) #15
  %.pn35 = load ptr, ptr @relay_channels, align 4
  %cmp.not37 = icmp eq ptr %.pn35, @relay_channels
  br i1 %cmp.not37, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %.pn38 = phi ptr [ %.pn35, %do.body.lr.ph ], [ %.pn, %for.inc.do.body_crit_edge ]
  %buf2 = getelementptr i8, ptr %.pn38, i32 -8
  %0 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf2, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %do.body.for.inc_crit_edge

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %do.body
  %chan.039 = getelementptr i8, ptr %.pn38, i32 -40
  %call = tail call fastcc ptr @relay_open_buf(ptr noundef %chan.039, i32 noundef %cpu)
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cpu) #19
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf2, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add21 = add i32 %12, %10
  %13 = inttoptr i32 %add21 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %do.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn38, align 4
  %cmp.not = icmp eq ptr %.pn, @relay_channels
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @relay_open_buf(ptr noundef %chan, i32 noundef %cpu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_global = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %is_global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_global, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %buf1 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %5 = load i32, ptr @__per_cpu_offset, align 4
  %add = add i32 %5, %4
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_subbufs.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 2
  %9 = ptrtoint ptr %n_subbufs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_subbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %10)
  %cmp.i = icmp ugt i32 %10, 2097152
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 256) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %n_subbufs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_subbufs.i, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #15
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !74

kmalloc_array.exit.thread.i:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  %padding36.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %padding36.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %padding36.i, align 16
  br label %free_buf.i

if.end7.i.i:                                      ; preds = %if.end2.i
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3264) #21
  %padding.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %padding.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i, ptr %padding.i, align 16
  %tobool6.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not.i, label %if.end7.i.i.free_buf.i_crit_edge, label %if.end8.i

if.end7.i.i.free_buf.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_buf.i

if.end8.i:                                        ; preds = %if.end7.i.i
  %alloc_size.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 3
  %19 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alloc_size.i, align 4
  %add.i.i = add i32 %20, 4095
  %and.i.i = and i32 %add.i.i, -4096
  store i32 %and.i.i, ptr %alloc_size.i, align 4
  %shr.i.i = lshr i32 %add.i.i, 12
  %mul.i.i.i = shl nuw nsw i32 %shr.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4198399, i32 %add.i.i)
  %cmp.i.i31.i = icmp ugt i32 %add.i.i, 4198399
  br i1 %cmp.i.i31.i, label %if.then.i.i32.i, label %if.end8.i.i.i.i.i

if.then.i.i32.i:                                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call noalias ptr @vzalloc(i32 noundef %mul.i.i.i) #21
  br label %relay_alloc_page_array.exit.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i.i, i32 noundef 3520) #21
  br label %relay_alloc_page_array.exit.i.i

relay_alloc_page_array.exit.i.i:                  ; preds = %if.end8.i.i.i.i.i, %if.then.i.i32.i
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i32.i ], [ %call9.i.i.i.i.i, %if.end8.i.i.i.i.i ]
  %page_array.i.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %page_array.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.i.i, ptr %page_array.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %retval.0.i.i.i, null
  br i1 %tobool.not.i.i, label %relay_alloc_page_array.exit.i.i.relay_alloc_buf.exit.thread.i_crit_edge, label %for.cond.preheader.i.i

relay_alloc_page_array.exit.i.i.relay_alloc_buf.exit.thread.i_crit_edge: ; preds = %relay_alloc_page_array.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_alloc_buf.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %relay_alloc_page_array.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp57.not.i.i = icmp ult i32 %add.i.i, 4096
  br i1 %cmp57.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %22 = ptrtoint ptr %call7.i.i.i to i32
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %shr.i.i, i32 1) #15
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end11.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.058.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end11.i.i.for.body.i.i_crit_edge ]
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %23 = ptrtoint ptr %page_array.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %24, i32 %i.058.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx.i.i, align 4
  %26 = load ptr, ptr %page_array.i.i, align 4
  %arrayidx5.i.i = getelementptr ptr, ptr %26, i32 %i.058.i.i
  %27 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %28, null
  br i1 %tobool6.not.i.i, label %for.body.i.i.depopulate.i.i_crit_edge, label %if.end11.i.i, !prof !74

for.body.i.i.depopulate.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %depopulate.i.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  %private1.i.i.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %private1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %22, ptr %private1.i.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.058.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end11.i.i.for.end.i.i_crit_edge, label %if.end11.i.i.for.body.i.i_crit_edge

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

if.end11.i.i.for.end.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end11.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %umax.i.i, %if.end11.i.i.for.end.i.i_crit_edge ]
  %30 = ptrtoint ptr %page_array.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %page_array.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %32 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %32, 512
  %call15.i.i = tail call ptr @vmap(ptr noundef %31, i32 noundef %shr.i.i, i32 noundef 4, i32 noundef %or.i.i) #15
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %for.end.i.i.depopulate.i.i_crit_edge, label %if.end13.i

for.end.i.i.depopulate.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %depopulate.i.i

depopulate.i.i:                                   ; preds = %for.end.i.i.depopulate.i.i_crit_edge, %for.body.i.i.depopulate.i.i_crit_edge
  %i.056.i.i = phi i32 [ %i.0.lcssa.i.i, %for.end.i.i.depopulate.i.i_crit_edge ], [ %i.058.i.i, %for.body.i.i.depopulate.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.056.i.i)
  %cmp2059.not.i.i = icmp eq i32 %i.056.i.i, 0
  br i1 %cmp2059.not.i.i, label %depopulate.i.i.for.end26.i.i_crit_edge, label %depopulate.i.i.for.body21.i.i_crit_edge

depopulate.i.i.for.body21.i.i_crit_edge:          ; preds = %depopulate.i.i
  br label %for.body21.i.i

depopulate.i.i.for.end26.i.i_crit_edge:           ; preds = %depopulate.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end26.i.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %depopulate.i.i.for.body21.i.i_crit_edge
  %j.060.i.i = phi i32 [ %inc25.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ], [ 0, %depopulate.i.i.for.body21.i.i_crit_edge ]
  %33 = ptrtoint ptr %page_array.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page_array.i.i, align 4
  %arrayidx23.i.i = getelementptr ptr, ptr %34, i32 %j.060.i.i
  %35 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx23.i.i, align 4
  tail call void @__free_pages(ptr noundef %36, i32 noundef 0) #15
  %inc25.i.i = add nuw nsw i32 %j.060.i.i, 1
  %exitcond62.not.i.i = icmp eq i32 %inc25.i.i, %i.056.i.i
  br i1 %exitcond62.not.i.i, label %for.body21.i.i.for.end26.i.i_crit_edge, label %for.body21.i.i.for.body21.i.i_crit_edge

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21.i.i

for.body21.i.i.for.end26.i.i_crit_edge:           ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end26.i.i

for.end26.i.i:                                    ; preds = %for.body21.i.i.for.end26.i.i_crit_edge, %depopulate.i.i.for.end26.i.i_crit_edge
  %37 = ptrtoint ptr %page_array.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %page_array.i.i, align 4
  tail call void @kvfree(ptr noundef %38) #15
  br label %relay_alloc_buf.exit.thread.i

relay_alloc_buf.exit.thread.i:                    ; preds = %for.end26.i.i, %relay_alloc_page_array.exit.i.i.relay_alloc_buf.exit.thread.i_crit_edge
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %call7.i.i.i, align 128
  br label %free_buf.i

if.end13.i:                                       ; preds = %for.end.i.i
  %40 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %alloc_size.i, align 4
  %42 = call ptr @memset(ptr %call15.i.i, i32 0, i32 %41)
  %page_count.i.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 11
  %43 = ptrtoint ptr %page_count.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr.i.i, ptr %page_count.i.i, align 8
  %44 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call15.i.i, ptr %call7.i.i.i, align 128
  %chan14.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %chan14.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %chan, ptr %chan14.i, align 4
  %kref.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !74

if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end13.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end5_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end5_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end13.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %if.end5

free_buf.i:                                       ; preds = %relay_alloc_buf.exit.thread.i, %if.end7.i.i.free_buf.i_crit_edge, %kmalloc_array.exit.thread.i
  %padding38.i = phi ptr [ %padding36.i, %kmalloc_array.exit.thread.i ], [ %padding.i, %if.end7.i.i.free_buf.i_crit_edge ], [ %padding.i, %relay_alloc_buf.exit.thread.i ]
  %48 = ptrtoint ptr %padding38.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %padding38.i, align 16
  tail call void @kfree(ptr noundef %49) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end5_crit_edge
  %has_base_filename = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 12
  %50 = ptrtoint ptr %has_base_filename to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %has_base_filename, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool6.not = icmp eq i32 %51, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 256) #20
  %tobool.not.i55 = icmp eq ptr %call7.i.i.i54, null
  br i1 %tobool.not.i55, label %if.then7.free_buf_crit_edge, label %if.end.i56

if.then7.free_buf_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_buf

if.end.i56:                                       ; preds = %if.then7
  %base_filename.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 13
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i54, i32 noundef 255, ptr noundef nonnull @.str.12, ptr noundef %base_filename.i, i32 noundef %cpu) #15
  %cb.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 4
  %53 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cb.i, align 4
  %create_buf_file.i = getelementptr inbounds %struct.rchan_callbacks, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %create_buf_file.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %create_buf_file.i, align 4
  %parent.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 11
  %57 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parent.i, align 4
  %call2.i = tail call ptr %56(ptr noundef nonnull %call7.i.i.i54, ptr noundef %58, i16 noundef zeroext 256, ptr noundef nonnull %call7.i.i.i, ptr noundef %is_global) #15
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i54) #15
  %tobool9.not = icmp eq ptr %call2.i, null
  %or.cond = or i1 %cmp.i.i, %tobool9.not
  br i1 %or.cond, label %if.end.i56.free_buf_crit_edge, label %if.end11

if.end.i56.free_buf_crit_edge:                    ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_buf

if.end11:                                         ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #17
  %dentry1.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 8
  %59 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call2.i, ptr %dentry1.i, align 4
  %early_bytes.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 16
  %60 = ptrtoint ptr %early_bytes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %early_bytes.i, align 4
  %conv.i = zext i32 %61 to i64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 5
  %62 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %d_inode.i.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv.i, ptr %i_size.i, align 8
  br label %if.end17

if.else:                                          ; preds = %if.end5
  %cb = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 4
  %65 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cb, align 4
  %create_buf_file = getelementptr inbounds %struct.rchan_callbacks, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %create_buf_file to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %create_buf_file, align 4
  %call13 = tail call ptr %68(ptr noundef null, ptr noundef null, i16 noundef zeroext 256, ptr noundef nonnull %call7.i.i.i, ptr noundef %is_global) #15
  %tobool.not.i58 = icmp eq ptr %call13, null
  %cmp.i59 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %spec.select.i60 = or i1 %tobool.not.i58, %cmp.i59
  br i1 %spec.select.i60, label %if.else.free_buf_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.else.free_buf_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_buf

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.end11
  %cpu18 = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 17
  %69 = ptrtoint ptr %cpu18 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cpu, ptr %cpu18, align 128
  %read_wait.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %read_wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @__relay_reset.__key) #15
  %kref.i61 = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i61, i32 noundef 4) #15
  %70 = ptrtoint ptr %kref.i61 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 1, ptr %kref.i61, align 8
  %wakeup_work.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %wakeup_work.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %wakeup_work.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 7, i32 0, i32 1
  %72 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @wakeup_readers, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %74 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 8
  %subbufs_produced.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %subbufs_produced.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %subbufs_produced.i, align 4
  %subbufs_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %subbufs_consumed.i, align 16
  %bytes_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 15
  %77 = ptrtoint ptr %bytes_consumed.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %bytes_consumed.i, align 8
  %finalized.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 12
  %78 = ptrtoint ptr %finalized.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %finalized.i, align 4
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call7.i.i.i, align 128
  %data.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %data.i, align 4
  %offset.i = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %offset.i, align 8
  %83 = ptrtoint ptr %chan14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chan14.i, align 4
  %n_subbufs19.i = getelementptr inbounds %struct.rchan, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %n_subbufs19.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n_subbufs19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp20.not.i = icmp eq i32 %86, 0
  br i1 %cmp20.not.i, label %if.end17.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end17.for.end.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end17
  %padding.i63 = getelementptr inbounds %struct.rchan_buf, ptr %call7.i.i.i, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %padding.i63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %padding.i63, align 16
  %arrayidx.i = getelementptr i32, ptr %88, i32 %i.021.i
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.021.i, 1
  %90 = ptrtoint ptr %chan14.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chan14.i, align 4
  %n_subbufs.i64 = getelementptr inbounds %struct.rchan, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %n_subbufs.i64 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %n_subbufs.i64, align 4
  %cmp.i65 = icmp ult i32 %inc.i, %93
  br i1 %cmp.i65, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end17.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %84, %if.end17.for.end.i_crit_edge ], [ %91, %for.body.i.for.end.i_crit_edge ]
  %cb.i.i = getelementptr inbounds %struct.rchan, ptr %.lcssa.i, i32 0, i32 4
  %94 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cb.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %tobool.not.i.i66 = icmp eq ptr %97, null
  br i1 %tobool.not.i.i66, label %for.end.i.__relay_reset.exit_crit_edge, label %if.end.i.i67

for.end.i.__relay_reset.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__relay_reset.exit

if.end.i.i67:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %98 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %data.i, align 4
  %call5.i.i = tail call i32 %97(ptr noundef nonnull %call7.i.i.i, ptr noundef %99, ptr noundef null, i32 noundef 0) #15
  br label %__relay_reset.exit

__relay_reset.exit:                               ; preds = %if.end.i.i67, %for.end.i.__relay_reset.exit_crit_edge
  %100 = ptrtoint ptr %is_global to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %is_global, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool20.not = icmp eq i32 %101, 0
  br i1 %tobool20.not, label %__relay_reset.exit.cleanup_crit_edge, label %if.then21

__relay_reset.exit.cleanup_crit_edge:             ; preds = %__relay_reset.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then21:                                        ; preds = %__relay_reset.exit
  call void @__sanitizer_cov_trace_pc() #17
  %buf28 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %102 = ptrtoint ptr %buf28 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buf28, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %105 = load i32, ptr @__per_cpu_offset, align 4
  %add30 = add i32 %105, %104
  %106 = inttoptr i32 %add30 to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i.i, ptr %106, align 4
  %108 = ptrtoint ptr %cpu18 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %cpu18, align 128
  br label %cleanup

free_buf:                                         ; preds = %if.else.free_buf_crit_edge, %if.end.i56.free_buf_crit_edge, %if.then7.free_buf_crit_edge
  tail call fastcc void @relay_destroy_buf(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %free_buf, %if.then21, %__relay_reset.exit.cleanup_crit_edge, %free_buf.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi ptr [ %8, %do.body ], [ null, %free_buf ], [ %call7.i.i.i, %if.then21 ], [ %call7.i.i.i, %__relay_reset.exit.cleanup_crit_edge ], [ null, %free_buf.i ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @relay_open(ptr noundef %base_filename, ptr noundef %parent, i32 noundef %subbuf_size, i32 noundef %n_subbufs, ptr noundef %cb, ptr noundef %private_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subbuf_size)
  %tobool.not = icmp eq i32 %subbuf_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_subbufs)
  %tobool1.not = icmp eq i32 %n_subbufs, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul97 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_subbufs, i32 %subbuf_size)
  %mul.ov = extractvalue { i32, i1 } %mul97, 1
  %tobool4.not = icmp eq ptr %cb, null
  %or.cond98 = or i1 %mul.ov, %tobool4.not
  br i1 %or.cond98, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %create_buf_file = getelementptr inbounds %struct.rchan_callbacks, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %create_buf_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %create_buf_file, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %remove_buf_file = getelementptr inbounds %struct.rchan_callbacks, ptr %cb, i32 0, i32 2
  %2 = ptrtoint ptr %remove_buf_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove_buf_file, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end9

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 312) #20
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #21
  %buf14 = getelementptr %struct.rchan, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %buf14, align 8
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %call7.i.i, align 8
  %n_subbufs19 = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %n_subbufs19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %n_subbufs, ptr %n_subbufs19, align 8
  %subbuf_size20 = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %subbuf_size20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %subbuf_size, ptr %subbuf_size20, align 4
  %mul = mul i32 %n_subbufs, %subbuf_size
  %add = add i32 %mul, 4095
  %and = and i32 %add, -4096
  %alloc_size = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %alloc_size, align 4
  %parent21 = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %parent21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent, ptr %parent21, align 8
  %private_data22 = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %private_data22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %private_data, ptr %private_data22, align 8
  %tobool23.not = icmp eq ptr %base_filename, null
  br i1 %tobool23.not, label %if.end18.if.end27_crit_edge, label %if.then24

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %has_base_filename = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %has_base_filename to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %has_base_filename, align 4
  %base_filename25 = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 13
  %call26 = tail call i32 @strlcpy(ptr noundef %base_filename25, ptr noundef nonnull %base_filename, i32 noundef 255) #15
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end18.if.end27_crit_edge
  %cb28 = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %cb28 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cb, ptr %cb28, align 8
  %kref = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  %14 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %kref, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @relay_channels_mutex, i32 noundef 0) #15
  %call2999 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2999, i32 %15)
  %cmp30100 = icmp ult i32 %call2999, %15
  br i1 %cmp30100, label %if.end27.for.body_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %if.end27.for.body_crit_edge
  %call29101 = phi i32 [ %call29, %if.end34.for.body_crit_edge ], [ %call2999, %if.end27.for.body_crit_edge ]
  %call31 = tail call fastcc ptr @relay_open_buf(ptr noundef nonnull %call7.i.i, i32 noundef %call29101)
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %for.cond38.preheader, label %if.end34

for.cond38.preheader:                             ; preds = %for.body
  %call39102 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call39102, i32 %16)
  %cmp40103 = icmp ult i32 %call39102, %16
  br i1 %cmp40103, label %for.cond38.preheader.do.body42_crit_edge, label %for.cond38.preheader.for.end55_crit_edge

for.cond38.preheader.for.end55_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end55

for.cond38.preheader.do.body42_crit_edge:         ; preds = %for.cond38.preheader
  br label %do.body42

if.end34:                                         ; preds = %for.body
  %17 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf14, align 8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call29101
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add37 = add i32 %21, %19
  %22 = inttoptr i32 %add37 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call31, ptr %22, align 4
  %call29 = tail call i32 @cpumask_next(i32 noundef %call29101, ptr noundef nonnull @__cpu_online_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %cmp30 = icmp ult i32 %call29, %24
  br i1 %cmp30, label %if.end34.for.body_crit_edge, label %if.end34.for.end_crit_edge

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end34.for.end_crit_edge, %if.end27.for.end_crit_edge
  %list = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 10
  %25 = load ptr, ptr @relay_channels, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @relay_channels, ptr noundef %25) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.rchan, ptr %call7.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @relay_channels, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @relay_channels, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

do.body42:                                        ; preds = %if.end54.do.body42_crit_edge, %for.cond38.preheader.do.body42_crit_edge
  %call39104 = phi i32 [ %call39, %if.end54.do.body42_crit_edge ], [ %call39102, %for.cond38.preheader.do.body42_crit_edge ]
  %29 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf14, align 8
  %31 = ptrtoint ptr %30 to i32
  %arrayidx50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call39104
  %32 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx50, align 4
  %add51 = add i32 %33, %31
  %34 = inttoptr i32 %add51 to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool52.not = icmp eq ptr %36, null
  br i1 %tobool52.not, label %do.body42.if.end54_crit_edge, label %if.then53

do.body42.if.end54_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then53:                                        ; preds = %do.body42
  %finalized.i = getelementptr inbounds %struct.rchan_buf, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %finalized.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %finalized.i, align 4
  %wakeup_work.i = getelementptr inbounds %struct.rchan_buf, ptr %36, i32 0, i32 7
  tail call void @irq_work_sync(ptr noundef %wakeup_work.i) #15
  %chan.i = getelementptr inbounds %struct.rchan_buf, ptr %36, i32 0, i32 5
  %38 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan.i, align 4
  %cb.i = getelementptr inbounds %struct.rchan, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cb.i, align 4
  %remove_buf_file.i = getelementptr inbounds %struct.rchan_callbacks, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %remove_buf_file.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remove_buf_file.i, align 4
  %dentry.i = getelementptr inbounds %struct.rchan_buf, ptr %36, i32 0, i32 8
  %44 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dentry.i, align 4
  %call.i = tail call i32 %43(ptr noundef %45) #15
  %kref.i = getelementptr inbounds %struct.rchan_buf, ptr %36, i32 0, i32 9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end54_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.if.end54_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #15
  br label %if.end54

if.then.i.i:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  tail call fastcc void @relay_destroy_buf(ptr noundef nonnull %36) #15
  br label %if.end54

if.end54:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end54_crit_edge, %do.body42.if.end54_crit_edge
  %call39 = tail call i32 @cpumask_next(i32 noundef %call39104, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %47 = load i32, ptr @nr_cpu_ids, align 4
  %cmp40 = icmp ult i32 %call39, %47
  br i1 %cmp40, label %if.end54.do.body42_crit_edge, label %if.end54.for.end55_crit_edge

if.end54.for.end55_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end55

if.end54.do.body42_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body42

for.end55:                                        ; preds = %if.end54.for.end55_crit_edge, %for.cond38.preheader.for.end55_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  %49 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf14, align 8
  tail call void @free_percpu(ptr noundef %50) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %list_add.exit, %if.then17, %if.end9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %kref_put.exit ], [ %call7.i.i, %list_add.exit ], [ null, %if.then17 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %lor.lhs.false6.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end9.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @relay_late_setup_files(ptr noundef %chan, ptr noundef %base_filename, ptr noundef %parent) #2 align 64 {
entry:
  %disp = alloca %struct.rchan_percpu_buf_dispatcher, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %disp) #15
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %disp, align 4, !annotation !80
  %1 = getelementptr inbounds %struct.rchan_percpu_buf_dispatcher, ptr %disp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !80
  %tobool.not = icmp eq ptr %chan, null
  %tobool1.not = icmp eq ptr %base_filename, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_filename2 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 13
  %call = tail call i32 @strlcpy(ptr noundef %base_filename2, ptr noundef nonnull %base_filename, i32 noundef 255) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @relay_channels_mutex, i32 noundef 0) #15
  %has_base_filename = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 12
  %3 = ptrtoint ptr %has_base_filename to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %has_base_filename, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end7, label %if.then6, !prof !76

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %has_base_filename to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %has_base_filename, align 4
  %parent9 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 11
  %6 = ptrtoint ptr %parent9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent, ptr %parent9, align 4
  %is_global = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 9
  %7 = ptrtoint ptr %is_global to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %is_global, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %do.body131, label %if.then11

if.then11:                                        ; preds = %if.end7
  %buf12 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %9 = ptrtoint ptr %buf12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf12, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %12 = load i32, ptr @__per_cpu_offset, align 4
  %add = add i32 %12, %11
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %land.rhs, label %if.then66.critedge

land.rhs:                                         ; preds = %if.then11
  %.b342 = load i1, ptr @relay_late_setup_files.__already_done, align 1
  br i1 %.b342, label %land.rhs.if.end129_crit_edge, label %if.then31, !prof !76

land.rhs.if.end129_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.then31:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @relay_late_setup_files.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #15
  br label %if.end129

if.then66.critedge:                               ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 256) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then66.critedge.if.end129_crit_edge, label %if.end.i

if.then66.critedge.if.end129_crit_edge:           ; preds = %if.then66.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.end.i:                                         ; preds = %if.then66.critedge
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 255, ptr noundef nonnull @.str.12, ptr noundef %base_filename2, i32 noundef 0) #15
  %cb.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 4
  %17 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb.i, align 4
  %create_buf_file.i = getelementptr inbounds %struct.rchan_callbacks, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %create_buf_file.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %create_buf_file.i, align 4
  %21 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent9, align 4
  %call2.i = tail call ptr %20(ptr noundef nonnull %call7.i.i.i, ptr noundef %22, i16 noundef zeroext 256, ptr noundef nonnull %15, ptr noundef %is_global) #15
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #15
  %tobool68.not = icmp eq ptr %call2.i, null
  %or.cond379 = or i1 %cmp.i.i, %tobool68.not
  br i1 %or.cond379, label %if.end.i.if.end129_crit_edge, label %land.lhs.true

if.end.i.if.end129_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

land.lhs.true:                                    ; preds = %if.end.i
  %23 = ptrtoint ptr %is_global to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is_global, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool71.not = icmp eq i32 %24, 0
  br i1 %tobool71.not, label %land.rhs80, label %if.then127.critedge

land.rhs80:                                       ; preds = %land.lhs.true
  %.b338341 = load i1, ptr @relay_late_setup_files.__already_done.3, align 1
  br i1 %.b338341, label %land.rhs80.if.end129_crit_edge, label %if.then91, !prof !76

land.rhs80.if.end129_crit_edge:                   ; preds = %land.rhs80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end129

if.then91:                                        ; preds = %land.rhs80
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @relay_late_setup_files.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 600, i32 noundef 9, ptr noundef null) #15
  br label %if.end129

if.then127.critedge:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dentry1.i = getelementptr inbounds %struct.rchan_buf, ptr %15, i32 0, i32 8
  %25 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call2.i, ptr %dentry1.i, align 4
  %early_bytes.i = getelementptr inbounds %struct.rchan_buf, ptr %15, i32 0, i32 16
  %26 = ptrtoint ptr %early_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %early_bytes.i, align 4
  %conv.i = zext i32 %27 to i64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv.i, ptr %i_size.i, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then127.critedge, %if.then91, %land.rhs80.if.end129_crit_edge, %if.end.i.if.end129_crit_edge, %if.then66.critedge.if.end129_crit_edge, %if.then31, %land.rhs.if.end129_crit_edge
  %err.0 = phi i32 [ 0, %if.then127.critedge ], [ -22, %if.then31 ], [ -22, %if.then91 ], [ -22, %land.rhs.if.end129_crit_edge ], [ -22, %land.rhs80.if.end129_crit_edge ], [ -22, %if.then66.critedge.if.end129_crit_edge ], [ -22, %if.end.i.if.end129_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

do.body131:                                       ; preds = %if.end7
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %34, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !81
  %35 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu, align 4
  %buf143 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %cb.i352 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end283.for.cond_crit_edge, %do.body131
  %i.0 = phi i32 [ -1, %do.body131 ], [ %call136, %if.end283.for.cond_crit_edge ]
  %call136 = call i32 @cpumask_next(i32 noundef %i.0, ptr noundef nonnull @__cpu_online_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call136, i32 %39)
  %cmp = icmp ult i32 %call136, %39
  br i1 %cmp, label %do.body137, label %for.cond.do.body293_crit_edge

for.cond.do.body293_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body293

do.body137:                                       ; preds = %for.cond
  %40 = ptrtoint ptr %buf143 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf143, align 4
  %42 = ptrtoint ptr %41 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call136
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %add145 = add i32 %44, %42
  %45 = inttoptr i32 %add145 to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %tobool146.not = icmp eq ptr %47, null
  br i1 %tobool146.not, label %land.end162, label %if.end204, !prof !74

land.end162:                                      ; preds = %do.body137
  %.b339340 = load i1, ptr @relay_late_setup_files.__already_done.4, align 1
  br i1 %.b339340, label %land.end162.do.body293_crit_edge, label %if.then169, !prof !76

land.end162.do.body293_crit_edge:                 ; preds = %land.end162
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body293

if.then169:                                       ; preds = %land.end162
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @relay_late_setup_files.__already_done.4, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 618, i32 noundef 9, ptr noundef nonnull @.str.5) #15
  br label %do.body293

if.end204:                                        ; preds = %do.body137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i348 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 256) #20
  %tobool.not.i349 = icmp eq ptr %call7.i.i.i348, null
  br i1 %tobool.not.i349, label %if.end204.do.body293_crit_edge, label %if.end.i359

if.end204.do.body293_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body293

if.end.i359:                                      ; preds = %if.end204
  %call1.i351 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i.i348, i32 noundef 255, ptr noundef nonnull @.str.12, ptr noundef %base_filename2, i32 noundef %call136) #15
  %49 = ptrtoint ptr %cb.i352 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cb.i352, align 4
  %create_buf_file.i353 = getelementptr inbounds %struct.rchan_callbacks, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %create_buf_file.i353 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %create_buf_file.i353, align 4
  %53 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent9, align 4
  %call2.i356 = call ptr %52(ptr noundef nonnull %call7.i.i.i348, ptr noundef %54, i16 noundef zeroext 256, ptr noundef nonnull %47, ptr noundef %is_global) #15
  %cmp.i.i357 = icmp ugt ptr %call2.i356, inttoptr (i32 -4096 to ptr)
  call void @kfree(ptr noundef nonnull %call7.i.i.i348) #15
  %tobool206.not = icmp eq ptr %call2.i356, null
  %or.cond380 = or i1 %cmp.i.i357, %tobool206.not
  br i1 %or.cond380, label %if.end.i359.do.body293_crit_edge, label %if.end216, !prof !82

if.end.i359.do.body293_crit_edge:                 ; preds = %if.end.i359
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body293

if.end216:                                        ; preds = %if.end.i359
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call136)
  %cmp217 = icmp eq i32 %38, %call136
  br i1 %cmp217, label %do.body220, label %if.else

do.body220:                                       ; preds = %if.end216
  %55 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !83
  %and.i362 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i362)
  %tobool233.not = icmp eq i32 %and.i362, 0
  br i1 %tobool233.not, label %if.then247, label %do.end237

do.end237:                                        ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #17
  %dentry1.i363 = getelementptr inbounds %struct.rchan_buf, ptr %47, i32 0, i32 8
  %56 = ptrtoint ptr %dentry1.i363 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call2.i356, ptr %dentry1.i363, align 4
  %early_bytes.i364 = getelementptr inbounds %struct.rchan_buf, ptr %47, i32 0, i32 16
  %57 = ptrtoint ptr %early_bytes.i364 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %early_bytes.i364, align 4
  %conv.i365 = zext i32 %58 to i64
  %d_inode.i.i366 = getelementptr inbounds %struct.dentry, ptr %call2.i356, i32 0, i32 5
  %59 = ptrtoint ptr %d_inode.i.i366 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_inode.i.i366, align 8
  %i_size.i367 = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %i_size.i367 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv.i365, ptr %i_size.i367, align 8
  br label %do.body249

if.then247:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #17
  call void @trace_hardirqs_off() #15
  %dentry1.i363374 = getelementptr inbounds %struct.rchan_buf, ptr %47, i32 0, i32 8
  %62 = ptrtoint ptr %dentry1.i363374 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call2.i356, ptr %dentry1.i363374, align 4
  %early_bytes.i364375 = getelementptr inbounds %struct.rchan_buf, ptr %47, i32 0, i32 16
  %63 = ptrtoint ptr %early_bytes.i364375 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %early_bytes.i364375, align 4
  %conv.i365376 = zext i32 %64 to i64
  %d_inode.i.i366377 = getelementptr inbounds %struct.dentry, ptr %call2.i356, i32 0, i32 5
  %65 = ptrtoint ptr %d_inode.i.i366377 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_inode.i.i366377, align 8
  %i_size.i367378 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %i_size.i367378 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv.i365376, ptr %i_size.i367378, align 8
  call void @trace_hardirqs_on() #15
  br label %do.body249

do.body249:                                       ; preds = %if.then247, %do.end237
  %68 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !84
  %and.i.i = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool257.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool257.not, label %if.then266, label %do.body249.do.end269_crit_edge, !prof !74

do.body249.do.end269_crit_edge:                   ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end269

if.then266:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end269

do.end269:                                        ; preds = %if.then266, %do.body249.do.end269_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #15, !srcloc !85
  br label %if.end283

if.else:                                          ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %disp to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %47, ptr %disp, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call2.i356, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !86
  %call282 = call i32 @smp_call_function_single(i32 noundef %call136, ptr noundef nonnull @__relay_set_buf_dentry, ptr noundef nonnull %disp, i32 noundef 1) #15
  br label %if.end283

if.end283:                                        ; preds = %if.else, %do.end269
  %err.2 = phi i32 [ 0, %do.end269 ], [ %call282, %if.else ]
  %tobool284.not = icmp eq i32 %err.2, 0
  br i1 %tobool284.not, label %if.end283.for.cond_crit_edge, label %if.end283.do.body293_crit_edge, !prof !76

if.end283.do.body293_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body293

if.end283.for.cond_crit_edge:                     ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

do.body293:                                       ; preds = %if.end283.do.body293_crit_edge, %if.end.i359.do.body293_crit_edge, %if.end204.do.body293_crit_edge, %if.then169, %land.end162.do.body293_crit_edge, %for.cond.do.body293_crit_edge
  %err.3 = phi i32 [ -22, %if.then169 ], [ -22, %land.end162.do.body293_crit_edge ], [ -22, %if.end.i359.do.body293_crit_edge ], [ -22, %if.end204.do.body293_crit_edge ], [ 0, %for.cond.do.body293_crit_edge ], [ %err.2, %if.end283.do.body293_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !87
  %71 = call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i.i.i346 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i346 to ptr
  %preempt_count.i.i347 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i347 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i347, align 4
  %sub.i = add i32 %74, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i347, align 4
  call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body293, %if.end129, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then6 ], [ %err.0, %if.end129 ], [ %err.3, %do.body293 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %disp) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__relay_set_buf_dentry(ptr nocapture noundef readonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %dentry = getelementptr inbounds %struct.rchan_percpu_buf_dispatcher, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %dentry1.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dentry1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dentry1.i, align 4
  %early_bytes.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %early_bytes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %early_bytes.i, align 4
  %conv.i = zext i32 %6 to i64
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %i_size.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @relay_switch_subbuf(ptr noundef %buf, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %subbuf_size = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %subbuf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subbuf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %length)
  %cmp = icmp ult i32 %3, %length
  br i1 %cmp, label %entry.toobig_crit_edge, label %if.end, !prof !74

entry.toobig_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %toobig

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 8
  %add = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp4.not = icmp eq i32 %5, %add
  br i1 %cmp4.not, label %if.end.if.end36_crit_edge, label %if.then5

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then5:                                         ; preds = %if.end
  %sub = sub i32 %3, %5
  %prev_padding = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 14
  %6 = ptrtoint ptr %prev_padding to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %prev_padding, align 4
  %subbufs_produced = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 3
  %7 = ptrtoint ptr %subbufs_produced to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %subbufs_produced, align 4
  %n_subbufs = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %n_subbufs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_subbufs, align 4
  %rem = urem i32 %8, %10
  %padding = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 13
  %11 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %padding, align 16
  %arrayidx = getelementptr i32, ptr %12, i32 %rem
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %arrayidx, align 4
  %14 = load i32, ptr %subbufs_produced, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %subbufs_produced, align 4
  %dentry = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 8
  %15 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry, align 4
  %tobool12.not = icmp eq ptr %16, null
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 4
  %subbuf_size22 = getelementptr inbounds %struct.rchan, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %subbuf_size22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %subbuf_size22, align 4
  %21 = load ptr, ptr %padding, align 16
  %arrayidx24 = getelementptr i32, ptr %21, i32 %rem
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  %sub25 = sub i32 %20, %23
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i32 %sub25 to i64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_size, align 8
  %add20 = add i64 %27, %conv
  store i64 %add20, ptr %i_size, align 8
  br label %do.end

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %early_bytes = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 16
  %28 = ptrtoint ptr %early_bytes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %early_bytes, align 4
  %add26 = add i32 %sub25, %29
  store i32 %add26, ptr %early_bytes, align 4
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !88
  %head.i = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %31, %head.i
  br i1 %cmp.i.i.not, label %do.end.if.end36_crit_edge, label %if.then33

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %wakeup_work = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 7
  %call34 = tail call zeroext i1 @irq_work_queue(ptr noundef %wakeup_work) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %do.end.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %data = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 1
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %subbufs_produced37 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 3
  %34 = ptrtoint ptr %subbufs_produced37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %subbufs_produced37, align 4
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %n_subbufs39 = getelementptr inbounds %struct.rchan, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %n_subbufs39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_subbufs39, align 4
  %rem40 = urem i32 %35, %39
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf, align 128
  %subbuf_size42 = getelementptr inbounds %struct.rchan, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %subbuf_size42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %subbuf_size42, align 4
  %mul = mul i32 %43, %rem40
  %add.ptr = getelementptr i8, ptr %41, i32 %mul
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %offset, align 8
  %cb.i = getelementptr inbounds %struct.rchan, ptr %37, i32 0, i32 4
  %45 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cb.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %subbufs_consumed.i.i = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 4
  %49 = ptrtoint ptr %subbufs_consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %subbufs_consumed.i.i, align 16
  %sub.i.i = sub i32 %35, %50
  %51 = ptrtoint ptr %n_subbufs39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_subbufs39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %52)
  %cmp.not.i.not.i = icmp ult i32 %sub.i.i, %52
  %lnot.ext.i117 = zext i1 %cmp.not.i.not.i to i32
  br label %relay_subbuf_start.exit

if.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %prev_padding44 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 14
  %53 = ptrtoint ptr %prev_padding44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prev_padding44, align 4
  %call5.i = tail call i32 %48(ptr noundef %buf, ptr noundef %add.ptr, ptr noundef %33, i32 noundef %54) #15
  br label %relay_subbuf_start.exit

relay_subbuf_start.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %lnot.ext.i117, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool46.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool46.not, label %if.then47, label %if.end52

if.then47:                                        ; preds = %relay_subbuf_start.exit
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chan, align 4
  %subbuf_size49 = getelementptr inbounds %struct.rchan, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %subbuf_size49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %subbuf_size49, align 4
  %add50 = add i32 %58, 1
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add50, ptr %offset, align 8
  br label %cleanup

if.end52:                                         ; preds = %relay_subbuf_start.exit
  %60 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr, ptr %data, align 4
  %padding54 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 13
  %61 = ptrtoint ptr %padding54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %padding54, align 16
  %arrayidx55 = getelementptr i32, ptr %62, i32 %rem40
  %63 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %arrayidx55, align 4
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset, align 8
  %add57 = add i32 %65, %length
  %66 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chan, align 4
  %subbuf_size59 = getelementptr inbounds %struct.rchan, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %subbuf_size59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %subbuf_size59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %69)
  %cmp60 = icmp ugt i32 %add57, %69
  br i1 %cmp60, label %if.end52.toobig_crit_edge, label %if.end52.cleanup_crit_edge, !prof !74

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end52.toobig_crit_edge:                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %toobig

toobig:                                           ; preds = %if.end52.toobig_crit_edge, %entry.toobig_crit_edge
  %70 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chan, align 4
  %last_toobig = getelementptr inbounds %struct.rchan, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %last_toobig to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %length, ptr %last_toobig, align 4
  br label %cleanup

cleanup:                                          ; preds = %toobig, %if.end52.cleanup_crit_edge, %if.then47
  %retval.0 = phi i32 [ 0, %toobig ], [ 0, %if.then47 ], [ %length, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @relay_subbufs_consumed(ptr noundef readonly %chan, i32 noundef %cpu, i32 noundef %subbufs_consumed) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 3
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %buf1 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %lor.lhs.false4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4:                                   ; preds = %do.body
  %n_subbufs = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %n_subbufs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_subbufs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %subbufs_consumed)
  %cmp5 = icmp ult i32 %9, %subbufs_consumed
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #17
  %subbufs_produced = getelementptr inbounds %struct.rchan_buf, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %subbufs_produced to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subbufs_produced, align 4
  %subbufs_consumed8 = getelementptr inbounds %struct.rchan_buf, ptr %7, i32 0, i32 4
  %12 = ptrtoint ptr %subbufs_consumed8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %subbufs_consumed8, align 16
  %sub = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %subbufs_consumed)
  %cmp9 = icmp ult i32 %sub, %subbufs_consumed
  %add14 = add i32 %13, %subbufs_consumed
  %storemerge = select i1 %cmp9, i32 %11, i32 %add14
  %14 = ptrtoint ptr %subbufs_consumed8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge, ptr %subbufs_consumed8, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false4.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @relay_close(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @relay_channels_mutex, i32 noundef 0) #15
  %is_global = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %is_global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_global, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %do.body

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

do.body:                                          ; preds = %if.end
  %buf2 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %2 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %5 = load i32, ptr @__per_cpu_offset, align 4
  %add = add i32 %5, %4
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.body.if.else_crit_edge, label %if.then5

do.body.if.else_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then5:                                         ; preds = %do.body
  %finalized.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %finalized.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %finalized.i, align 4
  %wakeup_work.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 7
  tail call void @irq_work_sync(ptr noundef %wakeup_work.i) #15
  %chan.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 5
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan.i, align 4
  %cb.i = getelementptr inbounds %struct.rchan, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb.i, align 4
  %remove_buf_file.i = getelementptr inbounds %struct.rchan_callbacks, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %remove_buf_file.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remove_buf_file.i, align 4
  %dentry.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 8
  %16 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dentry.i, align 4
  %call.i = tail call i32 %15(ptr noundef %17) #15
  %kref.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end18_crit_edge, label %if.then10.i.i.i.i.i, !prof !76

if.end5.i.i.i.i.i.if.end18_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #15
  br label %if.end18

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  tail call fastcc void @relay_destroy_buf(ptr noundef nonnull %8) #15
  br label %if.end18

if.else:                                          ; preds = %do.body.if.else_crit_edge, %if.end.if.else_crit_edge
  %call59 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call59, i32 %19)
  %cmp60 = icmp ult i32 %call59, %19
  br i1 %cmp60, label %do.body6.lr.ph, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.body6.lr.ph:                                   ; preds = %if.else
  %buf12 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  br label %do.body6

do.body6:                                         ; preds = %if.end17.do.body6_crit_edge, %do.body6.lr.ph
  %call61 = phi i32 [ %call59, %do.body6.lr.ph ], [ %call, %if.end17.do.body6_crit_edge ]
  %20 = ptrtoint ptr %buf12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf12, align 4
  %22 = ptrtoint ptr %21 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call61
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add14 = add i32 %24, %22
  %25 = inttoptr i32 %add14 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool15.not = icmp eq ptr %27, null
  br i1 %tobool15.not, label %do.body6.if.end17_crit_edge, label %if.then16

do.body6.if.end17_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %do.body6
  %finalized.i43 = getelementptr inbounds %struct.rchan_buf, ptr %27, i32 0, i32 12
  %28 = ptrtoint ptr %finalized.i43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %finalized.i43, align 4
  %wakeup_work.i44 = getelementptr inbounds %struct.rchan_buf, ptr %27, i32 0, i32 7
  tail call void @irq_work_sync(ptr noundef %wakeup_work.i44) #15
  %chan.i45 = getelementptr inbounds %struct.rchan_buf, ptr %27, i32 0, i32 5
  %29 = ptrtoint ptr %chan.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan.i45, align 4
  %cb.i46 = getelementptr inbounds %struct.rchan, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %cb.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb.i46, align 4
  %remove_buf_file.i47 = getelementptr inbounds %struct.rchan_callbacks, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %remove_buf_file.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remove_buf_file.i47, align 4
  %dentry.i48 = getelementptr inbounds %struct.rchan_buf, ptr %27, i32 0, i32 8
  %35 = ptrtoint ptr %dentry.i48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dentry.i48, align 4
  %call.i49 = tail call i32 %34(ptr noundef %36) #15
  %kref.i50 = getelementptr inbounds %struct.rchan_buf, ptr %27, i32 0, i32 9
  %call.i.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i50, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %kref.i50, i32 1, i32 3, i32 1) #15
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i50, ptr %kref.i50, i32 1, ptr elementtype(i32) %kref.i50) #15, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i52 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i52)
  %cmp.i.i.i.i.i53 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i52, 1
  br i1 %cmp.i.i.i.i.i53, label %if.then.i.i57, label %if.end5.i.i.i.i.i55

if.end5.i.i.i.i.i55:                              ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i52)
  %.not.i.i.i.i.i54 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i.i54, label %if.end5.i.i.i.i.i55.if.end17_crit_edge, label %if.then10.i.i.i.i.i56, !prof !76

if.end5.i.i.i.i.i55.if.end17_crit_edge:           ; preds = %if.end5.i.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then10.i.i.i.i.i56:                            ; preds = %if.end5.i.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref.i50, i32 noundef 3) #15
  br label %if.end17

if.then.i.i57:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  tail call fastcc void @relay_destroy_buf(ptr noundef nonnull %27) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then.i.i57, %if.then10.i.i.i.i.i56, %if.end5.i.i.i.i.i55.if.end17_crit_edge, %do.body6.if.end17_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call61, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %38
  br i1 %cmp, label %if.end17.do.body6_crit_edge, label %if.end17.if.end18_crit_edge

if.end17.if.end18_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.end17.do.body6_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

if.end18:                                         ; preds = %if.end17.if.end18_crit_edge, %if.else.if.end18_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end18_crit_edge
  %last_toobig = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 7
  %39 = ptrtoint ptr %last_toobig to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last_toobig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool19.not = icmp eq i32 %40, 0
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %do.end23

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %subbuf_size = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 1
  %41 = ptrtoint ptr %subbuf_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subbuf_size, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %40, i32 noundef %42) #19
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %if.end18.if.end27_crit_edge
  %list = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_del.exit_crit_edge

if.end27.list_del.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end27.list_del.exit_crit_edge
  %49 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %kref = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  %buf.i = getelementptr %struct.rchan, ptr %chan, i32 0, i32 8
  %52 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf.i, align 4
  tail call void @free_percpu(ptr noundef %53) #15
  tail call void @kfree(ptr noundef nonnull %chan) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @relay_flush(ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_global = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %is_global to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_global, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %do.body

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

do.body:                                          ; preds = %if.end
  %buf2 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  %2 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__per_cpu_offset to i32))
  %5 = load i32, ptr @__per_cpu_offset, align 4
  %add = add i32 %5, %4
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.body.if.end6_crit_edge, label %if.then5

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @relay_switch_subbuf(ptr noundef nonnull %8, i32 noundef 0)
  br label %cleanup

if.end6:                                          ; preds = %do.body.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @relay_channels_mutex, i32 noundef 0) #15
  %call729 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call729, i32 %9)
  %cmp30 = icmp ult i32 %call729, %9
  br i1 %cmp30, label %do.body8.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.body8.lr.ph:                                   ; preds = %if.end6
  %buf14 = getelementptr inbounds %struct.rchan, ptr %chan, i32 0, i32 8
  br label %do.body8

do.body8:                                         ; preds = %if.end20.do.body8_crit_edge, %do.body8.lr.ph
  %call731 = phi i32 [ %call729, %do.body8.lr.ph ], [ %call7, %if.end20.do.body8_crit_edge ]
  %10 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf14, align 4
  %12 = ptrtoint ptr %11 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call731
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add16 = add i32 %14, %12
  %15 = inttoptr i32 %add16 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool17.not = icmp eq ptr %17, null
  br i1 %tobool17.not, label %do.body8.if.end20_crit_edge, label %if.then18

do.body8.if.end20_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 @relay_switch_subbuf(ptr noundef nonnull %17, i32 noundef 0)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body8.if.end20_crit_edge
  %call7 = tail call i32 @cpumask_next(i32 noundef %call731, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %18
  br i1 %cmp, label %if.end20.do.body8_crit_edge, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end20.do.body8_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body8

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @relay_channels_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @relay_file_read(ptr nocapture noundef readonly %filp, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef writeonly %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup18_crit_edge, label %if.end

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup18

if.end:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #15
  %chan.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 5
  %subbufs_produced.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 3
  %subbufs_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 4
  %offset.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 2
  %bytes_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 15
  %padding4.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 13
  %data.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end
  %count.addr.0 = phi i32 [ %count, %if.end ], [ %sub, %cleanup.do.body_crit_edge ]
  %buffer.addr.0 = phi ptr [ %buffer, %if.end ], [ %add.ptr14, %cleanup.do.body_crit_edge ]
  %written.0 = phi i32 [ 0, %if.end ], [ %add, %cleanup.do.body_crit_edge ]
  %4 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan.i, align 4
  %subbuf_size1.i = getelementptr inbounds %struct.rchan, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %subbuf_size1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subbuf_size1.i, align 4
  %n_subbufs3.i = getelementptr inbounds %struct.rchan, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %n_subbufs3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_subbufs3.i, align 4
  %10 = ptrtoint ptr %subbufs_produced.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subbufs_produced.i, align 4
  tail call fastcc void @relay_file_read_consume(ptr noundef %1, i32 noundef 0, i32 noundef 0) #15
  %12 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %subbufs_consumed.i, align 16
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp.i = icmp ugt i32 %15, %7
  br i1 %cmp.i, label %relay_file_read_avail.exit, label %if.end7.i, !prof !74

if.end7.i:                                        ; preds = %do.body
  %sub.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp8.not.i = icmp ult i32 %sub.i, %9
  br i1 %cmp8.not.i, label %if.end7.i.if.end18.i_crit_edge, label %if.then15.i, !prof !76

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub16.i = sub i32 %11, %9
  %add.i = add i32 %sub16.i, 1
  %16 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %subbufs_consumed.i, align 16
  %17 = ptrtoint ptr %bytes_consumed.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bytes_consumed.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end7.i.if.end18.i_crit_edge
  %consumed.0.i = phi i32 [ %add.i, %if.then15.i ], [ %13, %if.end7.i.if.end18.i_crit_edge ]
  %rem.i = urem i32 %11, %9
  %mul.i = mul i32 %rem.i, %7
  %add20.i = add i32 %mul.i, %15
  %rem21.i = urem i32 %consumed.0.i, %9
  %mul22.i = mul i32 %rem21.i, %7
  %18 = ptrtoint ptr %bytes_consumed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytes_consumed.i, align 8
  %add24.i = add i32 %mul22.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %add20.i)
  %cmp25.i = icmp ugt i32 %add24.i, %add20.i
  %mul27.i = mul i32 %9, %7
  %add28.i = select i1 %cmp25.i, i32 %mul27.i, i32 0
  %produced.0.i = add i32 %add28.i, %add20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %produced.0.i)
  %cmp30.i = icmp eq i32 %add24.i, %produced.0.i
  br i1 %cmp30.i, label %if.then31.i, label %if.end18.i.if.end4_crit_edge

if.end18.i.if.end4_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then31.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp33.i = icmp eq i32 %15, %7
  br i1 %cmp33.i, label %land.lhs.true.i, label %if.then31.i.do.end_crit_edge

if.then31.i.do.end_crit_edge:                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.then31.i
  %20 = ptrtoint ptr %subbufs_produced.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %subbufs_produced.i, align 4
  %22 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subbufs_consumed.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp36.i = icmp ugt i32 %21, %23
  br i1 %cmp36.i, label %land.lhs.true.i.if.end4_crit_edge, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

relay_file_read_avail.exit:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp5.i.not = icmp eq i32 %11, %13
  br i1 %cmp5.i.not, label %relay_file_read_avail.exit.do.end_crit_edge, label %relay_file_read_avail.exit.if.end4_crit_edge

relay_file_read_avail.exit.if.end4_crit_edge:     ; preds = %relay_file_read_avail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

relay_file_read_avail.exit.do.end_crit_edge:      ; preds = %relay_file_read_avail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end4:                                          ; preds = %relay_file_read_avail.exit.if.end4_crit_edge, %land.lhs.true.i.if.end4_crit_edge, %if.end18.i.if.end4_crit_edge
  %24 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan.i, align 4
  %subbuf_size1.i49 = getelementptr inbounds %struct.rchan, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %subbuf_size1.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subbuf_size1.i49, align 4
  %n_subbufs3.i50 = getelementptr inbounds %struct.rchan, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %n_subbufs3.i50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_subbufs3.i50, align 4
  %30 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %subbufs_consumed.i, align 16
  %rem.i52 = urem i32 %31, %29
  %mul.i53 = mul i32 %rem.i52, %27
  %32 = ptrtoint ptr %bytes_consumed.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_consumed.i, align 8
  %add.i55 = add i32 %mul.i53, %33
  %div.i = udiv i32 %add.i55, %27
  %34 = ptrtoint ptr %padding4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %padding4.i, align 16
  %arrayidx.i = getelementptr i32, ptr %35, i32 %div.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %add5.i = add i32 %div.i, 1
  %mul6.i = mul i32 %add5.i, %27
  %sub.i56 = sub i32 %mul6.i, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i55, i32 %sub.i56)
  %cmp.not.i = icmp uge i32 %add.i55, %sub.i56
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i55, i32 %mul6.i)
  %cmp9.i = icmp ult i32 %add.i55, %mul6.i
  %or.cond.i = and i1 %cmp9.i, %cmp.not.i
  br i1 %or.cond.i, label %if.then.i57, label %if.end4.relay_file_read_start_pos.exit_crit_edge

if.end4.relay_file_read_start_pos.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_file_read_start_pos.exit

if.then.i57:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %rem11.i = urem i32 %add5.i, %29
  %mul12.i = mul i32 %rem11.i, %27
  %.pre = udiv i32 %mul12.i, %27
  br label %relay_file_read_start_pos.exit

relay_file_read_start_pos.exit:                   ; preds = %if.then.i57, %if.end4.relay_file_read_start_pos.exit_crit_edge
  %div3.i.pre-phi = phi i32 [ %div.i, %if.end4.relay_file_read_start_pos.exit_crit_edge ], [ %.pre, %if.then.i57 ]
  %read_pos.0.i = phi i32 [ %add.i55, %if.end4.relay_file_read_start_pos.exit_crit_edge ], [ %mul12.i, %if.then.i57 ]
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 128
  %sub.ptr.lhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div.i60 = udiv i32 %sub.ptr.sub.i, %27
  %rem.i61 = urem i32 %read_pos.0.i, %27
  %arrayidx.i63 = getelementptr i32, ptr %35, i32 %div3.i.pre-phi
  %42 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i.pre-phi, i32 %div.i60)
  %cmp5.i64 = icmp eq i32 %div3.i.pre-phi, %div.i60
  br i1 %cmp5.i64, label %if.then.i67, label %if.else.i

if.then.i67:                                      ; preds = %relay_file_read_start_pos.exit
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset.i, align 8
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %27) #15
  %add.i66 = add i32 %43, %rem.i61
  %47 = tail call i32 @llvm.usub.sat.i32(i32 %46, i32 %add.i66) #15
  br label %relay_file_read_subbuf_avail.exit

if.else.i:                                        ; preds = %relay_file_read_start_pos.exit
  call void @__sanitizer_cov_trace_pc() #17
  %48 = add i32 %rem.i61, %43
  %sub10.i = sub i32 %27, %48
  br label %relay_file_read_subbuf_avail.exit

relay_file_read_subbuf_avail.exit:                ; preds = %if.else.i, %if.then.i67
  %avail.0.i = phi i32 [ %sub10.i, %if.else.i ], [ %47, %if.then.i67 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %avail.0.i)
  %tobool7.not = icmp eq i32 %avail.0.i, 0
  br i1 %tobool7.not, label %relay_file_read_subbuf_avail.exit.do.end_crit_edge, label %if.end9

relay_file_read_subbuf_avail.exit.do.end_crit_edge: ; preds = %relay_file_read_subbuf_avail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end9:                                          ; preds = %relay_file_read_subbuf_avail.exit
  %49 = tail call i32 @llvm.umin.i32(i32 %count.addr.0, i32 %avail.0.i)
  %add.ptr = getelementptr i8, ptr %41, i32 %read_pos.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp9.i.i = icmp slt i32 %49, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end9
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.end_crit_edge, label %if.then27.i.i, !prof !76

land.rhs16.i.i.do.end_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %do.end

if.then.i.i.i:                                    ; preds = %if.end9
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %49, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer.addr.0, i32 %49, i32 -1226833920) #22, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %49) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buffer.addr.0, ptr noundef %add.ptr, i32 noundef %49) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %49, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %49, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool11.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool11.not, label %cleanup, label %copy_to_user.exit.do.end_crit_edge

copy_to_user.exit.do.end_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

cleanup:                                          ; preds = %copy_to_user.exit
  %add.ptr14 = getelementptr i8, ptr %buffer.addr.0, i32 %49
  %add = add i32 %49, %written.0
  %sub = sub i32 %count.addr.0, %49
  tail call fastcc void @relay_file_read_consume(ptr noundef %1, i32 noundef %read_pos.0.i, i32 noundef %49)
  %51 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chan.i, align 4
  %subbuf_size1.i69 = getelementptr inbounds %struct.rchan, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %subbuf_size1.i69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %subbuf_size1.i69, align 4
  %n_subbufs3.i70 = getelementptr inbounds %struct.rchan, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %n_subbufs3.i70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_subbufs3.i70, align 4
  %read_pos.0.i.frozen = freeze i32 %read_pos.0.i
  %.frozen = freeze i32 %54
  %div.i71 = udiv i32 %read_pos.0.i.frozen, %.frozen
  %57 = ptrtoint ptr %padding4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %padding4.i, align 16
  %arrayidx.i73 = getelementptr i32, ptr %58, i32 %div.i71
  %59 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i73, align 4
  %61 = mul i32 %div.i71, %.frozen
  %rem.i74.decomposed = sub i32 %read_pos.0.i.frozen, %61
  %add.i75 = add i32 %60, %49
  %add5.i76 = add i32 %add.i75, %rem.i74.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i76, i32 %54)
  %cmp.i77 = icmp eq i32 %add5.i76, %54
  %add6.i = add i32 %div.i71, 1
  %mul.i78 = mul i32 %add6.i, %54
  %add7.i = add i32 %49, %read_pos.0.i
  %end_pos.0.i = select i1 %cmp.i77, i32 %mul.i78, i32 %add7.i
  %mul8.i = mul i32 %56, %54
  call void @__sanitizer_cov_trace_cmp4(i32 %end_pos.0.i, i32 %mul8.i)
  %cmp9.not.i = icmp ult i32 %end_pos.0.i, %mul8.i
  %spec.store.select.i = select i1 %cmp9.not.i, i32 %end_pos.0.i, i32 0
  %conv = zext i32 %spec.store.select.i to i64
  %62 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv, ptr %ppos, align 8
  %tobool16.not = icmp eq i32 %sub, 0
  br i1 %tobool16.not, label %cleanup.do.end_crit_edge, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

cleanup.do.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %cleanup.do.end_crit_edge, %copy_to_user.exit.do.end_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end_crit_edge, %relay_file_read_subbuf_avail.exit.do.end_crit_edge, %relay_file_read_avail.exit.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge, %if.then31.i.do.end_crit_edge
  %written.195 = phi i32 [ %written.0, %if.then27.i.i ], [ %written.0, %land.rhs16.i.i.do.end_crit_edge ], [ %written.0, %land.lhs.true.i.do.end_crit_edge ], [ %written.0, %if.then31.i.do.end_crit_edge ], [ %written.0, %copy_to_user.exit.do.end_crit_edge ], [ %written.0, %relay_file_read_subbuf_avail.exit.do.end_crit_edge ], [ %written.0, %relay_file_read_avail.exit.do.end_crit_edge ], [ %add, %cleanup.do.end_crit_edge ]
  %63 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i80 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i80) #15
  br label %cleanup18

cleanup18:                                        ; preds = %do.end, %entry.cleanup18_crit_edge
  %retval.0 = phi i32 [ %written.195, %do.end ], [ 0, %entry.cleanup18_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @relay_file_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %finalized = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %finalized to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %finalized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %read_wait = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then2.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then2.poll_wait.exit_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then2
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %7(ptr noundef %filp, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #15
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then2.poll_wait.exit_crit_edge
  %subbufs_produced.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %subbufs_produced.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subbufs_produced.i, align 4
  %subbufs_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %subbufs_consumed.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %tobool.not.i13.not = icmp eq i32 %9, %11
  %spec.select = select i1 %tobool.not.i13.not, i32 0, i32 65
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %poll_wait.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @relay_file_mmap(ptr nocapture noundef readonly %filp, ptr nocapture noundef %vma) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.relay_mmap_buf.exit_crit_edge, label %if.end.i

entry.relay_mmap_buf.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_mmap_buf.exit

if.end.i:                                         ; preds = %entry
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end.i, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %3, %5
  %chan.i = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan.i, align 4
  %alloc_size.i = getelementptr inbounds %struct.rchan, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.not.i = icmp eq i32 %sub.i, %9
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.relay_mmap_buf.exit_crit_edge

if.end.i.relay_mmap_buf.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_mmap_buf.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %10 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @relay_file_mmap_ops, ptr %vm_ops.i, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %11 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags.i, align 4
  %or.i = or i32 %12, 262144
  store i32 %or.i, ptr %vm_flags.i, align 4
  %vm_private_data.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %13 = ptrtoint ptr %vm_private_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %vm_private_data.i, align 4
  br label %relay_mmap_buf.exit

relay_mmap_buf.exit:                              ; preds = %if.end2.i, %if.end.i.relay_mmap_buf.exit_crit_edge, %entry.relay_mmap_buf.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ -9, %entry.relay_mmap_buf.exit_crit_edge ], [ -22, %if.end.i.relay_mmap_buf.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @relay_file_open(ptr noundef %inode, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !74

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private_data, align 4
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %filp) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @relay_file_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %kref = getelementptr inbounds %struct.rchan_buf, ptr %1, i32 0, i32 9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  tail call fastcc void @relay_destroy_buf(ptr noundef %1) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @relay_file_splice_read(ptr nocapture noundef readonly %in, ptr nocapture noundef %ppos, ptr noundef %pipe, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %pages.i = alloca [16 x ptr], align 4
  %partial.i = alloca [16 x %struct.partial_page], align 4
  %spd.i = alloca %struct.splice_pipe_desc, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not64.not = icmp eq i32 %len, 0
  br i1 %tobool.not64.not, label %entry.while.end.thread_crit_edge, label %while.body.lr.ph

entry.while.end.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %in, i32 0, i32 16
  %0 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd.i, i32 0, i32 4
  %4 = getelementptr inbounds %struct.splice_pipe_desc, ptr %spd.i, i32 0, i32 5
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %.pr = load i64, ptr %ppos, align 8
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i64 [ %.pr, %while.body.lr.ph ], [ %add, %if.end7.while.body_crit_edge ]
  %len.addr.065 = phi i32 [ %len, %while.body.lr.ph ], [ %73, %if.end7.while.body_crit_edge ]
  %7 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i, align 4
  %chan.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan.i, align 4
  %subbuf_size1.i = getelementptr inbounds %struct.rchan, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %subbuf_size1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %subbuf_size1.i, align 4
  %alloc_size3.i = getelementptr inbounds %struct.rchan, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %alloc_size3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alloc_size3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %6)
  %cmp167.i = icmp ult i64 %6, 4294967296
  br i1 %cmp167.i, label %if.then171.i, label %if.else177.i, !prof !76

if.then171.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %conv172.i = trunc i64 %6 to i32
  %rem173.i = urem i32 %conv172.i, %14
  br label %if.end181.i

if.else177.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %15 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %6) #22, !srcloc !90
  %asmresult.i6.i = extractvalue { i64, i64 } %15, 0
  %shr.i.i = lshr i64 %asmresult.i6.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.else177.i, %if.then171.i
  %__rem.0.i = phi i32 [ %rem173.i, %if.then171.i ], [ %conv.i.i, %if.else177.i ]
  %__rem.0.i.frozen = freeze i32 %__rem.0.i
  %.frozen = freeze i32 %12
  %div183.i = udiv i32 %__rem.0.i.frozen, %.frozen
  %padding184.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 13
  %16 = ptrtoint ptr %padding184.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %padding184.i, align 16
  %arrayidx.i = getelementptr i32, ptr %17, i32 %div183.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %mul185.i = mul i32 %div183.i, %12
  %add186.i = add i32 %mul185.i, %12
  %sub187.i = sub i32 %add186.i, %19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages.i) #15
  %20 = call ptr @memset(ptr %pages.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %partial.i) #15
  %21 = call ptr @memset(ptr %partial.i, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %spd.i) #15
  %22 = ptrtoint ptr %spd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pages.i, ptr %spd.i, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %partial.i, ptr %0, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %1, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %2, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @relay_pipe_buf_ops, ptr %3, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @relay_page_release, ptr %4, align 4
  %subbufs_produced.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 3
  %28 = ptrtoint ptr %subbufs_produced.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %subbufs_produced.i, align 4
  %subbufs_consumed.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 4
  %30 = ptrtoint ptr %subbufs_consumed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %subbufs_consumed.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp192.i = icmp eq i32 %29, %31
  br i1 %cmp192.i, label %subbuf_splice_actor.exit.thread35, label %if.end195.i

subbuf_splice_actor.exit.thread35:                ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spd.i) #15
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %partial.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages.i) #15
  br label %if.then3

if.end195.i:                                      ; preds = %if.end181.i
  %call196.i = call i32 @splice_grow_spd(ptr noundef %pipe, ptr noundef nonnull %spd.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196.i)
  %tobool197.not.i = icmp eq i32 %call196.i, 0
  br i1 %tobool197.not.i, label %if.end199.i, label %subbuf_splice_actor.exit.thread

subbuf_splice_actor.exit.thread:                  ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spd.i) #15
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %partial.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages.i) #15
  br label %while.end.thread

if.end199.i:                                      ; preds = %if.end195.i
  %32 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan.i, align 4
  %alloc_size209.i = getelementptr inbounds %struct.rchan, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %alloc_size209.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %alloc_size209.i, align 4
  %shr210.i = lshr i32 %35, 12
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %38 = call i32 @llvm.umin.i32(i32 %shr210.i, i32 %37) #15
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp22340.i = icmp ult i32 %40, %38
  br i1 %cmp22340.i, label %for.body.lr.ph.i, label %if.end199.i.for.end.i_crit_edge

if.end199.i.for.end.i_crit_edge:                  ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end199.i
  %div2111.i = lshr i32 %__rem.0.i, 12
  %and213.i = and i32 %__rem.0.i, 4095
  %41 = mul i32 %div183.i, %.frozen
  %rem200.i.decomposed = sub i32 %__rem.0.i.frozen, %41
  %sub201.i = sub i32 %12, %rem200.i.decomposed
  %42 = call i32 @llvm.umin.i32(i32 %sub201.i, i32 %len.addr.065) #15
  %page_array.i = getelementptr inbounds %struct.rchan_buf, ptr %8, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %43 = phi i32 [ %40, %for.body.lr.ph.i ], [ %inc272.i, %for.inc.i.for.body.i_crit_edge ]
  %div2111.pn.i = phi i32 [ %div2111.i, %for.body.lr.ph.i ], [ %add261.i, %for.inc.i.for.body.i_crit_edge ]
  %len.addr.143.i = phi i32 [ %42, %for.body.lr.ph.i ], [ %sub259.i, %for.inc.i.for.body.i_crit_edge ]
  %poff.042.i = phi i32 [ %and213.i, %for.body.lr.ph.i ], [ 0, %for.inc.i.for.body.i_crit_edge ]
  %total_len.041.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add260.i, %for.inc.i.for.body.i_crit_edge ]
  %pidx.044.i = urem i32 %div2111.pn.i, %shr210.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.143.i)
  %tobool226.not.i = icmp eq i32 %len.addr.143.i, 0
  br i1 %tobool226.not.i, label %for.body.i.cleanup.thread.i_crit_edge, label %if.end228.i

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread.i

if.end228.i:                                      ; preds = %for.body.i
  %add225.i = add i32 %total_len.041.i, %__rem.0.i
  %sub229.i = sub nuw nsw i32 4096, %poff.042.i
  %44 = call i32 @llvm.umin.i32(i32 %len.addr.143.i, i32 %sub229.i) #15
  %45 = ptrtoint ptr %page_array.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %page_array.i, align 4
  %arrayidx237.i = getelementptr ptr, ptr %46, i32 %pidx.044.i
  %47 = ptrtoint ptr %arrayidx237.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx237.i, align 4
  %49 = ptrtoint ptr %spd.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spd.i, align 4
  %arrayidx240.i = getelementptr ptr, ptr %50, i32 %43
  %51 = ptrtoint ptr %arrayidx240.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %arrayidx240.i, align 4
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %0, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  %arrayidx243.i = getelementptr %struct.partial_page, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx243.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %poff.042.i, ptr %arrayidx243.i, align 4
  %add244.i = add i32 %44, %add225.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add244.i, i32 %sub187.i)
  %cmp245.not.i = icmp ult i32 %add244.i, %sub187.i
  %sub248.i = sub i32 %sub187.i, %add225.i
  %add249.i = add i32 %sub248.i, %19
  %this_len.0.i = select i1 %cmp245.not.i, i32 %44, i32 %sub248.i
  %private.0.i = select i1 %cmp245.not.i, i32 %44, i32 %add249.i
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %0, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %1, align 4
  %len254.i = getelementptr %struct.partial_page, ptr %58, i32 %60, i32 1
  %61 = ptrtoint ptr %len254.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %this_len.0.i, ptr %len254.i, align 4
  %62 = load ptr, ptr %0, align 4
  %63 = load i32, ptr %1, align 4
  %private258.i = getelementptr %struct.partial_page, ptr %62, i32 %63, i32 2
  %64 = ptrtoint ptr %private258.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %private.0.i, ptr %private258.i, align 4
  %add260.i = add i32 %this_len.0.i, %total_len.041.i
  br i1 %cmp245.not.i, label %for.inc.i, label %if.then265.i

if.then265.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #17
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %1, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %1, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then265.i, %for.body.i.cleanup.thread.i_crit_edge
  %total_len.1.ph.i = phi i32 [ %add260.i, %if.then265.i ], [ %total_len.041.i, %for.body.i.cleanup.thread.i_crit_edge ]
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr.i = load i32, ptr %1, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end228.i
  %add261.i = add nuw nsw i32 %pidx.044.i, 1
  %sub259.i = sub i32 %len.addr.143.i, %this_len.0.i
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %1, align 4
  %inc272.i = add i32 %69, 1
  store i32 %inc272.i, ptr %1, align 4
  %cmp223.i = icmp ult i32 %inc272.i, %38
  br i1 %cmp223.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.thread.i, %if.end199.i.for.end.i_crit_edge
  %70 = phi i32 [ %.pr.i, %cleanup.thread.i ], [ %40, %if.end199.i.for.end.i_crit_edge ], [ %inc272.i, %for.inc.i.for.end.i_crit_edge ]
  %total_len.2.i = phi i32 [ %total_len.1.ph.i, %cleanup.thread.i ], [ 0, %if.end199.i.for.end.i_crit_edge ], [ %add260.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool274.not.i = icmp eq i32 %70, 0
  br i1 %tobool274.not.i, label %subbuf_splice_actor.exit.thread41, label %subbuf_splice_actor.exit

subbuf_splice_actor.exit.thread41:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @splice_shrink_spd(ptr noundef nonnull %spd.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spd.i) #15
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %partial.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages.i) #15
  br label %if.then3

subbuf_splice_actor.exit:                         ; preds = %for.end.i
  %call277.i = call i32 @splice_to_pipe(ptr noundef %pipe, ptr noundef nonnull %spd.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call277.i)
  %cmp278.i = icmp sgt i32 %call277.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call277.i, i32 %total_len.2.i)
  %cmp280.i = icmp uge i32 %call277.i, %total_len.2.i
  %or.cond.i = select i1 %cmp278.i, i1 %cmp280.i, i1 false
  %add284.i = add i32 %call277.i, %__rem.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add284.i, i32 %sub187.i)
  %cmp285.i = icmp eq i32 %add284.i, %sub187.i
  %or.cond3.i = select i1 %or.cond.i, i1 %cmp285.i, i1 false
  %add288.i = select i1 %or.cond3.i, i32 %19, i32 0
  %spec.select4.i = add i32 %add288.i, %call277.i
  call void @splice_shrink_spd(ptr noundef nonnull %spd.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %spd.i) #15
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %partial.i) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select4.i)
  %cmp = icmp slt i32 %spec.select4.i, 0
  br i1 %cmp, label %subbuf_splice_actor.exit.while.end.thread_crit_edge, label %if.else

subbuf_splice_actor.exit.while.end.thread_crit_edge: ; preds = %subbuf_splice_actor.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.thread

if.else:                                          ; preds = %subbuf_splice_actor.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select4.i)
  %tobool2.not = icmp eq i32 %spec.select4.i, 0
  br i1 %tobool2.not, label %if.else.if.then3_crit_edge, label %if.end7

if.else.if.then3_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then3:                                         ; preds = %if.else.if.then3_crit_edge, %subbuf_splice_actor.exit.thread41, %subbuf_splice_actor.exit.thread35
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -11
  br label %while.end.thread

if.end7:                                          ; preds = %if.else
  %conv48 = zext i32 %spec.select4.i to i64
  %71 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %ppos, align 8
  %add = add i64 %72, %conv48
  store i64 %add, ptr %ppos, align 8
  %73 = call i32 @llvm.usub.sat.i32(i32 %len.addr.065, i32 %spec.select4.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.065, i32 %spec.select4.i)
  %tobool.not = icmp ugt i32 %len.addr.065, %spec.select4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277.i)
  %tobool1.not = icmp eq i32 %call277.i, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end7.while.body_crit_edge, label %while.end

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %if.end7
  br i1 %tobool1.not, label %while.end.while.end.thread_crit_edge, label %while.end._crit_edge

while.end._crit_edge:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %74

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.then3, %subbuf_splice_actor.exit.while.end.thread_crit_edge, %subbuf_splice_actor.exit.thread, %entry.while.end.thread_crit_edge
  %ret.190 = phi i32 [ %spec.select4.i, %while.end.while.end.thread_crit_edge ], [ 0, %entry.while.end.thread_crit_edge ], [ -12, %subbuf_splice_actor.exit.thread ], [ %spec.select, %if.then3 ], [ %spec.select4.i, %subbuf_splice_actor.exit.while.end.thread_crit_edge ]
  br label %74

74:                                               ; preds = %while.end.thread, %while.end._crit_edge
  %75 = phi i32 [ %ret.190, %while.end.thread ], [ %call277.i, %while.end._crit_edge ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeup_readers(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %read_wait = getelementptr i8, ptr %work, i32 -52
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @relay_destroy_buf(ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then, !prof !74

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then:                                          ; preds = %entry
  tail call void @vunmap(ptr noundef nonnull %3) #15
  %page_count = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 11
  %4 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20.not = icmp eq i32 %5, 0
  br i1 %cmp20.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %page_array = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %page_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page_array, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.021
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @__free_pages(ptr noundef %9, i32 noundef 0) #15
  %inc = add nuw i32 %i.021, 1
  %10 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_count, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %page_array5 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 10
  %12 = ptrtoint ptr %page_array5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page_array5, align 4
  tail call void @kvfree(ptr noundef %13) #15
  br label %do.body

do.body:                                          ; preds = %for.end, %entry.do.body_crit_edge
  %buf6 = getelementptr %struct.rchan, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf6, align 4
  %16 = ptrtoint ptr %15 to i32
  %cpu = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 17
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 128
  %arrayidx8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %20, %16
  %21 = inttoptr i32 %add to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  %padding = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 13
  %23 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %padding, align 16
  tail call void @kfree(ptr noundef %24) #15
  tail call void @kfree(ptr noundef %buf) #15
  %kref = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !78
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !76

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !79
  %26 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf6, align 4
  tail call void @free_percpu(ptr noundef %27) #15
  tail call void @kfree(ptr noundef %1) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @relay_file_read_consume(ptr nocapture noundef %buf, i32 noundef %read_pos, i32 noundef %bytes_consumed) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %subbuf_size1 = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %subbuf_size1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subbuf_size1, align 4
  %n_subbufs3 = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %n_subbufs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_subbufs3, align 4
  %subbufs_produced = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 3
  %6 = ptrtoint ptr %subbufs_produced to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subbufs_produced, align 4
  %subbufs_consumed = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %subbufs_consumed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subbufs_consumed, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %offset = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 8
  %bytes_consumed4 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 15
  %12 = ptrtoint ptr %bytes_consumed4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes_consumed4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp5 = icmp eq i32 %11, %13
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bytes_consumed6 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 15
  %14 = ptrtoint ptr %bytes_consumed6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_consumed6, align 8
  %add = add i32 %15, %bytes_consumed
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp7 = icmp ugt i32 %add, %3
  br i1 %cmp7, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then8:                                         ; preds = %if.end
  %cpu = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 17
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 128
  %tobool.not.i = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i = icmp ugt i32 %17, 3
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then8.relay_subbufs_consumed.exit_crit_edge, label %do.body.i

if.then8.relay_subbufs_consumed.exit_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit

do.body.i:                                        ; preds = %if.then8
  %buf1.i = getelementptr inbounds %struct.rchan, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf1.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %22, %20
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool3.not.i = icmp eq ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.i = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool3.not.i, i1 true, i1 %cmp5.i
  br i1 %or.cond, label %do.body.i.relay_subbufs_consumed.exit_crit_edge, label %if.end7.i

do.body.i.relay_subbufs_consumed.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit

if.end7.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %subbufs_produced.i = getelementptr inbounds %struct.rchan_buf, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %subbufs_produced.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %subbufs_produced.i, align 4
  %subbufs_consumed8.i = getelementptr inbounds %struct.rchan_buf, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %subbufs_consumed8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %subbufs_consumed8.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp9.i = icmp eq i32 %27, %29
  %add14.i = add i32 %29, 1
  %storemerge.i = select i1 %cmp9.i, i32 %27, i32 %add14.i
  %30 = ptrtoint ptr %subbufs_consumed8.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge.i, ptr %subbufs_consumed8.i, align 16
  br label %relay_subbufs_consumed.exit

relay_subbufs_consumed.exit:                      ; preds = %if.end7.i, %do.body.i.relay_subbufs_consumed.exit_crit_edge, %if.then8.relay_subbufs_consumed.exit_crit_edge
  %31 = ptrtoint ptr %bytes_consumed6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bytes_consumed6, align 8
  br label %if.end11

if.end11:                                         ; preds = %relay_subbufs_consumed.exit, %if.end.if.end11_crit_edge
  %32 = ptrtoint ptr %bytes_consumed6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_consumed6, align 8
  %add13 = add i32 %33, %bytes_consumed
  store i32 %add13, ptr %bytes_consumed6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_pos)
  %tobool.not = icmp eq i32 %read_pos, 0
  br i1 %tobool.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %subbufs_consumed to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %subbufs_consumed, align 16
  %rem = urem i32 %35, %5
  br label %if.end18

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan, align 4
  %subbuf_size17 = getelementptr inbounds %struct.rchan, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %subbuf_size17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %subbuf_size17, align 4
  %div = udiv i32 %read_pos, %39
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %read_subbuf.0 = phi i32 [ %div, %if.else ], [ %rem, %if.then14 ]
  %padding = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 13
  %40 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %padding, align 16
  %arrayidx = getelementptr i32, ptr %41, i32 %read_subbuf.0
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %add20 = add i32 %43, %add13
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %3)
  %cmp21 = icmp eq i32 %add20, %3
  br i1 %cmp21, label %if.then22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  %44 = ptrtoint ptr %subbufs_produced to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subbufs_produced, align 4
  %rem24 = urem i32 %45, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %read_subbuf.0, i32 %rem24)
  %cmp25 = icmp eq i32 %read_subbuf.0, %rem24
  br i1 %cmp25, label %land.lhs.true26, label %if.then22.if.end30_crit_edge

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true26:                                  ; preds = %if.then22
  %offset27 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 2
  %46 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %3)
  %cmp28 = icmp eq i32 %47, %3
  br i1 %cmp28, label %land.lhs.true26.cleanup_crit_edge, label %land.lhs.true26.if.end30_crit_edge

land.lhs.true26.if.end30_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true26.if.end30_crit_edge, %if.then22.if.end30_crit_edge
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan, align 4
  %cpu32 = getelementptr inbounds %struct.rchan_buf, ptr %buf, i32 0, i32 17
  %50 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu32, align 128
  %tobool.not.i62 = icmp eq ptr %49, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp.i63 = icmp ugt i32 %51, 3
  %or.cond.i64 = or i1 %tobool.not.i62, %cmp.i63
  br i1 %or.cond.i64, label %if.end30.relay_subbufs_consumed.exit80_crit_edge, label %do.body.i69

if.end30.relay_subbufs_consumed.exit80_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit80

do.body.i69:                                      ; preds = %if.end30
  %buf1.i65 = getelementptr inbounds %struct.rchan, ptr %49, i32 0, i32 8
  %52 = ptrtoint ptr %buf1.i65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf1.i65, align 4
  %54 = ptrtoint ptr %53 to i32
  %arrayidx.i66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %55 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i66, align 4
  %add.i67 = add i32 %56, %54
  %57 = inttoptr i32 %add.i67 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool3.not.i68 = icmp eq ptr %59, null
  br i1 %tobool3.not.i68, label %do.body.i69.relay_subbufs_consumed.exit80_crit_edge, label %lor.lhs.false4.i72

do.body.i69.relay_subbufs_consumed.exit80_crit_edge: ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit80

lor.lhs.false4.i72:                               ; preds = %do.body.i69
  %n_subbufs.i70 = getelementptr inbounds %struct.rchan, ptr %49, i32 0, i32 2
  %60 = ptrtoint ptr %n_subbufs.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_subbufs.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp5.i71 = icmp eq i32 %61, 0
  br i1 %cmp5.i71, label %lor.lhs.false4.i72.relay_subbufs_consumed.exit80_crit_edge, label %if.end7.i79

lor.lhs.false4.i72.relay_subbufs_consumed.exit80_crit_edge: ; preds = %lor.lhs.false4.i72
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit80

if.end7.i79:                                      ; preds = %lor.lhs.false4.i72
  call void @__sanitizer_cov_trace_pc() #17
  %subbufs_produced.i73 = getelementptr inbounds %struct.rchan_buf, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %subbufs_produced.i73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %subbufs_produced.i73, align 4
  %subbufs_consumed8.i74 = getelementptr inbounds %struct.rchan_buf, ptr %59, i32 0, i32 4
  %64 = ptrtoint ptr %subbufs_consumed8.i74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %subbufs_consumed8.i74, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp9.i76 = icmp eq i32 %63, %65
  %add14.i77 = add i32 %65, 1
  %storemerge.i78 = select i1 %cmp9.i76, i32 %63, i32 %add14.i77
  %66 = ptrtoint ptr %subbufs_consumed8.i74 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %storemerge.i78, ptr %subbufs_consumed8.i74, align 16
  br label %relay_subbufs_consumed.exit80

relay_subbufs_consumed.exit80:                    ; preds = %if.end7.i79, %lor.lhs.false4.i72.relay_subbufs_consumed.exit80_crit_edge, %do.body.i69.relay_subbufs_consumed.exit80_crit_edge, %if.end30.relay_subbufs_consumed.exit80_crit_edge
  %67 = ptrtoint ptr %bytes_consumed6 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %bytes_consumed6, align 8
  br label %cleanup

cleanup:                                          ; preds = %relay_subbufs_consumed.exit80, %land.lhs.true26.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @relay_buf_fault(ptr nocapture noundef %vmf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pgoff1 = getelementptr inbounds %struct.anon.16, ptr %vmf, i32 0, i32 2
  %4 = ptrtoint ptr %pgoff1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgoff1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 128
  %shl = shl i32 %5, 12
  %add.ptr = getelementptr i8, ptr %7, i32 %shl
  %call = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #15
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !76

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %13 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !74

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.16) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #15, !srcloc !91
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@relay_buf_fault, %if.then.i.i.i.i)) #15
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !93

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_mod(ptr noundef %12, i32 noundef 1) #15
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %page5 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %16 = ptrtoint ptr %page5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %page5, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @relay_page_release(ptr nocapture noundef %spd, i32 noundef %i) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_grow_spd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_to_pipe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @splice_shrink_spd(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @relay_pipe_buf_release(ptr nocapture noundef readnone %pipe, ptr nocapture noundef readonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %private = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private, align 4
  %4 = inttoptr i32 %3 to ptr
  %private1 = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 5
  %5 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private1, align 4
  %bytes_consumed1.i = getelementptr inbounds %struct.rchan_buf, ptr %4, i32 0, i32 15
  %7 = ptrtoint ptr %bytes_consumed1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes_consumed1.i, align 8
  %add.i = add i32 %8, %6
  store i32 %add.i, ptr %bytes_consumed1.i, align 8
  %chan.i = getelementptr inbounds %struct.rchan_buf, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan.i, align 4
  %subbuf_size.i = getelementptr inbounds %struct.rchan, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %subbuf_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %subbuf_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp.not.i = icmp ult i32 %add.i, %12
  br i1 %cmp.not.i, label %entry.relay_consume_bytes.exit_crit_edge, label %if.then.i

entry.relay_consume_bytes.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_consume_bytes.exit

if.then.i:                                        ; preds = %entry
  %cpu.i = getelementptr inbounds %struct.rchan_buf, ptr %4, i32 0, i32 17
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 128
  %tobool.not.i.i = icmp eq ptr %10, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i.i = icmp ugt i32 %14, 3
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.relay_subbufs_consumed.exit.i_crit_edge, label %do.body.i.i

if.then.i.relay_subbufs_consumed.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit.i

do.body.i.i:                                      ; preds = %if.then.i
  %buf1.i.i = getelementptr inbounds %struct.rchan, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf1.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, %17
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool3.not.i.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.relay_subbufs_consumed.exit.i_crit_edge, label %lor.lhs.false4.i.i

do.body.i.i.relay_subbufs_consumed.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit.i

lor.lhs.false4.i.i:                               ; preds = %do.body.i.i
  %n_subbufs.i.i = getelementptr inbounds %struct.rchan, ptr %10, i32 0, i32 2
  %23 = ptrtoint ptr %n_subbufs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_subbufs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5.i.i = icmp eq i32 %24, 0
  br i1 %cmp5.i.i, label %lor.lhs.false4.i.i.relay_subbufs_consumed.exit.i_crit_edge, label %if.end7.i.i

lor.lhs.false4.i.i.relay_subbufs_consumed.exit.i_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %relay_subbufs_consumed.exit.i

if.end7.i.i:                                      ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %subbufs_produced.i.i = getelementptr inbounds %struct.rchan_buf, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %subbufs_produced.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %subbufs_produced.i.i, align 4
  %subbufs_consumed8.i.i = getelementptr inbounds %struct.rchan_buf, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %subbufs_consumed8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subbufs_consumed8.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp9.i.i = icmp eq i32 %26, %28
  %add14.i.i = add i32 %28, 1
  %storemerge.i.i = select i1 %cmp9.i.i, i32 %26, i32 %add14.i.i
  %29 = ptrtoint ptr %subbufs_consumed8.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i.i, ptr %subbufs_consumed8.i.i, align 16
  br label %relay_subbufs_consumed.exit.i

relay_subbufs_consumed.exit.i:                    ; preds = %if.end7.i.i, %lor.lhs.false4.i.i.relay_subbufs_consumed.exit.i_crit_edge, %do.body.i.i.relay_subbufs_consumed.exit.i_crit_edge, %if.then.i.relay_subbufs_consumed.exit.i_crit_edge
  %30 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i, align 4
  %subbuf_size5.i = getelementptr inbounds %struct.rchan, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %subbuf_size5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %subbuf_size5.i, align 4
  %34 = ptrtoint ptr %bytes_consumed1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes_consumed1.i, align 8
  %rem.i = urem i32 %35, %33
  store i32 %rem.i, ptr %bytes_consumed1.i, align 8
  br label %relay_consume_bytes.exit

relay_consume_bytes.exit:                         ; preds = %relay_subbufs_consumed.exit.i, %entry.relay_consume_bytes.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_try_steal(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_get(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !43, !44, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__ksymtab_relay_buf_full, !1, !"__ksymtab_relay_buf_full", i1 false, i1 false}
!1 = !{!"../kernel/relay.c", i32 249, i32 1}
!2 = !{ptr @__ksymtab_relay_reset, !3, !"__ksymtab_relay_reset", i1 false, i1 false}
!3 = !{!"../kernel/relay.c", i32 341, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/relay.c", i32 447, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @relay_prepare_cpu._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @relay_prepare_cpu._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_relay_open, !11, !"__ksymtab_relay_open", i1 false, i1 false}
!11 = !{!"../kernel/relay.c", i32 540, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../kernel/relay.c", i32 598, i32 8}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/relay.c", i32 600, i32 19}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../kernel/relay.c", i32 618, i32 4}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__ksymtab_relay_late_setup_files, !20, !"__ksymtab_relay_late_setup_files", i1 false, i1 false}
!20 = !{!"../kernel/relay.c", i32 650, i32 1}
!21 = !{ptr @__ksymtab_relay_switch_subbuf, !22, !"__ksymtab_relay_switch_subbuf", i1 false, i1 false}
!22 = !{!"../kernel/relay.c", i32 714, i32 1}
!23 = !{ptr @__ksymtab_relay_subbufs_consumed, !24, !"__ksymtab_relay_subbufs_consumed", i1 false, i1 false}
!24 = !{!"../kernel/relay.c", i32 747, i32 1}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/relay.c", i32 772, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @relay_close._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @relay_close._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_relay_close, !31, !"__ksymtab_relay_close", i1 false, i1 false}
!31 = !{!"../kernel/relay.c", i32 780, i32 1}
!32 = !{ptr @__ksymtab_relay_flush, !33, !"__ksymtab_relay_flush", i1 false, i1 false}
!33 = !{!"../kernel/relay.c", i32 807, i32 1}
!34 = !{ptr @relay_file_operations, !35, !"relay_file_operations", i1 false, i1 false}
!35 = !{!"../kernel/relay.c", i32 1240, i32 30}
!36 = !{ptr @__ksymtab_relay_file_operations, !37, !"__ksymtab_relay_file_operations", i1 false, i1 false}
!37 = !{!"../kernel/relay.c", i32 1249, i32 1}
!38 = !{ptr @__relay_reset.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../kernel/relay.c", i32 291, i32 3}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/relay.c", i32 27, i32 8}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @relay_channels_mutex, !42, !"relay_channels_mutex", i1 false, i1 false}
!45 = !{ptr @relay_channels, !46, !"relay_channels", i1 false, i1 false}
!46 = !{!"../kernel/relay.c", i32 28, i32 8}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../kernel/relay.c", i32 360, i32 30}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!58 = !{ptr @relay_file_mmap_ops, !59, !"relay_file_mmap_ops", i1 false, i1 false}
!59 = !{!"../kernel/relay.c", i32 54, i32 42}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!62 = !{ptr @relay_pipe_buf_ops, !63, !"relay_pipe_buf_ops", i1 false, i1 false}
!63 = !{!"../kernel/relay.c", i32 1097, i32 41}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2148612374, i64 2148612406, i64 2148612435, i64 2148612469, i64 2148612500, i64 2148612523}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148700399}
!78 = !{i64 2148614839, i64 2148614871, i64 2148614900, i64 2148614934, i64 2148614965, i64 2148614988}
!79 = !{i64 2149896634}
!80 = !{!"auto-init"}
!81 = !{i64 2153877542}
!82 = !{!"branch_weights", i32 2002, i32 2000}
!83 = !{i64 1015524, i64 1015585}
!84 = !{i64 1018256}
!85 = !{i64 1018541}
!86 = !{i64 2153881191}
!87 = !{i64 2153881382}
!88 = !{i64 2153883215}
!89 = !{i64 2152184780, i64 2152184805}
!90 = !{i64 2148460629, i64 2148460909, i64 2148461243, i64 2148461577}
!91 = !{i64 2153721683, i64 2153722167, i64 2153721720, i64 2153721776, i64 2153721810, i64 2153721834, i64 2153721875, i64 2153721896, i64 2153721924, i64 2153721958}
!92 = !{i64 2148610844, i64 2148610870, i64 2148610899, i64 2148610933, i64 2148610964, i64 2148610987}
!93 = !{i64 2148238832, i64 2148238837, i64 2148238850, i64 2148238894, i64 2148238928, i64 2148238949}
