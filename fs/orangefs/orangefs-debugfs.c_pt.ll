; ModuleID = '/llk/IR_all_yes/fs/orangefs/orangefs-debugfs.c_pt.bc'
source_filename = "../fs/orangefs/orangefs-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__keyword_mask_s = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.client_debug_mask = type { ptr, i64, i64 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.dev_mask2_info_s = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dev_mask_info_s = type { i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.84, %struct.list_head, %struct.list_head, %union.anon.85 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.spinlock, i32 }
%union.anon.84 = type { %struct.list_head }
%union.anon.85 = type { %struct.hlist_node }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@orangefs_gossip_debug_mask = external dso_local global i64, align 8
@kernel_debug_string = internal global { [2048 x i8], [512 x i8] } { [2048 x i8] c"none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [512 x i8] zeroinitializer }, align 32
@kernel_mask_set_mod_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@orangefs_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: called with debug mask: :%s: :%llx:\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orangefs_debugfs_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/orangefs/orangefs-debugfs.c\00", [33 x i8] zeroinitializer }, align 32
@orangefs_debugfs_init._entry_ptr = internal global ptr @orangefs_debugfs_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"orangefs\00", [23 x i8] zeroinitializer }, align 32
@debug_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug-help\00", [21 x i8] zeroinitializer }, align 32
@debug_help_string = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@debug_help_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @orangefs_debug_help_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@orangefs_debug_disabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Client Debug Keywords:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Kernel Debug Keywords:\0A\00", [40 x i8] zeroinitializer }, align 32
@orangefs_prepare_debugfs_help_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: start\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"orangefs_prepare_debugfs_help_string\00", [59 x i8] zeroinitializer }, align 32
@orangefs_prepare_debugfs_help_string._entry_ptr = internal global ptr @orangefs_prepare_debugfs_help_string._entry, section ".printk_index", align 4
@.str.9 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"Client Debug Keywords are unknown until the first time\0Athe client is started after boot.\0A\00", [38 x i8] zeroinitializer }, align 32
@client_debug_array_string = internal global { [2048 x i8], [512 x i8] } zeroinitializer, align 32
@cdm_element_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@cdm_array = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@s_kmod_keyword_mask_map = internal constant { [18 x %struct.__keyword_mask_s], [64 x i8] } { [18 x %struct.__keyword_mask_s] [%struct.__keyword_mask_s { ptr @.str.98, i64 1 }, %struct.__keyword_mask_s { ptr @.str.99, i64 2 }, %struct.__keyword_mask_s { ptr @.str.100, i64 4 }, %struct.__keyword_mask_s { ptr @.str.101, i64 8 }, %struct.__keyword_mask_s { ptr @.str.102, i64 16 }, %struct.__keyword_mask_s { ptr @.str.103, i64 32 }, %struct.__keyword_mask_s { ptr @.str.104, i64 64 }, %struct.__keyword_mask_s { ptr @.str.105, i64 128 }, %struct.__keyword_mask_s { ptr @.str.106, i64 256 }, %struct.__keyword_mask_s { ptr @.str.107, i64 512 }, %struct.__keyword_mask_s { ptr @.str.108, i64 1024 }, %struct.__keyword_mask_s { ptr @.str.109, i64 2048 }, %struct.__keyword_mask_s { ptr @.str.110, i64 4096 }, %struct.__keyword_mask_s { ptr @.str.111, i64 8192 }, %struct.__keyword_mask_s { ptr @.str.112, i64 16384 }, %struct.__keyword_mask_s { ptr @.str.113, i64 32768 }, %struct.__keyword_mask_s { ptr @.str.114, i64 0 }, %struct.__keyword_mask_s { ptr @.str.95, i64 65535 }], [64 x i8] zeroinitializer }, align 32
@orangefs_help_file_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.115, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @orangefs_help_file_lock, i64 52), ptr getelementptr (i8, ptr @orangefs_help_file_lock, i64 52) }, ptr @orangefs_help_file_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.116, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@client_debug_mask = internal global { %struct.client_debug_mask, [40 x i8] } zeroinitializer, align 32
@orangefs_debugfs_new_client_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: client debug mask has been been received :%llx: :%llx:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"orangefs_debugfs_new_client_mask\00", [63 x i8] zeroinitializer }, align 32
@orangefs_debugfs_new_client_mask._entry_ptr = internal global ptr @orangefs_debugfs_new_client_mask._entry, section ".printk_index", align 4
@orangefs_debugfs_new_client_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s: CLIENT_STRING: copy_from_user failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"orangefs_debugfs_new_client_string\00", [61 x i8] zeroinitializer }, align 32
@orangefs_debugfs_new_client_string._entry_ptr = internal global ptr @orangefs_debugfs_new_client_string._entry, section ".printk_index", align 4
@orangefs_debugfs_new_client_string._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: client debug array string has been received.\0A\00", [44 x i8] zeroinitializer }, align 32
@orangefs_debugfs_new_client_string._entry_ptr.18 = internal global ptr @orangefs_debugfs_new_client_string._entry.16, section ".printk_index", align 4
@help_string_initialized = internal global { i32, [28 x i8] } zeroinitializer, align 32
@orangefs_debugfs_new_client_string._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: no debug help string \0A\00", [35 x i8] zeroinitializer }, align 32
@orangefs_debugfs_new_client_string._entry_ptr.21 = internal global ptr @orangefs_debugfs_new_client_string._entry.19, section ".printk_index", align 4
@client_debug_dentry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@orangefs_debugfs_new_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: kernel debug mask has been modified to :%s: :%llx:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_debugfs_new_debug\00", [37 x i8] zeroinitializer }, align 32
@orangefs_debugfs_new_debug._entry_ptr = internal global ptr @orangefs_debugfs_new_debug._entry, section ".printk_index", align 4
@orangefs_debugfs_new_debug._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: client debug mask has been modified to:%s: :%llx:\0A\00", [39 x i8] zeroinitializer }, align 32
@orangefs_debugfs_new_debug._entry_ptr.26 = internal global ptr @orangefs_debugfs_new_debug._entry.24, section ".printk_index", align 4
@client_debug_string = internal global { [2048 x i8], [512 x i8] } zeroinitializer, align 32
@orangefs_debugfs_new_debug._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Invalid mask type....\0A\00", [39 x i8] zeroinitializer }, align 32
@orangefs_debugfs_new_debug._entry_ptr.29 = internal global ptr @orangefs_debugfs_new_debug._entry.27, section ".printk_index", align 4
@orangefs_debug_help_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017orangefs_debug_help_open: start\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"orangefs_debug_help_open\00", [39 x i8] zeroinitializer }, align 32
@orangefs_debug_help_open._entry_ptr = internal global ptr @orangefs_debug_help_open._entry, section ".printk_index", align 4
@help_debug_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @help_start, ptr @help_stop, ptr @help_next, ptr @help_show }, [16 x i8] zeroinitializer }, align 32
@orangefs_debug_help_open._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017orangefs_debug_help_open: rc:%d:\0A\00", [60 x i8] zeroinitializer }, align 32
@orangefs_debug_help_open._entry_ptr.34 = internal global ptr @orangefs_debug_help_open._entry.32, section ".printk_index", align 4
@help_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017help_start: start\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"help_start\00", [21 x i8] zeroinitializer }, align 32
@help_start._entry_ptr = internal global ptr @help_start._entry, section ".printk_index", align 4
@help_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017help_stop: start\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"help_stop\00", [22 x i8] zeroinitializer }, align 32
@help_stop._entry_ptr = internal global ptr @help_stop._entry, section ".printk_index", align 4
@help_next._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017help_next: start\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"help_next\00", [22 x i8] zeroinitializer }, align 32
@help_next._entry_ptr = internal global ptr @help_next._entry, section ".printk_index", align 4
@help_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017help_show: start\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"help_show\00", [22 x i8] zeroinitializer }, align 32
@help_show._entry_ptr = internal global ptr @help_show._entry, section ".printk_index", align 4
@orangefs_kernel_debug_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.43, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_kernel_debug_init\00", [37 x i8] zeroinitializer }, align 32
@orangefs_kernel_debug_init._entry_ptr = internal global ptr @orangefs_kernel_debug_init._entry, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"none\0A\00", [26 x i8] zeroinitializer }, align 32
@orangefs_kernel_debug_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: overflow 1!\0A\00", [45 x i8] zeroinitializer }, align 32
@orangefs_kernel_debug_init._entry_ptr.47 = internal global ptr @orangefs_kernel_debug_init._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel-debug\00", [19 x i8] zeroinitializer }, align 32
@kernel_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @orangefs_debug_read, ptr @orangefs_debug_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @orangefs_debug_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@orangefs_kernel_debug_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: rc:%d:\0A\00", [18 x i8] zeroinitializer }, align 32
@orangefs_kernel_debug_init._entry_ptr.51 = internal global ptr @orangefs_kernel_debug_init._entry.49, section ".printk_index", align 4
@orangefs_debug_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017orangefs_debug_read: start\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_debug_read\00", [44 x i8] zeroinitializer }, align 32
@orangefs_debug_read._entry_ptr = internal global ptr @orangefs_debug_read._entry, section ".printk_index", align 4
@orangefs_debug_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.58, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @orangefs_debug_lock, i64 52), ptr getelementptr (i8, ptr @orangefs_debug_lock, i64 52) }, ptr @orangefs_debug_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.59, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@orangefs_debug_read._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017orangefs_debug_read: ret: %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@orangefs_debug_read._entry_ptr.57 = internal global ptr @orangefs_debug_read._entry.55, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"orangefs_debug_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_debug_lock\00", [44 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017orangefs_debug_write: %pD\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_debug_write\00", [43 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry_ptr = internal global ptr @orangefs_debug_write._entry, section ".printk_index", align 4
@orangefs_debug_write._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: copy_from_user failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry_ptr.64 = internal global ptr @orangefs_debug_write._entry.62, section ".printk_index", align 4
@orangefs_debug_write._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017New kernel debug string is %s\0A\00", [63 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry_ptr.67 = internal global ptr @orangefs_debug_write._entry.65, section ".printk_index", align 4
@orangefs_debug_write._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Client not running :%d:\0A\00", [33 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry_ptr.70 = internal global ptr @orangefs_debug_write._entry.68, section ".printk_index", align 4
@orangefs_debug_write._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.61, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: op_alloc failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry_ptr.73 = internal global ptr @orangefs_debug_write._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llx %llx\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orangefs_param\00", [17 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.61, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: service_operation failed! rc:%d:\0A\00", [56 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry_ptr.78 = internal global ptr @orangefs_debug_write._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.61, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017orangefs_debug_write: rc: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@orangefs_debug_write._entry_ptr.82 = internal global ptr @orangefs_debug_write._entry.80, section ".printk_index", align 4
@orangefs_debug_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: orangefs_debug_disabled: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_debug_open\00", [44 x i8] zeroinitializer }, align 32
@orangefs_debug_open._entry_ptr = internal global ptr @orangefs_debug_open._entry, section ".printk_index", align 4
@orangefs_debug_open._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017orangefs_debug_open: rc: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@orangefs_debug_open._entry_ptr.87 = internal global ptr @orangefs_debug_open._entry.85, section ".printk_index", align 4
@orangefs_prepare_cdm_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.88, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_prepare_cdm_array\00", [37 x i8] zeroinitializer }, align 32
@orangefs_prepare_cdm_array._entry_ptr = internal global ptr @orangefs_prepare_cdm_array._entry, section ".printk_index", align 4
@orangefs_prepare_cdm_array._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016No elements in client debug array string!\0A\00", [51 x i8] zeroinitializer }, align 32
@orangefs_prepare_cdm_array._entry_ptr.91 = internal global ptr @orangefs_prepare_cdm_array._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %llx %llx\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"verbose\00", [24 x i8] zeroinitializer }, align 32
@client_verbose_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@client_all_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@orangefs_prepare_cdm_array._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.88, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_prepare_cdm_array._entry_ptr.97 = internal global ptr @orangefs_prepare_cdm_array._entry.96, section ".printk_index", align 4
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dir\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"utils\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wait\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcache\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bufmap\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"debugfs\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xattr\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sysfs\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"orangefs_help_file_lock.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orangefs_help_file_lock\00", [40 x i8] zeroinitializer }, align 32
@debug_mask_to_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.117, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"debug_mask_to_string\00", [43 x i8] zeroinitializer }, align 32
@debug_mask_to_string._entry_ptr = internal global ptr @debug_mask_to_string._entry, section ".printk_index", align 4
@debug_mask_to_string._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: string:%s:\0A\00", [46 x i8] zeroinitializer }, align 32
@debug_mask_to_string._entry_ptr.120 = internal global ptr @debug_mask_to_string._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@do_c_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: overflow!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_c_string\00", [20 x i8] zeroinitializer }, align 32
@do_c_string._entry_ptr = internal global ptr @do_c_string._entry, section ".printk_index", align 4
@do_k_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.124, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_k_string\00", [20 x i8] zeroinitializer }, align 32
@do_k_string._entry_ptr = internal global ptr @do_k_string._entry, section ".printk_index", align 4
@debug_string_to_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.125, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"debug_string_to_mask\00", [43 x i8] zeroinitializer }, align 32
@debug_string_to_mask._entry_ptr = internal global ptr @debug_string_to_mask._entry, section ".printk_index", align 4
@.str.128 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@orangefs_client_debug_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.129, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_client_debug_init\00", [37 x i8] zeroinitializer }, align 32
@orangefs_client_debug_init._entry_ptr = internal global ptr @orangefs_client_debug_init._entry, section ".printk_index", align 4
@orangefs_client_debug_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: overflow! 2\0A\00", [45 x i8] zeroinitializer }, align 32
@orangefs_client_debug_init._entry_ptr.132 = internal global ptr @orangefs_client_debug_init._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"client-debug\00", [19 x i8] zeroinitializer }, align 32
@orangefs_client_debug_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.129, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_client_debug_init._entry_ptr.135 = internal global ptr @orangefs_client_debug_init._entry.134, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"kernel_debug_string\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 97, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant [25 x i8] c"kernel_mask_set_mod_init\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 177, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 182, i32 33 }
@___asan_gen_.155 = private unnamed_addr constant [10 x i8] c"debug_dir\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 103, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 184, i32 22 }
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"debug_help_string\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 98, i32 14 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"debug_help_fops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 116, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant [24 x i8] c"orangefs_debug_disabled\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 600, i32 23 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 601, i32 23 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 608, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 611, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"client_debug_array_string\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 100, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant [18 x i8] c"cdm_element_count\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 136, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 646, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant [10 x i8] c"cdm_array\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 135, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 648, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant [24 x i8] c"s_kmod_keyword_mask_map\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 65, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant [24 x i8] c"orangefs_help_file_lock\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"client_debug_mask\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 138, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 920, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 938, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 956, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [24 x i8] c"help_string_initialized\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 107, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 964, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"client_debug_dentry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 102, i32 23 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1008, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1016, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"client_debug_string\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 99, i32 13 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 1022, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 233, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [15 x i8] c"help_debug_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 109, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 248, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 264, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 284, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 277, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 290, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 200, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 210, i32 20 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 211, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 214, i32 22 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"kernel_debug_fops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 124, i32 37 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 218, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 368, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c"orangefs_debug_lock\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 383, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 144, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 403, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 424, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 444, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 450, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 462, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 473, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 479, i32 12 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 483, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 494, i32 13 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 504, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 339, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 353, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 524, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 534, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 550, i32 35 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 559, i32 10 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 564, i32 37 }
@___asan_gen_.465 = private unnamed_addr constant [21 x i8] c"client_verbose_index\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 133, i32 12 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 567, i32 37 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"client_all_index\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 132, i32 12 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 575, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 66, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 67, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 68, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 69, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 70, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 71, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 72, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 73, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 74, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 75, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 76, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 77, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 78, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 79, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 80, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 81, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant [32 x i8] c"../fs/orangefs/orangefs-debug.h\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 82, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 147, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 693, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 733, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 779, i32 33 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 781, i32 5 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 754, i32 5 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 859, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.571, i32 156, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 306, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 317, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 320, i32 44 }
@___asan_gen_.588 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.589 = private constant [34 x i8] c"../fs/orangefs/orangefs-debugfs.c\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.589, i32 330, i32 2 }
@llvm.compiler.used = appending global [193 x ptr] [ptr @debug_mask_to_string._entry, ptr @debug_mask_to_string._entry.118, ptr @debug_mask_to_string._entry_ptr, ptr @debug_mask_to_string._entry_ptr.120, ptr @debug_string_to_mask._entry, ptr @debug_string_to_mask._entry_ptr, ptr @do_c_string._entry, ptr @do_c_string._entry_ptr, ptr @do_k_string._entry, ptr @do_k_string._entry_ptr, ptr @help_next._entry, ptr @help_next._entry_ptr, ptr @help_show._entry, ptr @help_show._entry_ptr, ptr @help_start._entry, ptr @help_start._entry_ptr, ptr @help_stop._entry, ptr @help_stop._entry_ptr, ptr @orangefs_client_debug_init._entry, ptr @orangefs_client_debug_init._entry.130, ptr @orangefs_client_debug_init._entry.134, ptr @orangefs_client_debug_init._entry_ptr, ptr @orangefs_client_debug_init._entry_ptr.132, ptr @orangefs_client_debug_init._entry_ptr.135, ptr @orangefs_debug_help_open._entry, ptr @orangefs_debug_help_open._entry.32, ptr @orangefs_debug_help_open._entry_ptr, ptr @orangefs_debug_help_open._entry_ptr.34, ptr @orangefs_debug_open._entry, ptr @orangefs_debug_open._entry.85, ptr @orangefs_debug_open._entry_ptr, ptr @orangefs_debug_open._entry_ptr.87, ptr @orangefs_debug_read._entry, ptr @orangefs_debug_read._entry.55, ptr @orangefs_debug_read._entry_ptr, ptr @orangefs_debug_read._entry_ptr.57, ptr @orangefs_debug_write._entry, ptr @orangefs_debug_write._entry.62, ptr @orangefs_debug_write._entry.65, ptr @orangefs_debug_write._entry.68, ptr @orangefs_debug_write._entry.71, ptr @orangefs_debug_write._entry.76, ptr @orangefs_debug_write._entry.80, ptr @orangefs_debug_write._entry_ptr, ptr @orangefs_debug_write._entry_ptr.64, ptr @orangefs_debug_write._entry_ptr.67, ptr @orangefs_debug_write._entry_ptr.70, ptr @orangefs_debug_write._entry_ptr.73, ptr @orangefs_debug_write._entry_ptr.78, ptr @orangefs_debug_write._entry_ptr.82, ptr @orangefs_debugfs_init._entry, ptr @orangefs_debugfs_init._entry_ptr, ptr @orangefs_debugfs_new_client_mask._entry, ptr @orangefs_debugfs_new_client_mask._entry_ptr, ptr @orangefs_debugfs_new_client_string._entry, ptr @orangefs_debugfs_new_client_string._entry.16, ptr @orangefs_debugfs_new_client_string._entry.19, ptr @orangefs_debugfs_new_client_string._entry_ptr, ptr @orangefs_debugfs_new_client_string._entry_ptr.18, ptr @orangefs_debugfs_new_client_string._entry_ptr.21, ptr @orangefs_debugfs_new_debug._entry, ptr @orangefs_debugfs_new_debug._entry.24, ptr @orangefs_debugfs_new_debug._entry.27, ptr @orangefs_debugfs_new_debug._entry_ptr, ptr @orangefs_debugfs_new_debug._entry_ptr.26, ptr @orangefs_debugfs_new_debug._entry_ptr.29, ptr @orangefs_kernel_debug_init._entry, ptr @orangefs_kernel_debug_init._entry.45, ptr @orangefs_kernel_debug_init._entry.49, ptr @orangefs_kernel_debug_init._entry_ptr, ptr @orangefs_kernel_debug_init._entry_ptr.47, ptr @orangefs_kernel_debug_init._entry_ptr.51, ptr @orangefs_prepare_cdm_array._entry, ptr @orangefs_prepare_cdm_array._entry.89, ptr @orangefs_prepare_cdm_array._entry.96, ptr @orangefs_prepare_cdm_array._entry_ptr, ptr @orangefs_prepare_cdm_array._entry_ptr.91, ptr @orangefs_prepare_cdm_array._entry_ptr.97, ptr @orangefs_prepare_debugfs_help_string._entry, ptr @orangefs_prepare_debugfs_help_string._entry_ptr, ptr @kernel_debug_string, ptr @kernel_mask_set_mod_init, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @debug_dir, ptr @.str.4, ptr @debug_help_string, ptr @debug_help_fops, ptr @orangefs_debug_disabled, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @client_debug_array_string, ptr @cdm_element_count, ptr @.str.10, ptr @cdm_array, ptr @.str.11, ptr @s_kmod_keyword_mask_map, ptr @orangefs_help_file_lock, ptr @client_debug_mask, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @help_string_initialized, ptr @.str.20, ptr @client_debug_dentry, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @client_debug_string, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @help_debug_ops, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @kernel_debug_fops, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @orangefs_debug_lock, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @client_verbose_index, ptr @.str.95, ptr @client_all_index, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.133], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_debug_string to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_mask_set_mod_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_help_string to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_help_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_disabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_prepare_debugfs_help_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_debug_array_string to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdm_element_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdm_array to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_kmod_keyword_mask_map to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_help_file_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_debug_mask to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_new_client_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_new_client_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_new_client_string._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help_string_initialized to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_new_client_string._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_debug_dentry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_new_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_new_debug._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_debug_string to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debugfs_new_debug._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_help_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help_debug_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_help_open._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help_next._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_kernel_debug_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_kernel_debug_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_kernel_debug_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_read._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_write._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_write._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_write._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_write._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_write._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_write._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_debug_open._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_prepare_cdm_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_prepare_cdm_array._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_verbose_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_all_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_prepare_cdm_array._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_mask_to_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_mask_to_string._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_c_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_k_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_string_to_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_client_debug_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_client_debug_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_client_debug_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_debugfs_init(i32 noundef %debug_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %debug_mask to i64
  call void @__asan_store8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  store i64 %conv, ptr @orangefs_gossip_debug_mask, align 8
  tail call fastcc void @debug_mask_to_string(ptr noundef nonnull @orangefs_gossip_debug_mask, i32 noundef 0)
  tail call fastcc void @debug_string_to_mask(ptr noundef nonnull @kernel_debug_string, ptr noundef nonnull @orangefs_gossip_debug_mask, i32 noundef 0)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @kernel_mask_set_mod_init, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @kernel_debug_string, i64 noundef %0) #16
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef null) #13
  store ptr %call2, ptr @debug_dir, align 4
  %1 = load ptr, ptr @debug_help_string, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %call2, ptr noundef %1, ptr noundef nonnull @debug_help_fops) #13
  store i1 true, ptr @orangefs_debug_disabled, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i = and i64 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %do.end.do.end3.i_crit_edge, label %do.end.i

