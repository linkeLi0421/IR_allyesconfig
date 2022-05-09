; ModuleID = '/llk/IR_all_yes/fs/erofs/super.c_pt.bc'
source_filename = "../fs/erofs/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.78, %struct.list_head, %struct.list_head, %union.anon.79 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%union.anon.78 = type { %struct.list_head }
%union.anon.79 = type { %struct.hlist_node }
%struct.trace_event_raw_erofs_lookup = type { %struct.trace_entry, i32, i64, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.83 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_erofs_fill_inode = type { %struct.trace_entry, i32, i64, i32, i32, i32, [0 x i8] }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.10, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.trace_event_raw_erofs_readpage = type { %struct.trace_entry, i32, i64, i32, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_erofs_readpages = type { %struct.trace_entry, i32, i64, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_erofs__map_blocks_enter = type { %struct.trace_entry, i32, i64, i64, i64, i32, [0 x i8] }
%struct.erofs_map_blocks = type { %struct.erofs_buf, i64, i64, i64, i64, i16, i8, i32 }
%struct.erofs_buf = type { ptr, ptr, i32 }
%struct.trace_event_raw_erofs__map_blocks_exit = type { %struct.trace_entry, i32, i64, i32, i64, i64, i64, i64, i32, i32, [0 x i8] }
%struct.trace_event_raw_erofs_destroy_inode = type { %struct.trace_entry, i32, i64, [0 x i8] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.erofs_inode = type { i64, i32, i8, i8, i16, i32, ptr, %union.anon.117, %struct.inode }
%union.anon.117 = type { %struct.anon.119 }
%struct.anon.119 = type { i16, [2 x i8], i8, i32, i64, i16 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.erofs_fs_context = type { %struct.erofs_mount_opts, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.erofs_dev_context = type { %struct.idr, %struct.rw_semaphore, i32 }
%struct.fs_parse_result = type { i8, %union.anon.76 }
%union.anon.76 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon.8, i32, i32 }
%union.anon.8 = type { ptr }
%struct.erofs_device_info = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.erofs_super_block = type { i32, i32, i32, i8, i8, i16, i64, i64, i32, i32, i32, i32, [16 x i8], [16 x i8], i32, %union.anon.120, i16, i16, [38 x i8] }
%union.anon.120 = type { i16 }
%struct.erofs_deviceslot = type { %union.anon.121, i32, i32, [56 x i8] }
%union.anon.121 = type { [64 x i8] }

@__tpstrtab_erofs_lookup = internal constant [13 x i8] c"erofs_lookup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_erofs_lookup = dso_local global %struct.static_call_key { ptr @__traceiter_erofs_lookup }, align 4
@__tracepoint_erofs_lookup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_erofs_lookup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_erofs_lookup, ptr null, ptr @__traceiter_erofs_lookup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_erofs_lookup = internal constant ptr @__tracepoint_erofs_lookup, section "__tracepoints_ptrs", align 4
@__tpstrtab_erofs_fill_inode = internal constant [17 x i8] c"erofs_fill_inode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_erofs_fill_inode = dso_local global %struct.static_call_key { ptr @__traceiter_erofs_fill_inode }, align 4
@__tracepoint_erofs_fill_inode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_erofs_fill_inode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_erofs_fill_inode, ptr null, ptr @__traceiter_erofs_fill_inode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_erofs_fill_inode = internal constant ptr @__tracepoint_erofs_fill_inode, section "__tracepoints_ptrs", align 4
@__tpstrtab_erofs_readpage = internal constant [15 x i8] c"erofs_readpage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_erofs_readpage = dso_local global %struct.static_call_key { ptr @__traceiter_erofs_readpage }, align 4
@__tracepoint_erofs_readpage = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_erofs_readpage, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_erofs_readpage, ptr null, ptr @__traceiter_erofs_readpage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_erofs_readpage = internal constant ptr @__tracepoint_erofs_readpage, section "__tracepoints_ptrs", align 4
@__tpstrtab_erofs_readpages = internal constant [16 x i8] c"erofs_readpages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_erofs_readpages = dso_local global %struct.static_call_key { ptr @__traceiter_erofs_readpages }, align 4
@__tracepoint_erofs_readpages = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_erofs_readpages, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_erofs_readpages, ptr null, ptr @__traceiter_erofs_readpages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_erofs_readpages = internal constant ptr @__tracepoint_erofs_readpages, section "__tracepoints_ptrs", align 4
@__tpstrtab_erofs_map_blocks_enter = internal constant [23 x i8] c"erofs_map_blocks_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_erofs_map_blocks_enter = dso_local global %struct.static_call_key { ptr @__traceiter_erofs_map_blocks_enter }, align 4
@__tracepoint_erofs_map_blocks_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_erofs_map_blocks_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_erofs_map_blocks_enter, ptr null, ptr @__traceiter_erofs_map_blocks_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_erofs_map_blocks_enter = internal constant ptr @__tracepoint_erofs_map_blocks_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_z_erofs_map_blocks_iter_enter = internal constant [30 x i8] c"z_erofs_map_blocks_iter_enter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_z_erofs_map_blocks_iter_enter = dso_local global %struct.static_call_key { ptr @__traceiter_z_erofs_map_blocks_iter_enter }, align 4
@__tracepoint_z_erofs_map_blocks_iter_enter = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_z_erofs_map_blocks_iter_enter, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_z_erofs_map_blocks_iter_enter, ptr null, ptr @__traceiter_z_erofs_map_blocks_iter_enter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_z_erofs_map_blocks_iter_enter = internal constant ptr @__tracepoint_z_erofs_map_blocks_iter_enter, section "__tracepoints_ptrs", align 4
@__tpstrtab_erofs_map_blocks_exit = internal constant [22 x i8] c"erofs_map_blocks_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_erofs_map_blocks_exit = dso_local global %struct.static_call_key { ptr @__traceiter_erofs_map_blocks_exit }, align 4
@__tracepoint_erofs_map_blocks_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_erofs_map_blocks_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_erofs_map_blocks_exit, ptr null, ptr @__traceiter_erofs_map_blocks_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_erofs_map_blocks_exit = internal constant ptr @__tracepoint_erofs_map_blocks_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_z_erofs_map_blocks_iter_exit = internal constant [29 x i8] c"z_erofs_map_blocks_iter_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_z_erofs_map_blocks_iter_exit = dso_local global %struct.static_call_key { ptr @__traceiter_z_erofs_map_blocks_iter_exit }, align 4
@__tracepoint_z_erofs_map_blocks_iter_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_z_erofs_map_blocks_iter_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_z_erofs_map_blocks_iter_exit, ptr null, ptr @__traceiter_z_erofs_map_blocks_iter_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_z_erofs_map_blocks_iter_exit = internal constant ptr @__tracepoint_z_erofs_map_blocks_iter_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_erofs_destroy_inode = internal constant [20 x i8] c"erofs_destroy_inode\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_erofs_destroy_inode = dso_local global %struct.static_call_key { ptr @__traceiter_erofs_destroy_inode }, align 4
@__tracepoint_erofs_destroy_inode = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_erofs_destroy_inode, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_erofs_destroy_inode, ptr null, ptr @__traceiter_erofs_destroy_inode, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_erofs_destroy_inode = internal constant ptr @__tracepoint_erofs_destroy_inode, section "__tracepoints_ptrs", align 4
@str__erofs__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_erofs_lookup = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.104 { %struct.anon.105 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.104 { %struct.anon.105 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_erofs_lookup = internal global %struct.trace_event_class { ptr @str__erofs__trace_system_name, ptr @trace_event_raw_event_erofs_lookup, ptr @perf_trace_erofs_lookup, ptr @trace_event_reg, ptr @trace_event_fields_erofs_lookup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_erofs_lookup, i64 24), ptr getelementptr (i8, ptr @event_class_erofs_lookup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_erofs_lookup = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_erofs_lookup, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_erofs_lookup = internal global { [174 x i8], [50 x i8] } { [174 x i8] c"\22dev = (%d,%d), pnid = %llu, name:%s, flags:%x\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->nid, __get_str(name), REC->flags\00", [50 x i8] zeroinitializer }, align 32
@event_erofs_lookup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs_lookup, %union.anon.106 { ptr @__tracepoint_erofs_lookup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs_lookup }, ptr @print_fmt_erofs_lookup, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_erofs_lookup = internal global ptr @event_erofs_lookup, section "_ftrace_events", align 4
@trace_event_fields_erofs_fill_inode = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.104 { %struct.anon.105 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.104 { %struct.anon.105 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.104 { %struct.anon.105 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_erofs_fill_inode = internal global %struct.trace_event_class { ptr @str__erofs__trace_system_name, ptr @trace_event_raw_event_erofs_fill_inode, ptr @perf_trace_erofs_fill_inode, ptr @trace_event_reg, ptr @trace_event_fields_erofs_fill_inode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_erofs_fill_inode, i64 24), ptr getelementptr (i8, ptr @event_class_erofs_fill_inode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_erofs_fill_inode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_erofs_fill_inode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_erofs_fill_inode = internal global { [190 x i8], [34 x i8] } { [190 x i8] c"\22dev = (%d,%d), nid = %llu, blkaddr %u ofs %u, isdir %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->nid, REC->blkaddr, REC->ofs, REC->isdir\00", [34 x i8] zeroinitializer }, align 32
@event_erofs_fill_inode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs_fill_inode, %union.anon.106 { ptr @__tracepoint_erofs_fill_inode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs_fill_inode }, ptr @print_fmt_erofs_fill_inode, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_erofs_fill_inode = internal global ptr @event_erofs_fill_inode, section "_ftrace_events", align 4
@trace_event_fields_erofs_readpage = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.104 { %struct.anon.105 { ptr @.str.23, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.104 { %struct.anon.105 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.104 { %struct.anon.105 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.104 { %struct.anon.105 { ptr @.str.28, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_erofs_readpage = internal global %struct.trace_event_class { ptr @str__erofs__trace_system_name, ptr @trace_event_raw_event_erofs_readpage, ptr @perf_trace_erofs_readpage, ptr @trace_event_reg, ptr @trace_event_fields_erofs_readpage, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_erofs_readpage, i64 24), ptr getelementptr (i8, ptr @event_class_erofs_readpage, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_erofs_readpage = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_erofs_readpage, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_erofs_readpage = internal global { [275 x i8], [77 x i8] } { [275 x i8] c"\22dev = (%d,%d), nid = %llu, %s, index = %lu, uptodate = %d raw = %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->nid, __print_symbolic(REC->dir, { 0, \22FILE\22 }, { 1, \22DIR\22 }), (unsigned long)REC->index, REC->uptodate, REC->raw\00", [77 x i8] zeroinitializer }, align 32
@event_erofs_readpage = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs_readpage, %union.anon.106 { ptr @__tracepoint_erofs_readpage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs_readpage }, ptr @print_fmt_erofs_readpage, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_erofs_readpage = internal global ptr @event_erofs_readpage, section "_ftrace_events", align 4
@trace_event_fields_erofs_readpages = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.104 { %struct.anon.105 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.104 { %struct.anon.105 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.104 { %struct.anon.105 { ptr @.str.28, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_erofs_readpages = internal global %struct.trace_event_class { ptr @str__erofs__trace_system_name, ptr @trace_event_raw_event_erofs_readpages, ptr @perf_trace_erofs_readpages, ptr @trace_event_reg, ptr @trace_event_fields_erofs_readpages, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_erofs_readpages, i64 24), ptr getelementptr (i8, ptr @event_class_erofs_readpages, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_erofs_readpages = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_erofs_readpages, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_erofs_readpages = internal global { [209 x i8], [47 x i8] } { [209 x i8] c"\22dev = (%d,%d), nid = %llu, start = %lu nrpage = %u raw = %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->nid, (unsigned long)REC->start, REC->nrpage, REC->raw\00", [47 x i8] zeroinitializer }, align 32
@event_erofs_readpages = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs_readpages, %union.anon.106 { ptr @__tracepoint_erofs_readpages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs_readpages }, ptr @print_fmt_erofs_readpages, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_erofs_readpages = internal global ptr @event_erofs_readpages, section "_ftrace_events", align 4
@trace_event_fields_erofs__map_blocks_enter = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.104 { %struct.anon.105 { ptr @.str.36, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.104 { %struct.anon.105 { ptr @.str.38, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.104 { %struct.anon.105 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_erofs__map_blocks_enter = internal global %struct.trace_event_class { ptr @str__erofs__trace_system_name, ptr @trace_event_raw_event_erofs__map_blocks_enter, ptr @perf_trace_erofs__map_blocks_enter, ptr @trace_event_reg, ptr @trace_event_fields_erofs__map_blocks_enter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_erofs__map_blocks_enter, i64 24), ptr getelementptr (i8, ptr @event_class_erofs__map_blocks_enter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_erofs__map_blocks_enter = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_erofs__map_blocks_enter, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_erofs__map_blocks_enter = internal global { [246 x i8], [42 x i8] } { [246 x i8] c"\22dev = (%d,%d), nid = %llu, la %llu llen %llu flags %s\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->nid, REC->la, REC->llen, REC->flags ? __print_flags(REC->flags, \22|\22, { 0x0001, \22RAW\22 }) : \22NULL\22\00", [42 x i8] zeroinitializer }, align 32
@event_erofs_map_blocks_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs__map_blocks_enter, %union.anon.106 { ptr @__tracepoint_erofs_map_blocks_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs__map_blocks_enter }, ptr @print_fmt_erofs__map_blocks_enter, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_erofs_map_blocks_enter = internal global ptr @event_erofs_map_blocks_enter, section "_ftrace_events", align 4
@event_z_erofs_map_blocks_iter_enter = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs__map_blocks_enter, %union.anon.106 { ptr @__tracepoint_z_erofs_map_blocks_iter_enter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs__map_blocks_enter }, ptr @print_fmt_erofs__map_blocks_enter, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_z_erofs_map_blocks_iter_enter = internal global ptr @event_z_erofs_map_blocks_iter_enter, section "_ftrace_events", align 4
@trace_event_fields_erofs__map_blocks_exit = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.104 { %struct.anon.105 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.104 { %struct.anon.105 { ptr @.str.36, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.104 { %struct.anon.105 { ptr @.str.43, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.104 { %struct.anon.105 { ptr @.str.38, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.104 { %struct.anon.105 { ptr @.str.44, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon.104 { %struct.anon.105 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.104 { %struct.anon.105 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_erofs__map_blocks_exit = internal global %struct.trace_event_class { ptr @str__erofs__trace_system_name, ptr @trace_event_raw_event_erofs__map_blocks_exit, ptr @perf_trace_erofs__map_blocks_exit, ptr @trace_event_reg, ptr @trace_event_fields_erofs__map_blocks_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_erofs__map_blocks_exit, i64 24), ptr getelementptr (i8, ptr @event_class_erofs__map_blocks_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_erofs__map_blocks_exit = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_erofs__map_blocks_exit, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_erofs__map_blocks_exit = internal global { [423 x i8], [121 x i8] } { [423 x i8] c"\22dev = (%d,%d), nid = %llu, flags %s la %llu pa %llu llen %llu plen %llu mflags %s ret %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->nid, REC->flags ? __print_flags(REC->flags, \22|\22, { 0x0001, \22RAW\22 }) : \22NULL\22, REC->la, REC->pa, REC->llen, REC->plen, __print_flags(REC->mflags, \22\22, { (1 << BH_Mapped), \22M\22 }, { (1 << BH_Meta), \22I\22 }, { (1 << BH_Encoded), \22E\22 }), REC->ret\00", [121 x i8] zeroinitializer }, align 32
@event_erofs_map_blocks_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs__map_blocks_exit, %union.anon.106 { ptr @__tracepoint_erofs_map_blocks_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs__map_blocks_exit }, ptr @print_fmt_erofs__map_blocks_exit, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_erofs_map_blocks_exit = internal global ptr @event_erofs_map_blocks_exit, section "_ftrace_events", align 4
@event_z_erofs_map_blocks_iter_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs__map_blocks_exit, %union.anon.106 { ptr @__tracepoint_z_erofs_map_blocks_iter_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs__map_blocks_exit }, ptr @print_fmt_erofs__map_blocks_exit, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_z_erofs_map_blocks_iter_exit = internal global ptr @event_z_erofs_map_blocks_iter_exit, section "_ftrace_events", align 4
@trace_event_fields_erofs_destroy_inode = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.104 { %struct.anon.105 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.104 { %struct.anon.105 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_erofs_destroy_inode = internal global %struct.trace_event_class { ptr @str__erofs__trace_system_name, ptr @trace_event_raw_event_erofs_destroy_inode, ptr @perf_trace_erofs_destroy_inode, ptr @trace_event_reg, ptr @trace_event_fields_erofs_destroy_inode, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_erofs_destroy_inode, i64 24), ptr getelementptr (i8, ptr @event_class_erofs_destroy_inode, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_erofs_destroy_inode = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_erofs_destroy_inode, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_erofs_destroy_inode = internal global { [125 x i8], [35 x i8] } { [125 x i8] c"\22dev = (%d,%d), nid = %llu\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->nid\00", [35 x i8] zeroinitializer }, align 32
@event_erofs_destroy_inode = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_erofs_destroy_inode, %union.anon.106 { ptr @__tracepoint_erofs_destroy_inode }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_erofs_destroy_inode }, ptr @print_fmt_erofs_destroy_inode, ptr null, %union.anon.107 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_erofs_destroy_inode = internal global ptr @event_erofs_destroy_inode, section "_ftrace_events", align 4
@__bpf_trace_tp_map_erofs_lookup = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_erofs_lookup, ptr @__bpf_trace_erofs_lookup, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_erofs_fill_inode = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_erofs_fill_inode, ptr @__bpf_trace_erofs_fill_inode, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_erofs_readpage = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_erofs_readpage, ptr @__bpf_trace_erofs_readpage, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_erofs_readpages = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_erofs_readpages, ptr @__bpf_trace_erofs_readpages, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_erofs_map_blocks_enter = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_erofs_map_blocks_enter, ptr @__bpf_trace_erofs__map_blocks_enter, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_z_erofs_map_blocks_iter_enter = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_z_erofs_map_blocks_iter_enter, ptr @__bpf_trace_erofs__map_blocks_enter, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_erofs_map_blocks_exit = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_erofs_map_blocks_exit, ptr @__bpf_trace_erofs__map_blocks_exit, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_z_erofs_map_blocks_iter_exit = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_z_erofs_map_blocks_iter_exit, ptr @__bpf_trace_erofs__map_blocks_exit, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_erofs_destroy_inode = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_erofs_destroy_inode, ptr @__bpf_trace_erofs_destroy_inode, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@_erofs_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013erofs: (device %s): %s: %pV\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"_erofs_err\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/erofs/super.c\00", [47 x i8] zeroinitializer }, align 32
@_erofs_err._entry_ptr = internal global ptr @_erofs_err._entry, section ".printk_index", align 4
@_erofs_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016erofs: (device %s): %pV\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_erofs_info\00", [20 x i8] zeroinitializer }, align 32
@_erofs_info._entry_ptr = internal global ptr @_erofs_info._entry, section ".printk_index", align 4
@__UNIQUE_ID_alias361 = internal constant [21 x i8] c"erofs.alias=fs-erofs\00", section ".modinfo", align 1
@erofs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.54, i32 1, ptr @erofs_init_fs_context, ptr null, ptr null, ptr @erofs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@erofs_inode_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@erofs_sops = dso_local constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @erofs_alloc_inode, ptr null, ptr @erofs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr @erofs_put_super, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @erofs_statfs, ptr null, ptr null, ptr @erofs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_erofs__362_916_erofs_module_init6 = internal global ptr @erofs_module_init, section ".initcall6.init", align 4
@__exitcall_erofs_module_exit = internal global ptr @erofs_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description363 = internal constant [43 x i8] c"erofs.description=Enhanced ROM File System\00", section ".modinfo", align 1
@__UNIQUE_ID_author364 = internal constant [68 x i8] c"erofs.author=Gao Xiang, Chao Yu, Miao Xie, CONSUMER BG, HUAWEI Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [26 x i8] c"erofs.file=fs/erofs/erofs\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [18 x i8] c"erofs.license=GPL\00", section ".modinfo", align 1
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dev_t\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"erofs_nid_t\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nid\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dev = (%d,%d), pnid = %llu, name:%s, flags:%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"erofs_blk_t\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"blkaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ofs\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isdir\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"dev = (%d,%d), nid = %llu, blkaddr %u ofs %u, isdir %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uptodate\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"dev = (%d,%d), nid = %llu, %s, index = %lu, uptodate = %d raw = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@trace_raw_output_erofs_readpage.symbols = internal constant { [3 x %struct.trace_print_flags], [40 x i8] } { [3 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.30 }, %struct.trace_print_flags { i32 1, ptr @.str.31 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FILE\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIR\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nrpage\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"dev = (%d,%d), nid = %llu, start = %lu nrpage = %u raw = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"erofs_off_t\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"la\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u64\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"llen\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dev = (%d,%d), nid = %llu, la %llu llen %llu flags %s\0A\00", [41 x i8] zeroinitializer }, align 32
@trace_raw_output_erofs__map_blocks_enter.__flags = internal constant { [2 x %struct.trace_print_flags], [16 x i8] } { [2 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.40 }, %struct.trace_print_flags { i32 -1, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RAW\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NULL\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pa\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plen\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mflags\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"dev = (%d,%d), nid = %llu, flags %s la %llu pa %llu llen %llu plen %llu mflags %s ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@trace_raw_output_erofs__map_blocks_exit.__flags = internal constant { [2 x %struct.trace_print_flags], [16 x i8] } { [2 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.40 }, %struct.trace_print_flags { i32 -1, ptr null }], [16 x i8] zeroinitializer }, align 32
@trace_raw_output_erofs__map_blocks_exit.__flags.48 = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 16, ptr @.str.49 }, %struct.trace_print_flags { i32 8192, ptr @.str.50 }, %struct.trace_print_flags { i32 65536, ptr @.str.51 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev = (%d,%d), nid = %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@erofs_init_fs_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctx->devs->rwsem\00", [46 x i8] zeroinitializer }, align 32
@erofs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @erofs_fc_free, ptr null, ptr @erofs_fc_parse_param, ptr null, ptr @erofs_fc_get_tree, ptr @erofs_fc_reconfigure }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@erofs_fs_parameters = internal constant { [7 x %struct.fs_parameter_spec], [48 x i8] } { [7 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.57, ptr null, i8 0, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.58, ptr null, i8 1, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.59, ptr @fs_param_is_enum, i8 2, i16 0, ptr @erofs_param_cache_strategy }, %struct.fs_parameter_spec { ptr @.str.60, ptr null, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.60, ptr @fs_param_is_enum, i8 4, i16 0, ptr @erofs_dax_param_enums }, %struct.fs_parameter_spec { ptr @.str.61, ptr @fs_param_is_string, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"user_xattr\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cache_strategy\00", [17 x i8] zeroinitializer }, align 32
@erofs_param_cache_strategy = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.62, i32 0 }, %struct.constant_table { ptr @.str.63, i32 1 }, %struct.constant_table { ptr @.str.64, i32 2 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dax\00", [28 x i8] zeroinitializer }, align 32
@erofs_dax_param_enums = internal constant { [3 x %struct.constant_table], [40 x i8] } { [3 x %struct.constant_table] [%struct.constant_table { ptr @.str.65, i32 64 }, %struct.constant_table { ptr @.str.66, i32 128 }, %struct.constant_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"readahead\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"readaround\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"never\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dax options not supported\00", [38 x i8] zeroinitializer }, align 32
@__func__.erofs_fc_fill_super = private unnamed_addr constant [20 x i8] c"erofs_fc_fill_super\00", align 1
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set erofs blksize\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"DAX unsupported by block device. Turning off DAX.\00", [46 x i8] zeroinitializer }, align 32
@erofs_xattr_handlers = external dso_local global [0 x ptr], align 4
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rootino(nid %llu) is not a directory(i_mode %o)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mounted with root inode @ nid %llu.\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.erofs_read_superblock = private unnamed_addr constant [22 x i8] c"erofs_read_superblock\00", align 1
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot read erofs superblock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot find valid erofs superblock\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"blkszbits %u isn't supported on this platform\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"invalid sb_extslots %u (more than a fs block)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bad volume name without NIL terminator\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"EXPERIMENTAL compressed inline data feature in use. Use at your own risk!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__func__.erofs_superblock_csum_verify = private unnamed_addr constant [29 x i8] c"erofs_superblock_csum_verify\00", align 1
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"invalid checksum 0x%08x, 0x%08x expected\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.check_layout_compatibility = private unnamed_addr constant [27 x i8] c"check_layout_compatibility\00", align 1
@.str.80 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"unidentified incompatible feature %x, please upgrade kernel version\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.erofs_load_compr_cfgs = private unnamed_addr constant [22 x i8] c"erofs_load_compr_cfgs\00", align 1
@.str.81 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"try to load compressed fs with unsupported algorithms %x\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.erofs_init_devices = private unnamed_addr constant [19 x i8] c"erofs_init_devices\00", align 1
@.str.82 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"extra devices don't match (ondisk %u, given %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@managed_cache_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @erofs_managed_cache_invalidatepage, ptr @erofs_managed_cache_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@erofs_fast_symlink_iops = external dso_local constant %struct.inode_operations, align 128
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",user_xattr\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c",nouser_xattr\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",noacl\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c",cache_strategy=disabled\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c",cache_strategy=readahead\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c",cache_strategy=readaround\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",dax=always\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",dax=never\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"erofs_inode\00", [20 x i8] zeroinitializer }, align 32
@switch.table.erofs_show_options = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.99 = private unnamed_addr constant [30 x i8] c"str__erofs__trace_system_name\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 36, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [32 x i8] c"trace_event_fields_erofs_lookup\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_erofs_lookup\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"print_fmt_erofs_lookup\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"event_erofs_lookup\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [36 x i8] c"trace_event_fields_erofs_fill_inode\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_erofs_fill_inode\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"print_fmt_erofs_fill_inode\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"event_erofs_fill_inode\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [34 x i8] c"trace_event_fields_erofs_readpage\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_erofs_readpage\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [25 x i8] c"print_fmt_erofs_readpage\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"event_erofs_readpage\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [35 x i8] c"trace_event_fields_erofs_readpages\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_erofs_readpages\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"print_fmt_erofs_readpages\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"event_erofs_readpages\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [43 x i8] c"trace_event_fields_erofs__map_blocks_enter\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [47 x i8] c"trace_event_type_funcs_erofs__map_blocks_enter\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [34 x i8] c"print_fmt_erofs__map_blocks_enter\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [29 x i8] c"event_erofs_map_blocks_enter\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 172, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [36 x i8] c"event_z_erofs_map_blocks_iter_enter\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 179, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [42 x i8] c"trace_event_fields_erofs__map_blocks_exit\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_erofs__map_blocks_exit\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [33 x i8] c"print_fmt_erofs__map_blocks_exit\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [28 x i8] c"event_erofs_map_blocks_exit\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 224, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant [35 x i8] c"event_z_erofs_map_blocks_iter_exit\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 231, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant [39 x i8] c"trace_event_fields_erofs_destroy_inode\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_erofs_destroy_inode\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"print_fmt_erofs_destroy_inode\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [26 x i8] c"event_erofs_destroy_inode\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 34, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 49, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [14 x i8] c"erofs_fs_type\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 779, i32 32 }
@___asan_gen_.216 = private unnamed_addr constant [11 x i8] c"erofs_sops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 908, i32 31 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 29, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 55, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 260, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 81, i32 1 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 114, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 144, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 186, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant [32 x i8] c"../include/trace/events/erofs.h\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 238, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 781, i32 20 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 736, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [18 x i8] c"erofs_context_ops\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 715, i32 43 }
@___asan_gen_.384 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 378, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c"erofs_fs_parameters\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 412, i32 39 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 413, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 414, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 415, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [27 x i8] c"erofs_param_cache_strategy\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 399, i32 36 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 417, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [22 x i8] c"erofs_dax_param_enums\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 406, i32 36 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 419, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 400, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 401, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 402, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 407, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 408, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 443, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 590, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 612, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 638, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 658, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 292, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 303, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 318, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 328, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 349, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 366, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 44, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 70, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 118, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 173, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 241, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.478, i32 717, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [19 x i8] c"managed_cache_aops\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 554, i32 46 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 414, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.487, i32 452, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 883, i32 17 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 885, i32 17 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 889, i32 17 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 891, i32 17 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 895, i32 17 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 897, i32 17 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 899, i32 17 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 902, i32 17 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 904, i32 17 }
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.517 = private constant [20 x i8] c"../fs/erofs/super.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 794, i32 41 }
@___asan_gen_.519 = private unnamed_addr constant [32 x i8] c"switch.table.erofs_show_options\00", align 1
@llvm.compiler.used = appending global [194 x ptr] [ptr @__UNIQUE_ID_alias361, ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_license366, ptr @__bpf_trace_tp_map_erofs_destroy_inode, ptr @__bpf_trace_tp_map_erofs_fill_inode, ptr @__bpf_trace_tp_map_erofs_lookup, ptr @__bpf_trace_tp_map_erofs_map_blocks_enter, ptr @__bpf_trace_tp_map_erofs_map_blocks_exit, ptr @__bpf_trace_tp_map_erofs_readpage, ptr @__bpf_trace_tp_map_erofs_readpages, ptr @__bpf_trace_tp_map_z_erofs_map_blocks_iter_enter, ptr @__bpf_trace_tp_map_z_erofs_map_blocks_iter_exit, ptr @__event_erofs_destroy_inode, ptr @__event_erofs_fill_inode, ptr @__event_erofs_lookup, ptr @__event_erofs_map_blocks_enter, ptr @__event_erofs_map_blocks_exit, ptr @__event_erofs_readpage, ptr @__event_erofs_readpages, ptr @__event_z_erofs_map_blocks_iter_enter, ptr @__event_z_erofs_map_blocks_iter_exit, ptr @__exitcall_erofs_module_exit, ptr @__initcall__kmod_erofs__362_916_erofs_module_init6, ptr @__tracepoint_erofs_destroy_inode, ptr @__tracepoint_erofs_fill_inode, ptr @__tracepoint_erofs_lookup, ptr @__tracepoint_erofs_map_blocks_enter, ptr @__tracepoint_erofs_map_blocks_exit, ptr @__tracepoint_erofs_readpage, ptr @__tracepoint_erofs_readpages, ptr @__tracepoint_ptr_erofs_destroy_inode, ptr @__tracepoint_ptr_erofs_fill_inode, ptr @__tracepoint_ptr_erofs_lookup, ptr @__tracepoint_ptr_erofs_map_blocks_enter, ptr @__tracepoint_ptr_erofs_map_blocks_exit, ptr @__tracepoint_ptr_erofs_readpage, ptr @__tracepoint_ptr_erofs_readpages, ptr @__tracepoint_ptr_z_erofs_map_blocks_iter_enter, ptr @__tracepoint_ptr_z_erofs_map_blocks_iter_exit, ptr @__tracepoint_z_erofs_map_blocks_iter_enter, ptr @__tracepoint_z_erofs_map_blocks_iter_exit, ptr @_erofs_err._entry, ptr @_erofs_err._entry_ptr, ptr @_erofs_info._entry, ptr @_erofs_info._entry_ptr, ptr @erofs_module_exit, ptr @event_class_erofs__map_blocks_enter, ptr @event_class_erofs__map_blocks_exit, ptr @event_class_erofs_destroy_inode, ptr @event_class_erofs_fill_inode, ptr @event_class_erofs_lookup, ptr @event_class_erofs_readpage, ptr @event_class_erofs_readpages, ptr @event_erofs_destroy_inode, ptr @event_erofs_fill_inode, ptr @event_erofs_lookup, ptr @event_erofs_map_blocks_enter, ptr @event_erofs_map_blocks_exit, ptr @event_erofs_readpage, ptr @event_erofs_readpages, ptr @event_z_erofs_map_blocks_iter_enter, ptr @event_z_erofs_map_blocks_iter_exit, ptr @str__erofs__trace_system_name, ptr @trace_event_fields_erofs_lookup, ptr @trace_event_type_funcs_erofs_lookup, ptr @print_fmt_erofs_lookup, ptr @trace_event_fields_erofs_fill_inode, ptr @trace_event_type_funcs_erofs_fill_inode, ptr @print_fmt_erofs_fill_inode, ptr @trace_event_fields_erofs_readpage, ptr @trace_event_type_funcs_erofs_readpage, ptr @print_fmt_erofs_readpage, ptr @trace_event_fields_erofs_readpages, ptr @trace_event_type_funcs_erofs_readpages, ptr @print_fmt_erofs_readpages, ptr @trace_event_fields_erofs__map_blocks_enter, ptr @trace_event_type_funcs_erofs__map_blocks_enter, ptr @print_fmt_erofs__map_blocks_enter, ptr @trace_event_fields_erofs__map_blocks_exit, ptr @trace_event_type_funcs_erofs__map_blocks_exit, ptr @print_fmt_erofs__map_blocks_exit, ptr @trace_event_fields_erofs_destroy_inode, ptr @trace_event_type_funcs_erofs_destroy_inode, ptr @print_fmt_erofs_destroy_inode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @erofs_fs_type, ptr @erofs_sops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @trace_raw_output_erofs_readpage.symbols, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @trace_raw_output_erofs__map_blocks_enter.__flags, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @trace_raw_output_erofs__map_blocks_exit.__flags, ptr @trace_raw_output_erofs__map_blocks_exit.__flags.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @erofs_init_fs_context.__key, ptr @.str.55, ptr @erofs_context_ops, ptr @xa_init_flags.__key, ptr @.str.56, ptr @erofs_fs_parameters, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @erofs_param_cache_strategy, ptr @.str.60, ptr @erofs_dax_param_enums, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @managed_cache_aops, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @switch.table.erofs_show_options], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__erofs__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_erofs_lookup to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_erofs_lookup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_erofs_lookup to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_erofs_lookup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_erofs_fill_inode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_erofs_fill_inode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_erofs_fill_inode to i32), i32 190, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_erofs_fill_inode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_erofs_readpage to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_erofs_readpage to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_erofs_readpage to i32), i32 275, i32 352, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_erofs_readpage to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_erofs_readpages to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_erofs_readpages to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_erofs_readpages to i32), i32 209, i32 256, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_erofs_readpages to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_erofs__map_blocks_enter to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_erofs__map_blocks_enter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_erofs__map_blocks_enter to i32), i32 246, i32 288, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_erofs_map_blocks_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_z_erofs_map_blocks_iter_enter to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_erofs__map_blocks_exit to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_erofs__map_blocks_exit to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_erofs__map_blocks_exit to i32), i32 423, i32 544, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_erofs_map_blocks_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_z_erofs_map_blocks_iter_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_erofs_destroy_inode to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_erofs_destroy_inode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_erofs_destroy_inode to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_erofs_destroy_inode to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_erofs_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_erofs_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_sops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_erofs_readpage.symbols to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_erofs__map_blocks_enter.__flags to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_erofs__map_blocks_exit.__flags to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_erofs__map_blocks_exit.__flags.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_init_fs_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_fs_parameters to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_param_cache_strategy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_dax_param_enums to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @managed_cache_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.erofs_show_options to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_erofs_lookup(ptr nocapture readnone %__data, ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_erofs_lookup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_erofs_fill_inode(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %isdir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_erofs_fill_inode, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %isdir) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_erofs_readpage(ptr nocapture readnone %__data, ptr noundef %page, i1 noundef zeroext %raw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_erofs_readpage, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %page, i1 noundef zeroext %raw) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_erofs_readpages(ptr nocapture readnone %__data, ptr noundef %inode, i32 noundef %start, i32 noundef %nrpage, i1 noundef zeroext %raw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_erofs_readpages, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, i32 noundef %start, i32 noundef %nrpage, i1 noundef zeroext %raw) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_erofs_map_blocks_enter(ptr nocapture readnone %__data, ptr noundef %inode, ptr noundef %map, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_erofs_map_blocks_enter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, ptr noundef %map, i32 noundef %flags) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_z_erofs_map_blocks_iter_enter(ptr nocapture readnone %__data, ptr noundef %inode, ptr noundef %map, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_z_erofs_map_blocks_iter_enter, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, ptr noundef %map, i32 noundef %flags) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_erofs_map_blocks_exit(ptr nocapture readnone %__data, ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_erofs_map_blocks_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %ret) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_z_erofs_map_blocks_iter_exit(ptr nocapture readnone %__data, ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_z_erofs_map_blocks_iter_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %ret) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_erofs_destroy_inode(ptr nocapture readnone %__data, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_erofs_destroy_inode, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %inode) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_erofs_lookup(ptr noundef %__data, ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !301

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 8
  %tobool.not.i31 = icmp eq ptr %4, null
  %spec.select.i = select i1 %tobool.not.i31, ptr @.str.5, ptr %4
  %call.i32 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #18
  %add = add i32 %call.i32, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = shl i32 %call.i32, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %__data_loc_name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %dir, i32 -56
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr, align 8
  %nid6 = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %nid6 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %nid6, align 8
  %add.ptr8 = getelementptr i8, ptr %call3, i32 32
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 8
  %tobool10.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool10.not, ptr @.str.5, ptr %15
  %call13 = call ptr @strcpy(ptr noundef %add.ptr8, ptr noundef nonnull %spec.select) #19
  %flags14 = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags, ptr %flags14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_erofs_lookup(ptr noundef %__data, ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !302
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.5, ptr %3
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #18
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %4 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf_events, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !290) #15
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %14 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %15, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %13, align 4
  %tobool.not.i56.not = icmp eq ptr %17, null
  br i1 %tobool.not.i56.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__regs, align 4
  %20 = call ptr @llvm.returnaddress(i32 0) #15
  %21 = ptrtoint ptr %20 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %19, i32 0, i32 15
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i, align 4
  %23 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %24 = ptrtoint ptr %23 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %19, i32 0, i32 11
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx2.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !290) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %19, i32 0, i32 13
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %19, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i, ptr %__data_loc_name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call13, i32 0, i32 1
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %dir, i32 -56
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr, align 8
  %nid18 = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %nid18 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %nid18, align 8
  %add.ptr21 = getelementptr i8, ptr %call13, i32 32
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i, align 8
  %tobool23.not = icmp eq ptr %39, null
  %spec.select = select i1 %tobool23.not, ptr @.str.5, ptr %39
  %call26 = call ptr @strcpy(ptr noundef %add.ptr21, ptr noundef nonnull %spec.select) #19
  %flags27 = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %flags, ptr %flags27, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %13, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_erofs_fill_inode(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %isdir) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !301

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %nid6 = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %nid6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %nid6, align 8
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info, align 16
  %meta_blkaddr.i = getelementptr inbounds %struct.erofs_sb_info, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %meta_blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %meta_blkaddr.i, align 4
  %islotbits.i = getelementptr inbounds %struct.erofs_sb_info, ptr %13, i32 0, i32 16
  %16 = ptrtoint ptr %islotbits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %islotbits.i, align 2
  %sh_prom.i = zext i8 %17 to i64
  %shl.i = shl i64 %9, %sh_prom.i
  %18 = lshr i64 %shl.i, 12
  %19 = trunc i64 %18 to i32
  %conv = add i32 %15, %19
  %blkaddr = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call3, i32 0, i32 3
  %20 = ptrtoint ptr %blkaddr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %blkaddr, align 8
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info11 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info11, align 16
  %islotbits.i37 = getelementptr inbounds %struct.erofs_sb_info, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %islotbits.i37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %islotbits.i37, align 2
  %sh_prom.i38 = zext i8 %25 to i64
  %shl.i39 = shl i64 %9, %sh_prom.i38
  %26 = trunc i64 %shl.i39 to i32
  %conv14 = and i32 %26, 4095
  %ofs = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call3, i32 0, i32 4
  %27 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv14, ptr %ofs, align 4
  %isdir15 = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call3, i32 0, i32 5
  %28 = ptrtoint ptr %isdir15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %isdir, ptr %isdir15, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_erofs_fill_inode(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %isdir) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !302
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !290) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr, align 8
  %nid18 = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %nid18 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %nid18, align 8
  %35 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info, align 16
  %meta_blkaddr.i = getelementptr inbounds %struct.erofs_sb_info, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %meta_blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %meta_blkaddr.i, align 4
  %islotbits.i = getelementptr inbounds %struct.erofs_sb_info, ptr %37, i32 0, i32 16
  %40 = ptrtoint ptr %islotbits.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %islotbits.i, align 2
  %sh_prom.i = zext i8 %41 to i64
  %shl.i = shl i64 %33, %sh_prom.i
  %42 = lshr i64 %shl.i, 12
  %43 = trunc i64 %42 to i32
  %conv = add i32 %39, %43
  %blkaddr = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call13, i32 0, i32 3
  %44 = ptrtoint ptr %blkaddr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv, ptr %blkaddr, align 8
  %45 = load ptr, ptr %i_sb, align 4
  %s_fs_info23 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info23, align 16
  %islotbits.i61 = getelementptr inbounds %struct.erofs_sb_info, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %islotbits.i61 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %islotbits.i61, align 2
  %sh_prom.i62 = zext i8 %49 to i64
  %shl.i63 = shl i64 %33, %sh_prom.i62
  %50 = trunc i64 %shl.i63 to i32
  %conv26 = and i32 %50, 4095
  %ofs = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call13, i32 0, i32 4
  %51 = ptrtoint ptr %ofs to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv26, ptr %ofs, align 4
  %isdir27 = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %call13, i32 0, i32 5
  %52 = ptrtoint ptr %isdir27 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %isdir, ptr %isdir27, align 8
  %53 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rctx, align 4
  %55 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %54, ptr noundef %__data, i64 noundef 1, ptr noundef %56, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_erofs_readpage(ptr noundef %__data, ptr noundef %page, i1 noundef zeroext %raw) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %raw to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !301

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dev, align 8
  %12 = load ptr, ptr %mapping, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 -56
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr, align 8
  %nid9 = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call3, i32 0, i32 2
  %17 = ptrtoint ptr %nid9 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %nid9, align 8
  %18 = load ptr, ptr %mapping, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 8
  %23 = and i16 %22, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %23)
  %cmp = icmp eq i16 %23, 16384
  %conv12 = zext i1 %cmp to i32
  %dir = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call3, i32 0, i32 3
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv12, ptr %dir, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 4
  %index13 = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call3, i32 0, i32 4
  %27 = ptrtoint ptr %index13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %index13, align 4
  %28 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !300

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !300

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.21) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !303
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %32, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.PageUptodate.exit_crit_edge, label %do.end.i.i

folio_flags.exit.i.i.PageUptodate.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %PageUptodate.exit

do.end.i.i:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  br label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %do.end.i.i, %folio_flags.exit.i.i.PageUptodate.exit_crit_edge
  %.lobit.i = lshr exact i32 %38, 2
  %uptodate = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call3, i32 0, i32 5
  %39 = ptrtoint ptr %uptodate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.lobit.i, ptr %uptodate, align 8
  %raw16 = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call3, i32 0, i32 6
  %40 = ptrtoint ptr %raw16 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %raw16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %PageUptodate.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_erofs_readpage(ptr noundef %__data, ptr noundef %page, i1 noundef zeroext %raw) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %raw to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !302
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #15
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !290) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mapping, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call14, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dev, align 8
  %36 = load ptr, ptr %mapping, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 -56
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr, align 8
  %nid21 = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call14, i32 0, i32 2
  %41 = ptrtoint ptr %nid21 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %nid21, align 8
  %42 = load ptr, ptr %mapping, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 8
  %47 = and i16 %46, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %47)
  %cmp = icmp eq i16 %47, 16384
  %conv25 = zext i1 %cmp to i32
  %dir = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call14, i32 0, i32 3
  %48 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv25, ptr %dir, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 4
  %index26 = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call14, i32 0, i32 4
  %51 = ptrtoint ptr %index26 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %index26, align 4
  %52 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !300

if.then.i.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %54, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %55, %if.end.i.i ]
  %56 = inttoptr i32 %retval.0.i.i to ptr
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !300

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.21) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !303
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %56, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i.not.i = icmp eq i32 %62, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.PageUptodate.exit_crit_edge, label %do.end.i.i

folio_flags.exit.i.i.PageUptodate.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %PageUptodate.exit

do.end.i.i:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  br label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %do.end.i.i, %folio_flags.exit.i.i.PageUptodate.exit_crit_edge
  %.lobit.i = lshr exact i32 %62, 2
  %uptodate = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call14, i32 0, i32 5
  %63 = ptrtoint ptr %uptodate to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.lobit.i, ptr %uptodate, align 8
  %raw29 = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %call14, i32 0, i32 6
  %64 = ptrtoint ptr %raw29 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool, ptr %raw29, align 4
  %65 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rctx, align 4
  %67 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %66, ptr noundef %__data, i64 noundef 1, ptr noundef %68, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %PageUptodate.exit, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_erofs_readpages(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %start, i32 noundef %nrpage, i1 noundef zeroext %raw) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %raw to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !301

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #15
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %nid7 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %nid7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %nid7, align 8
  %start8 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %start8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %start, ptr %start8, align 8
  %nrpage9 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %nrpage9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %nrpage, ptr %nrpage9, align 4
  %raw11 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %raw11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %raw11, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_erofs_readpages(ptr noundef %__data, ptr nocapture noundef readonly %inode, i32 noundef %start, i32 noundef %nrpage, i1 noundef zeroext %raw) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %raw to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !302
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #15
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
  br i1 %tobool.i.not, label %land.lhs.true8, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !290) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call14, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr, align 8
  %nid19 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call14, i32 0, i32 2
  %34 = ptrtoint ptr %nid19 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %nid19, align 8
  %start20 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call14, i32 0, i32 3
  %35 = ptrtoint ptr %start20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %start, ptr %start20, align 8
  %nrpage21 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call14, i32 0, i32 4
  %36 = ptrtoint ptr %nrpage21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %nrpage, ptr %nrpage21, align 4
  %raw23 = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %call14, i32 0, i32 5
  %37 = ptrtoint ptr %raw23 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %raw23, align 8
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call14, i32 noundef 44, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_erofs__map_blocks_enter(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %map, i32 noundef %flags) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !301

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %nid6 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %nid6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %nid6, align 8
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %11 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_la, align 8
  %la = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %la to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %la, align 8
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %14 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_llen, align 8
  %llen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %llen to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %llen, align 8
  %flags7 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %flags, ptr %flags7, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_erofs__map_blocks_enter(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %map, i32 noundef %flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !302
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !290) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr, align 8
  %nid18 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %nid18 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %nid18, align 8
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %35 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %m_la, align 8
  %la = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %la to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %la, align 8
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %38 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %m_llen, align 8
  %llen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %llen to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %llen, align 8
  %flags19 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %flags, ptr %flags19, align 8
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_erofs__map_blocks_exit(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %map, i32 noundef %flags, i32 noundef %ret) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !301

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 72) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %nid6 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %nid6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %nid6, align 8
  %flags7 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags7, align 8
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %12 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %m_la, align 8
  %la = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 4
  %14 = ptrtoint ptr %la to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %la, align 8
  %m_pa = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %15 = ptrtoint ptr %m_pa to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_pa, align 8
  %pa = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %pa to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %pa, align 8
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %18 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_llen, align 8
  %llen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %llen to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %llen, align 8
  %m_plen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %21 = ptrtoint ptr %m_plen to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %m_plen, align 8
  %plen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 7
  %23 = ptrtoint ptr %plen to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %plen, align 8
  %m_flags = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %24 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_flags, align 4
  %mflags = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 8
  %26 = ptrtoint ptr %mflags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mflags, align 8
  %ret8 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call3, i32 0, i32 9
  %27 = ptrtoint ptr %ret8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %ret, ptr %ret8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_erofs__map_blocks_exit(ptr noundef %__data, ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %map, i32 noundef %flags, i32 noundef %ret) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !302
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 76, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !290) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr, align 8
  %nid18 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %nid18 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %nid18, align 8
  %flags19 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %flags, ptr %flags19, align 8
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %36 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_la, align 8
  %la = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 4
  %38 = ptrtoint ptr %la to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %la, align 8
  %m_pa = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %39 = ptrtoint ptr %m_pa to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %m_pa, align 8
  %pa = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %pa to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %pa, align 8
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %42 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %m_llen, align 8
  %llen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %llen to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %llen, align 8
  %m_plen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %45 = ptrtoint ptr %m_plen to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %m_plen, align 8
  %plen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 7
  %47 = ptrtoint ptr %plen to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %plen, align 8
  %m_flags = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %48 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %m_flags, align 4
  %mflags = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 8
  %50 = ptrtoint ptr %mflags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %mflags, align 8
  %ret20 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %call13, i32 0, i32 9
  %51 = ptrtoint ptr %ret20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %ret, ptr %ret20, align 4
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 76, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_erofs_destroy_inode(ptr noundef %__data, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !301

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_destroy_inode, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %nid6 = getelementptr inbounds %struct.trace_event_raw_erofs_destroy_inode, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %nid6 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %nid6, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_erofs_destroy_inode(ptr noundef %__data, ptr nocapture noundef readonly %inode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !302
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !290) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !290) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_destroy_inode, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dev, align 8
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr, align 8
  %nid18 = getelementptr inbounds %struct.trace_event_raw_erofs_destroy_inode, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %nid18 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %nid18, align 8
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_erofs_lookup(ptr noundef %__data, ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %dir to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %dentry to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %flags to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_erofs_fill_inode(ptr noundef %__data, ptr noundef %inode, i32 noundef %isdir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %isdir to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_erofs_readpage(ptr noundef %__data, ptr noundef %page, i1 noundef zeroext %raw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %page to i32
  %conv = zext i32 %0 to i64
  %conv5 = zext i1 %raw to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_erofs_readpages(ptr noundef %__data, ptr noundef %inode, i32 noundef %start, i32 noundef %nrpage, i1 noundef zeroext %raw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %start to i64
  %conv8 = zext i32 %nrpage to i64
  %conv13 = zext i1 %raw to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv13) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_erofs__map_blocks_enter(ptr noundef %__data, ptr noundef %inode, ptr noundef %map, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %map to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %flags to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_erofs__map_blocks_exit(ptr noundef %__data, ptr noundef %inode, ptr noundef %map, i32 noundef %flags, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %map to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %flags to i64
  %conv12 = zext i32 %ret to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_erofs_destroy_inode(ptr noundef %__data, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %inode to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_erofs_err(ptr noundef %sb, ptr noundef %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !302
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %s_id, ptr noundef %function, ptr noundef nonnull %vaf) #20
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_erofs_info(ptr noundef %sb, ptr nocapture readnone %function, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #15
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !302
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %s_id, ptr noundef nonnull %vaf) #20
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @erofs_module_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @erofs_fs_type) #15
  tail call void @rcu_barrier() #15
  tail call void @erofs_exit_sysfs() #15
  tail call void @z_erofs_exit_zip_subsystem() #15
  tail call void @z_erofs_lzma_exit() #15
  tail call void @erofs_exit_shrinker() #15
  %0 = load ptr, ptr @erofs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  tail call void @erofs_pcpubuf_exit() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_exit_sysfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @z_erofs_exit_zip_subsystem() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @z_erofs_lzma_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_exit_shrinker() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_pcpubuf_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @erofs_alloc_inode(ptr nocapture noundef readnone %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @erofs_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = call ptr @memset(ptr %call, i32 0, i32 56)
  %vfs_inode = getelementptr inbounds %struct.erofs_inode, ptr %call, i32 0, i32 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %0 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_op, align 8
  %cmp = icmp eq ptr %1, @erofs_fast_symlink_iops
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  %xattr_shared_xattrs = getelementptr i8, ptr %inode, i32 -36
  %5 = ptrtoint ptr %xattr_shared_xattrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xattr_shared_xattrs, align 4
  tail call void @kfree(ptr noundef %6) #15
  %7 = load ptr, ptr @erofs_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_put_super(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !301

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 769, 0\0A.popsection", ""() #15, !srcloc !305
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @erofs_unregister_sysfs(ptr noundef %sb) #15
  tail call void @erofs_shrinker_unregister(ptr noundef %sb) #15
  %managed_cache = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %managed_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %managed_cache, align 8
  tail call void @iput(ptr noundef %3) #15
  %4 = ptrtoint ptr %managed_cache to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %managed_cache, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @erofs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i = and i32 %8, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %7, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %s_magic = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_magic, align 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %12 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4096, ptr %f_bsize, align 4
  %total_blocks = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %total_blocks, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %15 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %16 = call ptr @memset(ptr %f_bfree, i32 0, i32 16)
  %17 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %f_files, align 8
  %inos = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 21
  %18 = ptrtoint ptr %inos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %inos, align 8
  %sub = xor i64 %19, -1
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %20 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %sub, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %21 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %or4.i.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %22 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_show_options(ptr noundef %seq, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %mount_opt = getelementptr inbounds %struct.erofs_mount_opts, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.87..str.86 = select i1 %tobool.not, ptr @.str.87, ptr @.str.86
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.87..str.86) #15
  %6 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mount_opt, align 4
  %and3 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %.str.89.sink = select i1 %tobool4.not, ptr @.str.89, ptr @.str.88
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %.str.89.sink) #15
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %10 = icmp ult i8 %9, 3
  br i1 %10, label %switch.lookup, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %11 = sext i8 %9 to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.erofs_show_options, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %switch.load) #15
  br label %if.end24

if.end24:                                         ; preds = %switch.lookup, %entry.if.end24_crit_edge
  %13 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mount_opt, align 4
  %and26 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.93) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  %15 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mount_opt, align 4
  %and31 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end34_crit_edge, label %if.then33

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.94) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end29.if.end34_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_module_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.95, i32 noundef 840, i32 noundef 0, i32 noundef 131072, ptr noundef nonnull @erofs_inode_init_once) #15
  store ptr %call, ptr @erofs_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @erofs_init_shrinker() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.shrinker_err_crit_edge

if.end.shrinker_err_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %shrinker_err

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @z_erofs_lzma_init() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.lzma_err_crit_edge

if.end4.lzma_err_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %lzma_err

if.end8:                                          ; preds = %if.end4
  tail call void @erofs_pcpubuf_init() #15
  %call9 = tail call i32 @z_erofs_init_zip_subsystem() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.zip_err_crit_edge

if.end8.zip_err_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %zip_err

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @erofs_init_sysfs() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.sysfs_err_crit_edge

if.end12.sysfs_err_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %sysfs_err

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @register_filesystem(ptr noundef nonnull @erofs_fs_type) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %fs_err

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

fs_err:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @erofs_exit_sysfs() #15
  br label %sysfs_err

sysfs_err:                                        ; preds = %fs_err, %if.end12.sysfs_err_crit_edge
  %err.0 = phi i32 [ %call13, %if.end12.sysfs_err_crit_edge ], [ %call17, %fs_err ]
  tail call void @z_erofs_exit_zip_subsystem() #15
  br label %zip_err

zip_err:                                          ; preds = %sysfs_err, %if.end8.zip_err_crit_edge
  %err.1 = phi i32 [ %call9, %if.end8.zip_err_crit_edge ], [ %err.0, %sysfs_err ]
  tail call void @z_erofs_lzma_exit() #15
  br label %lzma_err

lzma_err:                                         ; preds = %zip_err, %if.end4.lzma_err_crit_edge
  %err.2 = phi i32 [ %call5, %if.end4.lzma_err_crit_edge ], [ %err.1, %zip_err ]
  tail call void @erofs_exit_shrinker() #15
  br label %shrinker_err

shrinker_err:                                     ; preds = %lzma_err, %if.end.shrinker_err_crit_edge
  %err.3 = phi i32 [ %call1, %if.end.shrinker_err_crit_edge ], [ %err.2, %lzma_err ]
  %0 = load ptr, ptr @erofs_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #15
  br label %cleanup

cleanup:                                          ; preds = %shrinker_err, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16.cleanup_crit_edge ], [ %err.3, %shrinker_err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_erofs_lookup(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %nid = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nid, align 8
  %__data_loc_name = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__data_loc_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_loc_name, align 8
  %and2 = and i32 %7, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and2
  %flags3 = getelementptr inbounds %struct.trace_event_raw_erofs_lookup, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags3, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %and, i64 noundef %5, ptr noundef %add.ptr, i32 noundef %9) #15
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_erofs_fill_inode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %nid = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nid, align 8
  %blkaddr = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %blkaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blkaddr, align 8
  %ofs = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ofs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ofs, align 4
  %isdir = getelementptr inbounds %struct.trace_event_raw_erofs_fill_inode, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %isdir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %isdir, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, i32 noundef %shr, i32 noundef %and, i64 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #15
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_erofs_readpage(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %nid = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nid, align 8
  %dir = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 8
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_erofs_readpage.symbols) #15
  %index = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %uptodate = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %uptodate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uptodate, align 8
  %raw = getelementptr inbounds %struct.trace_event_raw_erofs_readpage, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %raw to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %raw, align 4, !range !306
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.29, i32 noundef %shr, i32 noundef %and, i64 noundef %5, ptr noundef %call2, i32 noundef %9, i32 noundef %11, i32 noundef %14) #15
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_erofs_readpages(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %nid = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nid, align 8
  %start = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 8
  %nrpage = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %nrpage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nrpage, align 4
  %raw = getelementptr inbounds %struct.trace_event_raw_erofs_readpages, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %raw to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %raw, align 8, !range !306
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.34, i32 noundef %shr, i32 noundef %and, i64 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %12) #15
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_erofs__map_blocks_enter(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %nid = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nid, align 8
  %la = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %la to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %la, align 8
  %llen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %llen to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %llen, align 8
  %flags2 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_enter, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.41, i32 noundef %11, ptr noundef nonnull @trace_raw_output_erofs__map_blocks_enter.__flags) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call4, %cond.true ], [ @.str.42, %if.end.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.39, i32 noundef %shr, i32 noundef %and, i64 noundef %5, i64 noundef %7, i64 noundef %9, ptr noundef %cond) #15
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_erofs__map_blocks_exit(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %nid = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nid, align 8
  %flags2 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.41, i32 noundef %7, ptr noundef nonnull @trace_raw_output_erofs__map_blocks_exit.__flags) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %call4, %cond.true ], [ @.str.42, %if.end.cond.end_crit_edge ]
  %la = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %la to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %la, align 8
  %pa = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pa to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pa, align 8
  %llen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %llen to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %llen, align 8
  %plen = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %plen to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %plen, align 8
  %mflags = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %mflags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mflags, align 8
  %call6 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.52, i32 noundef %17, ptr noundef nonnull @trace_raw_output_erofs__map_blocks_exit.__flags.48) #15
  %ret7 = getelementptr inbounds %struct.trace_event_raw_erofs__map_blocks_exit, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %ret7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret7, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.47, i32 noundef %shr, i32 noundef %and, i64 noundef %5, ptr noundef %cond, i64 noundef %9, i64 noundef %11, i64 noundef %13, i64 noundef %15, ptr noundef %call6, i32 noundef %19) #15
  %call8 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_erofs_destroy_inode(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_erofs_destroy_inode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %nid = getelementptr inbounds %struct.trace_event_raw_erofs_destroy_inode, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nid, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.53, i32 noundef %shr, i32 noundef %and, i64 noundef %5) #15
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
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
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_init_fs_context(ptr nocapture noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 160) #21
  %devs = getelementptr inbounds %struct.erofs_fs_context, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %devs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i16, ptr %devs, align 8
  %tobool3.not = icmp eq ptr %call7.i.i16, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %3 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %fs_private, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i16, ptr noundef nonnull @.str.56, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #15
  %xa_flags.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i16, i32 0, i32 1
  %4 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.xarray, ptr %call7.i.i16, i32 0, i32 2
  %5 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i16, i32 0, i32 1
  %6 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.idr, ptr %call7.i.i16, i32 0, i32 2
  %7 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idr_next.i.i, align 8
  %8 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devs, align 8
  %rwsem = getelementptr inbounds %struct.erofs_dev_context, ptr %9, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %rwsem, ptr noundef nonnull @.str.55, ptr noundef nonnull @erofs_init_fs_context.__key) #15
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %call7.i.i, align 8
  %max_sync_decompress_pages.i = getelementptr inbounds %struct.erofs_mount_opts, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %max_sync_decompress_pages.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %max_sync_decompress_pages.i, align 8
  %sync_decompress.i = getelementptr inbounds %struct.erofs_mount_opts, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %sync_decompress.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sync_decompress.i, align 4
  %mount_opt.i = getelementptr inbounds %struct.erofs_mount_opts, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mount_opt.i, align 4
  %or6.i = or i32 %14, 48
  store i32 %or6.i, ptr %mount_opt.i, align 4
  %15 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @erofs_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_kill_sb(ptr noundef %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %0 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -520756766, i32 %1)
  %cmp.not = icmp eq i32 %1, -520756766
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !300

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 750, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kill_block_super(ptr noundef %sb) #15
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %tobool19.not = icmp eq ptr %3, null
  br i1 %tobool19.not, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %devs = getelementptr inbounds %struct.erofs_sb_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devs, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end21.erofs_free_dev_context.exit_crit_edge, label %if.end.i

if.end21.erofs_free_dev_context.exit_crit_edge:   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %erofs_free_dev_context.exit

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @idr_for_each(ptr noundef nonnull %5, ptr noundef nonnull @erofs_release_device_info, ptr noundef null) #15
  tail call void @idr_destroy(ptr noundef nonnull %5) #15
  tail call void @kfree(ptr noundef nonnull %5) #15
  br label %erofs_free_dev_context.exit

erofs_free_dev_context.exit:                      ; preds = %if.end.i, %if.end21.erofs_free_dev_context.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #15
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %s_fs_info, align 16
  br label %cleanup

cleanup:                                          ; preds = %erofs_free_dev_context.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_fc_free(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %devs = getelementptr inbounds %struct.erofs_fs_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devs, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.erofs_free_dev_context.exit_crit_edge, label %if.end.i

entry.erofs_free_dev_context.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %erofs_free_dev_context.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @idr_for_each(ptr noundef nonnull %3, ptr noundef nonnull @erofs_release_device_info, ptr noundef null) #15
  tail call void @idr_destroy(ptr noundef nonnull %3) #15
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %erofs_free_dev_context.exit

erofs_free_dev_context.exit:                      ; preds = %if.end.i, %entry.erofs_free_dev_context.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_fc_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #15
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @erofs_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb17
    i32 3, label %sw.bb19
    i32 4, label %sw.bb23
    i32 5, label %sw.bb27
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %4 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 8, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %mount_opt4 = getelementptr inbounds %struct.erofs_mount_opts, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mount_opt4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mount_opt4, align 4
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %8, 16
  %9 = ptrtoint ptr %mount_opt4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %mount_opt4, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i32 %8, -17
  %10 = ptrtoint ptr %mount_opt4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %mount_opt4, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %11 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 8, !range !306
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  %mount_opt14 = getelementptr inbounds %struct.erofs_mount_opts, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %mount_opt14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mount_opt14, align 4
  br i1 %tobool7.not, label %if.else12, label %if.then8

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  %or11 = or i32 %15, 32
  %16 = ptrtoint ptr %mount_opt14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or11, ptr %mount_opt14, align 4
  br label %cleanup

if.else12:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  %and15 = and i32 %15, -33
  %17 = ptrtoint ptr %mount_opt14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and15, ptr %mount_opt14, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %18 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %conv = trunc i32 %20 to i8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %1, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %log1.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %log1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %log1.i, align 4
  %24 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %23, ptr noundef %25, i8 noundef zeroext 101, ptr noundef nonnull @.str.67) #15
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %log1.i74 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %log1.i74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %log1.i74, align 4
  %28 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %27, ptr noundef %29, i8 noundef zeroext 101, ptr noundef nonnull @.str.67) #15
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 32) #21
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %sw.bb27.cleanup_crit_edge, label %if.end31

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %sw.bb27
  %31 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call32 = call noalias ptr @kstrdup(ptr noundef %33, i32 noundef 3264) #15
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call32, ptr %call7.i.i, align 8
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %devs = getelementptr inbounds %struct.erofs_fs_context, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %devs, align 4
  %rwsem = getelementptr inbounds %struct.erofs_dev_context, ptr %36, i32 0, i32 1
  call void @down_write(ptr noundef %rwsem) #15
  %37 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %devs, align 4
  %call38 = call i32 @idr_alloc(ptr noundef %38, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #15
  %39 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %devs, align 4
  %rwsem40 = getelementptr inbounds %struct.erofs_dev_context, ptr %40, i32 0, i32 1
  call void @up_write(ptr noundef %rwsem40) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp41 = icmp slt i32 %call38, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %42) #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %devs, align 4
  %extra_devices = getelementptr inbounds %struct.erofs_dev_context, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %extra_devices to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %extra_devices, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %extra_devices, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then43, %if.then35, %sw.bb27.cleanup_crit_edge, %sw.bb23, %sw.bb19, %sw.bb17, %if.else12, %if.then8, %if.else, %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.then43 ], [ -12, %if.then35 ], [ -22, %sw.bb23 ], [ -22, %sw.bb19 ], [ %call.i, %entry.cleanup_crit_edge ], [ -12, %sw.bb27.cleanup_crit_edge ], [ -519, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.else12 ], [ 0, %if.then1 ], [ 0, %if.else ], [ 0, %if.end45 ], [ 0, %sw.bb17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_fc_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @erofs_fc_fill_super) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_fc_reconfigure(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body3, label %do.end8, !prof !301

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 673, 0\0A.popsection", ""() #15, !srcloc !307
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_private, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %mount_opt = getelementptr inbounds %struct.erofs_mount_opts, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mount_opt, align 4
  %sb_flags11 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %12 = ptrtoint ptr %sb_flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_flags11, align 4
  %and12 = and i32 %13, -65537
  %and = shl i32 %11, 11
  %14 = and i32 %and, 65536
  %and12.sink = or i32 %and12, %14
  store i32 %and12.sink, ptr %sb_flags11, align 4
  %15 = call ptr @memcpy(ptr %9, ptr %7, i32 16)
  %sb_flags16 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %16 = ptrtoint ptr %sb_flags16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_flags16, align 4
  %or17 = or i32 %17, 1
  store i32 %or17, ptr %sb_flags16, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_release_device_info(i32 noundef %id, ptr noundef %ptr, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.erofs_device_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @blkdev_put(ptr noundef nonnull %1, i32 noundef 129) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 8
  tail call void @kfree(ptr noundef %3) #15
  tail call void @kfree(ptr noundef %ptr) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_fc_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 12
  %2 = ptrtoint ptr %s_magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -520756766, ptr %s_magic, align 4
  %call = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef 4096) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_fc_fill_super, ptr noundef nonnull @.str.68)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 488) #21
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %5 = call ptr @memcpy(ptr %call7.i.i, ptr %1, i32 16)
  %dax_dev = getelementptr inbounds %struct.erofs_sb_info, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dax_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dax_dev, align 4
  %devs = getelementptr inbounds %struct.erofs_fs_context, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devs, align 4
  %devs7 = getelementptr inbounds %struct.erofs_sb_info, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %devs7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %devs7, align 8
  store ptr null, ptr %devs, align 4
  %call9 = tail call fastcc i32 @erofs_read_superblock(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %mount_opt = getelementptr inbounds %struct.erofs_mount_opts, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mount_opt, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end12.if.end25_crit_edge, label %do.end

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

do.end:                                           ; preds = %if.end12
  %12 = ptrtoint ptr %dax_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dax_dev, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.then18, label %do.end.if.end25_crit_edge

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log19 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %log19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log19, align 4
  %16 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %15, ptr noundef %17, i8 noundef zeroext 101, ptr noundef nonnull @.str.69) #15
  %18 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mount_opt, align 4
  %and23 = and i32 %19, -65
  store i32 %and23, ptr %mount_opt, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %do.end.if.end25_crit_edge, %if.end12.if.end25_crit_edge
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %20 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_flags, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %22 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 34
  %23 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %s_time_gran, align 4
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %24 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @erofs_sops, ptr %s_op, align 4
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 18
  %25 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @erofs_xattr_handlers, ptr %s_xattr, align 16
  %26 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mount_opt, align 4
  %and28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or = and i32 %21, -66562
  %and34 = or i32 %or, 1025
  %or32 = or i32 %21, 66561
  %storemerge = select i1 %tobool29.not, i32 %and34, i32 %or32
  %28 = ptrtoint ptr %s_flags to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %s_flags, align 4
  %managed_pslots = getelementptr inbounds %struct.erofs_sb_info, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %managed_pslots, ptr noundef nonnull @.str.56, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #15
  %xa_flags.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %call7.i.i, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %xa_head.i.i, align 4
  %root_nid = getelementptr inbounds %struct.erofs_sb_info, ptr %call7.i.i, i32 0, i32 20
  %31 = ptrtoint ptr %root_nid to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %root_nid, align 8
  %call36 = tail call ptr @erofs_iget(ptr noundef %sb, i64 noundef %32, i1 noundef zeroext true) #15
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end25
  %34 = ptrtoint ptr %call36 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %call36, align 8
  %conv = zext i16 %35 to i32
  %and41 = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and41)
  %cmp = icmp eq i32 %and41, 16384
  br i1 %cmp, label %if.end47, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %root_nid to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %root_nid, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_fc_fill_super, ptr noundef nonnull @.str.70, i64 noundef %37, i32 noundef %conv)
  tail call void @iput(ptr noundef %call36) #15
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %call48 = tail call ptr @d_make_root(ptr noundef %call36) #15
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %38 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call48, ptr %s_root, align 64
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.end47.cleanup_crit_edge, label %if.end52

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  tail call void @erofs_shrinker_register(ptr noundef %sb) #15
  %39 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info, align 16
  %call.i = tail call ptr @new_inode(ptr noundef %sb) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  tail call void @set_nlink(ptr noundef nonnull %call.i, i32 noundef 1) #15
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 14
  %41 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 9223372036854775807, ptr %i_size.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @managed_cache_aops, ptr %a_ops.i, align 4
  %45 = load ptr, ptr %i_mapping.i, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3146, ptr %gfp_mask.i.i, align 4
  %managed_cache.i = getelementptr inbounds %struct.erofs_sb_info, ptr %40, i32 0, i32 6
  %47 = ptrtoint ptr %managed_cache.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %managed_cache.i, align 8
  %call57 = tail call i32 @erofs_register_sysfs(ptr noundef %sb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %root_nid to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %root_nid, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_info(ptr noundef %sb, ptr undef, ptr noundef nonnull @.str.71, i64 noundef %49)
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.then43, %if.then38, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %33, %if.then38 ], [ 0, %if.end60 ], [ -22, %if.then43 ], [ -22, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ %call9, %if.end4.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ -12, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erofs_read_superblock(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_read_superblock, ptr noundef nonnull @.str.72)
  %6 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  tail call void @__might_sleep(ptr noundef nonnull @.str.78, i32 noundef 44) #15
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %shr.i.i, label %if.end.if.then.i_crit_edge [
    i32 2, label %if.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #15
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #15
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 1024
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -488507936, i32 %14)
  %cmp.not = icmp eq i32 %14, -488507936
  br i1 %cmp.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_read_superblock, ptr noundef nonnull @.str.73)
  br label %out

if.end5:                                          ; preds = %kmap.exit
  %feature_compat = getelementptr i8, ptr %addr.0.i, i32 1032
  %15 = ptrtoint ptr %feature_compat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %feature_compat, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %feature_compat6 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 24
  %18 = ptrtoint ptr %feature_compat6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %feature_compat6, align 8
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  %call.i114 = tail call ptr @kmemdup(ptr noundef %add.ptr, i32 noundef 3072, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call.i114, null
  br i1 %tobool.not.i, label %if.then8.out_crit_edge, label %if.end.i

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i:                                         ; preds = %if.then8
  %checksum.i = getelementptr inbounds %struct.erofs_super_block, ptr %call.i114, i32 0, i32 1
  %19 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %checksum.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #15
  %22 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %checksum.i, align 4
  %call2.i = tail call i32 @crc32c(i32 noundef -1, ptr noundef nonnull %call.i114, i32 noundef 3072) #15
  tail call void @kfree(ptr noundef nonnull %call.i114) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %21)
  %cmp.not.i = icmp eq i32 %call2.i, %21
  br i1 %cmp.not.i, label %if.end.i.if.end12_crit_edge, label %if.then3.i

if.end.i.if.end12_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_superblock_csum_verify, ptr noundef nonnull @.str.79, i32 noundef %call2.i, i32 noundef %21) #15
  br label %out

if.end12:                                         ; preds = %if.end.i.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %blkszbits13 = getelementptr i8, ptr %addr.0.i, i32 1036
  %23 = ptrtoint ptr %blkszbits13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %blkszbits13, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %24)
  %cmp14.not = icmp eq i8 %24, 12
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_read_superblock, ptr noundef nonnull @.str.74, i32 noundef %conv)
  br label %out

if.end17:                                         ; preds = %if.end12
  %feature_incompat.i = getelementptr i8, ptr %addr.0.i, i32 1104
  %25 = ptrtoint ptr %feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %feature_incompat.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #15
  %28 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info, align 16
  %feature_incompat1.i = getelementptr inbounds %struct.erofs_sb_info, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %feature_incompat1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %feature_incompat1.i, align 4
  %and.i115 = and i32 %27, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i116, label %if.end20, label %check_layout_compatibility.exit

check_layout_compatibility.exit:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.check_layout_compatibility, ptr noundef nonnull @.str.80, i32 noundef %and.i115) #15
  br label %out

if.end20:                                         ; preds = %if.end17
  %sb_extslots = getelementptr i8, ptr %addr.0.i, i32 1037
  %31 = ptrtoint ptr %sb_extslots to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sb_extslots, align 1
  %conv21 = zext i8 %32 to i32
  %mul = shl nuw nsw i32 %conv21, 4
  %add = add nuw nsw i32 %mul, 128
  %sb_size = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 17
  %33 = ptrtoint ptr %sb_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %sb_size, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %32)
  %cmp23 = icmp ugt i8 %32, -8
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_read_superblock, ptr noundef nonnull @.str.75, i32 noundef %add)
  br label %out

if.end27:                                         ; preds = %if.end20
  %blocks = getelementptr i8, ptr %addr.0.i, i32 1060
  %34 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blocks, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %primarydevice_blocks = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 12
  %37 = ptrtoint ptr %primarydevice_blocks to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %primarydevice_blocks, align 8
  %meta_blkaddr = getelementptr i8, ptr %addr.0.i, i32 1064
  %38 = ptrtoint ptr %meta_blkaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %meta_blkaddr, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %meta_blkaddr28 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 13
  %41 = ptrtoint ptr %meta_blkaddr28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %meta_blkaddr28, align 4
  %xattr_blkaddr = getelementptr i8, ptr %addr.0.i, i32 1068
  %42 = ptrtoint ptr %xattr_blkaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xattr_blkaddr, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %xattr_blkaddr29 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 14
  %45 = ptrtoint ptr %xattr_blkaddr29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %xattr_blkaddr29, align 8
  %islotbits = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 16
  %46 = ptrtoint ptr %islotbits to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %islotbits, align 2
  %root_nid = getelementptr i8, ptr %addr.0.i, i32 1038
  %47 = ptrtoint ptr %root_nid to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %root_nid, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %conv30 = zext i16 %49 to i64
  %root_nid31 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 20
  %50 = ptrtoint ptr %root_nid31 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv30, ptr %root_nid31, align 8
  %inos = getelementptr i8, ptr %addr.0.i, i32 1040
  %51 = ptrtoint ptr %inos to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %inos, align 8
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  %inos32 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 21
  %54 = ptrtoint ptr %inos32 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %inos32, align 8
  %build_time = getelementptr i8, ptr %addr.0.i, i32 1048
  %55 = ptrtoint ptr %build_time to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %build_time, align 8
  %57 = tail call i64 @llvm.bswap.i64(i64 %56)
  %build_time33 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 19
  %58 = ptrtoint ptr %build_time33 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %build_time33, align 8
  %build_time_nsec = getelementptr i8, ptr %addr.0.i, i32 1056
  %59 = ptrtoint ptr %build_time_nsec to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %build_time_nsec, align 8
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %build_time_nsec34 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 18
  %62 = ptrtoint ptr %build_time_nsec34 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %build_time_nsec34, align 4
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 40
  %uuid = getelementptr i8, ptr %addr.0.i, i32 1072
  %63 = call ptr @memcpy(ptr %s_uuid, ptr %uuid, i32 16)
  %volume_name = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 23
  %volume_name36 = getelementptr i8, ptr %addr.0.i, i32 1088
  %call38 = tail call i32 @strscpy(ptr noundef %volume_name, ptr noundef %volume_name36, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_read_superblock, ptr noundef nonnull @.str.76)
  br label %out

if.end42:                                         ; preds = %if.end27
  %feature_incompat.i118 = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 25
  %64 = ptrtoint ptr %feature_incompat.i118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %feature_incompat.i118, align 4
  %and.i119 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.i120.not = icmp eq i32 %and.i119, 0
  br i1 %tobool.i120.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %call45 = tail call fastcc i32 @erofs_load_compr_cfgs(ptr noundef %sb, ptr noundef %add.ptr)
  br label %if.end47

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %call46 = tail call i32 @z_erofs_load_lz4_config(ptr noundef %sb, ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #15
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then44
  %ret.0 = phi i32 [ %call45, %if.then44 ], [ %call46, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp48 = icmp slt i32 %ret.0, 0
  br i1 %cmp48, label %if.end47.out_crit_edge, label %if.end51

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end51:                                         ; preds = %if.end47
  %call52 = tail call fastcc i32 @erofs_init_devices(ptr noundef %sb, ptr noundef %add.ptr)
  %66 = ptrtoint ptr %feature_incompat.i118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %feature_incompat.i118, align 4
  %and.i122 = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.i123.not = icmp eq i32 %and.i122, 0
  br i1 %tobool.i123.not, label %if.end51.out_crit_edge, label %if.then54

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ...) @_erofs_info(ptr noundef %sb, ptr undef, ptr noundef nonnull @.str.77)
  br label %out

out:                                              ; preds = %if.then54, %if.end51.out_crit_edge, %if.end47.out_crit_edge, %if.then41, %if.then25, %check_layout_compatibility.exit, %if.then16, %if.then3.i, %if.then8.out_crit_edge, %if.then4
  %ret.1 = phi i32 [ -22, %if.then4 ], [ -22, %if.then16 ], [ -22, %if.then25 ], [ -117, %if.then41 ], [ %ret.0, %if.end47.out_crit_edge ], [ %call52, %if.then54 ], [ %call52, %if.end51.out_crit_edge ], [ -22, %check_layout_compatibility.exit ], [ -12, %if.then8.out_crit_edge ], [ -74, %if.then3.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.78, i32 noundef 55) #15
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call.i, align 4
  %shr.i.i124 = lshr i32 %69, 30
  %70 = zext i32 %shr.i.i124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %shr.i.i124, label %out.kunmap.exit_crit_edge [
    i32 2, label %out.if.end.i127_crit_edge
    i32 3, label %is_highmem_idx.exit.i126
  ]

out.if.end.i127_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i127

out.kunmap.exit_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i126:                         ; preds = %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %71 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp2.i.not.i125 = icmp eq i32 %71, 2
  br i1 %cmp2.i.not.i125, label %is_highmem_idx.exit.i126.if.end.i127_crit_edge, label %is_highmem_idx.exit.i126.kunmap.exit_crit_edge

is_highmem_idx.exit.i126.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i126
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i126.if.end.i127_crit_edge:   ; preds = %is_highmem_idx.exit.i126
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i127

if.end.i127:                                      ; preds = %is_highmem_idx.exit.i126.if.end.i127_crit_edge, %out.if.end.i127_crit_edge
  tail call void @kunmap_high(ptr noundef %call.i) #15
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i127, %is_highmem_idx.exit.i126.kunmap.exit_crit_edge, %out.kunmap.exit_crit_edge
  %72 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !300

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %74, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %75, %if.end.i.i ]
  %76 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %77 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i.i.i.i = icmp eq i32 %78, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !301

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.83) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !308
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !309
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !310
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %79, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@erofs_read_superblock, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !312

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %76, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %76) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.1, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %ret.1, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_iget(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_shrinker_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_register_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erofs_load_compr_cfgs(ptr noundef %sb, ptr noundef %dsb) unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.erofs_buf, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #15
  %2 = call ptr @memset(ptr %buf, i32 0, i32 12)
  %u1 = getelementptr inbounds %struct.erofs_super_block, ptr %dsb, i32 0, i32 15
  %3 = ptrtoint ptr %u1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %u1, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %available_compr_algs = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %available_compr_algs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %available_compr_algs, align 4
  %7 = and i16 %5, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %and = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_load_compr_cfgs, ptr noundef nonnull @.str.81, i32 noundef %and)
  br label %cleanup29

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool8.not96 = icmp eq i16 %4, 0
  br i1 %tobool8.not96, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %conv7 = zext i16 %5 to i32
  %sb_size = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %sb_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_size, align 8
  %add = add i32 %9, 1024
  %conv5 = zext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %alg.0100 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %algs.099 = phi i32 [ %shr, %for.inc.for.body_crit_edge ], [ %conv7, %for.body.preheader ]
  %size.098 = phi i32 [ %size.292, %for.inc.for.body_crit_edge ], [ -1, %for.body.preheader ]
  %offset.097 = phi i64 [ %offset.391, %for.inc.for.body_crit_edge ], [ %conv5, %for.body.preheader ]
  %and9 = and i32 %algs.099, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %sub.i = add i64 %offset.097, -1
  %or.i = or i64 %sub.i, 3
  %add.i = add i64 %or.i, 1
  %div62.i = lshr i64 %add.i, 12
  %conv.i = trunc i64 %div62.i to i32
  %call.i = call ptr @erofs_read_metabuf(ptr noundef nonnull %buf, ptr noundef %sb, i32 noundef %conv.i, i32 noundef 1) #15
  %cmp.i64.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.end12.erofs_read_metadata.exit_crit_edge, label %if.end.i

if.end12.erofs_read_metadata.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %erofs_read_metadata.exit

if.end.i:                                         ; preds = %if.end12
  %10 = trunc i64 %add.i to i32
  %idxprom.i = and i32 %10, 4092
  %arrayidx.i = getelementptr i8, ptr %call.i, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12) #15
  %conv2.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 65536, i32 %conv2.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.store.select.i, i32 noundef 3264) #22
  %tobool6.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.cleanup.thread_crit_edge, label %if.end9.i

if.end.i.cleanup.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.end9.i:                                        ; preds = %if.end.i
  %add10.i = add i64 %or.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp69.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %cmp69.not.i, label %if.end9.i.erofs_read_metadata.exit_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.erofs_read_metadata.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %erofs_read_metadata.exit

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %offset.1 = phi i64 [ %add27.i, %if.end23.i.for.body.i_crit_edge ], [ %add10.i, %if.end9.i.for.body.i_crit_edge ]
  %i.070.i = phi i32 [ %add28.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %div1863.i = lshr i64 %offset.1, 12
  %conv19.i = trunc i64 %div1863.i to i32
  %call20.i = call ptr @erofs_read_metabuf(ptr noundef nonnull %buf, ptr noundef %sb, i32 noundef %conv19.i, i32 noundef 1) #15
  %cmp.i65.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %erofs_read_metadata.exit

if.end23.i:                                       ; preds = %for.body.i
  %14 = trunc i64 %offset.1 to i32
  %conv13.i = and i32 %14, 4095
  %sub14.i = sub nuw nsw i32 4096, %conv13.i
  %sub15.i = sub i32 %spec.store.select.i, %i.070.i
  %15 = call i32 @llvm.smin.i32(i32 %sub14.i, i32 %sub15.i) #15
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %i.070.i
  %add.ptr25.i = getelementptr i8, ptr %call20.i, i32 %conv13.i
  %16 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr25.i, i32 %15)
  %conv26.i = sext i32 %15 to i64
  %add27.i = add i64 %offset.1, %conv26.i
  %add28.i = add i32 %15, %i.070.i
  %cmp.i = icmp sgt i32 %spec.store.select.i, %add28.i
  br i1 %cmp.i, label %if.end23.i.for.body.i_crit_edge, label %if.end23.i.erofs_read_metadata.exit_crit_edge

if.end23.i.erofs_read_metadata.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %erofs_read_metadata.exit

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

erofs_read_metadata.exit:                         ; preds = %if.end23.i.erofs_read_metadata.exit_crit_edge, %if.then22.i, %if.end9.i.erofs_read_metadata.exit_crit_edge, %if.end12.erofs_read_metadata.exit_crit_edge
  %offset.2 = phi i64 [ %add.i, %if.end12.erofs_read_metadata.exit_crit_edge ], [ %add10.i, %if.end9.i.erofs_read_metadata.exit_crit_edge ], [ %offset.1, %if.then22.i ], [ %add27.i, %if.end23.i.erofs_read_metadata.exit_crit_edge ]
  %size.1 = phi i32 [ %size.098, %if.end12.erofs_read_metadata.exit_crit_edge ], [ 0, %if.end9.i.erofs_read_metadata.exit_crit_edge ], [ %spec.store.select.i, %if.then22.i ], [ %spec.store.select.i, %if.end23.i.erofs_read_metadata.exit_crit_edge ]
  %retval.0.i = phi ptr [ %call.i, %if.end12.erofs_read_metadata.exit_crit_edge ], [ %call9.i.i, %if.end9.i.erofs_read_metadata.exit_crit_edge ], [ %call20.i, %if.then22.i ], [ %call9.i.i, %if.end23.i.erofs_read_metadata.exit_crit_edge ]
  %cmp.i54 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %erofs_read_metadata.exit.cleanup.thread_crit_edge, label %if.end16

erofs_read_metadata.exit.cleanup.thread_crit_edge: ; preds = %erofs_read_metadata.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %erofs_read_metadata.exit.cleanup.thread_crit_edge, %if.end.i.cleanup.thread_crit_edge
  %retval.0.i69 = phi ptr [ %retval.0.i, %erofs_read_metadata.exit.cleanup.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup.thread_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i69 to i32
  br label %for.end

if.end16:                                         ; preds = %erofs_read_metadata.exit
  %18 = zext i32 %alg.0100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %alg.0100, label %do.body20 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = call i32 @z_erofs_load_lz4_config(ptr noundef %sb, ptr noundef %dsb, ptr noundef %retval.0.i, i32 noundef %size.1) #15
  br label %cleanup

sw.bb18:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = call i32 @z_erofs_load_lzma_config(ptr noundef %sb, ptr noundef %dsb, ptr noundef %retval.0.i, i32 noundef %size.1) #15
  br label %cleanup

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #15, !srcloc !313
  unreachable

cleanup:                                          ; preds = %sw.bb18, %sw.bb
  %ret.1 = phi i32 [ %call19, %sw.bb18 ], [ %call17, %sw.bb ]
  call void @kfree(ptr noundef %retval.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool26.not.not = icmp eq i32 %ret.1, 0
  br i1 %tobool26.not.not, label %cleanup.for.inc_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %size.292 = phi i32 [ %size.1, %cleanup.for.inc_crit_edge ], [ %size.098, %for.body.for.inc_crit_edge ]
  %offset.391 = phi i64 [ %offset.2, %cleanup.for.inc_crit_edge ], [ %offset.097, %for.body.for.inc_crit_edge ]
  %shr = lshr i32 %algs.099, 1
  %inc = add nuw nsw i32 %alg.0100, 1
  %tobool8.not = icmp ult i32 %algs.099, 2
  br i1 %tobool8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %cleanup.thread, %if.end.for.end_crit_edge
  %ret.3 = phi i32 [ %17, %cleanup.thread ], [ 0, %if.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %ret.1, %cleanup.for.end_crit_edge ]
  call void @erofs_put_metabuf(ptr noundef nonnull %buf) #15
  br label %cleanup29

cleanup29:                                        ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.3, %for.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_load_lz4_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erofs_init_devices(ptr noundef %sb, ptr nocapture noundef readonly %dsb) unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.erofs_buf, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #15
  %2 = call ptr @memset(ptr %buf, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #15
  %primarydevice_blocks = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %primarydevice_blocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %primarydevice_blocks, align 8
  %conv = zext i32 %4 to i64
  %total_blocks = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %total_blocks to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %total_blocks, align 8
  %feature_incompat.i = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feature_incompat.i, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.thread, label %if.end

if.end:                                           ; preds = %entry
  %extra_devices = getelementptr inbounds %struct.erofs_super_block, ptr %dsb, i32 0, i32 16
  %8 = ptrtoint ptr %extra_devices to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %extra_devices, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv1 = zext i16 %10 to i32
  %devs = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devs, align 8
  %extra_devices2 = getelementptr inbounds %struct.erofs_dev_context, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %extra_devices2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %extra_devices2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv1)
  %cmp.not = icmp eq i32 %14, %conv1
  br i1 %cmp.not, label %if.end7, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.end.thread:                                    ; preds = %entry
  %devs120 = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %devs120 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %devs120, align 8
  %extra_devices2121 = getelementptr inbounds %struct.erofs_dev_context, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %extra_devices2121 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %extra_devices2121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not122 = icmp eq i32 %18, 0
  br i1 %cmp.not122, label %if.end.thread.cleanup72_crit_edge, label %if.end.thread.if.then4_crit_edge

if.end.thread.if.then4_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.end.thread.cleanup72_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.then4:                                         ; preds = %if.end.thread.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %19 = phi i32 [ %18, %if.end.thread.if.then4_crit_edge ], [ %14, %if.end.if.then4_crit_edge ]
  %ondisk_extradevs.0123 = phi i32 [ 0, %if.end.thread.if.then4_crit_edge ], [ %conv1, %if.end.if.then4_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %sb, ptr noundef nonnull @__func__.erofs_init_devices, ptr noundef nonnull @.str.82, i32 noundef %ondisk_extradevs.0123, i32 noundef %19)
  br label %cleanup72

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %if.end7.cleanup72_crit_edge, label %cond.end38

if.end7.cleanup72_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

cond.end38:                                       ; preds = %if.end7
  %20 = tail call i32 @llvm.ctlz.i32(i32 %conv1, i1 false) #15, !range !314
  %sub.i.i.i = sub nuw nsw i32 32, %20
  %cond39 = shl nuw i32 1, %sub.i.i.i
  %21 = trunc i32 %cond39 to i16
  %conv41 = add i16 %21, -1
  %device_id_mask = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %device_id_mask to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv41, ptr %device_id_mask, align 4
  %devt_slotoff = getelementptr inbounds %struct.erofs_super_block, ptr %dsb, i32 0, i32 17
  %23 = ptrtoint ptr %devt_slotoff to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %devt_slotoff, align 8
  %rwsem = getelementptr inbounds %struct.erofs_dev_context, ptr %12, i32 0, i32 1
  tail call void @down_read(ptr noundef %rwsem) #15
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %id, align 4
  %26 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devs, align 8
  %call46135 = call ptr @idr_get_next(ptr noundef %27, ptr noundef nonnull %id) #15
  %cmp47.not136 = icmp eq ptr %call46135, null
  br i1 %cmp47.not136, label %cond.end38.for.end_crit_edge, label %for.body.lr.ph

cond.end38.for.end_crit_edge:                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end38
  %28 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv42 = zext i16 %28 to i32
  %mul = shl nuw nsw i32 %conv42, 7
  %conv43 = zext i32 %mul to i64
  %s_type = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call46138 = phi ptr [ %call46135, %for.body.lr.ph ], [ %call46, %for.inc.for.body_crit_edge ]
  %pos.0137 = phi i64 [ %conv43, %for.body.lr.ph ], [ %add68, %for.inc.for.body_crit_edge ]
  %div117 = lshr i64 %pos.0137, 12
  %conv49 = trunc i64 %div117 to i32
  %call50 = call ptr @erofs_read_metabuf(ptr noundef nonnull %buf, ptr noundef %sb, i32 noundef %conv49, i32 noundef 1) #15
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then52, label %if.end54

if.then52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %call50 to i32
  br label %for.end

if.end54:                                         ; preds = %for.body
  %30 = ptrtoint ptr %call46138 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call46138, align 8
  %32 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_type, align 32
  %call55 = call ptr @blkdev_get_by_path(ptr noundef %31, i32 noundef 129, ptr noundef %33) #15
  %cmp.i118 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then57, label %for.inc

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %call55 to i32
  br label %for.end

for.inc:                                          ; preds = %if.end54
  %35 = trunc i64 %pos.0137 to i32
  %idx.ext = and i32 %35, 3968
  %add.ptr = getelementptr i8, ptr %call50, i32 %idx.ext
  %bdev60 = getelementptr inbounds %struct.erofs_device_info, ptr %call46138, i32 0, i32 1
  %36 = ptrtoint ptr %bdev60 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call55, ptr %bdev60, align 4
  %dax_dev = getelementptr inbounds %struct.erofs_device_info, ptr %call46138, i32 0, i32 2
  %37 = ptrtoint ptr %dax_dev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dax_dev, align 8
  %blocks = getelementptr inbounds %struct.erofs_deviceslot, ptr %add.ptr, i32 0, i32 1
  %38 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %blocks, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %blocks62 = getelementptr inbounds %struct.erofs_device_info, ptr %call46138, i32 0, i32 4
  %41 = ptrtoint ptr %blocks62 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %blocks62, align 8
  %mapped_blkaddr = getelementptr inbounds %struct.erofs_deviceslot, ptr %add.ptr, i32 0, i32 2
  %42 = ptrtoint ptr %mapped_blkaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mapped_blkaddr, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %mapped_blkaddr63 = getelementptr inbounds %struct.erofs_device_info, ptr %call46138, i32 0, i32 5
  %45 = ptrtoint ptr %mapped_blkaddr63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mapped_blkaddr63, align 4
  %conv65 = zext i32 %40 to i64
  %46 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %total_blocks, align 8
  %add67 = add i64 %47, %conv65
  store i64 %add67, ptr %total_blocks, align 8
  %add68 = add i64 %pos.0137, 128
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id, align 4
  %add69 = add i32 %49, 1
  store i32 %add69, ptr %id, align 4
  %50 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %devs, align 8
  %call46 = call ptr @idr_get_next(ptr noundef %51, ptr noundef nonnull %id) #15
  %cmp47.not = icmp eq ptr %call46, null
  br i1 %cmp47.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then57, %if.then52, %cond.end38.for.end_crit_edge
  %err.2 = phi i32 [ %34, %if.then57 ], [ %29, %if.then52 ], [ 0, %cond.end38.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %52 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %devs, align 8
  %rwsem71 = getelementptr inbounds %struct.erofs_dev_context, ptr %53, i32 0, i32 1
  call void @up_read(ptr noundef %rwsem71) #15
  call void @erofs_put_metabuf(ptr noundef nonnull %buf) #15
  br label %cleanup72

cleanup72:                                        ; preds = %for.end, %if.end7.cleanup72_crit_edge, %if.then4, %if.end.thread.cleanup72_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %err.2, %for.end ], [ 0, %if.end7.cleanup72_crit_edge ], [ 0, %if.end.thread.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_load_lzma_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_put_metabuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_read_metabuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_managed_cache_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %length, %offset
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !300

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !301

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !300

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.84) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !315
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !300

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !301

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 544, 0\0A.popsection", ""() #15, !srcloc !316
  unreachable

do.body10:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %length)
  %cmp11 = icmp ult i32 %add, %length
  %spec.select = or i1 %cmp, %cmp11
  br i1 %spec.select, label %do.body19, label %do.end27, !prof !301

do.body19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 547, 0\0A.popsection", ""() #15, !srcloc !317
  unreachable

do.end27:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp28 = icmp eq i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp29 = icmp eq i32 %add, 4096
  %or.cond = and i1 %cmp28, %cmp29
  br i1 %or.cond, label %while.cond.preheader, label %do.end27.if.end36_crit_edge

do.end27.if.end36_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

while.cond.preheader:                             ; preds = %do.end27
  %call3142 = tail call i32 @erofs_managed_cache_releasepage(ptr noundef %page, i32 noundef 3136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3142)
  %tobool32.not43 = icmp eq i32 %call3142, 0
  br i1 %tobool32.not43, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end36_crit_edge

while.cond.preheader.if.end36_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 551, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  %call31 = tail call i32 @erofs_managed_cache_releasepage(ptr noundef %page, i32 noundef 3136)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %while.body.while.body_crit_edge, label %while.body.if.end36_crit_edge

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end36:                                         ; preds = %while.body.if.end36_crit_edge, %while.cond.preheader.if.end36_crit_edge, %do.end27.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_managed_cache_releasepage(ptr noundef %page, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !300

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, -1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !301

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !300

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i = add i32 %10, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %11, %if.end.i20.i ]
  %12 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.84) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #15, !srcloc !315
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !300

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i = add i32 %10, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %13, %if.end.i27.i ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body5, label %do.body11, !prof !301

do.body5:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 529, 0\0A.popsection", ""() #15, !srcloc !318
  unreachable

do.body11:                                        ; preds = %PageLocked.exit
  %a_ops = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %a_ops, align 4
  %cmp.not = icmp eq ptr %18, @managed_cache_aops
  br i1 %cmp.not, label %do.end27, label %do.body19, !prof !300

do.body19:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 530, 0\0A.popsection", ""() #15, !srcloc !319
  unreachable

do.end27:                                         ; preds = %do.body11
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i36 = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i36, label %if.then.i37, label %PagePrivate.exit, !prof !301

if.then.i37:                                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.85) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #15, !srcloc !320
  unreachable

PagePrivate.exit:                                 ; preds = %do.end27
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  %23 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %PagePrivate.exit.if.end32_crit_edge, label %if.then30

PagePrivate.exit.if.end32_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then30:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 @erofs_try_to_free_cached_page(ptr noundef %page) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %PagePrivate.exit.if.end32_crit_edge
  %ret.0 = phi i32 [ %call31, %if.then30 ], [ 1, %PagePrivate.exit.if.end32_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_try_to_free_cached_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_unregister_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_shrinker_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_inode_init_once(ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.erofs_inode, ptr %ptr, i32 0, i32 8
  tail call void @inode_init_once(ptr noundef %vfs_inode) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @erofs_init_shrinker() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_lzma_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_pcpubuf_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @z_erofs_init_zip_subsystem() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @erofs_init_sysfs() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !188, !190, !192, !193, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !229, !231, !233, !235, !237, !238, !240, !242, !244, !246, !248, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288}
!llvm.named.register.sp = !{!290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !{ptr @__tracepoint_erofs_lookup, !1, !"__tracepoint_erofs_lookup", i1 false, i1 false}
!1 = !{!"../include/trace/events/erofs.h", i32 29, i32 1}
!2 = !{ptr @__tracepoint_ptr_erofs_lookup, !1, !"__tracepoint_ptr_erofs_lookup", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_erofs_lookup, !1, !"__SCK__tp_func_erofs_lookup", i1 false, i1 false}
!4 = !{ptr @__tracepoint_erofs_fill_inode, !5, !"__tracepoint_erofs_fill_inode", i1 false, i1 false}
!5 = !{!"../include/trace/events/erofs.h", i32 55, i32 1}
!6 = !{ptr @__tracepoint_ptr_erofs_fill_inode, !5, !"__tracepoint_ptr_erofs_fill_inode", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_erofs_fill_inode, !5, !"__SCK__tp_func_erofs_fill_inode", i1 false, i1 false}
!8 = !{ptr @__tracepoint_erofs_readpage, !9, !"__tracepoint_erofs_readpage", i1 false, i1 false}
!9 = !{!"../include/trace/events/erofs.h", i32 81, i32 1}
!10 = !{ptr @__tracepoint_ptr_erofs_readpage, !9, !"__tracepoint_ptr_erofs_readpage", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_erofs_readpage, !9, !"__SCK__tp_func_erofs_readpage", i1 false, i1 false}
!12 = !{ptr @__tracepoint_erofs_readpages, !13, !"__tracepoint_erofs_readpages", i1 false, i1 false}
!13 = !{!"../include/trace/events/erofs.h", i32 114, i32 1}
!14 = !{ptr @__tracepoint_ptr_erofs_readpages, !13, !"__tracepoint_ptr_erofs_readpages", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_erofs_readpages, !13, !"__SCK__tp_func_erofs_readpages", i1 false, i1 false}
!16 = !{ptr @__tracepoint_erofs_map_blocks_enter, !17, !"__tracepoint_erofs_map_blocks_enter", i1 false, i1 false}
!17 = !{!"../include/trace/events/erofs.h", i32 172, i32 1}
!18 = !{ptr @__tracepoint_ptr_erofs_map_blocks_enter, !17, !"__tracepoint_ptr_erofs_map_blocks_enter", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_erofs_map_blocks_enter, !17, !"__SCK__tp_func_erofs_map_blocks_enter", i1 false, i1 false}
!20 = !{ptr @__tracepoint_z_erofs_map_blocks_iter_enter, !21, !"__tracepoint_z_erofs_map_blocks_iter_enter", i1 false, i1 false}
!21 = !{!"../include/trace/events/erofs.h", i32 179, i32 1}
!22 = !{ptr @__tracepoint_ptr_z_erofs_map_blocks_iter_enter, !21, !"__tracepoint_ptr_z_erofs_map_blocks_iter_enter", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_z_erofs_map_blocks_iter_enter, !21, !"__SCK__tp_func_z_erofs_map_blocks_iter_enter", i1 false, i1 false}
!24 = !{ptr @__tracepoint_erofs_map_blocks_exit, !25, !"__tracepoint_erofs_map_blocks_exit", i1 false, i1 false}
!25 = !{!"../include/trace/events/erofs.h", i32 224, i32 1}
!26 = !{ptr @__tracepoint_ptr_erofs_map_blocks_exit, !25, !"__tracepoint_ptr_erofs_map_blocks_exit", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_erofs_map_blocks_exit, !25, !"__SCK__tp_func_erofs_map_blocks_exit", i1 false, i1 false}
!28 = !{ptr @__tracepoint_z_erofs_map_blocks_iter_exit, !29, !"__tracepoint_z_erofs_map_blocks_iter_exit", i1 false, i1 false}
!29 = !{!"../include/trace/events/erofs.h", i32 231, i32 1}
!30 = !{ptr @__tracepoint_ptr_z_erofs_map_blocks_iter_exit, !29, !"__tracepoint_ptr_z_erofs_map_blocks_iter_exit", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_z_erofs_map_blocks_iter_exit, !29, !"__SCK__tp_func_z_erofs_map_blocks_iter_exit", i1 false, i1 false}
!32 = !{ptr @__tracepoint_erofs_destroy_inode, !33, !"__tracepoint_erofs_destroy_inode", i1 false, i1 false}
!33 = !{!"../include/trace/events/erofs.h", i32 238, i32 1}
!34 = !{ptr @__tracepoint_ptr_erofs_destroy_inode, !33, !"__tracepoint_ptr_erofs_destroy_inode", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_erofs_destroy_inode, !33, !"__SCK__tp_func_erofs_destroy_inode", i1 false, i1 false}
!36 = !{ptr @event_class_erofs_lookup, !1, !"event_class_erofs_lookup", i1 false, i1 false}
!37 = !{ptr @event_erofs_lookup, !1, !"event_erofs_lookup", i1 false, i1 false}
!38 = !{ptr @__event_erofs_lookup, !1, !"__event_erofs_lookup", i1 false, i1 false}
!39 = !{ptr @event_class_erofs_fill_inode, !5, !"event_class_erofs_fill_inode", i1 false, i1 false}
!40 = !{ptr @event_erofs_fill_inode, !5, !"event_erofs_fill_inode", i1 false, i1 false}
!41 = !{ptr @__event_erofs_fill_inode, !5, !"__event_erofs_fill_inode", i1 false, i1 false}
!42 = !{ptr @event_class_erofs_readpage, !9, !"event_class_erofs_readpage", i1 false, i1 false}
!43 = !{ptr @event_erofs_readpage, !9, !"event_erofs_readpage", i1 false, i1 false}
!44 = !{ptr @__event_erofs_readpage, !9, !"__event_erofs_readpage", i1 false, i1 false}
!45 = !{ptr @event_class_erofs_readpages, !13, !"event_class_erofs_readpages", i1 false, i1 false}
!46 = !{ptr @event_erofs_readpages, !13, !"event_erofs_readpages", i1 false, i1 false}
!47 = !{ptr @__event_erofs_readpages, !13, !"__event_erofs_readpages", i1 false, i1 false}
!48 = !{ptr @event_class_erofs__map_blocks_enter, !49, !"event_class_erofs__map_blocks_enter", i1 false, i1 false}
!49 = !{!"../include/trace/events/erofs.h", i32 144, i32 1}
!50 = !{ptr @event_erofs_map_blocks_enter, !17, !"event_erofs_map_blocks_enter", i1 false, i1 false}
!51 = !{ptr @__event_erofs_map_blocks_enter, !17, !"__event_erofs_map_blocks_enter", i1 false, i1 false}
!52 = !{ptr @event_z_erofs_map_blocks_iter_enter, !21, !"event_z_erofs_map_blocks_iter_enter", i1 false, i1 false}
!53 = !{ptr @__event_z_erofs_map_blocks_iter_enter, !21, !"__event_z_erofs_map_blocks_iter_enter", i1 false, i1 false}
!54 = !{ptr @event_class_erofs__map_blocks_exit, !55, !"event_class_erofs__map_blocks_exit", i1 false, i1 false}
!55 = !{!"../include/trace/events/erofs.h", i32 186, i32 1}
!56 = !{ptr @event_erofs_map_blocks_exit, !25, !"event_erofs_map_blocks_exit", i1 false, i1 false}
!57 = !{ptr @__event_erofs_map_blocks_exit, !25, !"__event_erofs_map_blocks_exit", i1 false, i1 false}
!58 = !{ptr @event_z_erofs_map_blocks_iter_exit, !29, !"event_z_erofs_map_blocks_iter_exit", i1 false, i1 false}
!59 = !{ptr @__event_z_erofs_map_blocks_iter_exit, !29, !"__event_z_erofs_map_blocks_iter_exit", i1 false, i1 false}
!60 = !{ptr @event_class_erofs_destroy_inode, !33, !"event_class_erofs_destroy_inode", i1 false, i1 false}
!61 = !{ptr @event_erofs_destroy_inode, !33, !"event_erofs_destroy_inode", i1 false, i1 false}
!62 = !{ptr @__event_erofs_destroy_inode, !33, !"__event_erofs_destroy_inode", i1 false, i1 false}
!63 = !{ptr @__bpf_trace_tp_map_erofs_lookup, !1, !"__bpf_trace_tp_map_erofs_lookup", i1 false, i1 false}
!64 = !{ptr @__bpf_trace_tp_map_erofs_fill_inode, !5, !"__bpf_trace_tp_map_erofs_fill_inode", i1 false, i1 false}
!65 = !{ptr @__bpf_trace_tp_map_erofs_readpage, !9, !"__bpf_trace_tp_map_erofs_readpage", i1 false, i1 false}
!66 = !{ptr @__bpf_trace_tp_map_erofs_readpages, !13, !"__bpf_trace_tp_map_erofs_readpages", i1 false, i1 false}
!67 = !{ptr @__bpf_trace_tp_map_erofs_map_blocks_enter, !17, !"__bpf_trace_tp_map_erofs_map_blocks_enter", i1 false, i1 false}
!68 = !{ptr @__bpf_trace_tp_map_z_erofs_map_blocks_iter_enter, !21, !"__bpf_trace_tp_map_z_erofs_map_blocks_iter_enter", i1 false, i1 false}
!69 = !{ptr @__bpf_trace_tp_map_erofs_map_blocks_exit, !25, !"__bpf_trace_tp_map_erofs_map_blocks_exit", i1 false, i1 false}
!70 = !{ptr @__bpf_trace_tp_map_z_erofs_map_blocks_iter_exit, !29, !"__bpf_trace_tp_map_z_erofs_map_blocks_iter_exit", i1 false, i1 false}
!71 = !{ptr @__bpf_trace_tp_map_erofs_destroy_inode, !33, !"__bpf_trace_tp_map_erofs_destroy_inode", i1 false, i1 false}
!72 = !{ptr @.str, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/erofs/super.c", i32 34, i32 2}
!74 = !{ptr @.str.1, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.2, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @_erofs_err._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @_erofs_err._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.3, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/erofs/super.c", i32 49, i32 2}
!80 = !{ptr @.str.4, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @_erofs_info._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @_erofs_info._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @__UNIQUE_ID_alias361, !84, !"__UNIQUE_ID_alias361", i1 false, i1 false}
!84 = !{!"../fs/erofs/super.c", i32 786, i32 1}
!85 = !{ptr @erofs_sops, !86, !"erofs_sops", i1 false, i1 false}
!86 = !{!"../fs/erofs/super.c", i32 908, i32 31}
!87 = !{ptr @__initcall__kmod_erofs__362_916_erofs_module_init6, !88, !"__initcall__kmod_erofs__362_916_erofs_module_init6", i1 false, i1 false}
!88 = !{!"../fs/erofs/super.c", i32 916, i32 1}
!89 = !{ptr @__exitcall_erofs_module_exit, !90, !"__exitcall_erofs_module_exit", i1 false, i1 false}
!90 = !{!"../fs/erofs/super.c", i32 917, i32 1}
!91 = !{ptr @__UNIQUE_ID_description363, !92, !"__UNIQUE_ID_description363", i1 false, i1 false}
!92 = !{!"../fs/erofs/super.c", i32 919, i32 1}
!93 = !{ptr @__UNIQUE_ID_author364, !94, !"__UNIQUE_ID_author364", i1 false, i1 false}
!94 = !{!"../fs/erofs/super.c", i32 920, i32 1}
!95 = !{ptr @__UNIQUE_ID_file365, !96, !"__UNIQUE_ID_file365", i1 false, i1 false}
!96 = !{!"../fs/erofs/super.c", i32 921, i32 1}
!97 = !{ptr @__UNIQUE_ID_license366, !96, !"__UNIQUE_ID_license366", i1 false, i1 false}
!98 = !{ptr @erofs_inode_cachep, !99, !"erofs_inode_cachep", i1 false, i1 false}
!99 = !{!"../fs/erofs/super.c", i32 21, i32 27}
!100 = !{ptr @__tpstrtab_erofs_lookup, !1, !"__tpstrtab_erofs_lookup", i1 false, i1 false}
!101 = !{ptr @__tpstrtab_erofs_fill_inode, !5, !"__tpstrtab_erofs_fill_inode", i1 false, i1 false}
!102 = !{ptr @__tpstrtab_erofs_readpage, !9, !"__tpstrtab_erofs_readpage", i1 false, i1 false}
!103 = !{ptr @__tpstrtab_erofs_readpages, !13, !"__tpstrtab_erofs_readpages", i1 false, i1 false}
!104 = !{ptr @__tpstrtab_erofs_map_blocks_enter, !17, !"__tpstrtab_erofs_map_blocks_enter", i1 false, i1 false}
!105 = !{ptr @__tpstrtab_z_erofs_map_blocks_iter_enter, !21, !"__tpstrtab_z_erofs_map_blocks_iter_enter", i1 false, i1 false}
!106 = !{ptr @__tpstrtab_erofs_map_blocks_exit, !25, !"__tpstrtab_erofs_map_blocks_exit", i1 false, i1 false}
!107 = !{ptr @__tpstrtab_z_erofs_map_blocks_iter_exit, !29, !"__tpstrtab_z_erofs_map_blocks_iter_exit", i1 false, i1 false}
!108 = !{ptr @__tpstrtab_erofs_destroy_inode, !33, !"__tpstrtab_erofs_destroy_inode", i1 false, i1 false}
!109 = !{ptr @str__erofs__trace_system_name, !110, !"str__erofs__trace_system_name", i1 false, i1 false}
!110 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!111 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @trace_event_fields_erofs_lookup, !1, !"trace_event_fields_erofs_lookup", i1 false, i1 false}
!121 = !{ptr @trace_event_type_funcs_erofs_lookup, !1, !"trace_event_type_funcs_erofs_lookup", i1 false, i1 false}
!122 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @print_fmt_erofs_lookup, !1, !"print_fmt_erofs_lookup", i1 false, i1 false}
!124 = !{ptr @.str.15, !5, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.16, !5, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.17, !5, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @trace_event_fields_erofs_fill_inode, !5, !"trace_event_fields_erofs_fill_inode", i1 false, i1 false}
!130 = !{ptr @trace_event_type_funcs_erofs_fill_inode, !5, !"trace_event_type_funcs_erofs_fill_inode", i1 false, i1 false}
!131 = !{ptr @.str.20, !5, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @print_fmt_erofs_fill_inode, !5, !"print_fmt_erofs_fill_inode", i1 false, i1 false}
!133 = !{ptr @.str.21, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!137 = !{ptr @.str.23, !9, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.24, !9, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.25, !9, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.26, !9, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.27, !9, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.28, !9, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @trace_event_fields_erofs_readpage, !9, !"trace_event_fields_erofs_readpage", i1 false, i1 false}
!144 = !{ptr @trace_event_type_funcs_erofs_readpage, !9, !"trace_event_type_funcs_erofs_readpage", i1 false, i1 false}
!145 = !{ptr @.str.29, !9, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.30, !9, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.31, !9, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @trace_raw_output_erofs_readpage.symbols, !9, !"symbols", i1 false, i1 false}
!149 = !{ptr @print_fmt_erofs_readpage, !9, !"print_fmt_erofs_readpage", i1 false, i1 false}
!150 = !{ptr @.str.32, !13, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.33, !13, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @trace_event_fields_erofs_readpages, !13, !"trace_event_fields_erofs_readpages", i1 false, i1 false}
!153 = !{ptr @trace_event_type_funcs_erofs_readpages, !13, !"trace_event_type_funcs_erofs_readpages", i1 false, i1 false}
!154 = !{ptr @.str.34, !13, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @print_fmt_erofs_readpages, !13, !"print_fmt_erofs_readpages", i1 false, i1 false}
!156 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.36, !49, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.37, !49, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.38, !49, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @trace_event_fields_erofs__map_blocks_enter, !49, !"trace_event_fields_erofs__map_blocks_enter", i1 false, i1 false}
!161 = !{ptr @trace_event_type_funcs_erofs__map_blocks_enter, !49, !"trace_event_type_funcs_erofs__map_blocks_enter", i1 false, i1 false}
!162 = !{ptr @.str.39, !49, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.40, !49, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @trace_raw_output_erofs__map_blocks_enter.__flags, !49, !"__flags", i1 false, i1 false}
!165 = !{ptr @.str.41, !49, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.42, !49, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @print_fmt_erofs__map_blocks_enter, !49, !"print_fmt_erofs__map_blocks_enter", i1 false, i1 false}
!168 = !{ptr @.str.43, !55, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.44, !55, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.45, !55, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.46, !55, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @trace_event_fields_erofs__map_blocks_exit, !55, !"trace_event_fields_erofs__map_blocks_exit", i1 false, i1 false}
!173 = !{ptr @trace_event_type_funcs_erofs__map_blocks_exit, !55, !"trace_event_type_funcs_erofs__map_blocks_exit", i1 false, i1 false}
!174 = !{ptr @.str.47, !55, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @trace_raw_output_erofs__map_blocks_exit.__flags, !55, !"__flags", i1 false, i1 false}
!176 = !{ptr @.str.49, !55, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.50, !55, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.51, !55, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @trace_raw_output_erofs__map_blocks_exit.__flags.48, !55, !"__flags", i1 false, i1 false}
!180 = !{ptr @.str.52, !55, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @print_fmt_erofs__map_blocks_exit, !55, !"print_fmt_erofs__map_blocks_exit", i1 false, i1 false}
!182 = !{ptr @trace_event_fields_erofs_destroy_inode, !33, !"trace_event_fields_erofs_destroy_inode", i1 false, i1 false}
!183 = !{ptr @trace_event_type_funcs_erofs_destroy_inode, !33, !"trace_event_type_funcs_erofs_destroy_inode", i1 false, i1 false}
!184 = !{ptr @.str.53, !33, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @print_fmt_erofs_destroy_inode, !33, !"print_fmt_erofs_destroy_inode", i1 false, i1 false}
!186 = !{ptr @.str.54, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/erofs/super.c", i32 781, i32 20}
!188 = !{ptr @erofs_fs_type, !189, !"erofs_fs_type", i1 false, i1 false}
!189 = !{!"../fs/erofs/super.c", i32 779, i32 32}
!190 = !{ptr @erofs_init_fs_context.__key, !191, !"__key", i1 false, i1 false}
!191 = !{!"../fs/erofs/super.c", i32 736, i32 2}
!192 = !{ptr @.str.55, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @xa_init_flags.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!195 = !{ptr @.str.56, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @erofs_context_ops, !197, !"erofs_context_ops", i1 false, i1 false}
!197 = !{!"../fs/erofs/super.c", i32 715, i32 43}
!198 = !{ptr @.str.57, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/erofs/super.c", i32 413, i32 2}
!200 = !{ptr @.str.58, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/erofs/super.c", i32 414, i32 2}
!202 = !{ptr @.str.59, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/erofs/super.c", i32 415, i32 2}
!204 = !{ptr @.str.60, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/erofs/super.c", i32 417, i32 2}
!206 = !{ptr @.str.61, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/erofs/super.c", i32 419, i32 2}
!208 = !{ptr @erofs_fs_parameters, !209, !"erofs_fs_parameters", i1 false, i1 false}
!209 = !{!"../fs/erofs/super.c", i32 412, i32 39}
!210 = !{ptr @.str.62, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/erofs/super.c", i32 400, i32 3}
!212 = !{ptr @.str.63, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../fs/erofs/super.c", i32 401, i32 3}
!214 = !{ptr @.str.64, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/erofs/super.c", i32 402, i32 3}
!216 = !{ptr @erofs_param_cache_strategy, !217, !"erofs_param_cache_strategy", i1 false, i1 false}
!217 = !{!"../fs/erofs/super.c", i32 399, i32 36}
!218 = !{ptr @.str.65, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/erofs/super.c", i32 407, i32 3}
!220 = !{ptr @.str.66, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/erofs/super.c", i32 408, i32 3}
!222 = !{ptr @erofs_dax_param_enums, !223, !"erofs_dax_param_enums", i1 false, i1 false}
!223 = !{!"../fs/erofs/super.c", i32 406, i32 36}
!224 = !{ptr @.str.67, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/erofs/super.c", i32 443, i32 2}
!226 = !{ptr @__func__.erofs_fc_fill_super, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/erofs/super.c", i32 590, i32 3}
!228 = !{ptr @.str.68, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.69, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/erofs/super.c", i32 612, i32 4}
!231 = !{ptr @.str.70, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/erofs/super.c", i32 638, i32 3}
!233 = !{ptr @.str.71, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/erofs/super.c", i32 658, i32 2}
!235 = !{ptr @__func__.erofs_read_superblock, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/erofs/super.c", i32 292, i32 3}
!237 = !{ptr @.str.72, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.73, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../fs/erofs/super.c", i32 303, i32 3}
!240 = !{ptr @.str.74, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/erofs/super.c", i32 318, i32 3}
!242 = !{ptr @.str.75, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/erofs/super.c", i32 328, i32 3}
!244 = !{ptr @.str.76, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/erofs/super.c", i32 349, i32 3}
!246 = !{ptr @.str.77, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/erofs/super.c", i32 366, i32 3}
!248 = !{ptr @.str.78, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!250 = !{ptr @__func__.erofs_superblock_csum_verify, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/erofs/super.c", i32 70, i32 3}
!252 = !{ptr @.str.79, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @__func__.check_layout_compatibility, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/erofs/super.c", i32 118, i32 3}
!255 = !{ptr @.str.80, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @__func__.erofs_load_compr_cfgs, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/erofs/super.c", i32 173, i32 3}
!258 = !{ptr @.str.81, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @__func__.erofs_init_devices, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/erofs/super.c", i32 241, i32 3}
!261 = !{ptr @.str.82, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.83, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../include/linux/mm.h", i32 717, i32 2}
!264 = !{ptr @managed_cache_aops, !265, !"managed_cache_aops", i1 false, i1 false}
!265 = !{!"../fs/erofs/super.c", i32 554, i32 46}
!266 = !{ptr @.str.84, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!268 = !{ptr @.str.85, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!270 = !{ptr @.str.86, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/erofs/super.c", i32 883, i32 17}
!272 = !{ptr @.str.87, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/erofs/super.c", i32 885, i32 17}
!274 = !{ptr @.str.88, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/erofs/super.c", i32 889, i32 17}
!276 = !{ptr @.str.89, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/erofs/super.c", i32 891, i32 17}
!278 = !{ptr @.str.90, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/erofs/super.c", i32 895, i32 17}
!280 = !{ptr @.str.91, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/erofs/super.c", i32 897, i32 17}
!282 = !{ptr @.str.92, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/erofs/super.c", i32 899, i32 17}
!284 = !{ptr @.str.93, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/erofs/super.c", i32 902, i32 17}
!286 = !{ptr @.str.94, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/erofs/super.c", i32 904, i32 17}
!288 = !{ptr @.str.95, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/erofs/super.c", i32 794, i32 41}
!290 = !{!"sp"}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 1, !"min_enum_size", i32 4}
!293 = !{i32 8, !"branch-target-enforcement", i32 0}
!294 = !{i32 8, !"sign-return-address", i32 0}
!295 = !{i32 8, !"sign-return-address-all", i32 0}
!296 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 2}
!299 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!300 = !{!"branch_weights", i32 2000, i32 1}
!301 = !{!"branch_weights", i32 1, i32 2000}
!302 = !{!"auto-init"}
!303 = !{i64 2150182026, i64 2150182517, i64 2150182063, i64 2150182119, i64 2150182153, i64 2150182177, i64 2150182218, i64 2150182239, i64 2150182267, i64 2150182301}
!304 = !{i64 2150935979}
!305 = !{i64 2156466751, i64 2156467232, i64 2156466788, i64 2156466844, i64 2156466878, i64 2156466902, i64 2156466943, i64 2156466964, i64 2156466992, i64 2156467026}
!306 = !{i8 0, i8 2}
!307 = !{i64 2156463853, i64 2156464334, i64 2156463890, i64 2156463946, i64 2156463980, i64 2156464004, i64 2156464045, i64 2156464066, i64 2156464094, i64 2156464128}
!308 = !{i64 2153389588, i64 2153390071, i64 2153389625, i64 2153389681, i64 2153389715, i64 2153389739, i64 2153389780, i64 2153389801, i64 2153389829, i64 2153389863}
!309 = !{i64 2148448547}
!310 = !{i64 2148363256, i64 2148363288, i64 2148363317, i64 2148363351, i64 2148363382, i64 2148363405}
!311 = !{i64 2148448776}
!312 = !{i64 2148973448, i64 2148973453, i64 2148973466, i64 2148973510, i64 2148973544, i64 2148973565}
!313 = !{i64 2156441318, i64 2156441799, i64 2156441355, i64 2156441411, i64 2156441445, i64 2156441469, i64 2156441510, i64 2156441531, i64 2156441559, i64 2156441593}
!314 = !{i32 0, i32 33}
!315 = !{i64 2150193520, i64 2150194011, i64 2150193557, i64 2150193613, i64 2150193647, i64 2150193671, i64 2150193712, i64 2150193733, i64 2150193761, i64 2150193795}
!316 = !{i64 2156457255, i64 2156457736, i64 2156457292, i64 2156457348, i64 2156457382, i64 2156457406, i64 2156457447, i64 2156457468, i64 2156457496, i64 2156457530}
!317 = !{i64 2156458951, i64 2156459432, i64 2156458988, i64 2156459044, i64 2156459078, i64 2156459102, i64 2156459143, i64 2156459164, i64 2156459192, i64 2156459226}
!318 = !{i64 2156449978, i64 2156450459, i64 2156450015, i64 2156450071, i64 2156450105, i64 2156450129, i64 2156450170, i64 2156450191, i64 2156450219, i64 2156450253}
!319 = !{i64 2156455667, i64 2156456148, i64 2156455704, i64 2156455760, i64 2156455794, i64 2156455818, i64 2156455859, i64 2156455880, i64 2156455908, i64 2156455942}
!320 = !{i64 2150644793, i64 2150645284, i64 2150644830, i64 2150644886, i64 2150644920, i64 2150644944, i64 2150644985, i64 2150645006, i64 2150645034, i64 2150645068}
