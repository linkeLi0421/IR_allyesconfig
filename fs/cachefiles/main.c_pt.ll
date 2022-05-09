; ModuleID = '/llk/IR_all_yes/fs/cachefiles/main.c_pt.bc'
source_filename = "../fs/cachefiles/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.106, %struct.trace_event, ptr, ptr, %union.anon.107, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.106 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%union.anon.118 = type { %struct.bpf_raw_event_map }
%union.anon.119 = type { %struct.bpf_raw_event_map }
%union.anon.120 = type { %struct.bpf_raw_event_map }
%union.anon.121 = type { %struct.bpf_raw_event_map }
%union.anon.122 = type { %struct.bpf_raw_event_map }
%union.anon.123 = type { %struct.bpf_raw_event_map }
%union.anon.124 = type { %struct.bpf_raw_event_map }
%union.anon.125 = type { %struct.bpf_raw_event_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.trace_print_flags = type { i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_cachefiles_ref = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cachefiles_object = type { ptr, ptr, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.refcount_struct, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.trace_event_raw_cachefiles_lookup = type { %struct.trace_entry, i32, i16, i32, i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.7, ptr }
%union.anon.7 = type { i64 }
%struct.lockref = type { %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.80 = type { ptr }
%struct.trace_event_raw_cachefiles_mkdir = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_tmpfile = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_link = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_unlink = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_rename = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_coherency = type { %struct.trace_entry, i32, i32, i32, i64, [0 x i8] }
%struct.cachefiles_volume = type { ptr, %struct.list_head, ptr, ptr, [256 x ptr] }
%struct.fscache_volume = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.hlist_bl_node, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, i8, [0 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_event_raw_cachefiles_vol_coherency = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.netfs_read_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i64, i64, i32, %struct.refcount_struct, i32, ptr }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.trace_event_raw_cachefiles_prep_read = type { %struct.trace_entry, i32, i16, i16, i8, i32, i32, i64, i32, i32, [0 x i8] }
%struct.netfs_read_subrequest = type { ptr, %struct.list_head, i64, i32, i32, %struct.refcount_struct, i16, i16, i8, i32 }
%struct.trace_event_raw_cachefiles_read = type { %struct.trace_entry, i32, i32, i32, i64, [0 x i8] }
%struct.trace_event_raw_cachefiles_write = type { %struct.trace_entry, i32, i32, i32, i64, [0 x i8] }
%struct.trace_event_raw_cachefiles_trunc = type { %struct.trace_entry, i32, i32, i32, i64, i64, [0 x i8] }
%struct.trace_event_raw_cachefiles_mark_active = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_mark_failed = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_mark_inactive = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_cachefiles_vfs_error = type { %struct.trace_entry, i32, i32, i32, i16, [0 x i8] }
%struct.trace_event_raw_cachefiles_io_error = type { %struct.trace_entry, i32, i32, i32, i16, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_cachefiles_ref = internal constant [15 x i8] c"cachefiles_ref\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_ref = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_ref }, align 4
@__tracepoint_cachefiles_ref = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_ref, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_ref, ptr null, ptr @__traceiter_cachefiles_ref, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_ref = internal constant ptr @__tracepoint_cachefiles_ref, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_lookup = internal constant [18 x i8] c"cachefiles_lookup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_lookup = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_lookup }, align 4
@__tracepoint_cachefiles_lookup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_lookup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_lookup, ptr null, ptr @__traceiter_cachefiles_lookup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_lookup = internal constant ptr @__tracepoint_cachefiles_lookup, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_mkdir = internal constant [17 x i8] c"cachefiles_mkdir\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_mkdir = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_mkdir }, align 4
@__tracepoint_cachefiles_mkdir = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_mkdir, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_mkdir, ptr null, ptr @__traceiter_cachefiles_mkdir, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_mkdir = internal constant ptr @__tracepoint_cachefiles_mkdir, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_tmpfile = internal constant [19 x i8] c"cachefiles_tmpfile\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_tmpfile = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_tmpfile }, align 4
@__tracepoint_cachefiles_tmpfile = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_tmpfile, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_tmpfile, ptr null, ptr @__traceiter_cachefiles_tmpfile, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_tmpfile = internal constant ptr @__tracepoint_cachefiles_tmpfile, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_link = internal constant [16 x i8] c"cachefiles_link\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_link = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_link }, align 4
@__tracepoint_cachefiles_link = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_link, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_link, ptr null, ptr @__traceiter_cachefiles_link, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_link = internal constant ptr @__tracepoint_cachefiles_link, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_unlink = internal constant [18 x i8] c"cachefiles_unlink\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_unlink = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_unlink }, align 4
@__tracepoint_cachefiles_unlink = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_unlink, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_unlink, ptr null, ptr @__traceiter_cachefiles_unlink, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_unlink = internal constant ptr @__tracepoint_cachefiles_unlink, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_rename = internal constant [18 x i8] c"cachefiles_rename\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_rename = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_rename }, align 4
@__tracepoint_cachefiles_rename = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_rename, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_rename, ptr null, ptr @__traceiter_cachefiles_rename, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_rename = internal constant ptr @__tracepoint_cachefiles_rename, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_coherency = internal constant [21 x i8] c"cachefiles_coherency\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_coherency = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_coherency }, align 4
@__tracepoint_cachefiles_coherency = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_coherency, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_coherency, ptr null, ptr @__traceiter_cachefiles_coherency, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_coherency = internal constant ptr @__tracepoint_cachefiles_coherency, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_vol_coherency = internal constant [25 x i8] c"cachefiles_vol_coherency\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_vol_coherency = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_vol_coherency }, align 4
@__tracepoint_cachefiles_vol_coherency = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_vol_coherency, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_vol_coherency, ptr null, ptr @__traceiter_cachefiles_vol_coherency, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_vol_coherency = internal constant ptr @__tracepoint_cachefiles_vol_coherency, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_prep_read = internal constant [21 x i8] c"cachefiles_prep_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_prep_read = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_prep_read }, align 4
@__tracepoint_cachefiles_prep_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_prep_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_prep_read, ptr null, ptr @__traceiter_cachefiles_prep_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_prep_read = internal constant ptr @__tracepoint_cachefiles_prep_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_read = internal constant [16 x i8] c"cachefiles_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_read = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_read }, align 4
@__tracepoint_cachefiles_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_read, ptr null, ptr @__traceiter_cachefiles_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_read = internal constant ptr @__tracepoint_cachefiles_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_write = internal constant [17 x i8] c"cachefiles_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_write = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_write }, align 4
@__tracepoint_cachefiles_write = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_write, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_write, ptr null, ptr @__traceiter_cachefiles_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_write = internal constant ptr @__tracepoint_cachefiles_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_trunc = internal constant [17 x i8] c"cachefiles_trunc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_trunc = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_trunc }, align 4
@__tracepoint_cachefiles_trunc = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_trunc, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_trunc, ptr null, ptr @__traceiter_cachefiles_trunc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_trunc = internal constant ptr @__tracepoint_cachefiles_trunc, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_mark_active = internal constant [23 x i8] c"cachefiles_mark_active\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_mark_active = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_mark_active }, align 4
@__tracepoint_cachefiles_mark_active = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_mark_active, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_mark_active, ptr null, ptr @__traceiter_cachefiles_mark_active, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_mark_active = internal constant ptr @__tracepoint_cachefiles_mark_active, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_mark_failed = internal constant [23 x i8] c"cachefiles_mark_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_mark_failed = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_mark_failed }, align 4
@__tracepoint_cachefiles_mark_failed = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_mark_failed, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_mark_failed, ptr null, ptr @__traceiter_cachefiles_mark_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_mark_failed = internal constant ptr @__tracepoint_cachefiles_mark_failed, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_mark_inactive = internal constant [25 x i8] c"cachefiles_mark_inactive\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_mark_inactive = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_mark_inactive }, align 4
@__tracepoint_cachefiles_mark_inactive = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_mark_inactive, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_mark_inactive, ptr null, ptr @__traceiter_cachefiles_mark_inactive, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_mark_inactive = internal constant ptr @__tracepoint_cachefiles_mark_inactive, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_vfs_error = internal constant [21 x i8] c"cachefiles_vfs_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_vfs_error = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_vfs_error }, align 4
@__tracepoint_cachefiles_vfs_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_vfs_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_vfs_error, ptr null, ptr @__traceiter_cachefiles_vfs_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_vfs_error = internal constant ptr @__tracepoint_cachefiles_vfs_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_cachefiles_io_error = internal constant [20 x i8] c"cachefiles_io_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_cachefiles_io_error = dso_local global %struct.static_call_key { ptr @__traceiter_cachefiles_io_error }, align 4
@__tracepoint_cachefiles_io_error = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_cachefiles_io_error, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_cachefiles_io_error, ptr null, ptr @__traceiter_cachefiles_io_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_cachefiles_io_error = internal constant ptr @__tracepoint_cachefiles_io_error, section "__tracepoints_ptrs", align 4
@str__cachefiles__trace_system_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cachefiles\00", [21 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FSCACHE_OBJECT_IS_STALE\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE = internal global ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FSCACHE_OBJECT_IS_WEIRD\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD = internal global ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FSCACHE_OBJECT_INVALIDATED\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED = internal global ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FSCACHE_OBJECT_NO_SPACE\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.3, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE = internal global ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FSCACHE_OBJECT_WAS_RETIRED\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.4, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED = internal global ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FSCACHE_OBJECT_WAS_CULLED\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED = internal global ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FSCACHE_VOLUME_IS_WEIRD\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.6, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD = internal global ptr @__TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_obj_get_ioreq\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_get_ioreq = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_get_ioreq = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_get_ioreq, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cachefiles_obj_new\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_new = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.8, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_new = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_new, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_obj_put_alloc_fail\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_put_alloc_fail = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.9, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_put_alloc_fail = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_put_alloc_fail, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachefiles_obj_put_detach\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_put_detach = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.10, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_put_detach = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_put_detach, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cachefiles_obj_put_ioreq\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_put_ioreq = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.11, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_put_ioreq = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_put_ioreq, section "_ftrace_eval_map", align 4
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_obj_see_clean_commit\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_see_clean_commit = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.12, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_see_clean_commit = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_commit, section "_ftrace_eval_map", align 4
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_obj_see_clean_delete\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_see_clean_delete = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.13, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_see_clean_delete = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_delete, section "_ftrace_eval_map", align 4
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cachefiles_obj_see_clean_drop_tmp\00", [62 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.14, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp, section "_ftrace_eval_map", align 4
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_obj_see_lookup_cookie\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.15, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie, section "_ftrace_eval_map", align 4
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_obj_see_lookup_failed\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_see_lookup_failed = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.16, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_see_lookup_failed = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_see_lookup_failed, section "_ftrace_eval_map", align 4
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cachefiles_obj_see_withdraw_cookie\00", [61 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.17, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie, section "_ftrace_eval_map", align 4
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_obj_see_withdrawal\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_obj_see_withdrawal = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.18, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_obj_see_withdrawal = internal global ptr @__TRACE_SYSTEM_cachefiles_obj_see_withdrawal, section "_ftrace_eval_map", align 4
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cachefiles_coherency_check_aux\00", [33 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_aux = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.19, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_aux = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_aux, section "_ftrace_eval_map", align 4
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cachefiles_coherency_check_content\00", [61 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_content = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.20, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_content = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_content, section "_ftrace_eval_map", align 4
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_coherency_check_dirty\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_dirty = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.21, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_dirty = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_dirty, section "_ftrace_eval_map", align 4
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cachefiles_coherency_check_len\00", [33 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_len = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.22, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_len = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_len, section "_ftrace_eval_map", align 4
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cachefiles_coherency_check_objsize\00", [61 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_objsize = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.23, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_objsize = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_objsize, section "_ftrace_eval_map", align 4
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_coherency_check_ok\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_ok = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.24, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_ok = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_ok, section "_ftrace_eval_map", align 4
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_coherency_check_type\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_type = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.25, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_type = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_type, section "_ftrace_eval_map", align 4
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_coherency_check_xattr\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_check_xattr = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.26, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_check_xattr = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_check_xattr, section "_ftrace_eval_map", align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_coherency_set_fail\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_set_fail = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.27, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_set_fail = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_set_fail, section "_ftrace_eval_map", align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_coherency_set_ok\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_set_ok = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.28, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_set_ok = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_set_ok, section "_ftrace_eval_map", align 4
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cachefiles_coherency_vol_check_cmp\00", [61 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.29, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp, section "_ftrace_eval_map", align 4
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cachefiles_coherency_vol_check_ok\00", [62 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_vol_check_ok = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.30, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_vol_check_ok = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_ok, section "_ftrace_eval_map", align 4
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cachefiles_coherency_vol_check_resv\00", [60 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_vol_check_resv = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.31, i32 12 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_vol_check_resv = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_resv, section "_ftrace_eval_map", align 4
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cachefiles_coherency_vol_check_xattr\00", [59 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.32, i32 13 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr, section "_ftrace_eval_map", align 4
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cachefiles_coherency_vol_set_fail\00", [62 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_vol_set_fail = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.33, i32 14 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_vol_set_fail = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_set_fail, section "_ftrace_eval_map", align 4
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_coherency_vol_set_ok\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_coherency_vol_set_ok = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.34, i32 15 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_coherency_vol_set_ok = internal global ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_set_ok, section "_ftrace_eval_map", align 4
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_trunc_dio_adjust\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trunc_dio_adjust = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.35, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trunc_dio_adjust = internal global ptr @__TRACE_SYSTEM_cachefiles_trunc_dio_adjust, section "_ftrace_eval_map", align 4
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_trunc_expand_tmpfile\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.36, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile = internal global ptr @__TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile, section "_ftrace_eval_map", align 4
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cachefiles_trunc_shrink\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trunc_shrink = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.37, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trunc_shrink = internal global ptr @__TRACE_SYSTEM_cachefiles_trunc_shrink, section "_ftrace_eval_map", align 4
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_trace_read_after_eof\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_after_eof = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.38, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_after_eof = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_after_eof, section "_ftrace_eval_map", align 4
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_trace_read_found_hole\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_found_hole = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.39, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_found_hole = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_found_hole, section "_ftrace_eval_map", align 4
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_trace_read_found_part\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_found_part = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.40, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_found_part = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_found_part, section "_ftrace_eval_map", align 4
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_trace_read_have_data\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_have_data = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.41, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_have_data = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_have_data, section "_ftrace_eval_map", align 4
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_trace_read_no_data\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_no_data = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.42, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_no_data = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_no_data, section "_ftrace_eval_map", align 4
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_trace_read_no_file\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_no_file = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.43, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_no_file = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_no_file, section "_ftrace_eval_map", align 4
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_trace_read_seek_error\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_seek_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.44, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_seek_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_seek_error, section "_ftrace_eval_map", align 4
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_trace_read_seek_nxio\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_seek_nxio = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.45, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_seek_nxio = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_seek_nxio, section "_ftrace_eval_map", align 4
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cachefiles_trace_fallocate_error\00", [63 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_fallocate_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.46, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_fallocate_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_fallocate_error, section "_ftrace_eval_map", align 4
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_trace_getxattr_error\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_getxattr_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.47, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_getxattr_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_getxattr_error, section "_ftrace_eval_map", align 4
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_trace_link_error\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_link_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.48, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_link_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_link_error, section "_ftrace_eval_map", align 4
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_trace_lookup_error\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_lookup_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.49, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_lookup_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_lookup_error, section "_ftrace_eval_map", align 4
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cachefiles_trace_mkdir_error\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_mkdir_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.50, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_mkdir_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_mkdir_error, section "_ftrace_eval_map", align 4
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cachefiles_trace_notify_change_error\00", [59 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_notify_change_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.51, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_notify_change_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_notify_change_error, section "_ftrace_eval_map", align 4
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_trace_open_error\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_open_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.52, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_open_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_open_error, section "_ftrace_eval_map", align 4
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_trace_read_error\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_read_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.53, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_read_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_read_error, section "_ftrace_eval_map", align 4
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_trace_remxattr_error\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_remxattr_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.54, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_remxattr_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_remxattr_error, section "_ftrace_eval_map", align 4
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_trace_rename_error\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_rename_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.55, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_rename_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_rename_error, section "_ftrace_eval_map", align 4
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cachefiles_trace_seek_error\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_seek_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.56, i32 10 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_seek_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_seek_error, section "_ftrace_eval_map", align 4
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cachefiles_trace_setxattr_error\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_setxattr_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.57, i32 11 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_setxattr_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_setxattr_error, section "_ftrace_eval_map", align 4
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_trace_statfs_error\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_statfs_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.58, i32 12 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_statfs_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_statfs_error, section "_ftrace_eval_map", align 4
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cachefiles_trace_tmpfile_error\00", [33 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_tmpfile_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.59, i32 13 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_tmpfile_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_tmpfile_error, section "_ftrace_eval_map", align 4
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cachefiles_trace_trunc_error\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_trunc_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.60, i32 14 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_trunc_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_trunc_error, section "_ftrace_eval_map", align 4
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cachefiles_trace_unlink_error\00", [34 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_unlink_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.61, i32 15 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_unlink_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_unlink_error, section "_ftrace_eval_map", align 4
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cachefiles_trace_write_error\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_cachefiles_trace_write_error = internal global %struct.trace_eval_map { ptr @str__cachefiles__trace_system_name, ptr @.str.62, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_cachefiles_trace_write_error = internal global ptr @__TRACE_SYSTEM_cachefiles_trace_write_error, section "_ftrace_eval_map", align 4
@trace_event_fields_cachefiles_ref = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.68, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.69, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.104 { %struct.anon.105 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cachefiles_ref = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_ref, ptr @perf_trace_cachefiles_ref, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_ref, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_ref, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_ref, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_ref = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_ref, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_ref = internal global { [715 x i8], [181 x i8] } { [715 x i8] c"\22c=%08x o=%08x u=%d %s\22, REC->cookie, REC->obj, REC->usage, __print_symbolic(REC->why, { cachefiles_obj_get_ioreq, \22GET ioreq\22 }, { cachefiles_obj_new, \22NEW obj\22 }, { cachefiles_obj_put_alloc_fail, \22PUT alloc_fail\22 }, { cachefiles_obj_put_detach, \22PUT detach\22 }, { cachefiles_obj_put_ioreq, \22PUT ioreq\22 }, { cachefiles_obj_see_clean_commit, \22SEE clean_commit\22 }, { cachefiles_obj_see_clean_delete, \22SEE clean_delete\22 }, { cachefiles_obj_see_clean_drop_tmp, \22SEE clean_drop_tmp\22 }, { cachefiles_obj_see_lookup_cookie, \22SEE lookup_cookie\22 }, { cachefiles_obj_see_lookup_failed, \22SEE lookup_failed\22 }, { cachefiles_obj_see_withdraw_cookie, \22SEE withdraw_cookie\22 }, { cachefiles_obj_see_withdrawal, \22SEE withdrawal\22 })\00", [181 x i8] zeroinitializer }, align 32
@event_cachefiles_ref = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_ref, %union.anon.106 { ptr @__tracepoint_cachefiles_ref }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_ref }, ptr @print_fmt_cachefiles_ref, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_ref = internal global ptr @event_cachefiles_ref, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_lookup = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.104 { %struct.anon.105 { ptr @.str.87, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon.104 { %struct.anon.105 { ptr @.str.89, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon.104 { %struct.anon.105 { ptr @.str.90, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cachefiles_lookup = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_lookup, ptr @perf_trace_cachefiles_lookup, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_lookup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_lookup, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_lookup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_lookup = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_lookup, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_lookup = internal global { [70 x i8], [58 x i8] } { [70 x i8] c"\22o=%08x dB=%lx B=%lx e=%d\22, REC->obj, REC->dino, REC->ino, REC->error\00", [58 x i8] zeroinitializer }, align 32
@event_cachefiles_lookup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_lookup, %union.anon.106 { ptr @__tracepoint_cachefiles_lookup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_lookup }, ptr @print_fmt_cachefiles_lookup, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_lookup = internal global ptr @event_cachefiles_lookup, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_mkdir = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.92, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.93, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cachefiles_mkdir = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_mkdir, ptr @perf_trace_cachefiles_mkdir, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_mkdir, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_mkdir, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_mkdir, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_mkdir = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_mkdir, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_mkdir = internal global { [37 x i8], [59 x i8] } { [37 x i8] c"\22dB=%x sB=%x\22, REC->dir, REC->subdir\00", [59 x i8] zeroinitializer }, align 32
@event_cachefiles_mkdir = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_mkdir, %union.anon.106 { ptr @__tracepoint_cachefiles_mkdir }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_mkdir }, ptr @print_fmt_cachefiles_mkdir, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_mkdir = internal global ptr @event_cachefiles_mkdir, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_tmpfile = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cachefiles_tmpfile = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_tmpfile, ptr @perf_trace_cachefiles_tmpfile, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_tmpfile, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_tmpfile, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_tmpfile, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_tmpfile = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_tmpfile, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_tmpfile = internal global { [37 x i8], [59 x i8] } { [37 x i8] c"\22o=%08x B=%x\22, REC->obj, REC->backer\00", [59 x i8] zeroinitializer }, align 32
@event_cachefiles_tmpfile = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_tmpfile, %union.anon.106 { ptr @__tracepoint_cachefiles_tmpfile }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_tmpfile }, ptr @print_fmt_cachefiles_tmpfile, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_tmpfile = internal global ptr @event_cachefiles_tmpfile, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_link = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cachefiles_link = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_link, ptr @perf_trace_cachefiles_link, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_link, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_link, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_link, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_link = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_link, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_link = internal global { [37 x i8], [59 x i8] } { [37 x i8] c"\22o=%08x B=%x\22, REC->obj, REC->backer\00", [59 x i8] zeroinitializer }, align 32
@event_cachefiles_link = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_link, %union.anon.106 { ptr @__tracepoint_cachefiles_link }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_link }, ptr @print_fmt_cachefiles_link, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_link = internal global ptr @event_cachefiles_link, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_unlink = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.90, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.97, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cachefiles_unlink = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_unlink, ptr @perf_trace_cachefiles_unlink, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_unlink, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_unlink, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_unlink, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_unlink = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_unlink, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_unlink = internal global { [362 x i8], [86 x i8] } { [362 x i8] c"\22o=%08x B=%x w=%s\22, REC->obj, REC->ino, __print_symbolic(REC->why, { FSCACHE_OBJECT_IS_STALE, \22stale\22 }, { FSCACHE_OBJECT_IS_WEIRD, \22weird\22 }, { FSCACHE_OBJECT_INVALIDATED, \22inval\22 }, { FSCACHE_OBJECT_NO_SPACE, \22no_space\22 }, { FSCACHE_OBJECT_WAS_RETIRED, \22was_retired\22 }, { FSCACHE_OBJECT_WAS_CULLED, \22was_culled\22 }, { FSCACHE_VOLUME_IS_WEIRD, \22volume_weird\22 })\00", [86 x i8] zeroinitializer }, align 32
@event_cachefiles_unlink = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_unlink, %union.anon.106 { ptr @__tracepoint_cachefiles_unlink }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_unlink }, ptr @print_fmt_cachefiles_unlink, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_unlink = internal global ptr @event_cachefiles_unlink, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_rename = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.90, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.97, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cachefiles_rename = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_rename, ptr @perf_trace_cachefiles_rename, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_rename, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_rename, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_rename, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_rename = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_rename, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_rename = internal global { [362 x i8], [86 x i8] } { [362 x i8] c"\22o=%08x B=%x w=%s\22, REC->obj, REC->ino, __print_symbolic(REC->why, { FSCACHE_OBJECT_IS_STALE, \22stale\22 }, { FSCACHE_OBJECT_IS_WEIRD, \22weird\22 }, { FSCACHE_OBJECT_INVALIDATED, \22inval\22 }, { FSCACHE_OBJECT_NO_SPACE, \22no_space\22 }, { FSCACHE_OBJECT_WAS_RETIRED, \22was_retired\22 }, { FSCACHE_OBJECT_WAS_CULLED, \22was_culled\22 }, { FSCACHE_VOLUME_IS_WEIRD, \22volume_weird\22 })\00", [86 x i8] zeroinitializer }, align 32
@event_cachefiles_rename = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_rename, %union.anon.106 { ptr @__tracepoint_cachefiles_rename }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_rename }, ptr @print_fmt_cachefiles_rename, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_rename = internal global ptr @event_cachefiles_rename, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_coherency = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.106, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.107, %union.anon.104 { %struct.anon.105 { ptr @.str.108, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.109, %union.anon.104 { %struct.anon.105 { ptr @.str.90, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cachefiles_coherency = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_coherency, ptr @perf_trace_cachefiles_coherency, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_coherency, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_coherency, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_coherency, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_coherency = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_coherency, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_coherency = internal global { [908 x i8], [244 x i8] } { [908 x i8] c"\22o=%08x %s B=%llx c=%u\22, REC->obj, __print_symbolic(REC->why, { cachefiles_coherency_check_aux, \22BAD aux \22 }, { cachefiles_coherency_check_content, \22BAD cont\22 }, { cachefiles_coherency_check_dirty, \22BAD dirt\22 }, { cachefiles_coherency_check_len, \22BAD len \22 }, { cachefiles_coherency_check_objsize, \22BAD osiz\22 }, { cachefiles_coherency_check_ok, \22OK      \22 }, { cachefiles_coherency_check_type, \22BAD type\22 }, { cachefiles_coherency_check_xattr, \22BAD xatt\22 }, { cachefiles_coherency_set_fail, \22SET fail\22 }, { cachefiles_coherency_set_ok, \22SET ok  \22 }, { cachefiles_coherency_vol_check_cmp, \22VOL BAD cmp \22 }, { cachefiles_coherency_vol_check_ok, \22VOL OK      \22 }, { cachefiles_coherency_vol_check_resv, \22VOL BAD resv\22 }, { cachefiles_coherency_vol_check_xattr, \22VOL BAD xatt\22 }, { cachefiles_coherency_vol_set_fail, \22VOL SET fail\22 }, { cachefiles_coherency_vol_set_ok, \22VOL SET ok  \22 }), REC->ino, REC->content\00", [244 x i8] zeroinitializer }, align 32
@event_cachefiles_coherency = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_coherency, %union.anon.106 { ptr @__tracepoint_cachefiles_coherency }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_coherency }, ptr @print_fmt_cachefiles_coherency, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_coherency = internal global ptr @event_cachefiles_coherency, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_vol_coherency = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.127, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.106, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.109, %union.anon.104 { %struct.anon.105 { ptr @.str.90, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_cachefiles_vol_coherency = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_vol_coherency, ptr @perf_trace_cachefiles_vol_coherency, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_vol_coherency, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_vol_coherency, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_vol_coherency, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_vol_coherency = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_vol_coherency, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_vol_coherency = internal global { [889 x i8], [199 x i8] } { [889 x i8] c"\22V=%08x %s B=%llx\22, REC->vol, __print_symbolic(REC->why, { cachefiles_coherency_check_aux, \22BAD aux \22 }, { cachefiles_coherency_check_content, \22BAD cont\22 }, { cachefiles_coherency_check_dirty, \22BAD dirt\22 }, { cachefiles_coherency_check_len, \22BAD len \22 }, { cachefiles_coherency_check_objsize, \22BAD osiz\22 }, { cachefiles_coherency_check_ok, \22OK      \22 }, { cachefiles_coherency_check_type, \22BAD type\22 }, { cachefiles_coherency_check_xattr, \22BAD xatt\22 }, { cachefiles_coherency_set_fail, \22SET fail\22 }, { cachefiles_coherency_set_ok, \22SET ok  \22 }, { cachefiles_coherency_vol_check_cmp, \22VOL BAD cmp \22 }, { cachefiles_coherency_vol_check_ok, \22VOL OK      \22 }, { cachefiles_coherency_vol_check_resv, \22VOL BAD resv\22 }, { cachefiles_coherency_vol_check_xattr, \22VOL BAD xatt\22 }, { cachefiles_coherency_vol_set_fail, \22VOL SET fail\22 }, { cachefiles_coherency_vol_set_ok, \22VOL SET ok  \22 }), REC->ino\00", [199 x i8] zeroinitializer }, align 32
@event_cachefiles_vol_coherency = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_vol_coherency, %union.anon.106 { ptr @__tracepoint_cachefiles_vol_coherency }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_vol_coherency }, ptr @print_fmt_cachefiles_vol_coherency, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_vol_coherency = internal global ptr @event_cachefiles_vol_coherency, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_prep_read = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.129, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.130, %union.anon.104 { %struct.anon.105 { ptr @.str.131, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.130, %union.anon.104 { %struct.anon.105 { ptr @.str.132, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.133, %union.anon.104 { %struct.anon.105 { ptr @.str.134, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.135, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.136, %union.anon.104 { %struct.anon.105 { ptr @.str.137, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.104 { %struct.anon.105 { ptr @.str.139, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.140, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.141, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cachefiles_prep_read = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_prep_read, ptr @perf_trace_cachefiles_prep_read, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_prep_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_prep_read, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_prep_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_prep_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_prep_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_prep_read = internal global { [750 x i8], [178 x i8] } { [750 x i8] c"\22R=%08x[%u] %s %s f=%02x s=%llx %zx ni=%x B=%x\22, REC->rreq, REC->index, __print_symbolic(REC->source, { NETFS_FILL_WITH_ZEROES, \22ZERO\22 }, { NETFS_DOWNLOAD_FROM_SERVER, \22DOWN\22 }, { NETFS_READ_FROM_CACHE, \22READ\22 }, { NETFS_INVALID_READ, \22INVL\22 }), __print_symbolic(REC->why, { cachefiles_trace_read_after_eof, \22after-eof \22 }, { cachefiles_trace_read_found_hole, \22found-hole\22 }, { cachefiles_trace_read_found_part, \22found-part\22 }, { cachefiles_trace_read_have_data, \22have-data \22 }, { cachefiles_trace_read_no_data, \22no-data   \22 }, { cachefiles_trace_read_no_file, \22no-file   \22 }, { cachefiles_trace_read_seek_error, \22seek-error\22 }, { cachefiles_trace_read_seek_nxio, \22seek-enxio\22 }), REC->flags, REC->start, REC->len, REC->netfs_inode, REC->cache_inode\00", [178 x i8] zeroinitializer }, align 32
@event_cachefiles_prep_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_prep_read, %union.anon.106 { ptr @__tracepoint_cachefiles_prep_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_prep_read }, ptr @print_fmt_cachefiles_prep_read, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_prep_read = internal global ptr @event_cachefiles_prep_read, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_read = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.136, %union.anon.104 { %struct.anon.105 { ptr @.str.137, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.104 { %struct.anon.105 { ptr @.str.139, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cachefiles_read = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_read, ptr @perf_trace_cachefiles_read, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_read, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_read = internal global { [72 x i8], [56 x i8] } { [72 x i8] c"\22o=%08x B=%x s=%llx l=%zx\22, REC->obj, REC->backer, REC->start, REC->len\00", [56 x i8] zeroinitializer }, align 32
@event_cachefiles_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_read, %union.anon.106 { ptr @__tracepoint_cachefiles_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_read }, ptr @print_fmt_cachefiles_read, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_read = internal global ptr @event_cachefiles_read, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_write = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.136, %union.anon.104 { %struct.anon.105 { ptr @.str.137, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.104 { %struct.anon.105 { ptr @.str.139, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cachefiles_write = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_write, ptr @perf_trace_cachefiles_write, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_write, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_write = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_write, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_write = internal global { [72 x i8], [56 x i8] } { [72 x i8] c"\22o=%08x B=%x s=%llx l=%zx\22, REC->obj, REC->backer, REC->start, REC->len\00", [56 x i8] zeroinitializer }, align 32
@event_cachefiles_write = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_write, %union.anon.106 { ptr @__tracepoint_cachefiles_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_write }, ptr @print_fmt_cachefiles_write, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_write = internal global ptr @event_cachefiles_write, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_trunc = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.157, %union.anon.104 { %struct.anon.105 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.104 { %struct.anon.105 { ptr @.str.158, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.104 { %struct.anon.105 { ptr @.str.159, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_cachefiles_trunc = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_trunc, ptr @perf_trace_cachefiles_trunc, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_trunc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_trunc, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_trunc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_trunc = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_trunc, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_trunc = internal global { [230 x i8], [58 x i8] } { [230 x i8] c"\22o=%08x B=%x %s l=%llx->%llx\22, REC->obj, REC->backer, __print_symbolic(REC->why, { cachefiles_trunc_dio_adjust, \22DIOADJ\22 }, { cachefiles_trunc_expand_tmpfile, \22EXPTMP\22 }, { cachefiles_trunc_shrink, \22SHRINK\22 }), REC->from, REC->to\00", [58 x i8] zeroinitializer }, align 32
@event_cachefiles_trunc = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_trunc, %union.anon.106 { ptr @__tracepoint_cachefiles_trunc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_trunc }, ptr @print_fmt_cachefiles_trunc, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_trunc = internal global ptr @event_cachefiles_trunc, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_mark_active = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.164, %union.anon.104 { %struct.anon.105 { ptr @.str.165, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cachefiles_mark_active = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_mark_active, ptr @perf_trace_cachefiles_mark_active, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_mark_active, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_mark_active, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_mark_active, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_mark_active = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_mark_active, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_mark_active = internal global { [37 x i8], [59 x i8] } { [37 x i8] c"\22o=%08x B=%lx\22, REC->obj, REC->inode\00", [59 x i8] zeroinitializer }, align 32
@event_cachefiles_mark_active = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_mark_active, %union.anon.106 { ptr @__tracepoint_cachefiles_mark_active }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_mark_active }, ptr @print_fmt_cachefiles_mark_active, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_mark_active = internal global ptr @event_cachefiles_mark_active, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_mark_failed = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.164, %union.anon.104 { %struct.anon.105 { ptr @.str.165, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cachefiles_mark_failed = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_mark_failed, ptr @perf_trace_cachefiles_mark_failed, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_mark_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_mark_failed, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_mark_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_mark_failed = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_mark_failed, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_mark_failed = internal global { [37 x i8], [59 x i8] } { [37 x i8] c"\22o=%08x B=%lx\22, REC->obj, REC->inode\00", [59 x i8] zeroinitializer }, align 32
@event_cachefiles_mark_failed = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_mark_failed, %union.anon.106 { ptr @__tracepoint_cachefiles_mark_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_mark_failed }, ptr @print_fmt_cachefiles_mark_failed, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_mark_failed = internal global ptr @event_cachefiles_mark_failed, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_mark_inactive = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.164, %union.anon.104 { %struct.anon.105 { ptr @.str.165, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_cachefiles_mark_inactive = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_mark_inactive, ptr @perf_trace_cachefiles_mark_inactive, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_mark_inactive, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_mark_inactive, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_mark_inactive, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_mark_inactive = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_mark_inactive, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_mark_inactive = internal global { [37 x i8], [59 x i8] } { [37 x i8] c"\22o=%08x B=%lx\22, REC->obj, REC->inode\00", [59 x i8] zeroinitializer }, align 32
@event_cachefiles_mark_inactive = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_mark_inactive, %union.anon.106 { ptr @__tracepoint_cachefiles_mark_inactive }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_mark_inactive }, ptr @print_fmt_cachefiles_mark_inactive, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_mark_inactive = internal global ptr @event_cachefiles_mark_inactive, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_vfs_error = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.167, %union.anon.104 { %struct.anon.105 { ptr @.str.168, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.104 { %struct.anon.105 { ptr @.str.87, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cachefiles_vfs_error = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_vfs_error, ptr @perf_trace_cachefiles_vfs_error, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_vfs_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_vfs_error, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_vfs_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_vfs_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_vfs_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_vfs_error = internal global { [864 x i8], [192 x i8] } { [864 x i8] c"\22o=%08x B=%x %s e=%d\22, REC->obj, REC->backer, __print_symbolic(REC->where, { cachefiles_trace_fallocate_error, \22fallocate\22 }, { cachefiles_trace_getxattr_error, \22getxattr\22 }, { cachefiles_trace_link_error, \22link\22 }, { cachefiles_trace_lookup_error, \22lookup\22 }, { cachefiles_trace_mkdir_error, \22mkdir\22 }, { cachefiles_trace_notify_change_error, \22notify_change\22 }, { cachefiles_trace_open_error, \22open\22 }, { cachefiles_trace_read_error, \22read\22 }, { cachefiles_trace_remxattr_error, \22remxattr\22 }, { cachefiles_trace_rename_error, \22rename\22 }, { cachefiles_trace_seek_error, \22seek\22 }, { cachefiles_trace_setxattr_error, \22setxattr\22 }, { cachefiles_trace_statfs_error, \22statfs\22 }, { cachefiles_trace_tmpfile_error, \22tmpfile\22 }, { cachefiles_trace_trunc_error, \22trunc\22 }, { cachefiles_trace_unlink_error, \22unlink\22 }, { cachefiles_trace_write_error, \22write\22 }), REC->error\00", [192 x i8] zeroinitializer }, align 32
@event_cachefiles_vfs_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_vfs_error, %union.anon.106 { ptr @__tracepoint_cachefiles_vfs_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_vfs_error }, ptr @print_fmt_cachefiles_vfs_error, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_vfs_error = internal global ptr @event_cachefiles_vfs_error, section "_ftrace_events", align 4
@trace_event_fields_cachefiles_io_error = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.104 { %struct.anon.105 { ptr @.str.95, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.167, %union.anon.104 { %struct.anon.105 { ptr @.str.168, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.86, %union.anon.104 { %struct.anon.105 { ptr @.str.87, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_cachefiles_io_error = internal global %struct.trace_event_class { ptr @str__cachefiles__trace_system_name, ptr @trace_event_raw_event_cachefiles_io_error, ptr @perf_trace_cachefiles_io_error, ptr @trace_event_reg, ptr @trace_event_fields_cachefiles_io_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_cachefiles_io_error, i64 24), ptr getelementptr (i8, ptr @event_class_cachefiles_io_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_cachefiles_io_error = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_cachefiles_io_error, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_cachefiles_io_error = internal global { [864 x i8], [192 x i8] } { [864 x i8] c"\22o=%08x B=%x %s e=%d\22, REC->obj, REC->backer, __print_symbolic(REC->where, { cachefiles_trace_fallocate_error, \22fallocate\22 }, { cachefiles_trace_getxattr_error, \22getxattr\22 }, { cachefiles_trace_link_error, \22link\22 }, { cachefiles_trace_lookup_error, \22lookup\22 }, { cachefiles_trace_mkdir_error, \22mkdir\22 }, { cachefiles_trace_notify_change_error, \22notify_change\22 }, { cachefiles_trace_open_error, \22open\22 }, { cachefiles_trace_read_error, \22read\22 }, { cachefiles_trace_remxattr_error, \22remxattr\22 }, { cachefiles_trace_rename_error, \22rename\22 }, { cachefiles_trace_seek_error, \22seek\22 }, { cachefiles_trace_setxattr_error, \22setxattr\22 }, { cachefiles_trace_statfs_error, \22statfs\22 }, { cachefiles_trace_tmpfile_error, \22tmpfile\22 }, { cachefiles_trace_trunc_error, \22trunc\22 }, { cachefiles_trace_unlink_error, \22unlink\22 }, { cachefiles_trace_write_error, \22write\22 }), REC->error\00", [192 x i8] zeroinitializer }, align 32
@event_cachefiles_io_error = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_cachefiles_io_error, %union.anon.106 { ptr @__tracepoint_cachefiles_io_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_cachefiles_io_error }, ptr @print_fmt_cachefiles_io_error, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_cachefiles_io_error = internal global ptr @event_cachefiles_io_error, section "_ftrace_events", align 4
@__bpf_trace_tp_map_cachefiles_ref = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_ref, ptr @__bpf_trace_cachefiles_ref, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_lookup = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_lookup, ptr @__bpf_trace_cachefiles_lookup, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_mkdir = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_mkdir, ptr @__bpf_trace_cachefiles_mkdir, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_tmpfile = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_tmpfile, ptr @__bpf_trace_cachefiles_tmpfile, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_link = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_link, ptr @__bpf_trace_cachefiles_link, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_unlink = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_unlink, ptr @__bpf_trace_cachefiles_unlink, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_rename = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_rename, ptr @__bpf_trace_cachefiles_rename, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_coherency = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_coherency, ptr @__bpf_trace_cachefiles_coherency, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_vol_coherency = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_vol_coherency, ptr @__bpf_trace_cachefiles_vol_coherency, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_prep_read = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_prep_read, ptr @__bpf_trace_cachefiles_prep_read, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_read = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_read, ptr @__bpf_trace_cachefiles_read, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_write = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_write, ptr @__bpf_trace_cachefiles_write, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_trunc = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_trunc, ptr @__bpf_trace_cachefiles_trunc, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_mark_active = internal global %union.anon.121 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_mark_active, ptr @__bpf_trace_cachefiles_mark_active, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_mark_failed = internal global %union.anon.122 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_mark_failed, ptr @__bpf_trace_cachefiles_mark_failed, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_mark_inactive = internal global %union.anon.123 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_mark_inactive, ptr @__bpf_trace_cachefiles_mark_inactive, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_vfs_error = internal global %union.anon.124 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_vfs_error, ptr @__bpf_trace_cachefiles_vfs_error, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_cachefiles_io_error = internal global %union.anon.125 { %struct.bpf_raw_event_map { ptr @__tracepoint_cachefiles_io_error, ptr @__bpf_trace_cachefiles_io_error, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__param_str_debug = internal constant [17 x i8] c"cachefiles.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@cachefiles_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @cachefiles_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype383 = internal constant [31 x i8] c"cachefiles.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cachefiles_debug384 = internal constant [59 x i8] c"cachefiles.parm=cachefiles_debug:CacheFiles debugging mask\00", section ".modinfo", align 1
@__UNIQUE_ID_description385 = internal constant [54 x i8] c"cachefiles.description=Mounted-filesystem based cache\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [32 x i8] c"cachefiles.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [41 x i8] c"cachefiles.file=fs/cachefiles/cachefiles\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [23 x i8] c"cachefiles.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_cachefiles__389_79_cachefiles_init5 = internal global ptr @cachefiles_init, section ".initcall5.init", align 4
@cachefiles_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.65, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016CacheFiles: Unloading\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cachefiles_exit\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/cachefiles/main.c\00", [43 x i8] zeroinitializer }, align 32
@cachefiles_exit._entry_ptr = internal global ptr @cachefiles_exit._entry, section ".printk_index", align 4
@cachefiles_object_jar = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cachefiles_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.196, ptr @cachefiles_daemon_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cachefiles_exit = internal global ptr @cachefiles_exit, section ".exitcall.exit", align 4
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"obj\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cookie\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enum cachefiles_obj_ref_trace\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"why\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usage\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"c=%08x o=%08x u=%d %s\0A\00", [41 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_ref.symbols = internal constant { [13 x %struct.trace_print_flags], [56 x i8] } { [13 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.74 }, %struct.trace_print_flags { i32 1, ptr @.str.75 }, %struct.trace_print_flags { i32 2, ptr @.str.76 }, %struct.trace_print_flags { i32 3, ptr @.str.77 }, %struct.trace_print_flags { i32 4, ptr @.str.78 }, %struct.trace_print_flags { i32 5, ptr @.str.79 }, %struct.trace_print_flags { i32 6, ptr @.str.80 }, %struct.trace_print_flags { i32 7, ptr @.str.81 }, %struct.trace_print_flags { i32 8, ptr @.str.82 }, %struct.trace_print_flags { i32 9, ptr @.str.83 }, %struct.trace_print_flags { i32 10, ptr @.str.84 }, %struct.trace_print_flags { i32 11, ptr @.str.85 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GET ioreq\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NEW obj\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PUT alloc_fail\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PUT detach\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PUT ioreq\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SEE clean_commit\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SEE clean_delete\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SEE clean_drop_tmp\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SEE lookup_cookie\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SEE lookup_failed\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SEE withdraw_cookie\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEE withdrawal\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dino\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ino\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"o=%08x dB=%lx B=%lx e=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"subdir\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dB=%x sB=%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"backer\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"o=%08x B=%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enum fscache_why_object_killed\00", [33 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"o=%08x B=%x w=%s\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_unlink.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.99 }, %struct.trace_print_flags { i32 1, ptr @.str.100 }, %struct.trace_print_flags { i32 2, ptr @.str.101 }, %struct.trace_print_flags { i32 3, ptr @.str.102 }, %struct.trace_print_flags { i32 4, ptr @.str.103 }, %struct.trace_print_flags { i32 5, ptr @.str.104 }, %struct.trace_print_flags { i32 6, ptr @.str.105 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stale\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"weird\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inval\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no_space\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"was_retired\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"was_culled\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"volume_weird\00", [19 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_rename.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.99 }, %struct.trace_print_flags { i32 1, ptr @.str.100 }, %struct.trace_print_flags { i32 2, ptr @.str.101 }, %struct.trace_print_flags { i32 3, ptr @.str.102 }, %struct.trace_print_flags { i32 4, ptr @.str.103 }, %struct.trace_print_flags { i32 5, ptr @.str.104 }, %struct.trace_print_flags { i32 6, ptr @.str.105 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"enum cachefiles_coherency_trace\00", [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enum cachefiles_content\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"content\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"o=%08x %s B=%llx c=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_coherency.symbols = internal constant { [17 x %struct.trace_print_flags], [56 x i8] } { [17 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.111 }, %struct.trace_print_flags { i32 1, ptr @.str.112 }, %struct.trace_print_flags { i32 2, ptr @.str.113 }, %struct.trace_print_flags { i32 3, ptr @.str.114 }, %struct.trace_print_flags { i32 4, ptr @.str.115 }, %struct.trace_print_flags { i32 5, ptr @.str.116 }, %struct.trace_print_flags { i32 6, ptr @.str.117 }, %struct.trace_print_flags { i32 7, ptr @.str.118 }, %struct.trace_print_flags { i32 8, ptr @.str.119 }, %struct.trace_print_flags { i32 9, ptr @.str.120 }, %struct.trace_print_flags { i32 10, ptr @.str.121 }, %struct.trace_print_flags { i32 11, ptr @.str.122 }, %struct.trace_print_flags { i32 12, ptr @.str.123 }, %struct.trace_print_flags { i32 13, ptr @.str.124 }, %struct.trace_print_flags { i32 14, ptr @.str.125 }, %struct.trace_print_flags { i32 15, ptr @.str.126 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD aux \00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD cont\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD dirt\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD len \00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD osiz\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OK      \00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD type\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BAD xatt\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SET fail\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SET ok  \00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VOL BAD cmp \00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VOL OK      \00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VOL BAD resv\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VOL BAD xatt\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VOL SET fail\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VOL SET ok  \00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"V=%08x %s B=%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_vol_coherency.symbols = internal constant { [17 x %struct.trace_print_flags], [56 x i8] } { [17 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.111 }, %struct.trace_print_flags { i32 1, ptr @.str.112 }, %struct.trace_print_flags { i32 2, ptr @.str.113 }, %struct.trace_print_flags { i32 3, ptr @.str.114 }, %struct.trace_print_flags { i32 4, ptr @.str.115 }, %struct.trace_print_flags { i32 5, ptr @.str.116 }, %struct.trace_print_flags { i32 6, ptr @.str.117 }, %struct.trace_print_flags { i32 7, ptr @.str.118 }, %struct.trace_print_flags { i32 8, ptr @.str.119 }, %struct.trace_print_flags { i32 9, ptr @.str.120 }, %struct.trace_print_flags { i32 10, ptr @.str.121 }, %struct.trace_print_flags { i32 11, ptr @.str.122 }, %struct.trace_print_flags { i32 12, ptr @.str.123 }, %struct.trace_print_flags { i32 13, ptr @.str.124 }, %struct.trace_print_flags { i32 14, ptr @.str.125 }, %struct.trace_print_flags { i32 15, ptr @.str.126 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rreq\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unsigned short\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enum netfs_read_source\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enum cachefiles_prepare_read_trace\00", [61 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netfs_inode\00", [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cache_inode\00", [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"R=%08x[%u] %s %s f=%02x s=%llx %zx ni=%x B=%x\0A\00", [49 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_prep_read.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.143 }, %struct.trace_print_flags { i32 1, ptr @.str.144 }, %struct.trace_print_flags { i32 2, ptr @.str.145 }, %struct.trace_print_flags { i32 3, ptr @.str.146 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZERO\00", [27 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INVL\00", [27 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_prep_read.symbols.147 = internal constant { [9 x %struct.trace_print_flags], [56 x i8] } { [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.148 }, %struct.trace_print_flags { i32 1, ptr @.str.149 }, %struct.trace_print_flags { i32 2, ptr @.str.150 }, %struct.trace_print_flags { i32 3, ptr @.str.151 }, %struct.trace_print_flags { i32 4, ptr @.str.152 }, %struct.trace_print_flags { i32 5, ptr @.str.153 }, %struct.trace_print_flags { i32 6, ptr @.str.154 }, %struct.trace_print_flags { i32 7, ptr @.str.155 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"after-eof \00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"found-hole\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"found-part\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"have-data \00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no-data   \00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no-file   \00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"seek-error\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"seek-enxio\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"o=%08x B=%x s=%llx l=%zx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enum cachefiles_trunc_trace\00", [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"from\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"to\00", [29 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"o=%08x B=%x %s l=%llx->%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_trunc.symbols = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.161 }, %struct.trace_print_flags { i32 1, ptr @.str.162 }, %struct.trace_print_flags { i32 2, ptr @.str.163 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIOADJ\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EXPTMP\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHRINK\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ino_t\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"o=%08x B=%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enum cachefiles_error_trace\00", [36 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"where\00", [26 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"o=%08x B=%x %s e=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_vfs_error.symbols = internal constant { [18 x %struct.trace_print_flags], [48 x i8] } { [18 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.170 }, %struct.trace_print_flags { i32 1, ptr @.str.171 }, %struct.trace_print_flags { i32 2, ptr @.str.172 }, %struct.trace_print_flags { i32 3, ptr @.str.173 }, %struct.trace_print_flags { i32 4, ptr @.str.174 }, %struct.trace_print_flags { i32 5, ptr @.str.175 }, %struct.trace_print_flags { i32 6, ptr @.str.176 }, %struct.trace_print_flags { i32 7, ptr @.str.177 }, %struct.trace_print_flags { i32 8, ptr @.str.178 }, %struct.trace_print_flags { i32 9, ptr @.str.179 }, %struct.trace_print_flags { i32 10, ptr @.str.180 }, %struct.trace_print_flags { i32 11, ptr @.str.181 }, %struct.trace_print_flags { i32 12, ptr @.str.182 }, %struct.trace_print_flags { i32 13, ptr @.str.183 }, %struct.trace_print_flags { i32 14, ptr @.str.184 }, %struct.trace_print_flags { i32 15, ptr @.str.185 }, %struct.trace_print_flags { i32 16, ptr @.str.186 }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fallocate\00", [22 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"getxattr\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lookup\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mkdir\00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"notify_change\00", [18 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"remxattr\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rename\00", [25 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"seek\00", [27 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setxattr\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"statfs\00", [25 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmpfile\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trunc\00", [26 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unlink\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@trace_raw_output_cachefiles_io_error.symbols = internal constant { [18 x %struct.trace_print_flags], [48 x i8] } { [18 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.170 }, %struct.trace_print_flags { i32 1, ptr @.str.171 }, %struct.trace_print_flags { i32 2, ptr @.str.172 }, %struct.trace_print_flags { i32 3, ptr @.str.173 }, %struct.trace_print_flags { i32 4, ptr @.str.174 }, %struct.trace_print_flags { i32 5, ptr @.str.175 }, %struct.trace_print_flags { i32 6, ptr @.str.176 }, %struct.trace_print_flags { i32 7, ptr @.str.177 }, %struct.trace_print_flags { i32 8, ptr @.str.178 }, %struct.trace_print_flags { i32 9, ptr @.str.179 }, %struct.trace_print_flags { i32 10, ptr @.str.180 }, %struct.trace_print_flags { i32 11, ptr @.str.181 }, %struct.trace_print_flags { i32 12, ptr @.str.182 }, %struct.trace_print_flags { i32 13, ptr @.str.183 }, %struct.trace_print_flags { i32 14, ptr @.str.184 }, %struct.trace_print_flags { i32 15, ptr @.str.185 }, %struct.trace_print_flags { i32 16, ptr @.str.186 }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cachefiles_object_jar\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.65, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015CacheFiles: Failed to allocate an object jar\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cachefiles_init\00", [16 x i8] zeroinitializer }, align 32
@cachefiles_init._entry_ptr = internal global ptr @cachefiles_init._entry, section ".printk_index", align 4
@cachefiles_init._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.189, ptr @.str.65, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016CacheFiles: Loaded\0A\00", [42 x i8] zeroinitializer }, align 32
@cachefiles_init._entry_ptr.192 = internal global ptr @cachefiles_init._entry.190, section ".printk_index", align 4
@cachefiles_init._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.189, ptr @.str.65, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CacheFiles: failed to register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cachefiles_init._entry_ptr.195 = internal global ptr @cachefiles_init._entry.193, section ".printk_index", align 4
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cachefiles\00", [21 x i8] zeroinitializer }, align 32
@cachefiles_daemon_fops = external dso_local constant %struct.file_operations, align 4
@___asan_gen_.197 = private unnamed_addr constant [35 x i8] c"str__cachefiles__trace_system_name\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 36, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 191, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 192, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 193, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 194, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 195, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 196, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant [34 x i8] c"trace_event_fields_cachefiles_ref\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_cachefiles_ref\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [25 x i8] c"print_fmt_cachefiles_ref\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [21 x i8] c"event_cachefiles_ref\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cachefiles_lookup\00", align 1
@___asan_gen_.404 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cachefiles_lookup\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [28 x i8] c"print_fmt_cachefiles_lookup\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [24 x i8] c"event_cachefiles_lookup\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [36 x i8] c"trace_event_fields_cachefiles_mkdir\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_cachefiles_mkdir\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [27 x i8] c"print_fmt_cachefiles_mkdir\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [23 x i8] c"event_cachefiles_mkdir\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [38 x i8] c"trace_event_fields_cachefiles_tmpfile\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_cachefiles_tmpfile\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [29 x i8] c"print_fmt_cachefiles_tmpfile\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [25 x i8] c"event_cachefiles_tmpfile\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [35 x i8] c"trace_event_fields_cachefiles_link\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_cachefiles_link\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [26 x i8] c"print_fmt_cachefiles_link\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [22 x i8] c"event_cachefiles_link\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 302, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cachefiles_unlink\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cachefiles_unlink\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [28 x i8] c"print_fmt_cachefiles_unlink\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [24 x i8] c"event_cachefiles_unlink\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [37 x i8] c"trace_event_fields_cachefiles_rename\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [41 x i8] c"trace_event_type_funcs_cachefiles_rename\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [28 x i8] c"print_fmt_cachefiles_rename\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [24 x i8] c"event_cachefiles_rename\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [40 x i8] c"trace_event_fields_cachefiles_coherency\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_cachefiles_coherency\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [31 x i8] c"print_fmt_cachefiles_coherency\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [27 x i8] c"event_cachefiles_coherency\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [44 x i8] c"trace_event_fields_cachefiles_vol_coherency\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_cachefiles_vol_coherency\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [35 x i8] c"print_fmt_cachefiles_vol_coherency\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [31 x i8] c"event_cachefiles_vol_coherency\00", align 1
@___asan_gen_.497 = private unnamed_addr constant [40 x i8] c"trace_event_fields_cachefiles_prep_read\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_cachefiles_prep_read\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [31 x i8] c"print_fmt_cachefiles_prep_read\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [27 x i8] c"event_cachefiles_prep_read\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [35 x i8] c"trace_event_fields_cachefiles_read\00", align 1
@___asan_gen_.512 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_cachefiles_read\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [26 x i8] c"print_fmt_cachefiles_read\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [22 x i8] c"event_cachefiles_read\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [36 x i8] c"trace_event_fields_cachefiles_write\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_cachefiles_write\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [27 x i8] c"print_fmt_cachefiles_write\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [23 x i8] c"event_cachefiles_write\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 498, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant [36 x i8] c"trace_event_fields_cachefiles_trunc\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_cachefiles_trunc\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [27 x i8] c"print_fmt_cachefiles_trunc\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [23 x i8] c"event_cachefiles_trunc\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [42 x i8] c"trace_event_fields_cachefiles_mark_active\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_cachefiles_mark_active\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [33 x i8] c"print_fmt_cachefiles_mark_active\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [29 x i8] c"event_cachefiles_mark_active\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [42 x i8] c"trace_event_fields_cachefiles_mark_failed\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_cachefiles_mark_failed\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [33 x i8] c"print_fmt_cachefiles_mark_failed\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [29 x i8] c"event_cachefiles_mark_failed\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 578, i32 1 }
@___asan_gen_.569 = private unnamed_addr constant [44 x i8] c"trace_event_fields_cachefiles_mark_inactive\00", align 1
@___asan_gen_.572 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_cachefiles_mark_inactive\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [35 x i8] c"print_fmt_cachefiles_mark_inactive\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [31 x i8] c"event_cachefiles_mark_inactive\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 599, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant [40 x i8] c"trace_event_fields_cachefiles_vfs_error\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_cachefiles_vfs_error\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [31 x i8] c"print_fmt_cachefiles_vfs_error\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [27 x i8] c"event_cachefiles_vfs_error\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [39 x i8] c"trace_event_fields_cachefiles_io_error\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_cachefiles_io_error\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [30 x i8] c"print_fmt_cachefiles_io_error\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [26 x i8] c"event_cachefiles_io_error\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [17 x i8] c"cachefiles_debug\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 26, i32 10 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 86, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [22 x i8] c"cachefiles_object_jar\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 34, i32 20 }
@___asan_gen_.623 = private unnamed_addr constant [15 x i8] c"cachefiles_dev\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 36, i32 26 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 208, i32 1 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 236, i32 1 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 262, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 282, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 322, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 347, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 372, i32 1 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 402, i32 1 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 428, i32 1 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 469, i32 1 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 527, i32 1 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 557, i32 1 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 620, i32 1 }
@___asan_gen_.1013 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant [37 x i8] c"../include/trace/events/cachefiles.h\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1014, i32 647, i32 1 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 59, i32 21 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 63, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 67, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 75, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1041 = private constant [24 x i8] c"../fs/cachefiles/main.c\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1041, i32 38, i32 10 }
@llvm.compiler.used = appending global [512 x ptr] [ptr @TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED, ptr @TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE, ptr @TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD, ptr @TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE, ptr @TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED, ptr @TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED, ptr @TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD, ptr @TRACE_SYSTEM_cachefiles_coherency_check_aux, ptr @TRACE_SYSTEM_cachefiles_coherency_check_content, ptr @TRACE_SYSTEM_cachefiles_coherency_check_dirty, ptr @TRACE_SYSTEM_cachefiles_coherency_check_len, ptr @TRACE_SYSTEM_cachefiles_coherency_check_objsize, ptr @TRACE_SYSTEM_cachefiles_coherency_check_ok, ptr @TRACE_SYSTEM_cachefiles_coherency_check_type, ptr @TRACE_SYSTEM_cachefiles_coherency_check_xattr, ptr @TRACE_SYSTEM_cachefiles_coherency_set_fail, ptr @TRACE_SYSTEM_cachefiles_coherency_set_ok, ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp, ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_ok, ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_resv, ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr, ptr @TRACE_SYSTEM_cachefiles_coherency_vol_set_fail, ptr @TRACE_SYSTEM_cachefiles_coherency_vol_set_ok, ptr @TRACE_SYSTEM_cachefiles_obj_get_ioreq, ptr @TRACE_SYSTEM_cachefiles_obj_new, ptr @TRACE_SYSTEM_cachefiles_obj_put_alloc_fail, ptr @TRACE_SYSTEM_cachefiles_obj_put_detach, ptr @TRACE_SYSTEM_cachefiles_obj_put_ioreq, ptr @TRACE_SYSTEM_cachefiles_obj_see_clean_commit, ptr @TRACE_SYSTEM_cachefiles_obj_see_clean_delete, ptr @TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp, ptr @TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie, ptr @TRACE_SYSTEM_cachefiles_obj_see_lookup_failed, ptr @TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie, ptr @TRACE_SYSTEM_cachefiles_obj_see_withdrawal, ptr @TRACE_SYSTEM_cachefiles_trace_fallocate_error, ptr @TRACE_SYSTEM_cachefiles_trace_getxattr_error, ptr @TRACE_SYSTEM_cachefiles_trace_link_error, ptr @TRACE_SYSTEM_cachefiles_trace_lookup_error, ptr @TRACE_SYSTEM_cachefiles_trace_mkdir_error, ptr @TRACE_SYSTEM_cachefiles_trace_notify_change_error, ptr @TRACE_SYSTEM_cachefiles_trace_open_error, ptr @TRACE_SYSTEM_cachefiles_trace_read_after_eof, ptr @TRACE_SYSTEM_cachefiles_trace_read_error, ptr @TRACE_SYSTEM_cachefiles_trace_read_found_hole, ptr @TRACE_SYSTEM_cachefiles_trace_read_found_part, ptr @TRACE_SYSTEM_cachefiles_trace_read_have_data, ptr @TRACE_SYSTEM_cachefiles_trace_read_no_data, ptr @TRACE_SYSTEM_cachefiles_trace_read_no_file, ptr @TRACE_SYSTEM_cachefiles_trace_read_seek_error, ptr @TRACE_SYSTEM_cachefiles_trace_read_seek_nxio, ptr @TRACE_SYSTEM_cachefiles_trace_remxattr_error, ptr @TRACE_SYSTEM_cachefiles_trace_rename_error, ptr @TRACE_SYSTEM_cachefiles_trace_seek_error, ptr @TRACE_SYSTEM_cachefiles_trace_setxattr_error, ptr @TRACE_SYSTEM_cachefiles_trace_statfs_error, ptr @TRACE_SYSTEM_cachefiles_trace_tmpfile_error, ptr @TRACE_SYSTEM_cachefiles_trace_trunc_error, ptr @TRACE_SYSTEM_cachefiles_trace_unlink_error, ptr @TRACE_SYSTEM_cachefiles_trace_write_error, ptr @TRACE_SYSTEM_cachefiles_trunc_dio_adjust, ptr @TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile, ptr @TRACE_SYSTEM_cachefiles_trunc_shrink, ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED, ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE, ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD, ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE, ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED, ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED, ptr @__TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_aux, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_content, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_dirty, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_len, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_objsize, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_ok, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_type, ptr @__TRACE_SYSTEM_cachefiles_coherency_check_xattr, ptr @__TRACE_SYSTEM_cachefiles_coherency_set_fail, ptr @__TRACE_SYSTEM_cachefiles_coherency_set_ok, ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp, ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_ok, ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_resv, ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr, ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_set_fail, ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_set_ok, ptr @__TRACE_SYSTEM_cachefiles_obj_get_ioreq, ptr @__TRACE_SYSTEM_cachefiles_obj_new, ptr @__TRACE_SYSTEM_cachefiles_obj_put_alloc_fail, ptr @__TRACE_SYSTEM_cachefiles_obj_put_detach, ptr @__TRACE_SYSTEM_cachefiles_obj_put_ioreq, ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_commit, ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_delete, ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp, ptr @__TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie, ptr @__TRACE_SYSTEM_cachefiles_obj_see_lookup_failed, ptr @__TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie, ptr @__TRACE_SYSTEM_cachefiles_obj_see_withdrawal, ptr @__TRACE_SYSTEM_cachefiles_trace_fallocate_error, ptr @__TRACE_SYSTEM_cachefiles_trace_getxattr_error, ptr @__TRACE_SYSTEM_cachefiles_trace_link_error, ptr @__TRACE_SYSTEM_cachefiles_trace_lookup_error, ptr @__TRACE_SYSTEM_cachefiles_trace_mkdir_error, ptr @__TRACE_SYSTEM_cachefiles_trace_notify_change_error, ptr @__TRACE_SYSTEM_cachefiles_trace_open_error, ptr @__TRACE_SYSTEM_cachefiles_trace_read_after_eof, ptr @__TRACE_SYSTEM_cachefiles_trace_read_error, ptr @__TRACE_SYSTEM_cachefiles_trace_read_found_hole, ptr @__TRACE_SYSTEM_cachefiles_trace_read_found_part, ptr @__TRACE_SYSTEM_cachefiles_trace_read_have_data, ptr @__TRACE_SYSTEM_cachefiles_trace_read_no_data, ptr @__TRACE_SYSTEM_cachefiles_trace_read_no_file, ptr @__TRACE_SYSTEM_cachefiles_trace_read_seek_error, ptr @__TRACE_SYSTEM_cachefiles_trace_read_seek_nxio, ptr @__TRACE_SYSTEM_cachefiles_trace_remxattr_error, ptr @__TRACE_SYSTEM_cachefiles_trace_rename_error, ptr @__TRACE_SYSTEM_cachefiles_trace_seek_error, ptr @__TRACE_SYSTEM_cachefiles_trace_setxattr_error, ptr @__TRACE_SYSTEM_cachefiles_trace_statfs_error, ptr @__TRACE_SYSTEM_cachefiles_trace_tmpfile_error, ptr @__TRACE_SYSTEM_cachefiles_trace_trunc_error, ptr @__TRACE_SYSTEM_cachefiles_trace_unlink_error, ptr @__TRACE_SYSTEM_cachefiles_trace_write_error, ptr @__TRACE_SYSTEM_cachefiles_trunc_dio_adjust, ptr @__TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile, ptr @__TRACE_SYSTEM_cachefiles_trunc_shrink, ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_cachefiles_debug384, ptr @__UNIQUE_ID_debugtype383, ptr @__UNIQUE_ID_description385, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__bpf_trace_tp_map_cachefiles_coherency, ptr @__bpf_trace_tp_map_cachefiles_io_error, ptr @__bpf_trace_tp_map_cachefiles_link, ptr @__bpf_trace_tp_map_cachefiles_lookup, ptr @__bpf_trace_tp_map_cachefiles_mark_active, ptr @__bpf_trace_tp_map_cachefiles_mark_failed, ptr @__bpf_trace_tp_map_cachefiles_mark_inactive, ptr @__bpf_trace_tp_map_cachefiles_mkdir, ptr @__bpf_trace_tp_map_cachefiles_prep_read, ptr @__bpf_trace_tp_map_cachefiles_read, ptr @__bpf_trace_tp_map_cachefiles_ref, ptr @__bpf_trace_tp_map_cachefiles_rename, ptr @__bpf_trace_tp_map_cachefiles_tmpfile, ptr @__bpf_trace_tp_map_cachefiles_trunc, ptr @__bpf_trace_tp_map_cachefiles_unlink, ptr @__bpf_trace_tp_map_cachefiles_vfs_error, ptr @__bpf_trace_tp_map_cachefiles_vol_coherency, ptr @__bpf_trace_tp_map_cachefiles_write, ptr @__event_cachefiles_coherency, ptr @__event_cachefiles_io_error, ptr @__event_cachefiles_link, ptr @__event_cachefiles_lookup, ptr @__event_cachefiles_mark_active, ptr @__event_cachefiles_mark_failed, ptr @__event_cachefiles_mark_inactive, ptr @__event_cachefiles_mkdir, ptr @__event_cachefiles_prep_read, ptr @__event_cachefiles_read, ptr @__event_cachefiles_ref, ptr @__event_cachefiles_rename, ptr @__event_cachefiles_tmpfile, ptr @__event_cachefiles_trunc, ptr @__event_cachefiles_unlink, ptr @__event_cachefiles_vfs_error, ptr @__event_cachefiles_vol_coherency, ptr @__event_cachefiles_write, ptr @__exitcall_cachefiles_exit, ptr @__initcall__kmod_cachefiles__389_79_cachefiles_init5, ptr @__param_debug, ptr @__tracepoint_cachefiles_coherency, ptr @__tracepoint_cachefiles_io_error, ptr @__tracepoint_cachefiles_link, ptr @__tracepoint_cachefiles_lookup, ptr @__tracepoint_cachefiles_mark_active, ptr @__tracepoint_cachefiles_mark_failed, ptr @__tracepoint_cachefiles_mark_inactive, ptr @__tracepoint_cachefiles_mkdir, ptr @__tracepoint_cachefiles_prep_read, ptr @__tracepoint_cachefiles_read, ptr @__tracepoint_cachefiles_ref, ptr @__tracepoint_cachefiles_rename, ptr @__tracepoint_cachefiles_tmpfile, ptr @__tracepoint_cachefiles_trunc, ptr @__tracepoint_cachefiles_unlink, ptr @__tracepoint_cachefiles_vfs_error, ptr @__tracepoint_cachefiles_vol_coherency, ptr @__tracepoint_cachefiles_write, ptr @__tracepoint_ptr_cachefiles_coherency, ptr @__tracepoint_ptr_cachefiles_io_error, ptr @__tracepoint_ptr_cachefiles_link, ptr @__tracepoint_ptr_cachefiles_lookup, ptr @__tracepoint_ptr_cachefiles_mark_active, ptr @__tracepoint_ptr_cachefiles_mark_failed, ptr @__tracepoint_ptr_cachefiles_mark_inactive, ptr @__tracepoint_ptr_cachefiles_mkdir, ptr @__tracepoint_ptr_cachefiles_prep_read, ptr @__tracepoint_ptr_cachefiles_read, ptr @__tracepoint_ptr_cachefiles_ref, ptr @__tracepoint_ptr_cachefiles_rename, ptr @__tracepoint_ptr_cachefiles_tmpfile, ptr @__tracepoint_ptr_cachefiles_trunc, ptr @__tracepoint_ptr_cachefiles_unlink, ptr @__tracepoint_ptr_cachefiles_vfs_error, ptr @__tracepoint_ptr_cachefiles_vol_coherency, ptr @__tracepoint_ptr_cachefiles_write, ptr @cachefiles_exit, ptr @cachefiles_exit._entry, ptr @cachefiles_exit._entry_ptr, ptr @cachefiles_init._entry, ptr @cachefiles_init._entry.190, ptr @cachefiles_init._entry.193, ptr @cachefiles_init._entry_ptr, ptr @cachefiles_init._entry_ptr.192, ptr @cachefiles_init._entry_ptr.195, ptr @event_cachefiles_coherency, ptr @event_cachefiles_io_error, ptr @event_cachefiles_link, ptr @event_cachefiles_lookup, ptr @event_cachefiles_mark_active, ptr @event_cachefiles_mark_failed, ptr @event_cachefiles_mark_inactive, ptr @event_cachefiles_mkdir, ptr @event_cachefiles_prep_read, ptr @event_cachefiles_read, ptr @event_cachefiles_ref, ptr @event_cachefiles_rename, ptr @event_cachefiles_tmpfile, ptr @event_cachefiles_trunc, ptr @event_cachefiles_unlink, ptr @event_cachefiles_vfs_error, ptr @event_cachefiles_vol_coherency, ptr @event_cachefiles_write, ptr @event_class_cachefiles_coherency, ptr @event_class_cachefiles_io_error, ptr @event_class_cachefiles_link, ptr @event_class_cachefiles_lookup, ptr @event_class_cachefiles_mark_active, ptr @event_class_cachefiles_mark_failed, ptr @event_class_cachefiles_mark_inactive, ptr @event_class_cachefiles_mkdir, ptr @event_class_cachefiles_prep_read, ptr @event_class_cachefiles_read, ptr @event_class_cachefiles_ref, ptr @event_class_cachefiles_rename, ptr @event_class_cachefiles_tmpfile, ptr @event_class_cachefiles_trunc, ptr @event_class_cachefiles_unlink, ptr @event_class_cachefiles_vfs_error, ptr @event_class_cachefiles_vol_coherency, ptr @event_class_cachefiles_write, ptr @str__cachefiles__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @trace_event_fields_cachefiles_ref, ptr @trace_event_type_funcs_cachefiles_ref, ptr @print_fmt_cachefiles_ref, ptr @trace_event_fields_cachefiles_lookup, ptr @trace_event_type_funcs_cachefiles_lookup, ptr @print_fmt_cachefiles_lookup, ptr @trace_event_fields_cachefiles_mkdir, ptr @trace_event_type_funcs_cachefiles_mkdir, ptr @print_fmt_cachefiles_mkdir, ptr @trace_event_fields_cachefiles_tmpfile, ptr @trace_event_type_funcs_cachefiles_tmpfile, ptr @print_fmt_cachefiles_tmpfile, ptr @trace_event_fields_cachefiles_link, ptr @trace_event_type_funcs_cachefiles_link, ptr @print_fmt_cachefiles_link, ptr @trace_event_fields_cachefiles_unlink, ptr @trace_event_type_funcs_cachefiles_unlink, ptr @print_fmt_cachefiles_unlink, ptr @trace_event_fields_cachefiles_rename, ptr @trace_event_type_funcs_cachefiles_rename, ptr @print_fmt_cachefiles_rename, ptr @trace_event_fields_cachefiles_coherency, ptr @trace_event_type_funcs_cachefiles_coherency, ptr @print_fmt_cachefiles_coherency, ptr @trace_event_fields_cachefiles_vol_coherency, ptr @trace_event_type_funcs_cachefiles_vol_coherency, ptr @print_fmt_cachefiles_vol_coherency, ptr @trace_event_fields_cachefiles_prep_read, ptr @trace_event_type_funcs_cachefiles_prep_read, ptr @print_fmt_cachefiles_prep_read, ptr @trace_event_fields_cachefiles_read, ptr @trace_event_type_funcs_cachefiles_read, ptr @print_fmt_cachefiles_read, ptr @trace_event_fields_cachefiles_write, ptr @trace_event_type_funcs_cachefiles_write, ptr @print_fmt_cachefiles_write, ptr @trace_event_fields_cachefiles_trunc, ptr @trace_event_type_funcs_cachefiles_trunc, ptr @print_fmt_cachefiles_trunc, ptr @trace_event_fields_cachefiles_mark_active, ptr @trace_event_type_funcs_cachefiles_mark_active, ptr @print_fmt_cachefiles_mark_active, ptr @trace_event_fields_cachefiles_mark_failed, ptr @trace_event_type_funcs_cachefiles_mark_failed, ptr @print_fmt_cachefiles_mark_failed, ptr @trace_event_fields_cachefiles_mark_inactive, ptr @trace_event_type_funcs_cachefiles_mark_inactive, ptr @print_fmt_cachefiles_mark_inactive, ptr @trace_event_fields_cachefiles_vfs_error, ptr @trace_event_type_funcs_cachefiles_vfs_error, ptr @print_fmt_cachefiles_vfs_error, ptr @trace_event_fields_cachefiles_io_error, ptr @trace_event_type_funcs_cachefiles_io_error, ptr @print_fmt_cachefiles_io_error, ptr @cachefiles_debug, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @cachefiles_object_jar, ptr @cachefiles_dev, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @trace_raw_output_cachefiles_ref.symbols, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @trace_raw_output_cachefiles_unlink.symbols, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @trace_raw_output_cachefiles_rename.symbols, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @trace_raw_output_cachefiles_coherency.symbols, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @trace_raw_output_cachefiles_vol_coherency.symbols, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @trace_raw_output_cachefiles_prep_read.symbols, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @trace_raw_output_cachefiles_prep_read.symbols.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @trace_raw_output_cachefiles_trunc.symbols, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @trace_raw_output_cachefiles_vfs_error.symbols, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @trace_raw_output_cachefiles_io_error.symbols, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.191, ptr @.str.194, ptr @.str.196], section "llvm.metadata"
@0 = internal global [282 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__cachefiles__trace_system_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_ref to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_ref to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_ref to i32), i32 715, i32 896, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_ref to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_lookup to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_lookup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_lookup to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_lookup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_mkdir to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_mkdir to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_mkdir to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_mkdir to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_tmpfile to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_tmpfile to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_tmpfile to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_tmpfile to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_link to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_link to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_link to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_link to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_unlink to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_unlink to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_unlink to i32), i32 362, i32 448, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_unlink to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_rename to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_rename to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_rename to i32), i32 362, i32 448, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_rename to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_coherency to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_coherency to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_coherency to i32), i32 908, i32 1152, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_coherency to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_vol_coherency to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_vol_coherency to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_vol_coherency to i32), i32 889, i32 1088, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_vol_coherency to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_prep_read to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_prep_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_prep_read to i32), i32 750, i32 928, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_prep_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_read to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_read to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_write to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_write to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_write to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_trunc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_trunc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_trunc to i32), i32 230, i32 288, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_trunc to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_mark_active to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_mark_active to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_mark_active to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_mark_active to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_mark_failed to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_mark_failed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_mark_failed to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_mark_failed to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_mark_inactive to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_mark_inactive to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_mark_inactive to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_mark_inactive to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_vfs_error to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_vfs_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_vfs_error to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_vfs_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_cachefiles_io_error to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_cachefiles_io_error to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_cachefiles_io_error to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cachefiles_io_error to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_object_jar to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_ref.symbols to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_unlink.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_rename.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_coherency.symbols to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_vol_coherency.symbols to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_prep_read.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_prep_read.symbols.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_trunc.symbols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_vfs_error.symbols to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_cachefiles_io_error.symbols to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_init._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cachefiles_init._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_ref(ptr nocapture readnone %__data, i32 noundef %object_debug_id, i32 noundef %cookie_debug_id, i32 noundef %usage, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_ref, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %object_debug_id, i32 noundef %cookie_debug_id, i32 noundef %usage, i32 noundef %why) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_lookup(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %dir, ptr noundef %de) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_lookup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %dir, ptr noundef %de) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_mkdir(ptr nocapture readnone %__data, ptr noundef %dir, ptr noundef %subdir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_mkdir, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %dir, ptr noundef %subdir) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_tmpfile(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %backer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_tmpfile, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %backer) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_link(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %backer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_link, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %backer) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_unlink(ptr nocapture readnone %__data, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_unlink, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_rename(ptr nocapture readnone %__data, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_rename, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_coherency(ptr nocapture readnone %__data, ptr noundef %obj, i32 noundef %ino, i32 noundef %content, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_coherency, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, i32 noundef %ino, i32 noundef %content, i32 noundef %why) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_vol_coherency(ptr nocapture readnone %__data, ptr noundef %volume, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_vol_coherency, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %volume, i32 noundef %ino, i32 noundef %why) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_prep_read(ptr nocapture readnone %__data, ptr noundef %sreq, i8 noundef signext %source, i32 noundef %why, i32 noundef %cache_inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_prep_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %sreq, i8 noundef signext %source, i32 noundef %why, i32 noundef %cache_inode) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_read(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_write(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_write, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_trunc(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %backer, i64 noundef %from, i64 noundef %to, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_trunc, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %backer, i64 noundef %from, i64 noundef %to, i32 noundef %why) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_mark_active(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_mark_active, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %inode) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_mark_failed(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_mark_failed, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %inode) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_mark_inactive(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_mark_inactive, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %inode) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_vfs_error(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_vfs_error, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_cachefiles_io_error(ptr nocapture readnone %__data, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_cachefiles_io_error, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #7
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_ref(ptr noundef %__data, i32 noundef %object_debug_id, i32 noundef %cookie_debug_id, i32 noundef %usage, i32 noundef %why) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %object_debug_id, ptr %obj, align 4
  %cookie = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cookie_debug_id, ptr %cookie, align 4
  %usage6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call3, i32 0, i32 4
  %5 = ptrtoint ptr %usage6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %usage, ptr %usage6, align 4
  %why7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call3, i32 0, i32 3
  %6 = ptrtoint ptr %why7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %why, ptr %why7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_ref(ptr noundef %__data, i32 noundef %object_debug_id, i32 noundef %cookie_debug_id, i32 noundef %usage, i32 noundef %why) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %object_debug_id, ptr %obj, align 4
  %cookie = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cookie_debug_id, ptr %cookie, align 4
  %usage17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call13, i32 0, i32 4
  %29 = ptrtoint ptr %usage17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %usage, ptr %usage17, align 4
  %why18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %call13, i32 0, i32 3
  %30 = ptrtoint ptr %why18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %why, ptr %why18, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_lookup(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %dir, ptr noundef %de) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %dino = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %dino to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dino, align 4
  %cmp.i = icmp ugt ptr %de, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cond.true19, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %d_inode.i41 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i41, align 8
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true.cond.end16.thread_crit_edge, label %cond.true12

land.lhs.true.cond.end16.thread_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end16.thread

cond.true12:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino14 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %i_ino14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_ino14, align 8
  br label %cond.end16.thread

cond.end16.thread:                                ; preds = %cond.true12, %land.lhs.true.cond.end16.thread_crit_edge
  %cond17.ph = phi i32 [ 0, %land.lhs.true.cond.end16.thread_crit_edge ], [ %14, %cond.true12 ]
  %ino46 = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call3, i32 0, i32 4
  %15 = ptrtoint ptr %ino46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond17.ph, ptr %ino46, align 4
  br label %cond.end22

cond.true19:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %ino = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ino, align 4
  %17 = ptrtoint ptr %de to i32
  %phi.cast = trunc i32 %17 to i16
  br label %cond.end22

cond.end22:                                       ; preds = %cond.true19, %cond.end16.thread
  %cond23 = phi i16 [ %phi.cast, %cond.true19 ], [ 0, %cond.end16.thread ]
  %error = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %cond23, ptr %error, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end22, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_lookup(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %dir, ptr noundef %de) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_ino, align 8
  %dino = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %dino to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dino, align 4
  %cmp.i = icmp ugt ptr %de, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cond.true31, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %cond.end
  %d_inode.i65 = getelementptr inbounds %struct.dentry, ptr %de, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i65, align 8
  %tobool23.not = icmp eq ptr %36, null
  br i1 %tobool23.not, label %land.lhs.true21.cond.end28.thread_crit_edge, label %cond.true24

land.lhs.true21.cond.end28.thread_crit_edge:      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end28.thread

cond.true24:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino26 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino26, align 8
  br label %cond.end28.thread

cond.end28.thread:                                ; preds = %cond.true24, %land.lhs.true21.cond.end28.thread_crit_edge
  %cond29.ph = phi i32 [ 0, %land.lhs.true21.cond.end28.thread_crit_edge ], [ %38, %cond.true24 ]
  %ino69 = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call13, i32 0, i32 4
  %39 = ptrtoint ptr %ino69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond29.ph, ptr %ino69, align 4
  br label %cond.end34

cond.true31:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %ino = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ino, align 4
  %41 = ptrtoint ptr %de to i32
  %phi.cast = trunc i32 %41 to i16
  br label %cond.end34

cond.end34:                                       ; preds = %cond.true31, %cond.end28.thread
  %cond35 = phi i16 [ %phi.cast, %cond.true31 ], [ 0, %cond.end28.thread ]
  %error = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %cond35, ptr %error, align 4
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end34, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_mkdir(ptr noundef %__data, ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %subdir) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %dir7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mkdir, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dir7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dir7, align 4
  %d_inode.i20 = getelementptr inbounds %struct.dentry, ptr %subdir, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i20, align 8
  %i_ino9 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino9, align 8
  %subdir10 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mkdir, ptr %call3, i32 0, i32 2
  %12 = ptrtoint ptr %subdir10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %subdir10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_mkdir(ptr noundef %__data, ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %subdir) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino, align 8
  %dir18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mkdir, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dir18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dir18, align 4
  %d_inode.i43 = getelementptr inbounds %struct.dentry, ptr %subdir, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i43, align 8
  %i_ino20 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino20, align 8
  %subdir21 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mkdir, ptr %call13, i32 0, i32 2
  %36 = ptrtoint ptr %subdir21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %subdir21, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_tmpfile(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %obj6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_tmpfile, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %obj6, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %backer7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_tmpfile, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %backer7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %backer7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_tmpfile(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %obj17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_tmpfile, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %obj17, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %backer18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_tmpfile, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %backer18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %backer18, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_link(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %obj6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_link, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %obj6, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %backer7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_link, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %backer7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %backer7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_link(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %obj17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_link, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %obj17, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %backer18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_link, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %backer18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %backer18, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_unlink(ptr noundef %__data, ptr noundef readonly %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ -1, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %ino8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %ino8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ino, ptr %ino8, align 4
  %why9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %why9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %why, ptr %why9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_unlink(ptr noundef %__data, ptr noundef readonly %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ -1, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %ino19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %ino19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ino, ptr %ino19, align 4
  %why20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %why20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %why, ptr %why20, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_rename(ptr noundef %__data, ptr noundef readonly %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ -1, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %ino8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %ino8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ino, ptr %ino8, align 4
  %why9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %why9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %why, ptr %why9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_rename(ptr noundef %__data, ptr noundef readonly %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ -1, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %ino19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %ino19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ino, ptr %ino19, align 4
  %why20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %why20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %why, ptr %why20, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_coherency(ptr noundef %__data, ptr nocapture noundef readonly %obj, i32 noundef %ino, i32 noundef %content, i32 noundef %why) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %obj6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %obj6, align 8
  %why7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %why7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %why, ptr %why7, align 4
  %content8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %content8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %content, ptr %content8, align 8
  %conv = zext i32 %ino to i64
  %ino9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call3, i32 0, i32 4
  %8 = ptrtoint ptr %ino9 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %ino9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_coherency(ptr noundef %__data, ptr nocapture noundef readonly %obj, i32 noundef %ino, i32 noundef %content, i32 noundef %why) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %obj17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %obj17, align 8
  %why18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %why18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %why, ptr %why18, align 4
  %content19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %content19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %content, ptr %content19, align 8
  %conv = zext i32 %ino to i64
  %ino20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %call13, i32 0, i32 4
  %32 = ptrtoint ptr %ino20 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %ino20, align 8
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_vol_coherency(ptr noundef %__data, ptr nocapture noundef readonly %volume, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vcookie = getelementptr inbounds %struct.cachefiles_volume, ptr %volume, i32 0, i32 2
  %3 = ptrtoint ptr %vcookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vcookie, align 4
  %debug_id = getelementptr inbounds %struct.fscache_volume, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %vol = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %vol to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vol, align 8
  %why6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %why6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %why, ptr %why6, align 4
  %conv = zext i32 %ino to i64
  %ino7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %ino7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %ino7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_vol_coherency(ptr noundef %__data, ptr nocapture noundef readonly %volume, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %vcookie = getelementptr inbounds %struct.cachefiles_volume, ptr %volume, i32 0, i32 2
  %27 = ptrtoint ptr %vcookie to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vcookie, align 4
  %debug_id = getelementptr inbounds %struct.fscache_volume, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_id, align 4
  %vol = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %vol to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %vol, align 8
  %why17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %why17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %why, ptr %why17, align 4
  %conv = zext i32 %ino to i64
  %ino18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %ino18 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv, ptr %ino18, align 8
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_prep_read(ptr noundef %__data, ptr nocapture noundef readonly %sreq, i8 noundef signext %source, i32 noundef %why, i32 noundef %cache_inode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sreq, align 8
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %rreq6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %rreq6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rreq6, align 8
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 7
  %8 = ptrtoint ptr %debug_index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %debug_index, align 2
  %index = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %index, align 4
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %conv = trunc i32 %12 to i16
  %flags7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %flags7, align 2
  %source8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %source8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %source, ptr %source8, align 8
  %why9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %why9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %why, ptr %why9, align 4
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 3
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 8
  %len10 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 6
  %18 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %len10, align 8
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 2
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start, align 8
  %start11 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %start11 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %start11, align 8
  %22 = load ptr, ptr %sreq, align 8
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inode, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  %netfs_inode = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 8
  %27 = ptrtoint ptr %netfs_inode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %netfs_inode, align 8
  %cache_inode13 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call3, i32 0, i32 9
  %28 = ptrtoint ptr %cache_inode13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cache_inode, ptr %cache_inode13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_prep_read(ptr noundef %__data, ptr nocapture noundef readonly %sreq, i8 noundef signext %source, i32 noundef %why, i32 noundef %cache_inode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sreq, align 8
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_id, align 4
  %rreq17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %rreq17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rreq17, align 8
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 7
  %32 = ptrtoint ptr %debug_index to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %debug_index, align 2
  %index = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %index, align 4
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 9
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %conv = trunc i32 %36 to i16
  %flags18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv, ptr %flags18, align 2
  %source19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %source19 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %source, ptr %source19, align 8
  %why20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 5
  %39 = ptrtoint ptr %why20 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %why, ptr %why20, align 4
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 3
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 8
  %len21 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 6
  %42 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %len21, align 8
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 2
  %43 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %start, align 8
  %start22 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 7
  %45 = ptrtoint ptr %start22 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %start22, align 8
  %46 = load ptr, ptr %sreq, align 8
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %inode, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_ino, align 8
  %netfs_inode = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 8
  %51 = ptrtoint ptr %netfs_inode to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %netfs_inode, align 8
  %cache_inode24 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %call13, i32 0, i32 9
  %52 = ptrtoint ptr %cache_inode24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cache_inode, ptr %cache_inode24, align 4
  %53 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rctx, align 4
  %55 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %54, ptr noundef %__data, i64 noundef 1, ptr noundef %56, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_read(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %obj6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %obj6, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %backer7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %backer7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %backer7, align 4
  %start8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %start8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %start, ptr %start8, align 8
  %len9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %len9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_read(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %obj17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %obj17, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %backer18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %backer18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %backer18, align 4
  %start19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %start19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %start, ptr %start19, align 8
  %len20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %len, ptr %len20, align 8
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_write(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %obj6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %obj6, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %backer7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %backer7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %backer7, align 4
  %start8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %start8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %start, ptr %start8, align 8
  %len9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %len9, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_write(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %obj17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %obj17, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %backer18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %backer18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %backer18, align 4
  %start19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %start19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %start, ptr %start19, align 8
  %len20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %len, ptr %len20, align 8
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_trunc(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer, i64 noundef %from, i64 noundef %to, i32 noundef %why) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %obj6 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %obj6, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %backer7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %backer7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %backer7, align 4
  %from8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %from8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %from, ptr %from8, align 8
  %to9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call3, i32 0, i32 5
  %10 = ptrtoint ptr %to9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %to, ptr %to9, align 8
  %why10 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %why10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %why, ptr %why10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_trunc(ptr noundef %__data, ptr nocapture noundef readonly %obj, ptr nocapture noundef readonly %backer, i64 noundef %from, i64 noundef %to, i32 noundef %why) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %obj17 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %obj17, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %backer18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %backer18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %backer18, align 4
  %from19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %from19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %from, ptr %from19, align 8
  %to20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call13, i32 0, i32 5
  %34 = ptrtoint ptr %to20 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %to, ptr %to20, align 8
  %why21 = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %why21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %why, ptr %why21, align 8
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_mark_active(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_active, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %inode8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_active, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %inode8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %inode8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_mark_active(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_active, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %inode19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_active, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %inode19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %inode19, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_mark_failed(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_failed, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %inode8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_failed, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %inode8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %inode8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_mark_failed(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_failed, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %inode19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_failed, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %inode19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %inode19, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_mark_inactive(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_inactive, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %inode8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_inactive, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %inode8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %inode8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_mark_inactive(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_inactive, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %inode19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_inactive, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %inode19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %inode19, align 4
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_vfs_error(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %backer8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %backer8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %backer8, align 4
  %conv = trunc i32 %error to i16
  %error9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %error9 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %error9, align 4
  %where10 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %where10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %where, ptr %where10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_vfs_error(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %backer19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %backer19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %backer19, align 4
  %conv = trunc i32 %error to i16
  %error20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %error20 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %error20, align 4
  %where21 = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %where21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %where, ptr %where21, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_cachefiles_io_error(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #7
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !599

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !600

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #7
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %obj, null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %obj7 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %obj7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %obj7, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  %backer8 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %backer8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %backer8, align 4
  %conv = trunc i32 %error to i16
  %error9 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %error9 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %error9, align 4
  %where10 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %where10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %where, ptr %where10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_cachefiles_io_error(ptr noundef %__data, ptr noundef readonly %obj, ptr nocapture noundef readonly %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #7
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #7
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !601
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !589) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #7
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !589) #7
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %tobool17.not = icmp eq ptr %obj, null
  br i1 %tobool17.not, label %if.end16.cond.end_crit_edge, label %cond.true

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %debug_id = getelementptr inbounds %struct.cachefiles_object, ptr %obj, i32 0, i32 5
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end16.cond.end_crit_edge
  %cond = phi i32 [ %28, %cond.true ], [ 0, %if.end16.cond.end_crit_edge ]
  %obj18 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %obj18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %obj18, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %backer, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  %backer19 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %backer19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %backer19, align 4
  %conv = trunc i32 %error to i16
  %error20 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %error20 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv, ptr %error20, align 4
  %where21 = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %where21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %where, ptr %where21, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_ref(ptr noundef %__data, i32 noundef %object_debug_id, i32 noundef %cookie_debug_id, i32 noundef %usage, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %object_debug_id to i64
  %conv4 = zext i32 %cookie_debug_id to i64
  %conv8 = zext i32 %usage to i64
  %conv12 = zext i32 %why to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_lookup(ptr noundef %__data, ptr noundef %obj, ptr noundef %dir, ptr noundef %de) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %dir to i32
  %conv4 = zext i32 %1 to i64
  %2 = ptrtoint ptr %de to i32
  %conv8 = zext i32 %2 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_mkdir(ptr noundef %__data, ptr noundef %dir, ptr noundef %subdir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %dir to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %subdir to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_tmpfile(ptr noundef %__data, ptr noundef %obj, ptr noundef %backer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %backer to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_link(ptr noundef %__data, ptr noundef %obj, ptr noundef %backer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %backer to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_unlink(ptr noundef %__data, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ino to i64
  %conv8 = zext i32 %why to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_rename(ptr noundef %__data, ptr noundef %obj, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ino to i64
  %conv8 = zext i32 %why to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_coherency(ptr noundef %__data, ptr noundef %obj, i32 noundef %ino, i32 noundef %content, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ino to i64
  %conv8 = zext i32 %content to i64
  %conv12 = zext i32 %why to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_vol_coherency(ptr noundef %__data, ptr noundef %volume, i32 noundef %ino, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %volume to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %ino to i64
  %conv8 = zext i32 %why to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_prep_read(ptr noundef %__data, ptr noundef %sreq, i8 noundef signext %source, i32 noundef %why, i32 noundef %cache_inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %sreq to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i8 %source to i64
  %conv8 = zext i32 %why to i64
  %conv12 = zext i32 %cache_inode to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_read(ptr noundef %__data, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %backer to i32
  %conv4 = zext i32 %1 to i64
  %conv11 = zext i32 %len to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %start, i64 noundef %conv11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_write(ptr noundef %__data, ptr noundef %obj, ptr noundef %backer, i64 noundef %start, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %backer to i32
  %conv4 = zext i32 %1 to i64
  %conv11 = zext i32 %len to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %start, i64 noundef %conv11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_trunc(ptr noundef %__data, ptr noundef %obj, ptr noundef %backer, i64 noundef %from, i64 noundef %to, i32 noundef %why) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %backer to i32
  %conv4 = zext i32 %1 to i64
  %conv14 = zext i32 %why to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %from, i64 noundef %to, i64 noundef %conv14) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_mark_active(ptr noundef %__data, ptr noundef %obj, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %inode to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_mark_failed(ptr noundef %__data, ptr noundef %obj, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %inode to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_mark_inactive(ptr noundef %__data, ptr noundef %obj, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %inode to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_vfs_error(ptr noundef %__data, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %backer to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %error to i64
  %conv12 = zext i32 %where to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_cachefiles_io_error(ptr noundef %__data, ptr noundef %obj, ptr noundef %backer, i32 noundef %error, i32 noundef %where) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %obj to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %backer to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %error to i64
  %conv12 = zext i32 %where to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cachefiles_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cachefiles_register_error_injection() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end16_crit_edge, label %if.end

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @misc_register(ptr noundef nonnull @cachefiles_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.error_dev_crit_edge, label %if.end4

if.end.error_dev_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_dev

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.187, i32 noundef 84, i32 noundef 0, i32 noundef 8192, ptr noundef null) #7
  store ptr %call5, ptr @cachefiles_object_jar, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end, label %do.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #10
  tail call void @misc_deregister(ptr noundef nonnull @cachefiles_dev) #7
  br label %error_dev

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191) #10
  br label %cleanup

error_dev:                                        ; preds = %do.end, %if.end.error_dev_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.error_dev_crit_edge ], [ -12, %do.end ]
  tail call void @cachefiles_unregister_error_injection() #7
  br label %do.end16

do.end16:                                         ; preds = %error_dev, %entry.do.end16_crit_edge
  %ret.1 = phi i32 [ %call, %entry.do.end16_crit_edge ], [ %ret.0, %error_dev ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %ret.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end11
  %retval.0 = phi i32 [ %ret.1, %do.end16 ], [ 0, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cachefiles_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #10
  %0 = load ptr, ptr @cachefiles_object_jar, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  tail call void @misc_deregister(ptr noundef nonnull @cachefiles_dev) #7
  tail call void @cachefiles_unregister_error_injection() #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cachefiles_unregister_error_injection() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_ref(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %cookie = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %obj, align 4
  %usage = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage, align 4
  %why = getelementptr inbounds %struct.trace_event_raw_cachefiles_ref, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %why, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %9, ptr noundef nonnull @trace_raw_output_cachefiles_ref.symbols) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.73, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %call1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_lookup(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %dino = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dino, align 4
  %ino = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ino, align 4
  %error = getelementptr inbounds %struct.trace_event_raw_cachefiles_lookup, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error, align 4
  %conv = sext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.91, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %conv) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_mkdir(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dir = getelementptr inbounds %struct.trace_event_raw_cachefiles_mkdir, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %subdir = getelementptr inbounds %struct.trace_event_raw_cachefiles_mkdir, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %subdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subdir, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.94, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_tmpfile(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_tmpfile, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %backer = getelementptr inbounds %struct.trace_event_raw_cachefiles_tmpfile, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %backer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backer, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.96, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_link(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_link, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %backer = getelementptr inbounds %struct.trace_event_raw_cachefiles_link, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %backer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backer, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.96, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_unlink(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %ino = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %why = getelementptr inbounds %struct.trace_event_raw_cachefiles_unlink, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %why, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cachefiles_unlink.symbols) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.98, i32 noundef %3, i32 noundef %5, ptr noundef %call1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_rename(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %ino = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ino, align 4
  %why = getelementptr inbounds %struct.trace_event_raw_cachefiles_rename, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %why, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cachefiles_rename.symbols) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.98, i32 noundef %3, i32 noundef %5, ptr noundef %call1) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_coherency(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 8
  %why = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %why, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_cachefiles_coherency.symbols) #7
  %ino = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ino, align 8
  %content = getelementptr inbounds %struct.trace_event_raw_cachefiles_coherency, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %content to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %content, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.110, i32 noundef %3, ptr noundef %call1, i64 noundef %7, i32 noundef %9) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_vol_coherency(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vol = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vol, align 8
  %why = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %why, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_cachefiles_vol_coherency.symbols) #7
  %ino = getelementptr inbounds %struct.trace_event_raw_cachefiles_vol_coherency, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ino, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.128, i32 noundef %3, ptr noundef %call1, i64 noundef %7) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_prep_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %rreq = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rreq, align 8
  %index = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv = zext i16 %5 to i32
  %source = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %source, align 8
  %conv1 = sext i8 %7 to i32
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %conv1, ptr noundef nonnull @trace_raw_output_cachefiles_prep_read.symbols) #7
  %why = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %why, align 4
  %call4 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %9, ptr noundef nonnull @trace_raw_output_cachefiles_prep_read.symbols.147) #7
  %flags5 = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags5, align 2
  %conv6 = zext i16 %11 to i32
  %start = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 8
  %netfs_inode = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %netfs_inode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %netfs_inode, align 8
  %cache_inode = getelementptr inbounds %struct.trace_event_raw_cachefiles_prep_read, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %cache_inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cache_inode, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.142, i32 noundef %3, i32 noundef %conv, ptr noundef %call2, ptr noundef %call4, i32 noundef %conv6, i64 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #7
  %call7 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 8
  %backer = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %backer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backer, align 4
  %start = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.trace_event_raw_cachefiles_read, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.156, i32 noundef %3, i32 noundef %5, i64 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_write(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 8
  %backer = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %backer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backer, align 4
  %start = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.trace_event_raw_cachefiles_write, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.156, i32 noundef %3, i32 noundef %5, i64 noundef %7, i32 noundef %9) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_trunc(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 8
  %backer = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %backer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backer, align 4
  %why = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %why to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %why, align 8
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cachefiles_trunc.symbols) #7
  %from = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %from to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %from, align 8
  %to = getelementptr inbounds %struct.trace_event_raw_cachefiles_trunc, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %to to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %to, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.160, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i64 noundef %9, i64 noundef %11) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_mark_active(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_active, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %inode = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_active, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inode, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.166, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_mark_failed(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_failed, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %inode = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_failed, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inode, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.166, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_mark_inactive(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_inactive, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %inode = getelementptr inbounds %struct.trace_event_raw_cachefiles_mark_inactive, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inode, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.166, i32 noundef %3, i32 noundef %5) #7
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_vfs_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %backer = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %backer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backer, align 4
  %where = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %where to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %where, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cachefiles_vfs_error.symbols) #7
  %error = getelementptr inbounds %struct.trace_event_raw_cachefiles_vfs_error, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error, align 4
  %conv = sext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.169, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %conv) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_cachefiles_io_error(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %obj = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %obj, align 4
  %backer = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %backer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %backer, align 4
  %where = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %where to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %where, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_cachefiles_io_error.symbols) #7
  %error = getelementptr inbounds %struct.trace_event_raw_cachefiles_io_error, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error, align 4
  %conv = sext i16 %9 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.169, i32 noundef %3, i32 noundef %5, ptr noundef %call1, i32 noundef %conv) #7
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cachefiles_register_error_injection() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 282)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 282)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !182, !183, !184, !185, !186, !187, !188, !189, !190, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !341, !342, !344, !346, !348, !350, !351, !353, !355, !356, !357, !358, !359, !361, !363, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !572, !574, !575, !576, !577, !579, !580, !581, !583, !584, !585, !587}
!llvm.named.register.sp = !{!589}
!llvm.module.flags = !{!590, !591, !592, !593, !594, !595, !596, !597}
!llvm.ident = !{!598}

!0 = !{ptr @__tracepoint_cachefiles_ref, !1, !"__tracepoint_cachefiles_ref", i1 false, i1 false}
!1 = !{!"../include/trace/events/cachefiles.h", i32 208, i32 1}
!2 = !{ptr @__tracepoint_ptr_cachefiles_ref, !1, !"__tracepoint_ptr_cachefiles_ref", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_cachefiles_ref, !1, !"__SCK__tp_func_cachefiles_ref", i1 false, i1 false}
!4 = !{ptr @__tracepoint_cachefiles_lookup, !5, !"__tracepoint_cachefiles_lookup", i1 false, i1 false}
!5 = !{!"../include/trace/events/cachefiles.h", i32 236, i32 1}
!6 = !{ptr @__tracepoint_ptr_cachefiles_lookup, !5, !"__tracepoint_ptr_cachefiles_lookup", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_cachefiles_lookup, !5, !"__SCK__tp_func_cachefiles_lookup", i1 false, i1 false}
!8 = !{ptr @__tracepoint_cachefiles_mkdir, !9, !"__tracepoint_cachefiles_mkdir", i1 false, i1 false}
!9 = !{!"../include/trace/events/cachefiles.h", i32 262, i32 1}
!10 = !{ptr @__tracepoint_ptr_cachefiles_mkdir, !9, !"__tracepoint_ptr_cachefiles_mkdir", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_cachefiles_mkdir, !9, !"__SCK__tp_func_cachefiles_mkdir", i1 false, i1 false}
!12 = !{ptr @__tracepoint_cachefiles_tmpfile, !13, !"__tracepoint_cachefiles_tmpfile", i1 false, i1 false}
!13 = !{!"../include/trace/events/cachefiles.h", i32 282, i32 1}
!14 = !{ptr @__tracepoint_ptr_cachefiles_tmpfile, !13, !"__tracepoint_ptr_cachefiles_tmpfile", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_cachefiles_tmpfile, !13, !"__SCK__tp_func_cachefiles_tmpfile", i1 false, i1 false}
!16 = !{ptr @__tracepoint_cachefiles_link, !17, !"__tracepoint_cachefiles_link", i1 false, i1 false}
!17 = !{!"../include/trace/events/cachefiles.h", i32 302, i32 1}
!18 = !{ptr @__tracepoint_ptr_cachefiles_link, !17, !"__tracepoint_ptr_cachefiles_link", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_cachefiles_link, !17, !"__SCK__tp_func_cachefiles_link", i1 false, i1 false}
!20 = !{ptr @__tracepoint_cachefiles_unlink, !21, !"__tracepoint_cachefiles_unlink", i1 false, i1 false}
!21 = !{!"../include/trace/events/cachefiles.h", i32 322, i32 1}
!22 = !{ptr @__tracepoint_ptr_cachefiles_unlink, !21, !"__tracepoint_ptr_cachefiles_unlink", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_cachefiles_unlink, !21, !"__SCK__tp_func_cachefiles_unlink", i1 false, i1 false}
!24 = !{ptr @__tracepoint_cachefiles_rename, !25, !"__tracepoint_cachefiles_rename", i1 false, i1 false}
!25 = !{!"../include/trace/events/cachefiles.h", i32 347, i32 1}
!26 = !{ptr @__tracepoint_ptr_cachefiles_rename, !25, !"__tracepoint_ptr_cachefiles_rename", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_cachefiles_rename, !25, !"__SCK__tp_func_cachefiles_rename", i1 false, i1 false}
!28 = !{ptr @__tracepoint_cachefiles_coherency, !29, !"__tracepoint_cachefiles_coherency", i1 false, i1 false}
!29 = !{!"../include/trace/events/cachefiles.h", i32 372, i32 1}
!30 = !{ptr @__tracepoint_ptr_cachefiles_coherency, !29, !"__tracepoint_ptr_cachefiles_coherency", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_cachefiles_coherency, !29, !"__SCK__tp_func_cachefiles_coherency", i1 false, i1 false}
!32 = !{ptr @__tracepoint_cachefiles_vol_coherency, !33, !"__tracepoint_cachefiles_vol_coherency", i1 false, i1 false}
!33 = !{!"../include/trace/events/cachefiles.h", i32 402, i32 1}
!34 = !{ptr @__tracepoint_ptr_cachefiles_vol_coherency, !33, !"__tracepoint_ptr_cachefiles_vol_coherency", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_cachefiles_vol_coherency, !33, !"__SCK__tp_func_cachefiles_vol_coherency", i1 false, i1 false}
!36 = !{ptr @__tracepoint_cachefiles_prep_read, !37, !"__tracepoint_cachefiles_prep_read", i1 false, i1 false}
!37 = !{!"../include/trace/events/cachefiles.h", i32 428, i32 1}
!38 = !{ptr @__tracepoint_ptr_cachefiles_prep_read, !37, !"__tracepoint_ptr_cachefiles_prep_read", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_cachefiles_prep_read, !37, !"__SCK__tp_func_cachefiles_prep_read", i1 false, i1 false}
!40 = !{ptr @__tracepoint_cachefiles_read, !41, !"__tracepoint_cachefiles_read", i1 false, i1 false}
!41 = !{!"../include/trace/events/cachefiles.h", i32 469, i32 1}
!42 = !{ptr @__tracepoint_ptr_cachefiles_read, !41, !"__tracepoint_ptr_cachefiles_read", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_cachefiles_read, !41, !"__SCK__tp_func_cachefiles_read", i1 false, i1 false}
!44 = !{ptr @__tracepoint_cachefiles_write, !45, !"__tracepoint_cachefiles_write", i1 false, i1 false}
!45 = !{!"../include/trace/events/cachefiles.h", i32 498, i32 1}
!46 = !{ptr @__tracepoint_ptr_cachefiles_write, !45, !"__tracepoint_ptr_cachefiles_write", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_cachefiles_write, !45, !"__SCK__tp_func_cachefiles_write", i1 false, i1 false}
!48 = !{ptr @__tracepoint_cachefiles_trunc, !49, !"__tracepoint_cachefiles_trunc", i1 false, i1 false}
!49 = !{!"../include/trace/events/cachefiles.h", i32 527, i32 1}
!50 = !{ptr @__tracepoint_ptr_cachefiles_trunc, !49, !"__tracepoint_ptr_cachefiles_trunc", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_cachefiles_trunc, !49, !"__SCK__tp_func_cachefiles_trunc", i1 false, i1 false}
!52 = !{ptr @__tracepoint_cachefiles_mark_active, !53, !"__tracepoint_cachefiles_mark_active", i1 false, i1 false}
!53 = !{!"../include/trace/events/cachefiles.h", i32 557, i32 1}
!54 = !{ptr @__tracepoint_ptr_cachefiles_mark_active, !53, !"__tracepoint_ptr_cachefiles_mark_active", i1 false, i1 false}
!55 = !{ptr @__SCK__tp_func_cachefiles_mark_active, !53, !"__SCK__tp_func_cachefiles_mark_active", i1 false, i1 false}
!56 = !{ptr @__tracepoint_cachefiles_mark_failed, !57, !"__tracepoint_cachefiles_mark_failed", i1 false, i1 false}
!57 = !{!"../include/trace/events/cachefiles.h", i32 578, i32 1}
!58 = !{ptr @__tracepoint_ptr_cachefiles_mark_failed, !57, !"__tracepoint_ptr_cachefiles_mark_failed", i1 false, i1 false}
!59 = !{ptr @__SCK__tp_func_cachefiles_mark_failed, !57, !"__SCK__tp_func_cachefiles_mark_failed", i1 false, i1 false}
!60 = !{ptr @__tracepoint_cachefiles_mark_inactive, !61, !"__tracepoint_cachefiles_mark_inactive", i1 false, i1 false}
!61 = !{!"../include/trace/events/cachefiles.h", i32 599, i32 1}
!62 = !{ptr @__tracepoint_ptr_cachefiles_mark_inactive, !61, !"__tracepoint_ptr_cachefiles_mark_inactive", i1 false, i1 false}
!63 = !{ptr @__SCK__tp_func_cachefiles_mark_inactive, !61, !"__SCK__tp_func_cachefiles_mark_inactive", i1 false, i1 false}
!64 = !{ptr @__tracepoint_cachefiles_vfs_error, !65, !"__tracepoint_cachefiles_vfs_error", i1 false, i1 false}
!65 = !{!"../include/trace/events/cachefiles.h", i32 620, i32 1}
!66 = !{ptr @__tracepoint_ptr_cachefiles_vfs_error, !65, !"__tracepoint_ptr_cachefiles_vfs_error", i1 false, i1 false}
!67 = !{ptr @__SCK__tp_func_cachefiles_vfs_error, !65, !"__SCK__tp_func_cachefiles_vfs_error", i1 false, i1 false}
!68 = !{ptr @__tracepoint_cachefiles_io_error, !69, !"__tracepoint_cachefiles_io_error", i1 false, i1 false}
!69 = !{!"../include/trace/events/cachefiles.h", i32 647, i32 1}
!70 = !{ptr @__tracepoint_ptr_cachefiles_io_error, !69, !"__tracepoint_ptr_cachefiles_io_error", i1 false, i1 false}
!71 = !{ptr @__SCK__tp_func_cachefiles_io_error, !69, !"__SCK__tp_func_cachefiles_io_error", i1 false, i1 false}
!72 = !{ptr @.str, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/trace/events/cachefiles.h", i32 191, i32 1}
!74 = !{ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE, !73, !"__TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE", i1 false, i1 false}
!75 = !{ptr @TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE, !73, !"TRACE_SYSTEM_FSCACHE_OBJECT_IS_STALE", i1 false, i1 false}
!76 = !{ptr @.str.1, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD, !73, !"__TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD", i1 false, i1 false}
!78 = !{ptr @TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD, !73, !"TRACE_SYSTEM_FSCACHE_OBJECT_IS_WEIRD", i1 false, i1 false}
!79 = !{ptr @.str.2, !73, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED, !73, !"__TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED", i1 false, i1 false}
!81 = !{ptr @TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED, !73, !"TRACE_SYSTEM_FSCACHE_OBJECT_INVALIDATED", i1 false, i1 false}
!82 = !{ptr @.str.3, !73, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE, !73, !"__TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE", i1 false, i1 false}
!84 = !{ptr @TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE, !73, !"TRACE_SYSTEM_FSCACHE_OBJECT_NO_SPACE", i1 false, i1 false}
!85 = !{ptr @.str.4, !73, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED, !73, !"__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED", i1 false, i1 false}
!87 = !{ptr @TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED, !73, !"TRACE_SYSTEM_FSCACHE_OBJECT_WAS_RETIRED", i1 false, i1 false}
!88 = !{ptr @.str.5, !73, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED, !73, !"__TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED", i1 false, i1 false}
!90 = !{ptr @TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED, !73, !"TRACE_SYSTEM_FSCACHE_OBJECT_WAS_CULLED", i1 false, i1 false}
!91 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD, !73, !"__TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD", i1 false, i1 false}
!93 = !{ptr @TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD, !73, !"TRACE_SYSTEM_FSCACHE_VOLUME_IS_WEIRD", i1 false, i1 false}
!94 = !{ptr @.str.7, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/trace/events/cachefiles.h", i32 192, i32 1}
!96 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_get_ioreq, !95, !"__TRACE_SYSTEM_cachefiles_obj_get_ioreq", i1 false, i1 false}
!97 = !{ptr @TRACE_SYSTEM_cachefiles_obj_get_ioreq, !95, !"TRACE_SYSTEM_cachefiles_obj_get_ioreq", i1 false, i1 false}
!98 = !{ptr @.str.8, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_new, !95, !"__TRACE_SYSTEM_cachefiles_obj_new", i1 false, i1 false}
!100 = !{ptr @TRACE_SYSTEM_cachefiles_obj_new, !95, !"TRACE_SYSTEM_cachefiles_obj_new", i1 false, i1 false}
!101 = !{ptr @.str.9, !95, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_put_alloc_fail, !95, !"__TRACE_SYSTEM_cachefiles_obj_put_alloc_fail", i1 false, i1 false}
!103 = !{ptr @TRACE_SYSTEM_cachefiles_obj_put_alloc_fail, !95, !"TRACE_SYSTEM_cachefiles_obj_put_alloc_fail", i1 false, i1 false}
!104 = !{ptr @.str.10, !95, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_put_detach, !95, !"__TRACE_SYSTEM_cachefiles_obj_put_detach", i1 false, i1 false}
!106 = !{ptr @TRACE_SYSTEM_cachefiles_obj_put_detach, !95, !"TRACE_SYSTEM_cachefiles_obj_put_detach", i1 false, i1 false}
!107 = !{ptr @.str.11, !95, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_put_ioreq, !95, !"__TRACE_SYSTEM_cachefiles_obj_put_ioreq", i1 false, i1 false}
!109 = !{ptr @TRACE_SYSTEM_cachefiles_obj_put_ioreq, !95, !"TRACE_SYSTEM_cachefiles_obj_put_ioreq", i1 false, i1 false}
!110 = !{ptr @.str.12, !95, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_commit, !95, !"__TRACE_SYSTEM_cachefiles_obj_see_clean_commit", i1 false, i1 false}
!112 = !{ptr @TRACE_SYSTEM_cachefiles_obj_see_clean_commit, !95, !"TRACE_SYSTEM_cachefiles_obj_see_clean_commit", i1 false, i1 false}
!113 = !{ptr @.str.13, !95, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_delete, !95, !"__TRACE_SYSTEM_cachefiles_obj_see_clean_delete", i1 false, i1 false}
!115 = !{ptr @TRACE_SYSTEM_cachefiles_obj_see_clean_delete, !95, !"TRACE_SYSTEM_cachefiles_obj_see_clean_delete", i1 false, i1 false}
!116 = !{ptr @.str.14, !95, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp, !95, !"__TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp", i1 false, i1 false}
!118 = !{ptr @TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp, !95, !"TRACE_SYSTEM_cachefiles_obj_see_clean_drop_tmp", i1 false, i1 false}
!119 = !{ptr @.str.15, !95, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie, !95, !"__TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie", i1 false, i1 false}
!121 = !{ptr @TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie, !95, !"TRACE_SYSTEM_cachefiles_obj_see_lookup_cookie", i1 false, i1 false}
!122 = !{ptr @.str.16, !95, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_see_lookup_failed, !95, !"__TRACE_SYSTEM_cachefiles_obj_see_lookup_failed", i1 false, i1 false}
!124 = !{ptr @TRACE_SYSTEM_cachefiles_obj_see_lookup_failed, !95, !"TRACE_SYSTEM_cachefiles_obj_see_lookup_failed", i1 false, i1 false}
!125 = !{ptr @.str.17, !95, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie, !95, !"__TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie", i1 false, i1 false}
!127 = !{ptr @TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie, !95, !"TRACE_SYSTEM_cachefiles_obj_see_withdraw_cookie", i1 false, i1 false}
!128 = !{ptr @.str.18, !95, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__TRACE_SYSTEM_cachefiles_obj_see_withdrawal, !95, !"__TRACE_SYSTEM_cachefiles_obj_see_withdrawal", i1 false, i1 false}
!130 = !{ptr @TRACE_SYSTEM_cachefiles_obj_see_withdrawal, !95, !"TRACE_SYSTEM_cachefiles_obj_see_withdrawal", i1 false, i1 false}
!131 = !{ptr @.str.19, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/trace/events/cachefiles.h", i32 193, i32 1}
!133 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_aux, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_aux", i1 false, i1 false}
!134 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_aux, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_aux", i1 false, i1 false}
!135 = !{ptr @.str.20, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_content, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_content", i1 false, i1 false}
!137 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_content, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_content", i1 false, i1 false}
!138 = !{ptr @.str.21, !132, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_dirty, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_dirty", i1 false, i1 false}
!140 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_dirty, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_dirty", i1 false, i1 false}
!141 = !{ptr @.str.22, !132, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_len, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_len", i1 false, i1 false}
!143 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_len, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_len", i1 false, i1 false}
!144 = !{ptr @.str.23, !132, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_objsize, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_objsize", i1 false, i1 false}
!146 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_objsize, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_objsize", i1 false, i1 false}
!147 = !{ptr @.str.24, !132, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_ok, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_ok", i1 false, i1 false}
!149 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_ok, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_ok", i1 false, i1 false}
!150 = !{ptr @.str.25, !132, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_type, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_type", i1 false, i1 false}
!152 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_type, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_type", i1 false, i1 false}
!153 = !{ptr @.str.26, !132, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_check_xattr, !132, !"__TRACE_SYSTEM_cachefiles_coherency_check_xattr", i1 false, i1 false}
!155 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_check_xattr, !132, !"TRACE_SYSTEM_cachefiles_coherency_check_xattr", i1 false, i1 false}
!156 = !{ptr @.str.27, !132, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_set_fail, !132, !"__TRACE_SYSTEM_cachefiles_coherency_set_fail", i1 false, i1 false}
!158 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_set_fail, !132, !"TRACE_SYSTEM_cachefiles_coherency_set_fail", i1 false, i1 false}
!159 = !{ptr @.str.28, !132, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_set_ok, !132, !"__TRACE_SYSTEM_cachefiles_coherency_set_ok", i1 false, i1 false}
!161 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_set_ok, !132, !"TRACE_SYSTEM_cachefiles_coherency_set_ok", i1 false, i1 false}
!162 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp, !132, !"__TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp", i1 false, i1 false}
!164 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp, !132, !"TRACE_SYSTEM_cachefiles_coherency_vol_check_cmp", i1 false, i1 false}
!165 = !{ptr @.str.30, !132, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_ok, !132, !"__TRACE_SYSTEM_cachefiles_coherency_vol_check_ok", i1 false, i1 false}
!167 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_ok, !132, !"TRACE_SYSTEM_cachefiles_coherency_vol_check_ok", i1 false, i1 false}
!168 = !{ptr @.str.31, !132, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_resv, !132, !"__TRACE_SYSTEM_cachefiles_coherency_vol_check_resv", i1 false, i1 false}
!170 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_resv, !132, !"TRACE_SYSTEM_cachefiles_coherency_vol_check_resv", i1 false, i1 false}
!171 = !{ptr @.str.32, !132, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr, !132, !"__TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr", i1 false, i1 false}
!173 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr, !132, !"TRACE_SYSTEM_cachefiles_coherency_vol_check_xattr", i1 false, i1 false}
!174 = !{ptr @.str.33, !132, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_set_fail, !132, !"__TRACE_SYSTEM_cachefiles_coherency_vol_set_fail", i1 false, i1 false}
!176 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_vol_set_fail, !132, !"TRACE_SYSTEM_cachefiles_coherency_vol_set_fail", i1 false, i1 false}
!177 = !{ptr @.str.34, !132, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @__TRACE_SYSTEM_cachefiles_coherency_vol_set_ok, !132, !"__TRACE_SYSTEM_cachefiles_coherency_vol_set_ok", i1 false, i1 false}
!179 = !{ptr @TRACE_SYSTEM_cachefiles_coherency_vol_set_ok, !132, !"TRACE_SYSTEM_cachefiles_coherency_vol_set_ok", i1 false, i1 false}
!180 = !{ptr @.str.35, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../include/trace/events/cachefiles.h", i32 194, i32 1}
!182 = !{ptr @__TRACE_SYSTEM_cachefiles_trunc_dio_adjust, !181, !"__TRACE_SYSTEM_cachefiles_trunc_dio_adjust", i1 false, i1 false}
!183 = !{ptr @TRACE_SYSTEM_cachefiles_trunc_dio_adjust, !181, !"TRACE_SYSTEM_cachefiles_trunc_dio_adjust", i1 false, i1 false}
!184 = !{ptr @.str.36, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @__TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile, !181, !"__TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile", i1 false, i1 false}
!186 = !{ptr @TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile, !181, !"TRACE_SYSTEM_cachefiles_trunc_expand_tmpfile", i1 false, i1 false}
!187 = !{ptr @.str.37, !181, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @__TRACE_SYSTEM_cachefiles_trunc_shrink, !181, !"__TRACE_SYSTEM_cachefiles_trunc_shrink", i1 false, i1 false}
!189 = !{ptr @TRACE_SYSTEM_cachefiles_trunc_shrink, !181, !"TRACE_SYSTEM_cachefiles_trunc_shrink", i1 false, i1 false}
!190 = !{ptr @.str.38, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../include/trace/events/cachefiles.h", i32 195, i32 1}
!192 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_after_eof, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_after_eof", i1 false, i1 false}
!193 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_after_eof, !191, !"TRACE_SYSTEM_cachefiles_trace_read_after_eof", i1 false, i1 false}
!194 = !{ptr @.str.39, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_found_hole, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_found_hole", i1 false, i1 false}
!196 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_found_hole, !191, !"TRACE_SYSTEM_cachefiles_trace_read_found_hole", i1 false, i1 false}
!197 = !{ptr @.str.40, !191, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_found_part, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_found_part", i1 false, i1 false}
!199 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_found_part, !191, !"TRACE_SYSTEM_cachefiles_trace_read_found_part", i1 false, i1 false}
!200 = !{ptr @.str.41, !191, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_have_data, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_have_data", i1 false, i1 false}
!202 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_have_data, !191, !"TRACE_SYSTEM_cachefiles_trace_read_have_data", i1 false, i1 false}
!203 = !{ptr @.str.42, !191, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_no_data, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_no_data", i1 false, i1 false}
!205 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_no_data, !191, !"TRACE_SYSTEM_cachefiles_trace_read_no_data", i1 false, i1 false}
!206 = !{ptr @.str.43, !191, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_no_file, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_no_file", i1 false, i1 false}
!208 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_no_file, !191, !"TRACE_SYSTEM_cachefiles_trace_read_no_file", i1 false, i1 false}
!209 = !{ptr @.str.44, !191, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_seek_error, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_seek_error", i1 false, i1 false}
!211 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_seek_error, !191, !"TRACE_SYSTEM_cachefiles_trace_read_seek_error", i1 false, i1 false}
!212 = !{ptr @.str.45, !191, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_seek_nxio, !191, !"__TRACE_SYSTEM_cachefiles_trace_read_seek_nxio", i1 false, i1 false}
!214 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_seek_nxio, !191, !"TRACE_SYSTEM_cachefiles_trace_read_seek_nxio", i1 false, i1 false}
!215 = !{ptr @.str.46, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/trace/events/cachefiles.h", i32 196, i32 1}
!217 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_fallocate_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_fallocate_error", i1 false, i1 false}
!218 = !{ptr @TRACE_SYSTEM_cachefiles_trace_fallocate_error, !216, !"TRACE_SYSTEM_cachefiles_trace_fallocate_error", i1 false, i1 false}
!219 = !{ptr @.str.47, !216, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_getxattr_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_getxattr_error", i1 false, i1 false}
!221 = !{ptr @TRACE_SYSTEM_cachefiles_trace_getxattr_error, !216, !"TRACE_SYSTEM_cachefiles_trace_getxattr_error", i1 false, i1 false}
!222 = !{ptr @.str.48, !216, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_link_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_link_error", i1 false, i1 false}
!224 = !{ptr @TRACE_SYSTEM_cachefiles_trace_link_error, !216, !"TRACE_SYSTEM_cachefiles_trace_link_error", i1 false, i1 false}
!225 = !{ptr @.str.49, !216, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_lookup_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_lookup_error", i1 false, i1 false}
!227 = !{ptr @TRACE_SYSTEM_cachefiles_trace_lookup_error, !216, !"TRACE_SYSTEM_cachefiles_trace_lookup_error", i1 false, i1 false}
!228 = !{ptr @.str.50, !216, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_mkdir_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_mkdir_error", i1 false, i1 false}
!230 = !{ptr @TRACE_SYSTEM_cachefiles_trace_mkdir_error, !216, !"TRACE_SYSTEM_cachefiles_trace_mkdir_error", i1 false, i1 false}
!231 = !{ptr @.str.51, !216, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_notify_change_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_notify_change_error", i1 false, i1 false}
!233 = !{ptr @TRACE_SYSTEM_cachefiles_trace_notify_change_error, !216, !"TRACE_SYSTEM_cachefiles_trace_notify_change_error", i1 false, i1 false}
!234 = !{ptr @.str.52, !216, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_open_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_open_error", i1 false, i1 false}
!236 = !{ptr @TRACE_SYSTEM_cachefiles_trace_open_error, !216, !"TRACE_SYSTEM_cachefiles_trace_open_error", i1 false, i1 false}
!237 = !{ptr @.str.53, !216, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_read_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_read_error", i1 false, i1 false}
!239 = !{ptr @TRACE_SYSTEM_cachefiles_trace_read_error, !216, !"TRACE_SYSTEM_cachefiles_trace_read_error", i1 false, i1 false}
!240 = !{ptr @.str.54, !216, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_remxattr_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_remxattr_error", i1 false, i1 false}
!242 = !{ptr @TRACE_SYSTEM_cachefiles_trace_remxattr_error, !216, !"TRACE_SYSTEM_cachefiles_trace_remxattr_error", i1 false, i1 false}
!243 = !{ptr @.str.55, !216, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_rename_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_rename_error", i1 false, i1 false}
!245 = !{ptr @TRACE_SYSTEM_cachefiles_trace_rename_error, !216, !"TRACE_SYSTEM_cachefiles_trace_rename_error", i1 false, i1 false}
!246 = !{ptr @.str.56, !216, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_seek_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_seek_error", i1 false, i1 false}
!248 = !{ptr @TRACE_SYSTEM_cachefiles_trace_seek_error, !216, !"TRACE_SYSTEM_cachefiles_trace_seek_error", i1 false, i1 false}
!249 = !{ptr @.str.57, !216, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_setxattr_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_setxattr_error", i1 false, i1 false}
!251 = !{ptr @TRACE_SYSTEM_cachefiles_trace_setxattr_error, !216, !"TRACE_SYSTEM_cachefiles_trace_setxattr_error", i1 false, i1 false}
!252 = !{ptr @.str.58, !216, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_statfs_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_statfs_error", i1 false, i1 false}
!254 = !{ptr @TRACE_SYSTEM_cachefiles_trace_statfs_error, !216, !"TRACE_SYSTEM_cachefiles_trace_statfs_error", i1 false, i1 false}
!255 = !{ptr @.str.59, !216, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_tmpfile_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_tmpfile_error", i1 false, i1 false}
!257 = !{ptr @TRACE_SYSTEM_cachefiles_trace_tmpfile_error, !216, !"TRACE_SYSTEM_cachefiles_trace_tmpfile_error", i1 false, i1 false}
!258 = !{ptr @.str.60, !216, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_trunc_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_trunc_error", i1 false, i1 false}
!260 = !{ptr @TRACE_SYSTEM_cachefiles_trace_trunc_error, !216, !"TRACE_SYSTEM_cachefiles_trace_trunc_error", i1 false, i1 false}
!261 = !{ptr @.str.61, !216, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_unlink_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_unlink_error", i1 false, i1 false}
!263 = !{ptr @TRACE_SYSTEM_cachefiles_trace_unlink_error, !216, !"TRACE_SYSTEM_cachefiles_trace_unlink_error", i1 false, i1 false}
!264 = !{ptr @.str.62, !216, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @__TRACE_SYSTEM_cachefiles_trace_write_error, !216, !"__TRACE_SYSTEM_cachefiles_trace_write_error", i1 false, i1 false}
!266 = !{ptr @TRACE_SYSTEM_cachefiles_trace_write_error, !216, !"TRACE_SYSTEM_cachefiles_trace_write_error", i1 false, i1 false}
!267 = !{ptr @event_class_cachefiles_ref, !1, !"event_class_cachefiles_ref", i1 false, i1 false}
!268 = !{ptr @event_cachefiles_ref, !1, !"event_cachefiles_ref", i1 false, i1 false}
!269 = !{ptr @__event_cachefiles_ref, !1, !"__event_cachefiles_ref", i1 false, i1 false}
!270 = !{ptr @event_class_cachefiles_lookup, !5, !"event_class_cachefiles_lookup", i1 false, i1 false}
!271 = !{ptr @event_cachefiles_lookup, !5, !"event_cachefiles_lookup", i1 false, i1 false}
!272 = !{ptr @__event_cachefiles_lookup, !5, !"__event_cachefiles_lookup", i1 false, i1 false}
!273 = !{ptr @event_class_cachefiles_mkdir, !9, !"event_class_cachefiles_mkdir", i1 false, i1 false}
!274 = !{ptr @event_cachefiles_mkdir, !9, !"event_cachefiles_mkdir", i1 false, i1 false}
!275 = !{ptr @__event_cachefiles_mkdir, !9, !"__event_cachefiles_mkdir", i1 false, i1 false}
!276 = !{ptr @event_class_cachefiles_tmpfile, !13, !"event_class_cachefiles_tmpfile", i1 false, i1 false}
!277 = !{ptr @event_cachefiles_tmpfile, !13, !"event_cachefiles_tmpfile", i1 false, i1 false}
!278 = !{ptr @__event_cachefiles_tmpfile, !13, !"__event_cachefiles_tmpfile", i1 false, i1 false}
!279 = !{ptr @event_class_cachefiles_link, !17, !"event_class_cachefiles_link", i1 false, i1 false}
!280 = !{ptr @event_cachefiles_link, !17, !"event_cachefiles_link", i1 false, i1 false}
!281 = !{ptr @__event_cachefiles_link, !17, !"__event_cachefiles_link", i1 false, i1 false}
!282 = !{ptr @event_class_cachefiles_unlink, !21, !"event_class_cachefiles_unlink", i1 false, i1 false}
!283 = !{ptr @event_cachefiles_unlink, !21, !"event_cachefiles_unlink", i1 false, i1 false}
!284 = !{ptr @__event_cachefiles_unlink, !21, !"__event_cachefiles_unlink", i1 false, i1 false}
!285 = !{ptr @event_class_cachefiles_rename, !25, !"event_class_cachefiles_rename", i1 false, i1 false}
!286 = !{ptr @event_cachefiles_rename, !25, !"event_cachefiles_rename", i1 false, i1 false}
!287 = !{ptr @__event_cachefiles_rename, !25, !"__event_cachefiles_rename", i1 false, i1 false}
!288 = !{ptr @event_class_cachefiles_coherency, !29, !"event_class_cachefiles_coherency", i1 false, i1 false}
!289 = !{ptr @event_cachefiles_coherency, !29, !"event_cachefiles_coherency", i1 false, i1 false}
!290 = !{ptr @__event_cachefiles_coherency, !29, !"__event_cachefiles_coherency", i1 false, i1 false}
!291 = !{ptr @event_class_cachefiles_vol_coherency, !33, !"event_class_cachefiles_vol_coherency", i1 false, i1 false}
!292 = !{ptr @event_cachefiles_vol_coherency, !33, !"event_cachefiles_vol_coherency", i1 false, i1 false}
!293 = !{ptr @__event_cachefiles_vol_coherency, !33, !"__event_cachefiles_vol_coherency", i1 false, i1 false}
!294 = !{ptr @event_class_cachefiles_prep_read, !37, !"event_class_cachefiles_prep_read", i1 false, i1 false}
!295 = !{ptr @event_cachefiles_prep_read, !37, !"event_cachefiles_prep_read", i1 false, i1 false}
!296 = !{ptr @__event_cachefiles_prep_read, !37, !"__event_cachefiles_prep_read", i1 false, i1 false}
!297 = !{ptr @event_class_cachefiles_read, !41, !"event_class_cachefiles_read", i1 false, i1 false}
!298 = !{ptr @event_cachefiles_read, !41, !"event_cachefiles_read", i1 false, i1 false}
!299 = !{ptr @__event_cachefiles_read, !41, !"__event_cachefiles_read", i1 false, i1 false}
!300 = !{ptr @event_class_cachefiles_write, !45, !"event_class_cachefiles_write", i1 false, i1 false}
!301 = !{ptr @event_cachefiles_write, !45, !"event_cachefiles_write", i1 false, i1 false}
!302 = !{ptr @__event_cachefiles_write, !45, !"__event_cachefiles_write", i1 false, i1 false}
!303 = !{ptr @event_class_cachefiles_trunc, !49, !"event_class_cachefiles_trunc", i1 false, i1 false}
!304 = !{ptr @event_cachefiles_trunc, !49, !"event_cachefiles_trunc", i1 false, i1 false}
!305 = !{ptr @__event_cachefiles_trunc, !49, !"__event_cachefiles_trunc", i1 false, i1 false}
!306 = !{ptr @event_class_cachefiles_mark_active, !53, !"event_class_cachefiles_mark_active", i1 false, i1 false}
!307 = !{ptr @event_cachefiles_mark_active, !53, !"event_cachefiles_mark_active", i1 false, i1 false}
!308 = !{ptr @__event_cachefiles_mark_active, !53, !"__event_cachefiles_mark_active", i1 false, i1 false}
!309 = !{ptr @event_class_cachefiles_mark_failed, !57, !"event_class_cachefiles_mark_failed", i1 false, i1 false}
!310 = !{ptr @event_cachefiles_mark_failed, !57, !"event_cachefiles_mark_failed", i1 false, i1 false}
!311 = !{ptr @__event_cachefiles_mark_failed, !57, !"__event_cachefiles_mark_failed", i1 false, i1 false}
!312 = !{ptr @event_class_cachefiles_mark_inactive, !61, !"event_class_cachefiles_mark_inactive", i1 false, i1 false}
!313 = !{ptr @event_cachefiles_mark_inactive, !61, !"event_cachefiles_mark_inactive", i1 false, i1 false}
!314 = !{ptr @__event_cachefiles_mark_inactive, !61, !"__event_cachefiles_mark_inactive", i1 false, i1 false}
!315 = !{ptr @event_class_cachefiles_vfs_error, !65, !"event_class_cachefiles_vfs_error", i1 false, i1 false}
!316 = !{ptr @event_cachefiles_vfs_error, !65, !"event_cachefiles_vfs_error", i1 false, i1 false}
!317 = !{ptr @__event_cachefiles_vfs_error, !65, !"__event_cachefiles_vfs_error", i1 false, i1 false}
!318 = !{ptr @event_class_cachefiles_io_error, !69, !"event_class_cachefiles_io_error", i1 false, i1 false}
!319 = !{ptr @event_cachefiles_io_error, !69, !"event_cachefiles_io_error", i1 false, i1 false}
!320 = !{ptr @__event_cachefiles_io_error, !69, !"__event_cachefiles_io_error", i1 false, i1 false}
!321 = !{ptr @__bpf_trace_tp_map_cachefiles_ref, !1, !"__bpf_trace_tp_map_cachefiles_ref", i1 false, i1 false}
!322 = !{ptr @__bpf_trace_tp_map_cachefiles_lookup, !5, !"__bpf_trace_tp_map_cachefiles_lookup", i1 false, i1 false}
!323 = !{ptr @__bpf_trace_tp_map_cachefiles_mkdir, !9, !"__bpf_trace_tp_map_cachefiles_mkdir", i1 false, i1 false}
!324 = !{ptr @__bpf_trace_tp_map_cachefiles_tmpfile, !13, !"__bpf_trace_tp_map_cachefiles_tmpfile", i1 false, i1 false}
!325 = !{ptr @__bpf_trace_tp_map_cachefiles_link, !17, !"__bpf_trace_tp_map_cachefiles_link", i1 false, i1 false}
!326 = !{ptr @__bpf_trace_tp_map_cachefiles_unlink, !21, !"__bpf_trace_tp_map_cachefiles_unlink", i1 false, i1 false}
!327 = !{ptr @__bpf_trace_tp_map_cachefiles_rename, !25, !"__bpf_trace_tp_map_cachefiles_rename", i1 false, i1 false}
!328 = !{ptr @__bpf_trace_tp_map_cachefiles_coherency, !29, !"__bpf_trace_tp_map_cachefiles_coherency", i1 false, i1 false}
!329 = !{ptr @__bpf_trace_tp_map_cachefiles_vol_coherency, !33, !"__bpf_trace_tp_map_cachefiles_vol_coherency", i1 false, i1 false}
!330 = !{ptr @__bpf_trace_tp_map_cachefiles_prep_read, !37, !"__bpf_trace_tp_map_cachefiles_prep_read", i1 false, i1 false}
!331 = !{ptr @__bpf_trace_tp_map_cachefiles_read, !41, !"__bpf_trace_tp_map_cachefiles_read", i1 false, i1 false}
!332 = !{ptr @__bpf_trace_tp_map_cachefiles_write, !45, !"__bpf_trace_tp_map_cachefiles_write", i1 false, i1 false}
!333 = !{ptr @__bpf_trace_tp_map_cachefiles_trunc, !49, !"__bpf_trace_tp_map_cachefiles_trunc", i1 false, i1 false}
!334 = !{ptr @__bpf_trace_tp_map_cachefiles_mark_active, !53, !"__bpf_trace_tp_map_cachefiles_mark_active", i1 false, i1 false}
!335 = !{ptr @__bpf_trace_tp_map_cachefiles_mark_failed, !57, !"__bpf_trace_tp_map_cachefiles_mark_failed", i1 false, i1 false}
!336 = !{ptr @__bpf_trace_tp_map_cachefiles_mark_inactive, !61, !"__bpf_trace_tp_map_cachefiles_mark_inactive", i1 false, i1 false}
!337 = !{ptr @__bpf_trace_tp_map_cachefiles_vfs_error, !65, !"__bpf_trace_tp_map_cachefiles_vfs_error", i1 false, i1 false}
!338 = !{ptr @__bpf_trace_tp_map_cachefiles_io_error, !69, !"__bpf_trace_tp_map_cachefiles_io_error", i1 false, i1 false}
!339 = !{ptr @__param_debug, !340, !"__param_debug", i1 false, i1 false}
!340 = !{!"../fs/cachefiles/main.c", i32 27, i32 1}
!341 = !{ptr @__UNIQUE_ID_debugtype383, !340, !"__UNIQUE_ID_debugtype383", i1 false, i1 false}
!342 = !{ptr @__UNIQUE_ID_cachefiles_debug384, !343, !"__UNIQUE_ID_cachefiles_debug384", i1 false, i1 false}
!343 = !{!"../fs/cachefiles/main.c", i32 28, i32 1}
!344 = !{ptr @__UNIQUE_ID_description385, !345, !"__UNIQUE_ID_description385", i1 false, i1 false}
!345 = !{!"../fs/cachefiles/main.c", i32 30, i32 1}
!346 = !{ptr @__UNIQUE_ID_author386, !347, !"__UNIQUE_ID_author386", i1 false, i1 false}
!347 = !{!"../fs/cachefiles/main.c", i32 31, i32 1}
!348 = !{ptr @__UNIQUE_ID_file387, !349, !"__UNIQUE_ID_file387", i1 false, i1 false}
!349 = !{!"../fs/cachefiles/main.c", i32 32, i32 1}
!350 = !{ptr @__UNIQUE_ID_license388, !349, !"__UNIQUE_ID_license388", i1 false, i1 false}
!351 = !{ptr @__initcall__kmod_cachefiles__389_79_cachefiles_init5, !352, !"__initcall__kmod_cachefiles__389_79_cachefiles_init5", i1 false, i1 false}
!352 = !{!"../fs/cachefiles/main.c", i32 79, i32 1}
!353 = !{ptr @.str.63, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../fs/cachefiles/main.c", i32 86, i32 2}
!355 = !{ptr @.str.64, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.65, !354, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @cachefiles_exit._entry, !354, !"_entry", i1 false, i1 false}
!358 = !{ptr @cachefiles_exit._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @__exitcall_cachefiles_exit, !360, !"__exitcall_cachefiles_exit", i1 false, i1 false}
!360 = !{!"../fs/cachefiles/main.c", i32 93, i32 1}
!361 = !{ptr @cachefiles_debug, !362, !"cachefiles_debug", i1 false, i1 false}
!362 = !{!"../fs/cachefiles/main.c", i32 26, i32 10}
!363 = !{ptr @cachefiles_object_jar, !364, !"cachefiles_object_jar", i1 false, i1 false}
!364 = !{!"../fs/cachefiles/main.c", i32 34, i32 20}
!365 = !{ptr @__tpstrtab_cachefiles_ref, !1, !"__tpstrtab_cachefiles_ref", i1 false, i1 false}
!366 = !{ptr @__tpstrtab_cachefiles_lookup, !5, !"__tpstrtab_cachefiles_lookup", i1 false, i1 false}
!367 = !{ptr @__tpstrtab_cachefiles_mkdir, !9, !"__tpstrtab_cachefiles_mkdir", i1 false, i1 false}
!368 = !{ptr @__tpstrtab_cachefiles_tmpfile, !13, !"__tpstrtab_cachefiles_tmpfile", i1 false, i1 false}
!369 = !{ptr @__tpstrtab_cachefiles_link, !17, !"__tpstrtab_cachefiles_link", i1 false, i1 false}
!370 = !{ptr @__tpstrtab_cachefiles_unlink, !21, !"__tpstrtab_cachefiles_unlink", i1 false, i1 false}
!371 = !{ptr @__tpstrtab_cachefiles_rename, !25, !"__tpstrtab_cachefiles_rename", i1 false, i1 false}
!372 = !{ptr @__tpstrtab_cachefiles_coherency, !29, !"__tpstrtab_cachefiles_coherency", i1 false, i1 false}
!373 = !{ptr @__tpstrtab_cachefiles_vol_coherency, !33, !"__tpstrtab_cachefiles_vol_coherency", i1 false, i1 false}
!374 = !{ptr @__tpstrtab_cachefiles_prep_read, !37, !"__tpstrtab_cachefiles_prep_read", i1 false, i1 false}
!375 = !{ptr @__tpstrtab_cachefiles_read, !41, !"__tpstrtab_cachefiles_read", i1 false, i1 false}
!376 = !{ptr @__tpstrtab_cachefiles_write, !45, !"__tpstrtab_cachefiles_write", i1 false, i1 false}
!377 = !{ptr @__tpstrtab_cachefiles_trunc, !49, !"__tpstrtab_cachefiles_trunc", i1 false, i1 false}
!378 = !{ptr @__tpstrtab_cachefiles_mark_active, !53, !"__tpstrtab_cachefiles_mark_active", i1 false, i1 false}
!379 = !{ptr @__tpstrtab_cachefiles_mark_failed, !57, !"__tpstrtab_cachefiles_mark_failed", i1 false, i1 false}
!380 = !{ptr @__tpstrtab_cachefiles_mark_inactive, !61, !"__tpstrtab_cachefiles_mark_inactive", i1 false, i1 false}
!381 = !{ptr @__tpstrtab_cachefiles_vfs_error, !65, !"__tpstrtab_cachefiles_vfs_error", i1 false, i1 false}
!382 = !{ptr @__tpstrtab_cachefiles_io_error, !69, !"__tpstrtab_cachefiles_io_error", i1 false, i1 false}
!383 = !{ptr @str__cachefiles__trace_system_name, !384, !"str__cachefiles__trace_system_name", i1 false, i1 false}
!384 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!385 = !{ptr @.str.66, !1, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @.str.67, !1, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @.str.68, !1, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.69, !1, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @.str.70, !1, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.71, !1, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.72, !1, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @trace_event_fields_cachefiles_ref, !1, !"trace_event_fields_cachefiles_ref", i1 false, i1 false}
!393 = !{ptr @trace_event_type_funcs_cachefiles_ref, !1, !"trace_event_type_funcs_cachefiles_ref", i1 false, i1 false}
!394 = !{ptr @.str.73, !1, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.74, !1, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.75, !1, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @.str.76, !1, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @.str.77, !1, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.78, !1, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @.str.79, !1, !"<string literal>", i1 false, i1 false}
!401 = !{ptr @.str.80, !1, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.81, !1, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @.str.82, !1, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @.str.83, !1, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.84, !1, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @.str.85, !1, !"<string literal>", i1 false, i1 false}
!407 = !{ptr @trace_raw_output_cachefiles_ref.symbols, !1, !"symbols", i1 false, i1 false}
!408 = !{ptr @print_fmt_cachefiles_ref, !1, !"print_fmt_cachefiles_ref", i1 false, i1 false}
!409 = !{ptr @.str.86, !5, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.87, !5, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @.str.88, !5, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.89, !5, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.90, !5, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @trace_event_fields_cachefiles_lookup, !5, !"trace_event_fields_cachefiles_lookup", i1 false, i1 false}
!415 = !{ptr @trace_event_type_funcs_cachefiles_lookup, !5, !"trace_event_type_funcs_cachefiles_lookup", i1 false, i1 false}
!416 = !{ptr @.str.91, !5, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @print_fmt_cachefiles_lookup, !5, !"print_fmt_cachefiles_lookup", i1 false, i1 false}
!418 = !{ptr @.str.92, !9, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.93, !9, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @trace_event_fields_cachefiles_mkdir, !9, !"trace_event_fields_cachefiles_mkdir", i1 false, i1 false}
!421 = !{ptr @trace_event_type_funcs_cachefiles_mkdir, !9, !"trace_event_type_funcs_cachefiles_mkdir", i1 false, i1 false}
!422 = !{ptr @.str.94, !9, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @print_fmt_cachefiles_mkdir, !9, !"print_fmt_cachefiles_mkdir", i1 false, i1 false}
!424 = !{ptr @.str.95, !13, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @trace_event_fields_cachefiles_tmpfile, !13, !"trace_event_fields_cachefiles_tmpfile", i1 false, i1 false}
!426 = !{ptr @trace_event_type_funcs_cachefiles_tmpfile, !13, !"trace_event_type_funcs_cachefiles_tmpfile", i1 false, i1 false}
!427 = !{ptr @.str.96, !13, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @print_fmt_cachefiles_tmpfile, !13, !"print_fmt_cachefiles_tmpfile", i1 false, i1 false}
!429 = !{ptr @trace_event_fields_cachefiles_link, !17, !"trace_event_fields_cachefiles_link", i1 false, i1 false}
!430 = !{ptr @trace_event_type_funcs_cachefiles_link, !17, !"trace_event_type_funcs_cachefiles_link", i1 false, i1 false}
!431 = !{ptr @print_fmt_cachefiles_link, !17, !"print_fmt_cachefiles_link", i1 false, i1 false}
!432 = !{ptr @.str.97, !21, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @trace_event_fields_cachefiles_unlink, !21, !"trace_event_fields_cachefiles_unlink", i1 false, i1 false}
!434 = !{ptr @trace_event_type_funcs_cachefiles_unlink, !21, !"trace_event_type_funcs_cachefiles_unlink", i1 false, i1 false}
!435 = !{ptr @.str.98, !21, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.99, !21, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @.str.100, !21, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @.str.101, !21, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @.str.102, !21, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @.str.103, !21, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @.str.104, !21, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @.str.105, !21, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @trace_raw_output_cachefiles_unlink.symbols, !21, !"symbols", i1 false, i1 false}
!444 = !{ptr @print_fmt_cachefiles_unlink, !21, !"print_fmt_cachefiles_unlink", i1 false, i1 false}
!445 = !{ptr @trace_event_fields_cachefiles_rename, !25, !"trace_event_fields_cachefiles_rename", i1 false, i1 false}
!446 = !{ptr @trace_event_type_funcs_cachefiles_rename, !25, !"trace_event_type_funcs_cachefiles_rename", i1 false, i1 false}
!447 = !{ptr @trace_raw_output_cachefiles_rename.symbols, !25, !"symbols", i1 false, i1 false}
!448 = !{ptr @print_fmt_cachefiles_rename, !25, !"print_fmt_cachefiles_rename", i1 false, i1 false}
!449 = !{ptr @.str.106, !29, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @.str.107, !29, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @.str.108, !29, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @.str.109, !29, !"<string literal>", i1 false, i1 false}
!453 = !{ptr @trace_event_fields_cachefiles_coherency, !29, !"trace_event_fields_cachefiles_coherency", i1 false, i1 false}
!454 = !{ptr @trace_event_type_funcs_cachefiles_coherency, !29, !"trace_event_type_funcs_cachefiles_coherency", i1 false, i1 false}
!455 = !{ptr @.str.110, !29, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @.str.111, !29, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.112, !29, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @.str.113, !29, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @.str.114, !29, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @.str.115, !29, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.116, !29, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @.str.117, !29, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @.str.118, !29, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @.str.119, !29, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.120, !29, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.121, !29, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @.str.122, !29, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @.str.123, !29, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.124, !29, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @.str.125, !29, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.126, !29, !"<string literal>", i1 false, i1 false}
!472 = !{ptr @trace_raw_output_cachefiles_coherency.symbols, !29, !"symbols", i1 false, i1 false}
!473 = !{ptr @print_fmt_cachefiles_coherency, !29, !"print_fmt_cachefiles_coherency", i1 false, i1 false}
!474 = !{ptr @.str.127, !33, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @trace_event_fields_cachefiles_vol_coherency, !33, !"trace_event_fields_cachefiles_vol_coherency", i1 false, i1 false}
!476 = !{ptr @trace_event_type_funcs_cachefiles_vol_coherency, !33, !"trace_event_type_funcs_cachefiles_vol_coherency", i1 false, i1 false}
!477 = !{ptr @.str.128, !33, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @trace_raw_output_cachefiles_vol_coherency.symbols, !33, !"symbols", i1 false, i1 false}
!479 = !{ptr @print_fmt_cachefiles_vol_coherency, !33, !"print_fmt_cachefiles_vol_coherency", i1 false, i1 false}
!480 = !{ptr @.str.129, !37, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @.str.130, !37, !"<string literal>", i1 false, i1 false}
!482 = !{ptr @.str.131, !37, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @.str.132, !37, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @.str.133, !37, !"<string literal>", i1 false, i1 false}
!485 = !{ptr @.str.134, !37, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @.str.135, !37, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @.str.136, !37, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @.str.137, !37, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @.str.138, !37, !"<string literal>", i1 false, i1 false}
!490 = !{ptr @.str.139, !37, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @.str.140, !37, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @.str.141, !37, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @trace_event_fields_cachefiles_prep_read, !37, !"trace_event_fields_cachefiles_prep_read", i1 false, i1 false}
!494 = !{ptr @trace_event_type_funcs_cachefiles_prep_read, !37, !"trace_event_type_funcs_cachefiles_prep_read", i1 false, i1 false}
!495 = !{ptr @.str.142, !37, !"<string literal>", i1 false, i1 false}
!496 = !{ptr @.str.143, !37, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.144, !37, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @.str.145, !37, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @.str.146, !37, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @trace_raw_output_cachefiles_prep_read.symbols, !37, !"symbols", i1 false, i1 false}
!501 = !{ptr @.str.148, !37, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @.str.149, !37, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.150, !37, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @.str.151, !37, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @.str.152, !37, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @.str.153, !37, !"<string literal>", i1 false, i1 false}
!507 = !{ptr @.str.154, !37, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @.str.155, !37, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @trace_raw_output_cachefiles_prep_read.symbols.147, !37, !"symbols", i1 false, i1 false}
!510 = !{ptr @print_fmt_cachefiles_prep_read, !37, !"print_fmt_cachefiles_prep_read", i1 false, i1 false}
!511 = !{ptr @trace_event_fields_cachefiles_read, !41, !"trace_event_fields_cachefiles_read", i1 false, i1 false}
!512 = !{ptr @trace_event_type_funcs_cachefiles_read, !41, !"trace_event_type_funcs_cachefiles_read", i1 false, i1 false}
!513 = !{ptr @.str.156, !41, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @print_fmt_cachefiles_read, !41, !"print_fmt_cachefiles_read", i1 false, i1 false}
!515 = !{ptr @trace_event_fields_cachefiles_write, !45, !"trace_event_fields_cachefiles_write", i1 false, i1 false}
!516 = !{ptr @trace_event_type_funcs_cachefiles_write, !45, !"trace_event_type_funcs_cachefiles_write", i1 false, i1 false}
!517 = !{ptr @print_fmt_cachefiles_write, !45, !"print_fmt_cachefiles_write", i1 false, i1 false}
!518 = !{ptr @.str.157, !49, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @.str.158, !49, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @.str.159, !49, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @trace_event_fields_cachefiles_trunc, !49, !"trace_event_fields_cachefiles_trunc", i1 false, i1 false}
!522 = !{ptr @trace_event_type_funcs_cachefiles_trunc, !49, !"trace_event_type_funcs_cachefiles_trunc", i1 false, i1 false}
!523 = !{ptr @.str.160, !49, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @.str.161, !49, !"<string literal>", i1 false, i1 false}
!525 = !{ptr @.str.162, !49, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @.str.163, !49, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @trace_raw_output_cachefiles_trunc.symbols, !49, !"symbols", i1 false, i1 false}
!528 = !{ptr @print_fmt_cachefiles_trunc, !49, !"print_fmt_cachefiles_trunc", i1 false, i1 false}
!529 = !{ptr @.str.164, !53, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @.str.165, !53, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @trace_event_fields_cachefiles_mark_active, !53, !"trace_event_fields_cachefiles_mark_active", i1 false, i1 false}
!532 = !{ptr @trace_event_type_funcs_cachefiles_mark_active, !53, !"trace_event_type_funcs_cachefiles_mark_active", i1 false, i1 false}
!533 = !{ptr @.str.166, !53, !"<string literal>", i1 false, i1 false}
!534 = !{ptr @print_fmt_cachefiles_mark_active, !53, !"print_fmt_cachefiles_mark_active", i1 false, i1 false}
!535 = !{ptr @trace_event_fields_cachefiles_mark_failed, !57, !"trace_event_fields_cachefiles_mark_failed", i1 false, i1 false}
!536 = !{ptr @trace_event_type_funcs_cachefiles_mark_failed, !57, !"trace_event_type_funcs_cachefiles_mark_failed", i1 false, i1 false}
!537 = !{ptr @print_fmt_cachefiles_mark_failed, !57, !"print_fmt_cachefiles_mark_failed", i1 false, i1 false}
!538 = !{ptr @trace_event_fields_cachefiles_mark_inactive, !61, !"trace_event_fields_cachefiles_mark_inactive", i1 false, i1 false}
!539 = !{ptr @trace_event_type_funcs_cachefiles_mark_inactive, !61, !"trace_event_type_funcs_cachefiles_mark_inactive", i1 false, i1 false}
!540 = !{ptr @print_fmt_cachefiles_mark_inactive, !61, !"print_fmt_cachefiles_mark_inactive", i1 false, i1 false}
!541 = !{ptr @.str.167, !65, !"<string literal>", i1 false, i1 false}
!542 = !{ptr @.str.168, !65, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @trace_event_fields_cachefiles_vfs_error, !65, !"trace_event_fields_cachefiles_vfs_error", i1 false, i1 false}
!544 = !{ptr @trace_event_type_funcs_cachefiles_vfs_error, !65, !"trace_event_type_funcs_cachefiles_vfs_error", i1 false, i1 false}
!545 = !{ptr @.str.169, !65, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @.str.170, !65, !"<string literal>", i1 false, i1 false}
!547 = !{ptr @.str.171, !65, !"<string literal>", i1 false, i1 false}
!548 = !{ptr @.str.172, !65, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @.str.173, !65, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @.str.174, !65, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @.str.175, !65, !"<string literal>", i1 false, i1 false}
!552 = !{ptr @.str.176, !65, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @.str.177, !65, !"<string literal>", i1 false, i1 false}
!554 = !{ptr @.str.178, !65, !"<string literal>", i1 false, i1 false}
!555 = !{ptr @.str.179, !65, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @.str.180, !65, !"<string literal>", i1 false, i1 false}
!557 = !{ptr @.str.181, !65, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @.str.182, !65, !"<string literal>", i1 false, i1 false}
!559 = !{ptr @.str.183, !65, !"<string literal>", i1 false, i1 false}
!560 = !{ptr @.str.184, !65, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @.str.185, !65, !"<string literal>", i1 false, i1 false}
!562 = !{ptr @.str.186, !65, !"<string literal>", i1 false, i1 false}
!563 = !{ptr @trace_raw_output_cachefiles_vfs_error.symbols, !65, !"symbols", i1 false, i1 false}
!564 = !{ptr @print_fmt_cachefiles_vfs_error, !65, !"print_fmt_cachefiles_vfs_error", i1 false, i1 false}
!565 = !{ptr @trace_event_fields_cachefiles_io_error, !69, !"trace_event_fields_cachefiles_io_error", i1 false, i1 false}
!566 = !{ptr @trace_event_type_funcs_cachefiles_io_error, !69, !"trace_event_type_funcs_cachefiles_io_error", i1 false, i1 false}
!567 = !{ptr @trace_raw_output_cachefiles_io_error.symbols, !69, !"symbols", i1 false, i1 false}
!568 = !{ptr @print_fmt_cachefiles_io_error, !69, !"print_fmt_cachefiles_io_error", i1 false, i1 false}
!569 = !{ptr @__param_str_debug, !340, !"__param_str_debug", i1 false, i1 false}
!570 = !{ptr @.str.187, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../fs/cachefiles/main.c", i32 59, i32 21}
!572 = !{ptr @.str.188, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../fs/cachefiles/main.c", i32 63, i32 3}
!574 = !{ptr @.str.189, !573, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @cachefiles_init._entry, !573, !"_entry", i1 false, i1 false}
!576 = !{ptr @cachefiles_init._entry_ptr, !573, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.191, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../fs/cachefiles/main.c", i32 67, i32 2}
!579 = !{ptr @cachefiles_init._entry.190, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @cachefiles_init._entry_ptr.192, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.194, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../fs/cachefiles/main.c", i32 75, i32 2}
!583 = !{ptr @cachefiles_init._entry.193, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @cachefiles_init._entry_ptr.195, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.196, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../fs/cachefiles/main.c", i32 38, i32 10}
!587 = !{ptr @cachefiles_dev, !588, !"cachefiles_dev", i1 false, i1 false}
!588 = !{!"../fs/cachefiles/main.c", i32 36, i32 26}
!589 = !{!"sp"}
!590 = !{i32 1, !"wchar_size", i32 2}
!591 = !{i32 1, !"min_enum_size", i32 4}
!592 = !{i32 8, !"branch-target-enforcement", i32 0}
!593 = !{i32 8, !"sign-return-address", i32 0}
!594 = !{i32 8, !"sign-return-address-all", i32 0}
!595 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!596 = !{i32 7, !"uwtable", i32 1}
!597 = !{i32 7, !"frame-pointer", i32 2}
!598 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!599 = !{!"branch_weights", i32 2000, i32 1}
!600 = !{!"branch_weights", i32 1, i32 2000}
!601 = !{!"auto-init"}