do.end.do.end3.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43) #16
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end.do.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2048) #17
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %do.end3.i.do.body20.i_crit_edge, label %if.end7.i

do.end3.i.do.body20.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body20.i

if.end7.i:                                        ; preds = %do.end3.i
  %call8.i = tail call i32 @strlen(ptr noundef nonnull @kernel_debug_string) #18
  %add.i = add i32 %call8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 2048
  br i1 %cmp.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call ptr @strcpy(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @kernel_debug_string) #18
  %strlen.i = tail call i32 @strlen(ptr nonnull %call7.i.i.i) #18
  %endptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %strlen.i
  %4 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 2560, ptr %endptr.i, align 1
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.44, i32 6)
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then9.i
  %6 = load ptr, ptr @debug_dir, align 4
  %call19.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 292, ptr noundef %6, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @kernel_debug_fops) #13
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.end18.i, %do.end3.i.do.body20.i_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and21.i = and i64 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %tobool22.not.i = icmp eq i64 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.orangefs_kernel_debug_init.exit_crit_edge, label %do.end26.i

do.body20.i.orangefs_kernel_debug_init.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %orangefs_kernel_debug_init.exit

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #15
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.43, i32 noundef -12) #16
  br label %orangefs_kernel_debug_init.exit

orangefs_kernel_debug_init.exit:                  ; preds = %do.end26.i, %do.body20.i.orangefs_kernel_debug_init.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @debug_mask_to_string(ptr nocapture noundef readonly %mask, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.117) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool4.not = icmp eq i32 %type, 0
  br i1 %tobool4.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end3
  %1 = load i32, ptr @cdm_element_count, align 4
  %2 = call ptr @memset(ptr @client_debug_string, i32 0, i32 2048)
  %mask1.i = getelementptr inbounds %struct.client_debug_mask, ptr %mask, i32 0, i32 1
  %3 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %mask1.i, align 8
  %5 = load ptr, ptr @cdm_array, align 4
  %6 = load i32, ptr @client_all_index, align 4
  %mask11.i = getelementptr %struct.client_debug_mask, ptr %5, i32 %6, i32 1
  %7 = ptrtoint ptr %mask11.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mask11.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %8)
  %cmp.i = icmp eq i64 %4, %8
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %mask2.i = getelementptr inbounds %struct.client_debug_mask, ptr %mask, i32 0, i32 2
  %9 = ptrtoint ptr %mask2.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mask2.i, align 8
  %mask23.i = getelementptr %struct.client_debug_mask, ptr %5, i32 %6, i32 2
  %11 = ptrtoint ptr %mask23.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mask23.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp4.i = icmp eq i64 %10, %12
  br i1 %cmp4.i, label %if.then5.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 1634495488, ptr @client_debug_string, align 8
  br label %do.body33

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %13 = load i32, ptr @client_verbose_index, align 4
  %mask18.i = getelementptr %struct.client_debug_mask, ptr %5, i32 %13, i32 1
  %14 = ptrtoint ptr %mask18.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mask18.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %15)
  %cmp9.i = icmp eq i64 %4, %15
  br i1 %cmp9.i, label %land.lhs.true10.i, label %if.end.i.check_amalgam_keyword.exit_crit_edge

if.end.i.check_amalgam_keyword.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_amalgam_keyword.exit

land.lhs.true10.i:                                ; preds = %if.end.i
  %mask211.i = getelementptr inbounds %struct.client_debug_mask, ptr %mask, i32 0, i32 2
  %16 = ptrtoint ptr %mask211.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mask211.i, align 8
  %mask213.i = getelementptr %struct.client_debug_mask, ptr %5, i32 %13, i32 2
  %18 = ptrtoint ptr %mask213.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mask213.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp14.i = icmp eq i64 %17, %19
  br i1 %cmp14.i, label %if.then15.i, label %land.lhs.true10.i.check_amalgam_keyword.exit_crit_edge

land.lhs.true10.i.check_amalgam_keyword.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_amalgam_keyword.exit

if.then15.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  store i64 8531350836225467648, ptr @client_debug_string, align 8
  br label %do.body33

if.else.i:                                        ; preds = %do.end3
  %20 = call ptr @memset(ptr @kernel_debug_string, i32 0, i32 2048)
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65534, i64 %22)
  %cmp19.i = icmp ugt i64 %22, 65534
  br i1 %cmp19.i, label %if.then20.i, label %if.else.i.for.body.lr.ph_crit_edge

if.else.i.for.body.lr.ph_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 1634495488, ptr @kernel_debug_string, align 4
  br label %do.body33

check_amalgam_keyword.exit:                       ; preds = %land.lhs.true10.i.check_amalgam_keyword.exit_crit_edge, %if.end.i.check_amalgam_keyword.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp88 = icmp sgt i32 %1, 0
  br i1 %cmp88, label %check_amalgam_keyword.exit.for.body.lr.ph_crit_edge, label %check_amalgam_keyword.exit.for.end_crit_edge

check_amalgam_keyword.exit.for.end_crit_edge:     ; preds = %check_amalgam_keyword.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

check_amalgam_keyword.exit.for.body.lr.ph_crit_edge: ; preds = %check_amalgam_keyword.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %check_amalgam_keyword.exit.for.body.lr.ph_crit_edge, %if.else.i.for.body.lr.ph_crit_edge
  %debug_string.07997 = phi ptr [ @client_debug_string, %check_amalgam_keyword.exit.for.body.lr.ph_crit_edge ], [ @kernel_debug_string, %if.else.i.for.body.lr.ph_crit_edge ]
  %element_count.08195 = phi i32 [ %1, %check_amalgam_keyword.exit.for.body.lr.ph_crit_edge ], [ 18, %if.else.i.for.body.lr.ph_crit_edge ]
  %mask1.i59 = getelementptr inbounds %struct.client_debug_mask, ptr %mask, i32 0, i32 1
  %mask2.i61 = getelementptr inbounds %struct.client_debug_mask, ptr %mask, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool4.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %for.body
  %23 = load ptr, ptr @cdm_array, align 4
  %arrayidx.i = getelementptr %struct.client_debug_mask, ptr %23, i32 %i.089
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 8
  %call.i.i = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(4) @.str.95) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then12.for.inc_crit_edge, label %lor.lhs.false.i.i

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false.i.i:                                ; preds = %if.then12
  %call1.i.i = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(8) @.str.94) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.for.inc_crit_edge, label %if.end.i60

lor.lhs.false.i.i.for.inc_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i60:                                       ; preds = %lor.lhs.false.i.i
  %26 = ptrtoint ptr %mask1.i59 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %mask1.i59, align 8
  %mask12.i = getelementptr %struct.client_debug_mask, ptr %23, i32 %i.089, i32 1
  %28 = ptrtoint ptr %mask12.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %mask12.i, align 8
  %and.i = and i64 %29, %27
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool3.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.end.i60.if.then8.i_crit_edge

if.end.i60.if.then8.i_crit_edge:                  ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i60
  %30 = ptrtoint ptr %mask2.i61 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mask2.i61, align 8
  %mask25.i = getelementptr %struct.client_debug_mask, ptr %23, i32 %i.089, i32 2
  %32 = ptrtoint ptr %mask25.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %mask25.i, align 8
  %and6.i = and i64 %33, %31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i)
  %tobool7.not.i = icmp eq i64 %and6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.if.then8.i_crit_edge

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8.i

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.end.i60.if.then8.i_crit_edge
  %call9.i = tail call i32 @strlen(ptr noundef nonnull @client_debug_string) #18
  %call12.i = tail call i32 @strlen(ptr noundef %25) #18
  %add.i = add i32 %call9.i, 1
  %add13.i = add i32 %add.i, %call12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2046, i32 %add13.i)
  %cmp.i62 = icmp ult i32 %add13.i, 2046
  br i1 %cmp.i62, label %if.then14.i, label %do.end.i

if.then14.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i = tail call ptr @strcat(ptr noundef nonnull @client_debug_string, ptr noundef %25) #13
  %strlen.i = tail call i32 @strlen(ptr nonnull @client_debug_string) #18
  %endptr.i = getelementptr i8, ptr @client_debug_string, i32 %strlen.i
  %34 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 11264, ptr %endptr.i, align 1
  br label %for.inc

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #16
  store i32 1634495488, ptr @client_debug_string, align 8
  br label %for.inc

if.else13:                                        ; preds = %for.body
  %arrayidx.i63 = getelementptr [18 x %struct.__keyword_mask_s], ptr @s_kmod_keyword_mask_map, i32 0, i32 %i.089
  %35 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i63, align 8
  %call.i.i64 = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(4) @.str.95) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %call.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.else13.for.inc_crit_edge, label %lor.lhs.false.i.i68

if.else13.for.inc_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false.i.i68:                              ; preds = %if.else13
  %call1.i.i66 = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(8) @.str.94) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i66)
  %tobool2.not.i.i67 = icmp eq i32 %call1.i.i66, 0
  br i1 %tobool2.not.i.i67, label %lor.lhs.false.i.i68.for.inc_crit_edge, label %if.end.i70

lor.lhs.false.i.i68.for.inc_crit_edge:            ; preds = %lor.lhs.false.i.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i70:                                       ; preds = %lor.lhs.false.i.i68
  %37 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mask, align 8
  %mask_val.i = getelementptr [18 x %struct.__keyword_mask_s], ptr @s_kmod_keyword_mask_map, i32 0, i32 %i.089, i32 1
  %39 = ptrtoint ptr %mask_val.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %mask_val.i, align 8
  %and.i69 = and i64 %40, %38
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i69)
  %tobool2.not.i = icmp eq i64 %and.i69, 0
  br i1 %tobool2.not.i, label %if.end.i70.for.inc_crit_edge, label %if.then3.i

if.end.i70.for.inc_crit_edge:                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i70
  %call4.i = tail call i32 @strlen(ptr noundef nonnull @kernel_debug_string) #18
  %call7.i = tail call i32 @strlen(ptr noundef %36) #18
  %add.i71 = add i32 %call7.i, %call4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %add.i71)
  %cmp.i72 = icmp ult i32 %add.i71, 2047
  br i1 %cmp.i72, label %if.then8.i75, label %do.end.i76

if.then8.i75:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %call11.i = tail call ptr @strcat(ptr noundef nonnull @kernel_debug_string, ptr noundef %36) #13
  %strlen.i73 = tail call i32 @strlen(ptr nonnull @kernel_debug_string) #18
  %endptr.i74 = getelementptr i8, ptr @kernel_debug_string, i32 %strlen.i73
  %41 = ptrtoint ptr %endptr.i74 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 11264, ptr %endptr.i74, align 1
  br label %for.inc

do.end.i76:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #16
  store i32 1634495488, ptr @kernel_debug_string, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end.i76, %if.then8.i75, %if.end.i70.for.inc_crit_edge, %lor.lhs.false.i.i68.for.inc_crit_edge, %if.else13.for.inc_crit_edge, %do.end.i, %if.then14.i, %lor.lhs.false.i.for.inc_crit_edge, %lor.lhs.false.i.i.for.inc_crit_edge, %if.then12.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %element_count.08195
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %check_amalgam_keyword.exit.for.end_crit_edge
  %debug_string.07996 = phi ptr [ @client_debug_string, %check_amalgam_keyword.exit.for.end_crit_edge ], [ %debug_string.07997, %for.inc.for.end_crit_edge ]
  %call15 = tail call i32 @strlen(ptr noundef nonnull %debug_string.07996) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %brmerge = or i1 %tobool4.not, %tobool16.not
  br i1 %brmerge, label %if.else19, label %if.then18

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %call15, -1
  %arrayidx = getelementptr [2048 x i8], ptr @client_debug_string, i32 0, i32 %sub
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx, align 1
  br label %do.body33

if.else19:                                        ; preds = %for.end
  br i1 %tobool16.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #15
  %sub22 = add i32 %call15, -1
  %arrayidx23 = getelementptr [2048 x i8], ptr @kernel_debug_string, i32 0, i32 %sub22
  %43 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx23, align 1
  br label %do.body33

if.else24:                                        ; preds = %if.else19
  br i1 %tobool4.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #15
  %44 = call ptr @memcpy(ptr @client_debug_string, ptr @.str.114, i32 5)
  br label %do.body33

if.else28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #15
  %45 = call ptr @memcpy(ptr @kernel_debug_string, ptr @.str.114, i32 5)
  br label %do.body33

do.body33:                                        ; preds = %if.else28, %if.then26, %if.then21, %if.then18, %if.then20.i, %if.then15.i, %if.then5.i
  %debug_string.07987 = phi ptr [ %debug_string.07996, %if.then21 ], [ %debug_string.07996, %if.else28 ], [ %debug_string.07996, %if.then26 ], [ %debug_string.07996, %if.then18 ], [ @kernel_debug_string, %if.then20.i ], [ @client_debug_string, %if.then15.i ], [ @client_debug_string, %if.then5.i ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %46 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and34 = and i64 %46, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.end44_crit_edge, label %do.end39

do.body33.do.end44_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #15
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, ptr noundef nonnull %debug_string.07987) #16
  br label %do.end44

do.end44:                                         ; preds = %do.end39, %do.body33.do.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @debug_string_to_mask(ptr noundef %debug_string, ptr noundef %mask, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %strsep_fodder = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strsep_fodder) #13
  %call = tail call noalias ptr @kstrdup(ptr noundef %debug_string, i32 noundef 3264) #13
  %0 = ptrtoint ptr %strsep_fodder to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %strsep_fodder, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.125) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool5.not = icmp eq i32 %type, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load i32, ptr @cdm_element_count, align 4
  br label %if.end7

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %mask, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %c_mask.0 = phi ptr [ null, %if.else ], [ %mask, %if.then6 ]
  %k_mask.0 = phi ptr [ %mask, %if.else ], [ null, %if.then6 ]
  %element_count.0 = phi i32 [ 18, %if.else ], [ %2, %if.then6 ]
  %4 = ptrtoint ptr %strsep_fodder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %strsep_fodder, align 4
  %call834 = call ptr @strsep(ptr noundef nonnull %strsep_fodder, ptr noundef nonnull @.str.121) #13
  %tobool9.not35 = icmp eq ptr %call834, null
  br i1 %tobool9.not35, label %if.end7.while.end_crit_edge, label %while.body.lr.ph

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %element_count.0)
  %cmp31 = icmp slt i32 %element_count.0, 1
  %mask1.i = getelementptr inbounds %struct.client_debug_mask, ptr %c_mask.0, i32 0, i32 1
  %mask2.i = getelementptr inbounds %struct.client_debug_mask, ptr %c_mask.0, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %call836 = phi ptr [ %call834, %while.body.lr.ph ], [ %call8, %if.end17.while.body_crit_edge ]
  %6 = ptrtoint ptr %call836 to i32
  call void @__asan_load1_noabort(i32 %6)
  %char0 = load i8, ptr %call836, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool11.not = icmp eq i8 %char0, 0
  %brmerge = select i1 %tobool11.not, i1 true, i1 %cmp31
  br i1 %brmerge, label %while.body.if.end17_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  br i1 %tobool5.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %for.body
  %7 = load ptr, ptr @cdm_array, align 4
  %arrayidx.i = getelementptr %struct.client_debug_mask, ptr %7, i32 %i.032
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %call.i = call i32 @strcmp(ptr noundef %9, ptr noundef nonnull %call836) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then14.for.inc_crit_edge

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %mask1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mask1.i, align 8
  %mask12.i = getelementptr %struct.client_debug_mask, ptr %7, i32 %i.032, i32 1
  %12 = ptrtoint ptr %mask12.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mask12.i, align 8
  %or.i = or i64 %13, %11
  store i64 %or.i, ptr %mask1.i, align 8
  %mask25.i = getelementptr %struct.client_debug_mask, ptr %7, i32 %i.032, i32 2
  br label %for.inc.sink.split

if.else15:                                        ; preds = %for.body
  %arrayidx.i25 = getelementptr [18 x %struct.__keyword_mask_s], ptr @s_kmod_keyword_mask_map, i32 0, i32 %i.032
  %14 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i25, align 8
  %call.i26 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull %call836) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.then.i29, label %if.else15.for.inc_crit_edge

if.else15.for.inc_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i29:                                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  %mask_val.i = getelementptr [18 x %struct.__keyword_mask_s], ptr @s_kmod_keyword_mask_map, i32 0, i32 %i.032, i32 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then.i29, %if.then.i
  %mask_val.i.sink = phi ptr [ %mask_val.i, %if.then.i29 ], [ %mask25.i, %if.then.i ]
  %k_mask.0.sink = phi ptr [ %k_mask.0, %if.then.i29 ], [ %mask2.i, %if.then.i ]
  %16 = ptrtoint ptr %k_mask.0.sink to i32
  call void @__asan_load8_noabort(i32 %16)
  %.sink37 = load i64, ptr %k_mask.0.sink, align 8
  %17 = ptrtoint ptr %mask_val.i.sink to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mask_val.i.sink, align 8
  %or.i28 = or i64 %18, %.sink37
  store i64 %or.i28, ptr %k_mask.0.sink, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else15.for.inc_crit_edge, %if.then14.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %element_count.0
  br i1 %exitcond.not, label %for.inc.if.end17_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %for.inc.if.end17_crit_edge, %while.body.if.end17_crit_edge
  %call8 = call ptr @strsep(ptr noundef nonnull %strsep_fodder, ptr noundef nonnull @.str.121) #13
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %if.end7.while.end_crit_edge
  call void @kfree(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strsep_fodder) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_debugfs_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_prepare_debugfs_help_string(i32 noundef %at_boot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %at_boot)
  %tobool4.not = icmp eq i32 %at_boot, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4096) #17
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %do.end3.out_crit_edge, label %if.end10

do.end3.out_crit_edge:                            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %do.end3
  %spec.select = select i1 %tobool4.not, ptr @.str.5, ptr @.str.9
  %call11 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %spec.select, i32 noundef 4096) #13
  br i1 %tobool4.not, label %if.then13, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then13:                                        ; preds = %if.end10
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i = and i64 %2, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then13.do.end3.i_crit_edge, label %do.end.i

if.then13.do.end3.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.88) #16
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then13.do.end3.i_crit_edge
  %call4.i = tail call i32 @strlen(ptr noundef nonnull @client_debug_array_string) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp14.not.i = icmp eq i32 %call4.i, 0
  br i1 %cmp14.not.i, label %do.end3.i.for.end.i_crit_edge, label %for.body.preheader.i

do.end3.i.for.end.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.preheader.i:                             ; preds = %do.end3.i
  %cdm_element_count.promoted.i = load i32, ptr @cdm_element_count, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.016.i = phi i32 [ %inc9.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %inc1315.i = phi i32 [ %inc12.i, %for.inc.i.for.body.i_crit_edge ], [ %cdm_element_count.promoted.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr i8, ptr @client_debug_array_string, i32 %i.016.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp5.i = icmp eq i8 %4, 10
  br i1 %cmp5.i, label %if.then7.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i = add i32 %inc1315.i, 1
  store i32 %inc.i, ptr @cdm_element_count, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %inc12.i = phi i32 [ %inc1315.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then7.i ]
  %inc9.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, %call4.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end3.i.for.end.i_crit_edge
  %5 = load i32, ptr @cdm_element_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not.i = icmp eq i32 %5, 0
  br i1 %tobool10.not.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #16
  br label %orangefs_prepare_cdm_array.exit.thread

if.end17.i:                                       ; preds = %for.end.i
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 24) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !306

kcalloc.exit.thread.i:                            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr null, ptr @cdm_array, align 4
  br label %orangefs_prepare_cdm_array.exit.thread

if.end7.i.i.i:                                    ; preds = %if.end17.i
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #20
  store ptr %call8.i.i.i, ptr @cdm_array, align 4
  %tobool19.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool19.not.i, label %if.end7.i.i.i.orangefs_prepare_cdm_array.exit.thread_crit_edge, label %for.cond22.preheader.i

if.end7.i.i.i.orangefs_prepare_cdm_array.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %orangefs_prepare_cdm_array.exit.thread

for.cond22.preheader.i:                           ; preds = %if.end7.i.i.i
  %9 = load i32, ptr @cdm_element_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2317.i = icmp sgt i32 %9, 0
  br i1 %cmp2317.i, label %for.cond22.preheader.i.for.body25.i_crit_edge, label %for.cond22.preheader.i.for.end54.i_crit_edge

for.cond22.preheader.i.for.end54.i_crit_edge:     ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54.i

for.cond22.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond22.preheader.i
  br label %for.body25.i

for.body25.i:                                     ; preds = %if.end51.i.for.body25.i_crit_edge, %for.cond22.preheader.i.for.body25.i_crit_edge
  %i.119.i = phi i32 [ %inc53.i, %if.end51.i.for.body25.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %cds_head.018.i = phi ptr [ %add.ptr.i, %if.end51.i.for.body25.i_crit_edge ], [ @client_debug_array_string, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %call26.i = tail call ptr @strchr(ptr noundef %cds_head.018.i, i32 noundef 10) #13
  %10 = ptrtoint ptr %call26.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call26.i, align 1
  %call27.i = tail call i32 @strcspn(ptr noundef %cds_head.018.i, ptr noundef nonnull @.str.92) #13
  %add.i = add i32 %call27.i, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #20
  %11 = load ptr, ptr @cdm_array, align 4
  %arrayidx29.i = getelementptr %struct.client_debug_mask, ptr %11, i32 %i.119.i
  %12 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i.i, ptr %arrayidx29.i, align 8
  %tobool32.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool32.not.i, label %for.body25.i.orangefs_prepare_cdm_array.exit.thread_crit_edge, label %if.end34.i

for.body25.i.orangefs_prepare_cdm_array.exit.thread_crit_edge: ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %orangefs_prepare_cdm_array.exit.thread

if.end34.i:                                       ; preds = %for.body25.i
  %mask1.i = getelementptr %struct.client_debug_mask, ptr %11, i32 %i.119.i, i32 1
  %mask2.i = getelementptr %struct.client_debug_mask, ptr %11, i32 %i.119.i, i32 2
  %call39.i = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %cds_head.018.i, ptr noundef nonnull @.str.93, ptr noundef nonnull %call9.i.i.i, ptr noundef %mask1.i, ptr noundef %mask2.i) #13
  %13 = load ptr, ptr @cdm_array, align 4
  %arrayidx40.i = getelementptr %struct.client_debug_mask, ptr %13, i32 %i.119.i
  %14 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx40.i, align 8
  %call42.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) @.str.94) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.then44.i, label %if.end34.i.if.end45.i_crit_edge

if.end34.i.if.end45.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

if.then44.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %i.119.i, ptr @client_verbose_index, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %if.end34.i.if.end45.i_crit_edge
  %call48.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.95) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.end45.i.if.end51.i_crit_edge

if.end45.i.if.end51.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51.i

if.then50.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %i.119.i, ptr @client_all_index, align 4
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then50.i, %if.end45.i.if.end51.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %call26.i, i32 1
  %inc53.i = add nuw nsw i32 %i.119.i, 1
  %16 = load i32, ptr @cdm_element_count, align 4
  %cmp23.i = icmp slt i32 %inc53.i, %16
  br i1 %cmp23.i, label %if.end51.i.for.body25.i_crit_edge, label %if.end51.i.for.end54.i_crit_edge

if.end51.i.for.end54.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end54.i

if.end51.i.for.body25.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body25.i

for.end54.i:                                      ; preds = %if.end51.i.for.end54.i_crit_edge, %for.cond22.preheader.i.for.end54.i_crit_edge
  %.lcssa.i = phi i32 [ %9, %for.cond22.preheader.i.for.end54.i_crit_edge ], [ %16, %if.end51.i.for.end54.i_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %17 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and56.i = and i64 %17, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and56.i)
  %tobool57.not.i = icmp eq i64 %and56.i, 0
  br i1 %tobool57.not.i, label %for.end54.i.orangefs_prepare_cdm_array.exit_crit_edge, label %do.end61.i

for.end54.i.orangefs_prepare_cdm_array.exit_crit_edge: ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %orangefs_prepare_cdm_array.exit

do.end61.i:                                       ; preds = %for.end54.i
  call void @__sanitizer_cov_trace_pc() #15
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.88, i32 noundef %.lcssa.i) #16
  br label %orangefs_prepare_cdm_array.exit

orangefs_prepare_cdm_array.exit.thread:           ; preds = %for.body25.i.orangefs_prepare_cdm_array.exit.thread_crit_edge, %if.end7.i.i.i.orangefs_prepare_cdm_array.exit.thread_crit_edge, %kcalloc.exit.thread.i, %do.end14.i
  %rc.0.i.ph = phi i32 [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.orangefs_prepare_cdm_array.exit.thread_crit_edge ], [ -22, %do.end14.i ], [ -12, %for.body25.i.orangefs_prepare_cdm_array.exit.thread_crit_edge ]
  store i32 %rc.0.i.ph, ptr @cdm_element_count, align 4
  br label %if.then15

orangefs_prepare_cdm_array.exit:                  ; preds = %do.end61.i, %for.end54.i.orangefs_prepare_cdm_array.exit_crit_edge
  store i32 %.lcssa.i, ptr @cdm_element_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa.i)
  %cmp = icmp slt i32 %.lcssa.i, 1
  br i1 %cmp, label %orangefs_prepare_cdm_array.exit.if.then15_crit_edge, label %for.cond.preheader

orangefs_prepare_cdm_array.exit.if.then15_crit_edge: ; preds = %orangefs_prepare_cdm_array.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

for.cond.preheader:                               ; preds = %orangefs_prepare_cdm_array.exit
  %18 = load i32, ptr @cdm_element_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1774.not = icmp eq i32 %18, 0
  br i1 %cmp1774.not, label %for.cond.preheader.if.end21_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end21_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then15:                                        ; preds = %orangefs_prepare_cdm_array.exit.if.then15_crit_edge, %orangefs_prepare_cdm_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.075 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call18 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.10, i32 noundef 4096) #13
  %19 = load ptr, ptr @cdm_array, align 4
  %arrayidx = getelementptr %struct.client_debug_mask, ptr %19, i32 %i.075
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 8
  %call19 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef %21, i32 noundef 4096) #13
  %call20 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11, i32 noundef 4096) #13
  %inc = add nuw i32 %i.075, 1
  %22 = load i32, ptr @cdm_element_count, align 4
  %cmp17 = icmp ult i32 %inc, %22
  br i1 %cmp17, label %for.body.for.body_crit_edge, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end21:                                         ; preds = %for.body.if.end21_crit_edge, %for.cond.preheader.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %call22 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11, i32 noundef 4096) #13
  %call23 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6, i32 noundef 4096) #13
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %if.end21
  %i.176 = phi i32 [ 0, %if.end21 ], [ %inc33, %for.body26.for.body26_crit_edge ]
  %call27 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.10, i32 noundef 4096) #13
  %arrayidx28 = getelementptr [18 x %struct.__keyword_mask_s], ptr @s_kmod_keyword_mask_map, i32 0, i32 %i.176
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx28, align 8
  %call30 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef %24, i32 noundef 4096) #13
  %call31 = tail call i32 @strlcat(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11, i32 noundef 4096) #13
  %inc33 = add nuw nsw i32 %i.176, 1
  %exitcond.not = icmp eq i32 %inc33, 18
  br i1 %exitcond.not, label %for.end34, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body26

for.end34:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call31)
  %cmp35 = icmp ugt i32 %call31, 4095
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %out

if.end37:                                         ; preds = %for.end34
  br i1 %tobool4.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %call7.i.i, ptr @debug_help_string, align 4
  br label %out

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @orangefs_help_file_lock, i32 noundef 0) #13
  %25 = load ptr, ptr @debug_help_string, align 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 4096)
  %call40 = tail call i32 @strlcat(ptr noundef %25, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #13
  tail call void @mutex_unlock(ptr noundef nonnull @orangefs_help_file_lock) #13
  br label %out

out:                                              ; preds = %if.else, %if.then39, %if.then36, %if.then15, %do.end3.out_crit_edge
  %rc.0 = phi i32 [ -22, %if.then36 ], [ -22, %if.then15 ], [ -12, %do.end3.out_crit_edge ], [ 0, %if.else ], [ 0, %if.then39 ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_debugfs_new_client_mask(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %mask2_info = alloca %struct.dev_mask2_info_s, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask2_info) #13
  %0 = call ptr @memset(ptr %mask2_info, i32 0, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.128, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 16, i32 -1226833920) #21, !srcloc !307
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !308

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask2_info, i32 noundef 16) #13
  %2 = call i32 @llvm.read_register.i32(metadata !296) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !309
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask2_info, ptr noundef %arg, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !308

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i6 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i6
  %add.ptr.i.i = getelementptr i8, ptr %mask2_info, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i6)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %mask2_info to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mask2_info, align 8
  store i64 %7, ptr getelementptr inbounds (%struct.client_debug_mask, ptr @client_debug_mask, i32 0, i32 1), align 8
  %mask2_value = getelementptr inbounds %struct.dev_mask2_info_s, ptr %mask2_info, i32 0, i32 1
  %8 = ptrtoint ptr %mask2_value to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mask2_value, align 8
  store i64 %9, ptr getelementptr inbounds (%struct.client_debug_mask, ptr @client_debug_mask, i32 0, i32 2), align 8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef %7, i64 noundef %9) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask2_info) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_debugfs_new_client_string(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.128, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 2048, i32 -1226833920) #21, !srcloc !307
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !308

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @client_debug_array_string, i32 noundef 2048) #13
  %1 = tail call i32 @llvm.read_register.i32(metadata !296) #13
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !309
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull @client_debug_array_string, ptr noundef %arg, i32 noundef 2048) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #13, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !308

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i23 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 2048, %entry.if.then11.i.i_crit_edge ], [ 2048, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2048, %res.0.i.i23
  %add.ptr.i.i = getelementptr i8, ptr @client_debug_array_string, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i23)
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #16
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  store i8 0, ptr getelementptr inbounds ([2048 x i8], ptr @client_debug_array_string, i32 0, i32 2047), align 1
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #16
  %5 = load i32, ptr @help_string_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then7, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @orangefs_prepare_debugfs_help_string(i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end17_crit_edge, label %do.end13

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #16
  br label %cleanup

if.end17:                                         ; preds = %if.then7.if.end17_crit_edge, %if.end.if.end17_crit_edge
  tail call fastcc void @debug_mask_to_string(ptr noundef nonnull @client_debug_mask, i32 noundef 1)
  %6 = load ptr, ptr @client_debug_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %6) #13
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i = and i64 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.do.end3.i_crit_edge, label %do.end.i

if.end17.do.end3.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.129) #16
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end17.do.end3.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2048) #17
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %do.end3.i.do.body20.i_crit_edge, label %if.end7.i

do.end3.i.do.body20.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body20.i

if.end7.i:                                        ; preds = %do.end3.i
  %call8.i = tail call i32 @strlen(ptr noundef nonnull @client_debug_string) #18
  %add.i = add i32 %call8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 2048
  br i1 %cmp.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call ptr @strcpy(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @client_debug_string) #18
  %strlen.i = tail call i32 @strlen(ptr nonnull %call7.i.i.i) #18
  %endptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %strlen.i
  %9 = ptrtoint ptr %endptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 2560, ptr %endptr.i, align 1
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = call ptr @memcpy(ptr %call7.i.i.i, ptr @.str.44, i32 6)
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129) #16
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then9.i
  %11 = load ptr, ptr @debug_dir, align 4
  %call19.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.133, i16 noundef zeroext 292, ptr noundef %11, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @kernel_debug_fops) #13
  store ptr %call19.i, ptr @client_debug_dentry, align 4
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.end18.i, %do.end3.i.do.body20.i_crit_edge
  %rc.0.i = phi i32 [ 0, %if.end18.i ], [ -12, %do.end3.i.do.body20.i_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %12 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and21.i = and i64 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %tobool22.not.i = icmp eq i64 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.orangefs_client_debug_init.exit_crit_edge, label %do.end26.i

do.body20.i.orangefs_client_debug_init.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %orangefs_client_debug_init.exit

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #15
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.129, i32 noundef %rc.0.i) #16
  br label %orangefs_client_debug_init.exit

orangefs_client_debug_init.exit:                  ; preds = %do.end26.i, %do.body20.i.orangefs_client_debug_init.exit_crit_edge
  %13 = load i32, ptr @help_string_initialized, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @help_string_initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %orangefs_client_debug_init.exit, %do.end13, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ 0, %orangefs_client_debug_init.exit ], [ %call8, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_debugfs_new_debug(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %mask_info = alloca %struct.dev_mask_info_s, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask_info) #13
  %0 = call ptr @memset(ptr %mask_info, i32 0, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.128, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 16, i32 -1226833920) #21, !srcloc !307
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !308

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mask_info, i32 noundef 16) #13
  %2 = call i32 @llvm.read_register.i32(metadata !296) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !309
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mask_info, ptr noundef %arg, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !310
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !308

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i33 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i33
  %add.ptr.i.i = getelementptr i8, ptr %mask_info, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i33)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %mask_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask_info, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end24 [
    i32 0, label %if.then2
    i32 1, label %if.then12
  ]

if.then2:                                         ; preds = %if.end
  %mask_value = getelementptr inbounds %struct.dev_mask_info_s, ptr %mask_info, i32 0, i32 1
  %9 = ptrtoint ptr %mask_value to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mask_value, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp3 = icmp eq i64 %10, 0
  br i1 %cmp3, label %land.lhs.true, label %if.then2.if.end5_crit_edge

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

land.lhs.true:                                    ; preds = %if.then2
  %.b = load i1, ptr @kernel_mask_set_mod_init, align 4
  br i1 %.b, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.then2.if.end5_crit_edge
  call fastcc void @debug_mask_to_string(ptr noundef %mask_value, i32 noundef 0)
  %11 = ptrtoint ptr %mask_value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mask_value, align 8
  call void @__asan_store8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  store i64 %12, ptr @orangefs_gossip_debug_mask, align 8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @kernel_debug_string, i64 noundef %12) #16
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mask_value13 = getelementptr inbounds %struct.dev_mask_info_s, ptr %mask_info, i32 0, i32 1
  call fastcc void @debug_mask_to_string(ptr noundef %mask_value13, i32 noundef 1)
  %13 = ptrtoint ptr %mask_value13 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mask_value13, align 8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, ptr noundef nonnull @client_debug_string, i64 noundef %14) #16
  br label %cleanup

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.then12, %if.end5, %land.lhs.true.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %do.end24 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.end5 ], [ -5, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask_info) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_debug_help_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %.b = load i1, ptr @orangefs_debug_disabled, align 4
  br i1 %.b, label %if.end6, label %do.end3.do.body11_crit_edge

do.end3.do.body11_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11

if.end6:                                          ; preds = %do.end3
  %call7 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @help_debug_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.body11_crit_edge

if.end6.do.body11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %private, align 8
  br label %do.body11

do.body11:                                        ; preds = %if.end10, %if.end6.do.body11_crit_edge, %do.end3.do.body11_crit_edge
  %rc.0 = phi i32 [ -19, %do.end3.do.body11_crit_edge ], [ -19, %if.end6.do.body11_crit_edge ], [ 0, %if.end10 ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %6 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and12 = and i64 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end22_crit_edge, label %do.end17

do.body11.do.end22_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %rc.0) #16
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %do.body11.do.end22_crit_edge
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @help_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @orangefs_help_file_lock, i32 noundef 0) #13
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then4, label %do.end3.if.end5_crit_edge

do.end3.if.end5_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then4:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end3.if.end5_crit_edge
  %payload.0 = phi ptr [ %4, %if.then4 ], [ null, %do.end3.if.end5_crit_edge ]
  ret ptr %payload.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @help_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @orangefs_help_file_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @help_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @help_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef %v) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_debug_read(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 2048) #17
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %do.end3.do.body10_crit_edge, label %if.end7

do.end3.do.body10_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body10

if.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @orangefs_debug_lock, i32 noundef 0) #13
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %stpcpy = tail call ptr @stpcpy(ptr nonnull %call7.i, ptr %3) #19
  %4 = ptrtoint ptr %stpcpy to i32
  %5 = ptrtoint ptr %call7.i to i32
  %6 = sub i32 %4, %5
  tail call void @mutex_unlock(ptr noundef nonnull @orangefs_debug_lock) #13
  %call9 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %6) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %do.body10

do.body10:                                        ; preds = %if.end7, %do.end3.do.body10_crit_edge
  %read_ret.0 = phi i32 [ %call9, %if.end7 ], [ -12, %do.end3.do.body10_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and11 = and i64 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %do.body10.do.end21_crit_edge, label %do.end16

do.body10.do.end21_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %read_ret.0) #16
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %do.body10.do.end21_crit_edge
  ret i32 %read_ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_debug_write(ptr noundef %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %c_mask = alloca %struct.client_debug_mask, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c_mask) #13
  %0 = call ptr @memset(ptr %c_mask, i32 0, i32 24)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %file) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %count)
  %cmp6 = icmp ugt i32 %count, 2049
  %spec.select = select i1 %cmp6, i32 %count, i32 0
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 2049)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2048) #17
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end5.do.body95_crit_edge, label %if.end59.i.i

if.end5.do.body95_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body95

if.end59.i.i:                                     ; preds = %if.end5
  %sub = add nsw i32 %2, -1
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %sub, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.128, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end59.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.end.i.i_crit_edge:                ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %sub, i32 -1226833920) #21, !srcloc !307
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !308

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef %sub) #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !296) #13
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !309
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i.i, ptr noundef %ubuf, i32 noundef %sub) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !311
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end59.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %sub, %if.end59.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %sub, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end28, label %do.body16, !prof !308

do.body16:                                        ; preds = %if.end.i.i
  %sub.i.i = sub i32 %sub, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %9 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and17 = and i64 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.body95_crit_edge, label %do.end22

do.body16.do.body95_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body95

do.end22:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #16
  br label %do.body95

if.end28:                                         ; preds = %if.end.i.i
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dentry, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 8
  %call29 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(13) @.str.48) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end28
  tail call fastcc void @debug_string_to_mask(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @orangefs_gossip_debug_mask, i32 noundef 0)
  tail call fastcc void @debug_mask_to_string(ptr noundef nonnull @orangefs_gossip_debug_mask, i32 noundef 0)
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %14 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and33 = and i64 %14, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.then31.if.end88_crit_edge, label %do.end38

if.then31.if.end88_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

do.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @kernel_debug_string) #16
  br label %if.end88

if.else:                                          ; preds = %if.end28
  %call44 = tail call i32 @is_daemon_in_service() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end53, label %do.end49

do.end49:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call51 = tail call i32 @is_daemon_in_service() #13
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, i32 noundef %call51) #16
  br label %do.body95

if.end53:                                         ; preds = %if.else
  call fastcc void @debug_string_to_mask(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %c_mask, i32 noundef 1)
  call fastcc void @debug_mask_to_string(ptr noundef nonnull %c_mask, i32 noundef 1)
  %call54 = call ptr @op_alloc(i32 noundef -16777196) #13
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.61) #16
  br label %do.body95

if.end62:                                         ; preds = %if.end53
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call54, i32 0, i32 3, i32 7
  %op = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call54, i32 0, i32 3, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 25, ptr %op, align 4
  %16 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %req, align 8
  %s_value = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call54, i32 0, i32 3, i32 7, i32 0, i32 3
  %17 = call ptr @memset(ptr %s_value, i32 0, i32 2048)
  %mask1 = getelementptr inbounds %struct.client_debug_mask, ptr %c_mask, i32 0, i32 1
  %18 = ptrtoint ptr %mask1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %mask1, align 8
  %mask2 = getelementptr inbounds %struct.client_debug_mask, ptr %c_mask, i32 0, i32 2
  %20 = ptrtoint ptr %mask2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %mask2, align 8
  %call71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s_value, ptr noundef nonnull @.str.74, i64 noundef %19, i64 noundef %21)
  %call72 = call i32 @service_operation(ptr noundef nonnull %call54, ptr noundef nonnull @.str.75, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end62.if.end87_crit_edge, label %do.body75

if.end62.if.end87_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.body75:                                        ; preds = %if.end62
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %22 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and76 = and i64 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and76)
  %tobool77.not = icmp eq i64 %and76, 0
  br i1 %tobool77.not, label %do.body75.if.end87_crit_edge, label %do.end81

do.body75.if.end87_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end87

do.end81:                                         ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.61, i32 noundef %call72) #16
  br label %if.end87

if.end87:                                         ; preds = %do.end81, %do.body75.if.end87_crit_edge, %if.end62.if.end87_crit_edge
  call void @op_release(ptr noundef nonnull %call54) #13
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %do.end38, %if.then31.if.end88_crit_edge
  %debug_string.0 = phi ptr [ @client_debug_string, %if.end87 ], [ @kernel_debug_string, %do.end38 ], [ @kernel_debug_string, %if.then31.if.end88_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @orangefs_debug_lock, i32 noundef 0) #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %23 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 54
  %25 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_private, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 2048)
  %call90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %26, ptr noundef nonnull @.str.79, ptr noundef nonnull %debug_string.0)
  call void @mutex_unlock(ptr noundef nonnull @orangefs_debug_lock) #13
  %conv = zext i32 %2 to i64
  %28 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ppos, align 8
  %add = add i64 %29, %conv
  store i64 %add, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool91.not = icmp eq i32 %spec.select, 0
  %spec.select135.spec.select = select i1 %tobool91.not, i32 %2, i32 %spec.select
  br label %do.body95

do.body95:                                        ; preds = %if.end88, %do.end59, %do.end49, %do.end22, %do.body16.do.body95_crit_edge, %if.end5.do.body95_crit_edge
  %rc.0 = phi i32 [ -14, %do.end22 ], [ -14, %do.body16.do.body95_crit_edge ], [ -14, %do.end49 ], [ -14, %do.end59 ], [ -14, %if.end5.do.body95_crit_edge ], [ %spec.select135.spec.select, %if.end88 ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %30 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and96 = and i64 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and96)
  %tobool97.not = icmp eq i64 %and96, 0
  br i1 %tobool97.not, label %do.body95.do.end106_crit_edge, label %do.end101

do.body95.do.end106_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end106

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %rc.0) #16
  br label %do.end106

do.end106:                                        ; preds = %do.end101, %do.body95.do.end106_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.end106 ], [ 0, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c_mask) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_debug_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.b20 = load i1, ptr @orangefs_debug_disabled, align 4
  %not..b20 = xor i1 %.b20, true
  %1 = zext i1 %not..b20 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %1) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %.b = load i1, ptr @orangefs_debug_disabled, align 4
  br i1 %.b, label %if.end6, label %do.end3.do.body7_crit_edge

do.end3.do.body7_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body7

if.end6:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @orangefs_debug_lock, i32 noundef 0) #13
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private_data, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @orangefs_debug_lock) #13
  br label %do.body7

do.body7:                                         ; preds = %if.end6, %do.end3.do.body7_crit_edge
  %rc.0 = phi i32 [ -19, %do.end3.do.body7_crit_edge ], [ 0, %if.end6 ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %5 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and8 = and i64 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end18_crit_edge, label %do.end13

do.body7.do.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %rc.0) #16
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.body7.do.end18_crit_edge
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_daemon_in_service() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !115, !116, !117, !119, !121, !122, !123, !125, !127, !128, !129, !131, !133, !134, !135, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !171, !173, !174, !175, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !202, !204, !206, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !265, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !281, !283, !285, !286, !287, !289, !290, !291, !293, !295}
!llvm.named.register.sp = !{!296}
!llvm.module.flags = !{!297, !298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 177, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @orangefs_debugfs_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @orangefs_debugfs_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 182, i32 33}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 184, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 600, i32 23}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 601, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 608, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @orangefs_prepare_debugfs_help_string._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @orangefs_prepare_debugfs_help_string._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 611, i32 18}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 646, i32 17}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 648, i32 17}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 920, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @orangefs_debugfs_new_client_mask._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @orangefs_debugfs_new_client_mask._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 938, i32 3}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @orangefs_debugfs_new_client_string._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @orangefs_debugfs_new_client_string._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 956, i32 2}
!37 = !{ptr @orangefs_debugfs_new_client_string._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @orangefs_debugfs_new_client_string._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 964, i32 4}
!41 = !{ptr @orangefs_debugfs_new_client_string._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @orangefs_debugfs_new_client_string._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 1008, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @orangefs_debugfs_new_debug._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @orangefs_debugfs_new_debug._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 1016, i32 3}
!50 = !{ptr @orangefs_debugfs_new_debug._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @orangefs_debugfs_new_debug._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 1022, i32 3}
!54 = !{ptr @orangefs_debugfs_new_debug._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @orangefs_debugfs_new_debug._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @debug_help_string, !57, !"debug_help_string", i1 false, i1 false}
!57 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 98, i32 14}
!58 = !{ptr @client_debug_string, !59, !"client_debug_string", i1 false, i1 false}
!59 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 99, i32 13}
!60 = !{ptr @client_debug_array_string, !61, !"client_debug_array_string", i1 false, i1 false}
!61 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 100, i32 13}
!62 = !{ptr @client_debug_dentry, !63, !"client_debug_dentry", i1 false, i1 false}
!63 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 102, i32 23}
!64 = !{ptr @debug_dir, !65, !"debug_dir", i1 false, i1 false}
!65 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 103, i32 23}
!66 = distinct !{null, !67, !"kernel_mask_set_mod_init", i1 false, i1 false}
!67 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 105, i32 21}
!68 = !{ptr @help_string_initialized, !69, !"help_string_initialized", i1 false, i1 false}
!69 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 107, i32 12}
!70 = !{ptr @cdm_array, !71, !"cdm_array", i1 false, i1 false}
!71 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 135, i32 34}
!72 = !{ptr @cdm_element_count, !73, !"cdm_element_count", i1 false, i1 false}
!73 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 136, i32 12}
!74 = !{ptr @client_debug_mask, !75, !"client_debug_mask", i1 false, i1 false}
!75 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 138, i32 33}
!76 = !{ptr @kernel_debug_string, !77, !"kernel_debug_string", i1 false, i1 false}
!77 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 97, i32 13}
!78 = !{ptr @debug_help_fops, !79, !"debug_help_fops", i1 false, i1 false}
!79 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 116, i32 37}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 233, i32 2}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @orangefs_debug_help_open._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @orangefs_debug_help_open._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 248, i32 2}
!87 = !{ptr @orangefs_debug_help_open._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @orangefs_debug_help_open._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @help_debug_ops, !90, !"help_debug_ops", i1 false, i1 false}
!90 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 109, i32 36}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 264, i32 2}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @help_start._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @help_start._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 284, i32 2}
!98 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @help_stop._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @help_stop._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 277, i32 2}
!103 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @help_next._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @help_next._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 290, i32 2}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @help_show._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @help_show._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"orangefs_debug_disabled", i1 false, i1 false}
!112 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 106, i32 12}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 200, i32 2}
!115 = !{ptr @orangefs_kernel_debug_init._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @orangefs_kernel_debug_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 210, i32 20}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 211, i32 3}
!121 = !{ptr @orangefs_kernel_debug_init._entry.45, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @orangefs_kernel_debug_init._entry_ptr.47, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 214, i32 22}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 218, i32 2}
!127 = !{ptr @orangefs_kernel_debug_init._entry.49, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @orangefs_kernel_debug_init._entry_ptr.51, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @kernel_debug_fops, !130, !"kernel_debug_fops", i1 false, i1 false}
!130 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 124, i32 37}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 368, i32 2}
!133 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @orangefs_debug_read._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @orangefs_debug_read._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 375, i32 29}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 383, i32 2}
!140 = !{ptr @orangefs_debug_read._entry.55, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @orangefs_debug_read._entry_ptr.57, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 144, i32 8}
!144 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @orangefs_debug_lock, !143, !"orangefs_debug_lock", i1 false, i1 false}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 403, i32 2}
!148 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @orangefs_debug_write._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @orangefs_debug_write._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 424, i32 3}
!153 = !{ptr @orangefs_debug_write._entry.62, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @orangefs_debug_write._entry_ptr.64, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 444, i32 3}
!157 = !{ptr @orangefs_debug_write._entry.65, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @orangefs_debug_write._entry_ptr.67, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 450, i32 4}
!161 = !{ptr @orangefs_debug_write._entry.68, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @orangefs_debug_write._entry_ptr.70, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 462, i32 4}
!165 = !{ptr @orangefs_debug_write._entry.71, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @orangefs_debug_write._entry_ptr.73, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 473, i32 4}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 479, i32 12}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 483, i32 4}
!173 = !{ptr @orangefs_debug_write._entry.76, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @orangefs_debug_write._entry_ptr.78, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 494, i32 13}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 504, i32 2}
!179 = !{ptr @orangefs_debug_write._entry.80, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @orangefs_debug_write._entry_ptr.82, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 339, i32 2}
!183 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @orangefs_debug_open._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @orangefs_debug_open._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 353, i32 2}
!188 = !{ptr @orangefs_debug_open._entry.85, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @orangefs_debug_open._entry_ptr.87, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 524, i32 2}
!192 = !{ptr @orangefs_prepare_cdm_array._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @orangefs_prepare_cdm_array._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 534, i32 3}
!196 = !{ptr @orangefs_prepare_cdm_array._entry.89, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @orangefs_prepare_cdm_array._entry_ptr.91, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 550, i32 35}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 559, i32 10}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 564, i32 37}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 567, i32 37}
!206 = !{ptr @orangefs_prepare_cdm_array._entry.96, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 575, i32 2}
!208 = !{ptr @orangefs_prepare_cdm_array._entry_ptr.97, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @client_verbose_index, !210, !"client_verbose_index", i1 false, i1 false}
!210 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 133, i32 12}
!211 = !{ptr @client_all_index, !212, !"client_all_index", i1 false, i1 false}
!212 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 132, i32 12}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../fs/orangefs/orangefs-debug.h", i32 66, i32 3}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/orangefs/orangefs-debug.h", i32 67, i32 3}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../fs/orangefs/orangefs-debug.h", i32 68, i32 3}
!219 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/orangefs/orangefs-debug.h", i32 69, i32 3}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../fs/orangefs/orangefs-debug.h", i32 70, i32 3}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/orangefs/orangefs-debug.h", i32 71, i32 3}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/orangefs/orangefs-debug.h", i32 72, i32 3}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/orangefs/orangefs-debug.h", i32 73, i32 3}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/orangefs/orangefs-debug.h", i32 74, i32 3}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/orangefs/orangefs-debug.h", i32 75, i32 3}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/orangefs/orangefs-debug.h", i32 76, i32 3}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/orangefs/orangefs-debug.h", i32 77, i32 3}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/orangefs/orangefs-debug.h", i32 78, i32 3}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/orangefs/orangefs-debug.h", i32 79, i32 3}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/orangefs/orangefs-debug.h", i32 80, i32 3}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../fs/orangefs/orangefs-debug.h", i32 81, i32 3}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/orangefs/orangefs-debug.h", i32 82, i32 3}
!247 = !{ptr @s_kmod_keyword_mask_map, !248, !"s_kmod_keyword_mask_map", i1 false, i1 false}
!248 = !{!"../fs/orangefs/orangefs-debug.h", i32 65, i32 32}
!249 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 147, i32 8}
!251 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @orangefs_help_file_lock, !250, !"orangefs_help_file_lock", i1 false, i1 false}
!253 = !{ptr @.str.117, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 693, i32 2}
!255 = !{ptr @debug_mask_to_string._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @debug_mask_to_string._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.119, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 733, i32 1}
!259 = !{ptr @debug_mask_to_string._entry.118, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @debug_mask_to_string._entry_ptr.120, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.121, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 779, i32 33}
!263 = !{ptr @.str.122, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 781, i32 5}
!265 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @do_c_string._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @do_c_string._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.124, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 754, i32 5}
!270 = !{ptr @do_k_string._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @do_k_string._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 859, i32 2}
!274 = !{ptr @debug_string_to_mask._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @debug_string_to_mask._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = distinct !{null, !277, !"__already_done", i1 false, i1 false}
!277 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!278 = distinct !{null, !277, !"<string literal>", i1 false, i1 false}
!279 = distinct !{null, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!281 = !{ptr @.str.128, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!283 = !{ptr @.str.129, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 306, i32 2}
!285 = !{ptr @orangefs_client_debug_init._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @orangefs_client_debug_init._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.131, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 317, i32 3}
!289 = !{ptr @orangefs_client_debug_init._entry.130, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @orangefs_client_debug_init._entry_ptr.132, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.133, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 320, i32 44}
!293 = !{ptr @orangefs_client_debug_init._entry.134, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../fs/orangefs/orangefs-debugfs.c", i32 330, i32 2}
!295 = !{ptr @orangefs_client_debug_init._entry_ptr.135, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{!"sp"}
!297 = !{i32 1, !"wchar_size", i32 2}
!298 = !{i32 1, !"min_enum_size", i32 4}
!299 = !{i32 8, !"branch-target-enforcement", i32 0}
!300 = !{i32 8, !"sign-return-address", i32 0}
!301 = !{i32 8, !"sign-return-address-all", i32 0}
!302 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!303 = !{i32 7, !"uwtable", i32 1}
!304 = !{i32 7, !"frame-pointer", i32 2}
!305 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!306 = !{!"branch_weights", i32 1, i32 2000}
!307 = !{i64 2152199559, i64 2152199584}
!308 = !{!"branch_weights", i32 2000, i32 1}
!309 = !{i64 4695114}
!310 = !{i64 4695311}
!311 = !{i64 2152180544}
