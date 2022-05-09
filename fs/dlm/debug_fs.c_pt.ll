; ModuleID = '/llk/IR_all_yes/fs/dlm/debug_fs.c_pt.bc'
source_filename = "../fs/dlm/debug_fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.68, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.68 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.69 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.69 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.70, i32, i16, i8, i8 }
%union.anon.70 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.rsbtbl_iter = type { ptr, i32, i32, i32 }
%struct.dlm_rsbtable = type { %struct.rb_root, %struct.rb_root, %struct.spinlock, i32 }
%struct.dlm_user_args = type { ptr, %struct.dlm_lksb, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.dlm_lksb = type { i32, i32, i8, ptr }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@dlm_comms = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@dlm_state_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dlm_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@dlm_flags_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dlm_flags_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"send_queue_count\00", [47 x i8] zeroinitializer }, align 32
@dlm_send_queue_cnt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dlm_send_queue_cnt_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@dlm_version_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dlm_version_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rawmsg\00", [25 x i8] zeroinitializer }, align 32
@dlm_rawmsg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr @dlm_rawmsg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dlm_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@format1_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @table_open1, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_locks\00", [23 x i8] zeroinitializer }, align 32
@format2_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @table_write2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @table_open2, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_all\00", [25 x i8] zeroinitializer }, align 32
@format3_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @table_open3, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_toss\00", [24 x i8] zeroinitializer }, align 32
@format4_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @table_open4, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s_waiters\00", [21 x i8] zeroinitializer }, align 32
@waiters_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @waiters_read, ptr @waiters_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dlm_register_debugfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@debug_buf_lock = internal global { %struct.mutex, [36 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&debug_buf_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dlm\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"comms\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@format1_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @table_seq_start, ptr @table_seq_stop, ptr @table_seq_next, ptr @table_seq_show }, [16 x i8] zeroinitializer }, align 32
@format4_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @table_seq_start, ptr @table_seq_stop, ptr @table_seq_next, ptr @table_seq_show }, [16 x i8] zeroinitializer }, align 32
@format2_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @table_seq_start, ptr @table_seq_stop, ptr @table_seq_next, ptr @table_seq_show }, [16 x i8] zeroinitializer }, align 32
@format3_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @table_seq_start, ptr @table_seq_stop, ptr @table_seq_next, ptr @table_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"id nodeid remid pid xid exflags flags sts grmode rqmode time_ms r_nodeid r_len r_name\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"version rsb 1.1 lvb 1.1 lkb 1.1\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"version 4 rsb 2\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0AResource %p Name (len=%d) \22\00", [35 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\22\0ALocal Copy, Master is node %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\22\0AMaster Copy\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\22\0ALooking up master (lkid %x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\22\0AInvalid master %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LVB: \00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0A     \00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (INVALID)\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Recovery: root %d recover %d flags %lx count %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Granted Queue\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Conversion Queue\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Waiting Queue\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Lookup Queue\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%08x %s\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" wait_type: %d\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" (%s)\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" Remote: %3d %08x\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" Master:     %08x\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NL\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CR\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CW\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PR\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"PW\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EX\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%x %d %x %u %llu %x %x %d %d %d %llu %u %d \22%s\22\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rsb %p %d %x %lx %d %d %u %d \00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"str \00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hex\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lvb %u %d\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"lkb %x %d %x %u %llu %x %x %d %d %d %d %d %d %u %llu %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rsb %p %d %d %d %d %lu %lx %d \00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%x %64s %x %d %d\00", [47 x i8] zeroinitializer }, align 32
@debug_buf = internal global { [4096 x i8], [1024 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%x %d %d %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%x %d %d\00", [23 x i8] zeroinitializer }, align 32
@switch.table.table_seq_show = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [36 x i8] zeroinitializer }, align 32
@switch.table.print_format1_lock = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [36 x i8] zeroinitializer }, align 32
@switch.table.print_format1_lock.62 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 868, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"dlm_comms\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 27, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 871, i32 22 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"dlm_state_fops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 803, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 872, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"dlm_flags_fops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 810, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 873, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"dlm_send_queue_cnt_fops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 817, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 875, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"dlm_version_fops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 824, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 876, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"dlm_rawmsg_fops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 856, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"dlm_root\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 26, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"format1_fops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 695, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 901, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"format2_fops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 703, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 912, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"format3_fops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 712, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 923, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"format4_fops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 720, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 932, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"waiters_fops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 781, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"debug_buf_lock\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 24, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 943, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 944, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 945, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 800, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 807, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 814, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 821, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 156, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"format1_seq_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 577, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"format4_seq_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 598, i32 36 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"format2_seq_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 584, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"format3_seq_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 591, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 392, i32 18 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 399, i32 18 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 406, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 81, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 85, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 91, i32 17 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 94, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 96, i32 17 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 99, i32 17 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 105, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 108, i32 17 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 109, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 113, i32 16 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 123, i32 17 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 129, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 136, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 143, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 153, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 155, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 158, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 58, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 62, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 65, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 33, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 35, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 37, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 39, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 41, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 43, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 45, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 47, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 184, i32 16 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 265, i32 16 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 282, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 282, i32 36 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 288, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 297, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 238, i32 16 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 341, i32 16 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 653, i32 18 }
@___asan_gen_.293 = private unnamed_addr constant [10 x i8] c"debug_buf\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 23, i32 13 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 743, i32 46 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [21 x i8] c"../fs/dlm/debug_fs.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 770, i32 18 }
@___asan_gen_.302 = private unnamed_addr constant [28 x i8] c"switch.table.table_seq_show\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"switch.table.print_format1_lock\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [35 x i8] c"switch.table.print_format1_lock.62\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @.str, ptr @dlm_comms, ptr @.str.1, ptr @dlm_state_fops, ptr @.str.2, ptr @dlm_flags_fops, ptr @.str.3, ptr @dlm_send_queue_cnt_fops, ptr @.str.4, ptr @dlm_version_fops, ptr @.str.5, ptr @dlm_rawmsg_fops, ptr @dlm_root, ptr @format1_fops, ptr @.str.6, ptr @format2_fops, ptr @.str.7, ptr @format3_fops, ptr @.str.8, ptr @format4_fops, ptr @.str.9, ptr @waiters_fops, ptr @dlm_register_debugfs.__key, ptr @debug_buf_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @format1_seq_ops, ptr @format4_seq_ops, ptr @format2_seq_ops, ptr @format3_seq_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @debug_buf, ptr @.str.60, ptr @.str.61, ptr @switch.table.table_seq_show, ptr @switch.table.print_format1_lock, ptr @switch.table.print_format1_lock.62], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_comms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_state_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_flags_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_send_queue_cnt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_version_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_rawmsg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format1_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format2_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format3_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format4_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @waiters_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_register_debugfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_buf_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format1_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format4_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format2_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format3_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_buf to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.table_seq_show to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_format1_lock to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.print_format1_lock.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_delete_debug_file(ptr nocapture noundef readonly %ls) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_debug_rsb_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 44
  %0 = ptrtoint ptr %ls_debug_rsb_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ls_debug_rsb_dentry, align 8
  tail call void @debugfs_remove(ptr noundef %1) #9
  %ls_debug_waiters_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 45
  %2 = ptrtoint ptr %ls_debug_waiters_dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ls_debug_waiters_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  %ls_debug_locks_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 46
  %4 = ptrtoint ptr %ls_debug_locks_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_debug_locks_dentry, align 8
  tail call void @debugfs_remove(ptr noundef %5) #9
  %ls_debug_all_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 47
  %6 = ptrtoint ptr %ls_debug_all_dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ls_debug_all_dentry, align 4
  tail call void @debugfs_remove(ptr noundef %7) #9
  %ls_debug_toss_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 48
  %8 = ptrtoint ptr %ls_debug_toss_dentry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ls_debug_toss_dentry, align 8
  tail call void @debugfs_remove(ptr noundef %9) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_create_debug_comms_file(i32 noundef %nodeid, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %name) #9
  %0 = call ptr @memset(ptr %name, i32 0, i32 256)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %nodeid)
  %1 = load ptr, ptr @dlm_comms, align 4
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %1) #9
  %call4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef %data, ptr noundef nonnull @dlm_state_fops) #9
  %call5 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef %data, ptr noundef nonnull @dlm_flags_fops) #9
  %call6 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef %data, ptr noundef nonnull @dlm_send_queue_cnt_fops) #9
  %call7 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef %data, ptr noundef nonnull @dlm_version_fops) #9
  %call8 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 128, ptr noundef %call3, ptr noundef %data, ptr noundef nonnull @dlm_rawmsg_fops) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %name) #9
  ret ptr %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_delete_debug_comms_file(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debugfs_remove(ptr noundef %ctx) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_create_debug_file(ptr noundef %ls) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [72 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %name) #9
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %0 = load ptr, ptr @dlm_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef %ls_name, i16 noundef zeroext -32476, ptr noundef %0, ptr noundef %ls, ptr noundef nonnull @format1_fops) #9
  %ls_debug_rsb_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 44
  %1 = ptrtoint ptr %ls_debug_rsb_dentry to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %ls_debug_rsb_dentry, align 8
  %2 = call ptr @memset(ptr %name, i32 0, i32 72)
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 72, ptr noundef nonnull @.str.6, ptr noundef %ls_name)
  %3 = load ptr, ptr @dlm_root, align 4
  %call7 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %ls, ptr noundef nonnull @format2_fops) #9
  %ls_debug_locks_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 46
  %4 = ptrtoint ptr %ls_debug_locks_dentry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %ls_debug_locks_dentry, align 8
  %5 = call ptr @memset(ptr %name, i32 0, i32 72)
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 72, ptr noundef nonnull @.str.7, ptr noundef %ls_name)
  %6 = load ptr, ptr @dlm_root, align 4
  %call14 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext -32476, ptr noundef %6, ptr noundef %ls, ptr noundef nonnull @format3_fops) #9
  %ls_debug_all_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 47
  %7 = ptrtoint ptr %ls_debug_all_dentry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %ls_debug_all_dentry, align 4
  %8 = call ptr @memset(ptr %name, i32 0, i32 72)
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 72, ptr noundef nonnull @.str.8, ptr noundef %ls_name)
  %9 = load ptr, ptr @dlm_root, align 4
  %call21 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext -32476, ptr noundef %9, ptr noundef %ls, ptr noundef nonnull @format4_fops) #9
  %ls_debug_toss_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 48
  %10 = ptrtoint ptr %ls_debug_toss_dentry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %ls_debug_toss_dentry, align 8
  %11 = call ptr @memset(ptr %name, i32 0, i32 72)
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 72, ptr noundef nonnull @.str.9, ptr noundef %ls_name)
  %12 = load ptr, ptr @dlm_root, align 4
  %call28 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 420, ptr noundef %12, ptr noundef %ls, ptr noundef nonnull @waiters_fops) #9
  %ls_debug_waiters_dentry = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 45
  %13 = ptrtoint ptr %ls_debug_waiters_dentry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call28, ptr %ls_debug_waiters_dentry, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %name) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_register_debugfs() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef nonnull @debug_buf_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @dlm_register_debugfs.__key) #9
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef null) #9
  store ptr %call, ptr @dlm_root, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.12, ptr noundef %call) #9
  store ptr %call1, ptr @dlm_comms, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_unregister_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_state_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dlm_state_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_state_show(ptr noundef %file, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call ptr @dlm_midcomms_state(ptr noundef %1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.13, ptr noundef %call) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_midcomms_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_flags_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dlm_flags_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_flags_show(ptr noundef %file, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @dlm_midcomms_flags(ptr noundef %1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.14, i32 noundef %call) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_midcomms_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_send_queue_cnt_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dlm_send_queue_cnt_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_send_queue_cnt_show(ptr noundef %file, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @dlm_midcomms_send_queue_cnt(ptr noundef %1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.15, i32 noundef %call) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_midcomms_send_queue_cnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_version_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dlm_version_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_version_show(ptr noundef %file, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @dlm_midcomms_version(ptr noundef %1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.16, i32 noundef %call) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_midcomms_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_rawmsg_write(ptr nocapture noundef readonly %fp, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %count, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4081, i32 %0)
  %1 = icmp ult i32 %0, -4081
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3136, i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then.i.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #13, !srcloc !172
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !173

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef %count) #9
  %4 = tail call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !174
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i, ptr noundef %user_buf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !173

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i24 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i24
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i24)
  br label %out

if.end7:                                          ; preds = %if.end.i.i
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %call8 = tail call i32 @dlm_midcomms_rawmsg_send(ptr noundef %9, ptr noundef nonnull %call7.i, i32 noundef %count) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

out:                                              ; preds = %if.end7.out_crit_edge, %if.then11.i.i
  %ret.0 = phi i32 [ %call8, %if.end7.out_crit_edge ], [ -14, %if.then11.i.i ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out ], [ %count, %if.end7.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_midcomms_rawmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_open1(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @format1_seq_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @table_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %op = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 8
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op, align 4
  %cmp = icmp eq ptr %5, @format4_seq_ops
  %6 = lshr i64 %3, 32
  %conv2 = trunc i64 %6 to i32
  %conv3 = trunc i64 %3 to i32
  %ls_rsbtbl_size = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_rsbtbl_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv2)
  %cmp4.not = icmp ugt i32 %8, %conv2
  br i1 %cmp4.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp8 = icmp eq i64 %3, 0
  br i1 %cmp8, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %header = getelementptr inbounds %struct.rsbtbl_iter, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %header, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %11 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %op, align 4
  %cmp13 = icmp eq ptr %12, @format1_seq_ops
  br i1 %cmp13, label %if.end11.if.end34.sink.split_crit_edge, label %if.end16

if.end11.if.end34.sink.split_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.end16:                                         ; preds = %if.end11
  %cmp18 = icmp eq ptr %12, @format2_seq_ops
  br i1 %cmp18, label %if.end16.if.end34.sink.split_crit_edge, label %if.end22

if.end16.if.end34.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.end22:                                         ; preds = %if.end16
  %cmp24 = icmp eq ptr %12, @format3_seq_ops
  br i1 %cmp24, label %if.end22.if.end34.sink.split_crit_edge, label %if.end28

if.end22.if.end34.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.end28:                                         ; preds = %if.end22
  %cmp30 = icmp eq ptr %12, @format4_seq_ops
  br i1 %cmp30, label %if.end28.if.end34.sink.split_crit_edge, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end28.if.end34.sink.split_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.end28.if.end34.sink.split_crit_edge, %if.end22.if.end34.sink.split_crit_edge, %if.end16.if.end34.sink.split_crit_edge, %if.end11.if.end34.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end11.if.end34.sink.split_crit_edge ], [ 2, %if.end16.if.end34.sink.split_crit_edge ], [ 3, %if.end22.if.end34.sink.split_crit_edge ], [ 4, %if.end28.if.end34.sink.split_crit_edge ]
  %format = getelementptr inbounds %struct.rsbtbl_iter, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %format, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end28.if.end34_crit_edge
  %ls_rsbtbl = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ls_rsbtbl, align 8
  %toss36 = getelementptr %struct.dlm_rsbtable, ptr %15, i32 %conv2, i32 1
  %arrayidx38 = getelementptr %struct.dlm_rsbtable, ptr %15, i32 %conv2
  %cond = select i1 %cmp, ptr %toss36, ptr %arrayidx38
  %ls_rsbtbl39 = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 14
  %lock = getelementptr %struct.dlm_rsbtable, ptr %15, i32 %conv2, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %16 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %cond, align 4
  %cmp41 = icmp eq ptr %17, null
  br i1 %cmp41, label %if.end34.if.end55_crit_edge, label %if.then43

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then43:                                        ; preds = %if.end34
  %call44 = tail call ptr @rb_first(ptr noundef %cond) #9
  %tobool45.not174 = icmp eq ptr %call44, null
  br i1 %tobool45.not174, label %if.then43.if.end55_crit_edge, label %if.then43.for.body_crit_edge

if.then43.for.body_crit_edge:                     ; preds = %if.then43
  br label %for.body

if.then43.if.end55_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then43.for.body_crit_edge
  %node.0176 = phi ptr [ %call54, %for.inc.for.body_crit_edge ], [ %call44, %if.then43.for.body_crit_edge ]
  %entry1.0175 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %conv3, %if.then43.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry1.0175)
  %tobool47.not = icmp eq i32 %entry1.0175, 0
  br i1 %tobool47.not, label %if.then48, label %for.inc

if.then48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %node.0176, i32 -152
  tail call void @dlm_hold_rsb(ptr noundef %add.ptr) #9
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %bucket49 = getelementptr inbounds %struct.rsbtbl_iter, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %bucket49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv2, ptr %bucket49, align 4
  %20 = ptrtoint ptr %ls_rsbtbl39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ls_rsbtbl39, align 8
  %lock52 = getelementptr %struct.dlm_rsbtable, ptr %21, i32 %conv2, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock52) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %dec = add i32 %entry1.0175, -1
  %call54 = tail call ptr @rb_next(ptr noundef nonnull %node.0176) #9
  %tobool45.not = icmp eq ptr %call54, null
  br i1 %tobool45.not, label %for.inc.if.end55_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end55_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55:                                         ; preds = %for.inc.if.end55_crit_edge, %if.then43.if.end55_crit_edge, %if.end34.if.end55_crit_edge
  %22 = ptrtoint ptr %ls_rsbtbl39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ls_rsbtbl39, align 8
  %lock58 = getelementptr %struct.dlm_rsbtable, ptr %23, i32 %conv2, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock58) #9
  %inc177 = add i32 %conv2, 1
  %24 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ls_rsbtbl_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc177, i32 %25)
  %cmp61.not179 = icmp ult i32 %inc177, %25
  br i1 %cmp61.not179, label %if.end64.preheader, label %if.end55.if.then63_crit_edge

if.end55.if.then63_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.end64.preheader:                               ; preds = %if.end55
  %26 = add i64 %3, 4294967296
  %add178 = and i64 %26, -4294967296
  br label %if.end64

if.then63:                                        ; preds = %if.end96.if.then63_crit_edge, %if.end55.if.then63_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end96.if.end64_crit_edge, %if.end64.preheader
  %add181 = phi i64 [ %add, %if.end96.if.end64_crit_edge ], [ %add178, %if.end64.preheader ]
  %inc180 = phi i32 [ %inc, %if.end96.if.end64_crit_edge ], [ %inc177, %if.end64.preheader ]
  %27 = ptrtoint ptr %ls_rsbtbl39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ls_rsbtbl39, align 8
  %toss69 = getelementptr %struct.dlm_rsbtable, ptr %28, i32 %inc180, i32 1
  %arrayidx72 = getelementptr %struct.dlm_rsbtable, ptr %28, i32 %inc180
  %cond75 = select i1 %cmp, ptr %toss69, ptr %arrayidx72
  %lock78 = getelementptr %struct.dlm_rsbtable, ptr %28, i32 %inc180, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock78) #9
  %29 = ptrtoint ptr %cond75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %cond75, align 4
  %cmp84 = icmp eq ptr %30, null
  br i1 %cmp84, label %if.end96, label %if.then86

if.then86:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %call87 = tail call ptr @rb_first(ptr noundef %cond75) #9
  %add.ptr90 = getelementptr i8, ptr %call87, i32 -152
  tail call void @dlm_hold_rsb(ptr noundef %add.ptr90) #9
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr90, ptr %call7.i.i, align 8
  %bucket92 = getelementptr inbounds %struct.rsbtbl_iter, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %bucket92 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc180, ptr %bucket92, align 4
  %33 = ptrtoint ptr %ls_rsbtbl39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ls_rsbtbl39, align 8
  %lock95 = getelementptr %struct.dlm_rsbtable, ptr %34, i32 %inc180, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock95) #9
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add181, ptr %pos, align 8
  br label %cleanup

if.end96:                                         ; preds = %if.end64
  %36 = ptrtoint ptr %ls_rsbtbl39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ls_rsbtbl39, align 8
  %lock99 = getelementptr %struct.dlm_rsbtable, ptr %37, i32 %inc180, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock99) #9
  %inc = add nuw i32 %inc180, 1
  %add = add i64 %add181, 4294967296
  %38 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ls_rsbtbl_size, align 4
  %cmp61.not = icmp ult i32 %inc, %39
  br i1 %cmp61.not, label %if.end96.if.end64_crit_edge, label %if.end96.if.then63_crit_edge

if.end96.if.then63_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63

if.end96.if.end64_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

cleanup:                                          ; preds = %if.then86, %if.then63, %if.then48, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then63 ], [ %call7.i.i, %if.then86 ], [ %call7.i.i, %if.then48 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @table_seq_stop(ptr nocapture noundef readnone %seq, ptr noundef %iter_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iter_ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter_ptr, align 4
  tail call void @dlm_put_rsb(ptr noundef %1) #9
  tail call void @kfree(ptr noundef nonnull %iter_ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @table_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %iter_ptr, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %op = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 8
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op, align 4
  %cmp = icmp eq ptr %5, @format4_seq_ops
  %6 = lshr i64 %3, 32
  %conv1 = trunc i64 %6 to i32
  %ls_rsbtbl = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ls_rsbtbl, align 8
  %lock = getelementptr %struct.dlm_rsbtable, ptr %8, i32 %conv1, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %9 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iter_ptr, align 4
  %11 = getelementptr inbounds %struct.dlm_rsb, ptr %10, i32 0, i32 15
  %call = tail call ptr @rb_next(ptr noundef %11) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %call, i32 -152
  tail call void @dlm_hold_rsb(ptr noundef %add.ptr) #9
  %12 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %iter_ptr, align 4
  %13 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ls_rsbtbl, align 8
  %lock5 = getelementptr %struct.dlm_rsbtable, ptr %14, i32 %conv1, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock5) #9
  tail call void @dlm_put_rsb(ptr noundef %10) #9
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %inc = add i64 %16, 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ls_rsbtbl, align 8
  %lock8 = getelementptr %struct.dlm_rsbtable, ptr %18, i32 %conv1, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock8) #9
  tail call void @dlm_put_rsb(ptr noundef %10) #9
  %ls_rsbtbl_size = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 15
  %inc990 = add i32 %conv1, 1
  %19 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ls_rsbtbl_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc990, i32 %20)
  %cmp10.not92 = icmp ult i32 %inc990, %20
  br i1 %cmp10.not92, label %if.end14.preheader, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end14.preheader:                               ; preds = %if.end
  %21 = add i64 %3, 4294967296
  %add91 = and i64 %21, -4294967296
  br label %if.end14

if.then12:                                        ; preds = %if.end37.if.then12_crit_edge, %if.end.if.then12_crit_edge
  tail call void @kfree(ptr noundef %iter_ptr) #9
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pos, align 8
  %inc13 = add i64 %23, 1
  br label %cleanup

if.end14:                                         ; preds = %if.end37.if.end14_crit_edge, %if.end14.preheader
  %add94 = phi i64 [ %add, %if.end37.if.end14_crit_edge ], [ %add91, %if.end14.preheader ]
  %inc993 = phi i32 [ %inc9, %if.end37.if.end14_crit_edge ], [ %inc990, %if.end14.preheader ]
  %24 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ls_rsbtbl, align 8
  %toss18 = getelementptr %struct.dlm_rsbtable, ptr %25, i32 %inc993, i32 1
  %arrayidx20 = getelementptr %struct.dlm_rsbtable, ptr %25, i32 %inc993
  %cond = select i1 %cmp, ptr %toss18, ptr %arrayidx20
  %lock23 = getelementptr %struct.dlm_rsbtable, ptr %25, i32 %inc993, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock23) #9
  %26 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %cond, align 4
  %cmp25 = icmp eq ptr %27, null
  br i1 %cmp25, label %if.end37, label %if.then27

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call ptr @rb_first(ptr noundef %cond) #9
  %add.ptr31 = getelementptr i8, ptr %call28, i32 -152
  tail call void @dlm_hold_rsb(ptr noundef %add.ptr31) #9
  %28 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr31, ptr %iter_ptr, align 4
  %bucket33 = getelementptr inbounds %struct.rsbtbl_iter, ptr %iter_ptr, i32 0, i32 1
  %29 = ptrtoint ptr %bucket33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc993, ptr %bucket33, align 4
  %30 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ls_rsbtbl, align 8
  %lock36 = getelementptr %struct.dlm_rsbtable, ptr %31, i32 %inc993, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock36) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end14
  %32 = ptrtoint ptr %ls_rsbtbl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ls_rsbtbl, align 8
  %lock40 = getelementptr %struct.dlm_rsbtable, ptr %33, i32 %inc993, i32 2
  tail call void @_raw_spin_unlock(ptr noundef %lock40) #9
  %inc9 = add nuw i32 %inc993, 1
  %add = add i64 %add94, 4294967296
  %34 = ptrtoint ptr %ls_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ls_rsbtbl_size, align 4
  %cmp10.not = icmp ult i32 %inc9, %35
  br i1 %cmp10.not, label %if.end37.if.end14_crit_edge, label %if.end37.if.then12_crit_edge

if.end37.if.then12_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end37.if.end14_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

cleanup:                                          ; preds = %if.then27, %if.then12, %if.then
  %add94.lcssa.sink = phi i64 [ %add94, %if.then27 ], [ %inc13, %if.then12 ], [ %inc, %if.then ]
  %retval.0 = phi ptr [ %iter_ptr, %if.then27 ], [ null, %if.then12 ], [ %iter_ptr, %if.then ]
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add94.lcssa.sink, ptr %pos, align 8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_seq_show(ptr noundef %seq, ptr nocapture noundef %iter_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.rsbtbl_iter, ptr %iter_ptr, i32 0, i32 2
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
    i32 4, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iter_ptr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %ls_lvblen.i = getelementptr inbounds %struct.dlm_ls, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %ls_lvblen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_lvblen.i, align 8
  %res_mutex.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i.i, i32 noundef 0) #9
  %res_length.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %res_length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %res_length.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.23, ptr noundef %4, i32 noundef %10) #9
  %11 = ptrtoint ptr %res_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp270.i = icmp sgt i32 %12, 0
  br i1 %cmp270.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.0271.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dlm_rsb, ptr %4, i32 0, i32 23, i32 %i.0271.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  %arrayidx2.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i, align 1
  %17 = and i8 %16, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp4.not.i = icmp eq i8 %17, 0
  %.conv.i = select i1 %cmp4.not.i, i32 46, i32 %conv.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.24, i32 noundef %.conv.i) #9
  %inc.i = add nuw nsw i32 %i.0271.i, 1
  %18 = ptrtoint ptr %res_length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res_length.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %res_nodeid.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 5
  %20 = ptrtoint ptr %res_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %res_nodeid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp9.i = icmp sgt i32 %21, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %21) #9
  br label %if.end27.i

if.else13.i:                                      ; preds = %for.end.i
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %21, label %if.else23.i [
    i32 0, label %if.then17.i
    i32 -1, label %if.then22.i
  ]

if.then17.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.26) #9
  br label %if.end27.i

if.then22.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  %res_first_lkid.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 13
  %23 = ptrtoint ptr %res_first_lkid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res_first_lkid.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, i32 noundef %24) #9
  br label %if.end27.i

if.else23.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %21) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else23.i, %if.then22.i, %if.then17.i, %if.then11.i
  %count.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 3
  %25 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 1
  %27 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.i.i = icmp eq i32 %26, %28
  br i1 %cmp.i.i, label %if.end27.i.sw.epilog.sink.split_crit_edge, label %if.end29.i

if.end27.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end29.i:                                       ; preds = %if.end27.i
  %res_lvbptr.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 22
  %29 = ptrtoint ptr %res_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %res_lvbptr.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end29.i.if.end52.i_crit_edge, label %if.then30.i

if.end29.i.if.end52.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.then30.i:                                      ; preds = %if.end29.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp32272.i = icmp sgt i32 %8, 0
  br i1 %cmp32272.i, label %for.body34.lr.ph.i, label %if.then30.i.for.end44.i_crit_edge

if.then30.i.for.end44.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44.i

for.body34.lr.ph.i:                               ; preds = %if.then30.i
  %div277281.i = lshr i32 %8, 1
  br label %for.body34.i

for.body34.i:                                     ; preds = %if.end38.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %i.1273.i = phi i32 [ 0, %for.body34.lr.ph.i ], [ %inc43.i, %if.end38.i.for.body34.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1273.i, i32 %div277281.i)
  %cmp35.i = icmp eq i32 %i.1273.i, %div277281.i
  br i1 %cmp35.i, label %if.then37.i, label %for.body34.i.if.end38.i_crit_edge

for.body34.i.if.end38.i_crit_edge:                ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then37.i:                                      ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.30) #9
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %for.body34.i.if.end38.i_crit_edge
  %31 = ptrtoint ptr %res_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res_lvbptr.i, align 4
  %arrayidx40.i = getelementptr i8, ptr %32, i32 %i.1273.i
  %33 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.31, i32 noundef %conv41.i) #9
  %inc43.i = add nuw nsw i32 %i.1273.i, 1
  %exitcond.not.i = icmp eq i32 %inc43.i, %8
  br i1 %exitcond.not.i, label %if.end38.i.for.end44.i_crit_edge, label %if.end38.i.for.body34.i_crit_edge

if.end38.i.for.body34.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i

if.end38.i.for.end44.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end44.i

for.end44.i:                                      ; preds = %if.end38.i.for.end44.i_crit_edge, %if.then30.i.for.end44.i_crit_edge
  %res_flags.i.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 3
  %35 = ptrtoint ptr %res_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %res_flags.i.i, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool46.not.i = icmp eq i32 %37, 0
  br i1 %tobool46.not.i, label %for.end44.i.if.end48.i_crit_edge, label %if.then47.i

for.end44.i.if.end48.i_crit_edge:                 ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then47.i:                                      ; preds = %for.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.32) #9
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %for.end44.i.if.end48.i_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #9
  %38 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i.i, align 4
  %40 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i248.i = icmp eq i32 %39, %41
  br i1 %cmp.i248.i, label %if.end48.i.sw.epilog.sink.split_crit_edge, label %if.end48.i.if.end52.i_crit_edge

if.end48.i.if.end52.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

if.end48.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end52.i:                                       ; preds = %if.end48.i.if.end52.i_crit_edge, %if.end29.i.if.end52.i_crit_edge
  %res_root_list.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 19
  %42 = ptrtoint ptr %res_root_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %res_root_list.i, align 4
  %cmp.i249.i = icmp ne ptr %43, %res_root_list.i
  %res_recover_list.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 20
  %44 = ptrtoint ptr %res_recover_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %res_recover_list.i, align 4
  %cmp.i250.i = icmp ne ptr %45, %res_recover_list.i
  %brmerge.i = select i1 %cmp.i249.i, i1 true, i1 %cmp.i250.i
  br i1 %brmerge.i, label %if.then61.i, label %if.end52.i.if.end62.i_crit_edge

if.end52.i.if.end62.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then61.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %lnot.ext58.i = zext i1 %cmp.i250.i to i32
  %lnot.ext.i = zext i1 %cmp.i249.i to i32
  %res_flags.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 3
  %46 = ptrtoint ptr %res_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %res_flags.i, align 4
  %res_recover_locks_count.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 21
  %48 = ptrtoint ptr %res_recover_locks_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %res_recover_locks_count.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.33, i32 noundef %lnot.ext.i, i32 noundef %lnot.ext58.i, i32 noundef %47, i32 noundef %49) #9
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then61.i, %if.end52.i.if.end62.i_crit_edge
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.34) #9
  %res_grantqueue.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 16
  br label %for.cond63.i

for.cond63.i:                                     ; preds = %for.body69.i.for.cond63.i_crit_edge, %if.end62.i
  %.pn.in.i = phi ptr [ %res_grantqueue.i, %if.end62.i ], [ %.pn.i, %for.body69.i.for.cond63.i_crit_edge ]
  %50 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp65.not.i = icmp eq ptr %.pn.i, %res_grantqueue.i
  br i1 %cmp65.not.i, label %for.end79.i, label %for.body69.i

for.body69.i:                                     ; preds = %for.cond63.i
  %lkb.0.i = getelementptr i8, ptr %.pn.i, i32 -52
  tail call fastcc void @print_format1_lock(ptr noundef %seq, ptr noundef %lkb.0.i, ptr noundef %4) #9
  %51 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count.i.i, align 4
  %53 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i.i, align 4
  %cmp.i254.i = icmp eq i32 %52, %54
  br i1 %cmp.i254.i, label %for.body69.i.sw.epilog.sink.split_crit_edge, label %for.body69.i.for.cond63.i_crit_edge

for.body69.i.for.cond63.i_crit_edge:              ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond63.i

for.body69.i.sw.epilog.sink.split_crit_edge:      ; preds = %for.body69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end79.i:                                      ; preds = %for.cond63.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.35) #9
  %res_convertqueue.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 17
  br label %for.cond84.i

for.cond84.i:                                     ; preds = %for.body91.i.for.cond84.i_crit_edge, %for.end79.i
  %.pn243.in.i = phi ptr [ %res_convertqueue.i, %for.end79.i ], [ %.pn243.i, %for.body91.i.for.cond84.i_crit_edge ]
  %55 = ptrtoint ptr %.pn243.in.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn243.i = load ptr, ptr %.pn243.in.i, align 4
  %cmp87.not.i = icmp eq ptr %.pn243.i, %res_convertqueue.i
  br i1 %cmp87.not.i, label %for.end101.i, label %for.body91.i

for.body91.i:                                     ; preds = %for.cond84.i
  %lkb.1.i = getelementptr i8, ptr %.pn243.i, i32 -52
  tail call fastcc void @print_format1_lock(ptr noundef %seq, ptr noundef %lkb.1.i, ptr noundef %4) #9
  %56 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count.i.i, align 4
  %58 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i.i, align 4
  %cmp.i257.i = icmp eq i32 %57, %59
  br i1 %cmp.i257.i, label %for.body91.i.sw.epilog.sink.split_crit_edge, label %for.body91.i.for.cond84.i_crit_edge

for.body91.i.for.cond84.i_crit_edge:              ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond84.i

for.body91.i.sw.epilog.sink.split_crit_edge:      ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end101.i:                                     ; preds = %for.cond84.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.36) #9
  %res_waitqueue.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 18
  br label %for.cond106.i

for.cond106.i:                                    ; preds = %for.body113.i.for.cond106.i_crit_edge, %for.end101.i
  %.pn244.in.i = phi ptr [ %res_waitqueue.i, %for.end101.i ], [ %.pn244.i, %for.body113.i.for.cond106.i_crit_edge ]
  %60 = ptrtoint ptr %.pn244.in.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn244.i = load ptr, ptr %.pn244.in.i, align 4
  %cmp109.not.i = icmp eq ptr %.pn244.i, %res_waitqueue.i
  br i1 %cmp109.not.i, label %for.end123.i, label %for.body113.i

for.body113.i:                                    ; preds = %for.cond106.i
  %lkb.2.i = getelementptr i8, ptr %.pn244.i, i32 -52
  tail call fastcc void @print_format1_lock(ptr noundef %seq, ptr noundef %lkb.2.i, ptr noundef %4) #9
  %61 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count.i.i, align 4
  %63 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i.i, align 4
  %cmp.i260.i = icmp eq i32 %62, %64
  br i1 %cmp.i260.i, label %for.body113.i.sw.epilog.sink.split_crit_edge, label %for.body113.i.for.cond106.i_crit_edge

for.body113.i.for.cond106.i_crit_edge:            ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond106.i

for.body113.i.sw.epilog.sink.split_crit_edge:     ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end123.i:                                     ; preds = %for.cond106.i
  %res_lookup.i = getelementptr inbounds %struct.dlm_rsb, ptr %4, i32 0, i32 14
  %65 = ptrtoint ptr %res_lookup.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %res_lookup.i, align 4
  %cmp.i261.not.i = icmp eq ptr %66, %res_lookup.i
  br i1 %cmp.i261.not.i, label %for.end123.i.sw.epilog.sink.split_crit_edge, label %if.end127.i

for.end123.i.sw.epilog.sink.split_crit_edge:      ; preds = %for.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end127.i:                                      ; preds = %for.end123.i
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.37) #9
  br label %for.cond133.i

for.cond133.i:                                    ; preds = %if.end146.i.for.cond133.i_crit_edge, %if.end127.i
  %.pn245.in.i = phi ptr [ %res_lookup.i, %if.end127.i ], [ %.pn245.i, %if.end146.i.for.cond133.i_crit_edge ]
  %67 = ptrtoint ptr %.pn245.in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn245.i = load ptr, ptr %.pn245.in.i, align 4
  %cmp135.not.i = icmp eq ptr %.pn245.i, %res_lookup.i
  br i1 %cmp135.not.i, label %for.cond133.i.sw.epilog.sink.split_crit_edge, label %for.body139.i

for.cond133.i.sw.epilog.sink.split_crit_edge:     ; preds = %for.cond133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.body139.i:                                    ; preds = %for.cond133.i
  %lkb_id.i = getelementptr i8, ptr %.pn245.i, i32 -44
  %68 = ptrtoint ptr %lkb_id.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lkb_id.i, align 8
  %lkb_rqmode.i = getelementptr i8, ptr %.pn245.i, i32 -19
  %70 = ptrtoint ptr %lkb_rqmode.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %lkb_rqmode.i, align 1
  %conv140.i = sext i8 %71 to i32
  %switch.tableidx = add nsw i32 %conv140.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %72 = icmp ult i32 %switch.tableidx, 7
  br i1 %72, label %switch.lookup, label %for.body139.i.print_lockmode.exit.i_crit_edge

for.body139.i.print_lockmode.exit.i_crit_edge:    ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_lockmode.exit.i

switch.lookup:                                    ; preds = %for.body139.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.table_seq_show, i32 0, i32 %switch.tableidx
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %print_lockmode.exit.i

print_lockmode.exit.i:                            ; preds = %switch.lookup, %for.body139.i.print_lockmode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %for.body139.i.print_lockmode.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.38, i32 noundef %69, ptr noundef nonnull %retval.0.i.i) #9
  %lkb_wait_type.i = getelementptr i8, ptr %.pn245.i, i32 -16
  %74 = ptrtoint ptr %lkb_wait_type.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %lkb_wait_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool142.not.i = icmp eq i8 %75, 0
  br i1 %tobool142.not.i, label %print_lockmode.exit.i.if.end146.i_crit_edge, label %if.then143.i

print_lockmode.exit.i.if.end146.i_crit_edge:      ; preds = %print_lockmode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146.i

if.then143.i:                                     ; preds = %print_lockmode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv145.i = sext i8 %75 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.39, i32 noundef %conv145.i) #9
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then143.i, %print_lockmode.exit.i.if.end146.i_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #9
  %76 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count.i.i, align 4
  %78 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size.i.i, align 4
  %cmp.i265.i = icmp eq i32 %77, %79
  br i1 %cmp.i265.i, label %if.end146.i.sw.epilog.sink.split_crit_edge, label %if.end146.i.for.cond133.i_crit_edge

if.end146.i.for.cond133.i_crit_edge:              ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond133.i

if.end146.i.sw.epilog.sink.split_crit_edge:       ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %header = getelementptr inbounds %struct.rsbtbl_iter, ptr %iter_ptr, i32 0, i32 3
  %80 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not = icmp eq i32 %81, 0
  br i1 %tobool.not, label %sw.bb1.if.end_crit_edge, label %if.then

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.20) #9
  %82 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %header, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1.if.end_crit_edge
  %83 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %iter_ptr, align 4
  %res_mutex.i.i34 = getelementptr inbounds %struct.dlm_rsb, ptr %84, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i.i34, i32 noundef 0) #9
  %res_grantqueue.i35 = getelementptr inbounds %struct.dlm_rsb, ptr %84, i32 0, i32 16
  %count.i.i36 = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 3
  %size.i.i37 = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i42.for.cond.i_crit_edge, %if.end
  %.pn.in.i38 = phi ptr [ %res_grantqueue.i35, %if.end ], [ %.pn.i39, %for.body.i42.for.cond.i_crit_edge ]
  %85 = ptrtoint ptr %.pn.in.i38 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn.i39 = load ptr, ptr %.pn.in.i38, align 4
  %cmp.not.i = icmp eq ptr %.pn.i39, %res_grantqueue.i35
  br i1 %cmp.not.i, label %for.end.i44, label %for.body.i42

for.body.i42:                                     ; preds = %for.cond.i
  %lkb.0.i40 = getelementptr i8, ptr %.pn.i39, i32 -52
  tail call fastcc void @print_format2_lock(ptr noundef %seq, ptr noundef %lkb.0.i40, ptr noundef %84) #9
  %86 = ptrtoint ptr %count.i.i36 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count.i.i36, align 4
  %88 = ptrtoint ptr %size.i.i37 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size.i.i37, align 4
  %cmp.i.i41 = icmp eq i32 %87, %89
  br i1 %cmp.i.i41, label %for.body.i42.sw.epilog.sink.split_crit_edge, label %for.body.i42.for.cond.i_crit_edge

for.body.i42.for.cond.i_crit_edge:                ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i42.sw.epilog.sink.split_crit_edge:      ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end.i44:                                      ; preds = %for.cond.i
  %res_convertqueue.i43 = getelementptr inbounds %struct.dlm_rsb, ptr %84, i32 0, i32 17
  br label %for.cond11.i

for.cond11.i:                                     ; preds = %for.body16.i.for.cond11.i_crit_edge, %for.end.i44
  %.pn70.in.i = phi ptr [ %res_convertqueue.i43, %for.end.i44 ], [ %.pn70.i, %for.body16.i.for.cond11.i_crit_edge ]
  %90 = ptrtoint ptr %.pn70.in.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn70.i = load ptr, ptr %.pn70.in.i, align 4
  %cmp14.not.i = icmp eq ptr %.pn70.i, %res_convertqueue.i43
  br i1 %cmp14.not.i, label %for.end26.i, label %for.body16.i

for.body16.i:                                     ; preds = %for.cond11.i
  %lkb.1.i45 = getelementptr i8, ptr %.pn70.i, i32 -52
  tail call fastcc void @print_format2_lock(ptr noundef %seq, ptr noundef %lkb.1.i45, ptr noundef %84) #9
  %91 = ptrtoint ptr %count.i.i36 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count.i.i36, align 4
  %93 = ptrtoint ptr %size.i.i37 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size.i.i37, align 4
  %cmp.i74.i = icmp eq i32 %92, %94
  br i1 %cmp.i74.i, label %for.body16.i.sw.epilog.sink.split_crit_edge, label %for.body16.i.for.cond11.i_crit_edge

for.body16.i.for.cond11.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.i

for.body16.i.sw.epilog.sink.split_crit_edge:      ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end26.i:                                      ; preds = %for.cond11.i
  %res_waitqueue.i46 = getelementptr inbounds %struct.dlm_rsb, ptr %84, i32 0, i32 18
  br label %for.cond31.i

for.cond31.i:                                     ; preds = %for.body36.i.for.cond31.i_crit_edge, %for.end26.i
  %.pn71.in.i = phi ptr [ %res_waitqueue.i46, %for.end26.i ], [ %.pn71.i, %for.body36.i.for.cond31.i_crit_edge ]
  %95 = ptrtoint ptr %.pn71.in.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn71.i = load ptr, ptr %.pn71.in.i, align 4
  %cmp34.not.i = icmp eq ptr %.pn71.i, %res_waitqueue.i46
  br i1 %cmp34.not.i, label %for.cond31.i.sw.epilog.sink.split_crit_edge, label %for.body36.i

for.cond31.i.sw.epilog.sink.split_crit_edge:      ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.body36.i:                                     ; preds = %for.cond31.i
  %lkb.2.i47 = getelementptr i8, ptr %.pn71.i, i32 -52
  tail call fastcc void @print_format2_lock(ptr noundef %seq, ptr noundef %lkb.2.i47, ptr noundef %84) #9
  %96 = ptrtoint ptr %count.i.i36 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count.i.i36, align 4
  %98 = ptrtoint ptr %size.i.i37 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size.i.i37, align 4
  %cmp.i77.i = icmp eq i32 %97, %99
  br i1 %cmp.i77.i, label %for.body36.i.sw.epilog.sink.split_crit_edge, label %for.body36.i.for.cond31.i_crit_edge

for.body36.i.for.cond31.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond31.i

for.body36.i.sw.epilog.sink.split_crit_edge:      ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  %header5 = getelementptr inbounds %struct.rsbtbl_iter, ptr %iter_ptr, i32 0, i32 3
  %100 = ptrtoint ptr %header5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %header5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool6.not = icmp eq i32 %101, 0
  br i1 %tobool6.not, label %sw.bb4.if.end9_crit_edge, label %if.then7

sw.bb4.if.end9_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.21) #9
  %102 = ptrtoint ptr %header5 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %header5, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %sw.bb4.if.end9_crit_edge
  %103 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %iter_ptr, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %ls_lvblen.i48 = getelementptr inbounds %struct.dlm_ls, ptr %106, i32 0, i32 5
  %107 = ptrtoint ptr %ls_lvblen.i48 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ls_lvblen.i48, align 8
  %res_mutex.i.i49 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i.i49, i32 noundef 0) #9
  %res_nodeid.i50 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 5
  %109 = ptrtoint ptr %res_nodeid.i50 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %res_nodeid.i50, align 4
  %res_first_lkid.i51 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 13
  %111 = ptrtoint ptr %res_first_lkid.i51 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %res_first_lkid.i51, align 4
  %res_flags.i52 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 3
  %113 = ptrtoint ptr %res_flags.i52 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %res_flags.i52, align 4
  %res_root_list.i53 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 19
  %115 = ptrtoint ptr %res_root_list.i53 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %res_root_list.i53, align 4
  %cmp.i.i54 = icmp ne ptr %116, %res_root_list.i53
  %lnot.ext.i55 = zext i1 %cmp.i.i54 to i32
  %res_recover_list.i56 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 20
  %117 = ptrtoint ptr %res_recover_list.i56 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %res_recover_list.i56, align 4
  %cmp.i208.i = icmp ne ptr %118, %res_recover_list.i56
  %lnot.ext4.i = zext i1 %cmp.i208.i to i32
  %res_recover_locks_count.i57 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 21
  %119 = ptrtoint ptr %res_recover_locks_count.i57 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %res_recover_locks_count.i57, align 4
  %res_length.i58 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 4
  %121 = ptrtoint ptr %res_length.i58 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %res_length.i58, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.52, ptr noundef %104, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %lnot.ext.i55, i32 noundef %lnot.ext4.i, i32 noundef %120, i32 noundef %122) #9
  %count.i.i59 = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 3
  %123 = ptrtoint ptr %count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %count.i.i59, align 4
  %size.i.i60 = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 1
  %125 = ptrtoint ptr %size.i.i60 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %size.i.i60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp.i210.i = icmp eq i32 %124, %126
  br i1 %cmp.i210.i, label %if.end9.sw.epilog.sink.split_crit_edge, label %for.cond.preheader.i

if.end9.sw.epilog.sink.split_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.cond.preheader.i:                             ; preds = %if.end9
  %127 = ptrtoint ptr %res_length.i58 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %res_length.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp315.i = icmp sgt i32 %128, 0
  br i1 %cmp315.i, label %for.cond.preheader.i.for.body.i62_crit_edge, label %for.cond.preheader.i.for.end.i67_crit_edge

for.cond.preheader.i.for.end.i67_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i67

for.cond.preheader.i.for.body.i62_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.inc.i.for.body.i62_crit_edge, %for.cond.preheader.i.for.body.i62_crit_edge
  %i.0317.i = phi i32 [ %inc.i65, %for.inc.i.for.body.i62_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i62_crit_edge ]
  %print_name.0316.i = phi i32 [ %print_name.1.i, %for.inc.i.for.body.i62_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i62_crit_edge ]
  %arrayidx.i61 = getelementptr %struct.dlm_rsb, ptr %104, i32 0, i32 23, i32 %i.0317.i
  %129 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %130)
  %cmp7.i = icmp sgt i8 %130, -1
  br i1 %cmp7.i, label %lor.lhs.false.i, label %for.body.i62.if.then16.i_crit_edge

for.body.i62.if.then16.i_crit_edge:               ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %for.body.i62
  %conv.i63 = zext i8 %130 to i32
  %arrayidx12.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i63
  %131 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx12.i, align 1
  %133 = and i8 %132, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp14.not.i64 = icmp eq i8 %133, 0
  br i1 %cmp14.not.i64, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %for.body.i62.if.then16.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then16.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %print_name.1.i = phi i32 [ %print_name.0316.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ 0, %if.then16.i ]
  %inc.i65 = add nuw nsw i32 %i.0317.i, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, %128
  br i1 %exitcond.not.i66, label %for.inc.i.for.end.i67_crit_edge, label %for.inc.i.for.body.i62_crit_edge

for.inc.i.for.body.i62_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i62

for.inc.i.for.end.i67_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i67

for.end.i67:                                      ; preds = %for.inc.i.for.end.i67_crit_edge, %for.cond.preheader.i.for.end.i67_crit_edge
  %print_name.0.lcssa.i = phi i32 [ 1, %for.cond.preheader.i.for.end.i67_crit_edge ], [ %print_name.1.i, %for.inc.i.for.end.i67_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print_name.0.lcssa.i)
  %tobool18.not.i = icmp eq i32 %print_name.0.lcssa.i, 0
  %cond.i = select i1 %tobool18.not.i, ptr @.str.54, ptr @.str.53
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %cond.i) #9
  %134 = ptrtoint ptr %res_length.i58 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %res_length.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp21318.i = icmp sgt i32 %135, 0
  br i1 %cmp21318.i, label %for.body23.i.preheader, label %for.end.i67.for.end35.i_crit_edge

for.end.i67.for.end35.i_crit_edge:                ; preds = %for.end.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35.i

for.body23.i.preheader:                           ; preds = %for.end.i67
  %.str.55..str.24.i = select i1 %tobool18.not.i, ptr @.str.55, ptr @.str.24
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.body23.i.preheader
  %i.1319.i = phi i32 [ %inc34.i, %for.body23.i.for.body23.i_crit_edge ], [ 0, %for.body23.i.preheader ]
  %arrayidx30.i = getelementptr %struct.dlm_rsb, ptr %104, i32 0, i32 23, i32 %i.1319.i
  %136 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %137 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull %.str.55..str.24.i, i32 noundef %conv31.i) #9
  %inc34.i = add nuw nsw i32 %i.1319.i, 1
  %138 = ptrtoint ptr %res_length.i58 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %res_length.i58, align 4
  %cmp21.i = icmp slt i32 %inc34.i, %139
  br i1 %cmp21.i, label %for.body23.i.for.body23.i_crit_edge, label %for.body23.i.for.end35.i_crit_edge

for.body23.i.for.end35.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35.i

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

for.end35.i:                                      ; preds = %for.body23.i.for.end35.i_crit_edge, %for.end.i67.for.end35.i_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #9
  %140 = ptrtoint ptr %count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %count.i.i59, align 4
  %142 = ptrtoint ptr %size.i.i60 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %size.i.i60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %143)
  %cmp.i213.i = icmp eq i32 %141, %143
  br i1 %cmp.i213.i, label %for.end35.i.sw.epilog.sink.split_crit_edge, label %if.end38.i69

for.end35.i.sw.epilog.sink.split_crit_edge:       ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end38.i69:                                     ; preds = %for.end35.i
  %res_lvbptr.i68 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 22
  %144 = ptrtoint ptr %res_lvbptr.i68 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %res_lvbptr.i68, align 4
  %tobool39.not.i = icmp eq ptr %145, null
  br i1 %tobool39.not.i, label %if.end38.i69.do_locks.i_crit_edge, label %if.end41.i

if.end38.i69.do_locks.i_crit_edge:                ; preds = %if.end38.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_locks.i

if.end41.i:                                       ; preds = %if.end38.i69
  %res_lvbseq.i = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 9
  %146 = ptrtoint ptr %res_lvbseq.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %res_lvbseq.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.56, i32 noundef %147, i32 noundef %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp43321.i = icmp sgt i32 %108, 0
  br i1 %cmp43321.i, label %if.end41.i.for.body45.i_crit_edge, label %if.end41.i.for.end51.i_crit_edge

if.end41.i.for.end51.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51.i

if.end41.i.for.body45.i_crit_edge:                ; preds = %if.end41.i
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.body45.i.for.body45.i_crit_edge, %if.end41.i.for.body45.i_crit_edge
  %i.2322.i = phi i32 [ %inc50.i, %for.body45.i.for.body45.i_crit_edge ], [ 0, %if.end41.i.for.body45.i_crit_edge ]
  %148 = ptrtoint ptr %res_lvbptr.i68 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %res_lvbptr.i68, align 4
  %arrayidx47.i = getelementptr i8, ptr %149, i32 %i.2322.i
  %150 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx47.i, align 1
  %conv48.i = zext i8 %151 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, i32 noundef %conv48.i) #9
  %inc50.i = add nuw nsw i32 %i.2322.i, 1
  %exitcond326.not.i = icmp eq i32 %inc50.i, %108
  br i1 %exitcond326.not.i, label %for.body45.i.for.end51.i_crit_edge, label %for.body45.i.for.body45.i_crit_edge

for.body45.i.for.body45.i_crit_edge:              ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45.i

for.body45.i.for.end51.i_crit_edge:               ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51.i

for.end51.i:                                      ; preds = %for.body45.i.for.end51.i_crit_edge, %if.end41.i.for.end51.i_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #9
  %152 = ptrtoint ptr %count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %count.i.i59, align 4
  %154 = ptrtoint ptr %size.i.i60 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %size.i.i60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %155)
  %cmp.i216.i = icmp eq i32 %153, %155
  br i1 %cmp.i216.i, label %for.end51.i.sw.epilog.sink.split_crit_edge, label %for.end51.i.do_locks.i_crit_edge

for.end51.i.do_locks.i_crit_edge:                 ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_locks.i

for.end51.i.sw.epilog.sink.split_crit_edge:       ; preds = %for.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do_locks.i:                                       ; preds = %for.end51.i.do_locks.i_crit_edge, %if.end38.i69.do_locks.i_crit_edge
  %res_grantqueue.i70 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 16
  br label %for.cond55.i

for.cond55.i:                                     ; preds = %print_format3_lock.exit.i.for.cond55.i_crit_edge, %do_locks.i
  %.pn.in.i71 = phi ptr [ %res_grantqueue.i70, %do_locks.i ], [ %.pn.i72, %print_format3_lock.exit.i.for.cond55.i_crit_edge ]
  %156 = ptrtoint ptr %.pn.in.i71 to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pn.i72 = load ptr, ptr %.pn.in.i71, align 4
  %cmp57.not.i = icmp eq ptr %.pn.i72, %res_grantqueue.i70
  br i1 %cmp57.not.i, label %for.end71.i, label %for.body61.i

for.body61.i:                                     ; preds = %for.cond55.i
  %lkb_flags.i.i = getelementptr i8, ptr %.pn.i72, i32 -20
  %157 = ptrtoint ptr %lkb_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %lkb_flags.i.i, align 8
  %and.i.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body61.i.print_format3_lock.exit.i_crit_edge, label %if.then.i.i

for.body61.i.print_format3_lock.exit.i_crit_edge: ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit.i

if.then.i.i:                                      ; preds = %for.body61.i
  %159 = getelementptr i8, ptr %.pn.i72, i32 444
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %159, align 8
  %tobool1.not.i.i = icmp eq ptr %161, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.print_format3_lock.exit.i_crit_edge, label %if.then2.i.i

if.then.i.i.print_format3_lock.exit.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %xid3.i.i = getelementptr inbounds %struct.dlm_user_args, ptr %161, i32 0, i32 7
  %162 = ptrtoint ptr %xid3.i.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %xid3.i.i, align 8
  br label %print_format3_lock.exit.i

print_format3_lock.exit.i:                        ; preds = %if.then2.i.i, %if.then.i.i.print_format3_lock.exit.i_crit_edge, %for.body61.i.print_format3_lock.exit.i_crit_edge
  %xid.0.i.i = phi i64 [ %163, %if.then2.i.i ], [ 0, %if.then.i.i.print_format3_lock.exit.i_crit_edge ], [ 0, %for.body61.i.print_format3_lock.exit.i_crit_edge ]
  %lkb_id.i.i = getelementptr i8, ptr %.pn.i72, i32 -36
  %164 = ptrtoint ptr %lkb_id.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %lkb_id.i.i, align 8
  %lkb_nodeid.i.i = getelementptr i8, ptr %.pn.i72, i32 -44
  %166 = ptrtoint ptr %lkb_nodeid.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %lkb_nodeid.i.i, align 8
  %lkb_remid.i.i = getelementptr i8, ptr %.pn.i72, i32 -32
  %168 = ptrtoint ptr %lkb_remid.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %lkb_remid.i.i, align 4
  %lkb_ownpid.i.i = getelementptr i8, ptr %.pn.i72, i32 -40
  %170 = ptrtoint ptr %lkb_ownpid.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %lkb_ownpid.i.i, align 4
  %lkb_exflags.i.i = getelementptr i8, ptr %.pn.i72, i32 -28
  %172 = ptrtoint ptr %lkb_exflags.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %lkb_exflags.i.i, align 8
  %lkb_status.i.i = getelementptr i8, ptr %.pn.i72, i32 -12
  %174 = ptrtoint ptr %lkb_status.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %lkb_status.i.i, align 8
  %conv.i217.i = sext i8 %175 to i32
  %lkb_grmode.i.i = getelementptr i8, ptr %.pn.i72, i32 -10
  %176 = ptrtoint ptr %lkb_grmode.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %lkb_grmode.i.i, align 2
  %conv6.i.i = sext i8 %177 to i32
  %lkb_rqmode.i.i = getelementptr i8, ptr %.pn.i72, i32 -11
  %178 = ptrtoint ptr %lkb_rqmode.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %lkb_rqmode.i.i, align 1
  %conv7.i.i = sext i8 %179 to i32
  %mode.i.i = getelementptr i8, ptr %.pn.i72, i32 397
  %180 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %mode.i.i, align 1
  %conv8.i.i = sext i8 %181 to i32
  %lkb_wait_type.i.i = getelementptr i8, ptr %.pn.i72, i32 -8
  %182 = ptrtoint ptr %lkb_wait_type.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %lkb_wait_type.i.i, align 4
  %conv9.i.i = sext i8 %183 to i32
  %lkb_lvbseq.i.i = getelementptr i8, ptr %.pn.i72, i32 -16
  %184 = ptrtoint ptr %lkb_lvbseq.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %lkb_lvbseq.i.i, align 4
  %lkb_timestamp.i.i = getelementptr i8, ptr %.pn.i72, i32 44
  %186 = ptrtoint ptr %lkb_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %lkb_timestamp.i.i, align 8
  %lkb_last_bast_time.i.i = getelementptr i8, ptr %.pn.i72, i32 412
  %188 = ptrtoint ptr %lkb_last_bast_time.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %lkb_last_bast_time.i.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %165, i32 noundef %167, i32 noundef %169, i32 noundef %171, i64 noundef %xid.0.i.i, i32 noundef %173, i32 noundef %158, i32 noundef %conv.i217.i, i32 noundef %conv6.i.i, i32 noundef %conv7.i.i, i32 noundef %conv8.i.i, i32 noundef 0, i32 noundef %conv9.i.i, i32 noundef %185, i64 noundef %187, i64 noundef %189) #9
  %190 = ptrtoint ptr %count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %count.i.i59, align 4
  %192 = ptrtoint ptr %size.i.i60 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %size.i.i60, align 4
  %cmp.i220.i = icmp eq i32 %191, %193
  br i1 %cmp.i220.i, label %print_format3_lock.exit.i.sw.epilog.sink.split_crit_edge, label %print_format3_lock.exit.i.for.cond55.i_crit_edge

print_format3_lock.exit.i.for.cond55.i_crit_edge: ; preds = %print_format3_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond55.i

print_format3_lock.exit.i.sw.epilog.sink.split_crit_edge: ; preds = %print_format3_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end71.i:                                      ; preds = %for.cond55.i
  %res_convertqueue.i73 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 17
  br label %for.cond76.i

for.cond76.i:                                     ; preds = %print_format3_lock.exit247.i.for.cond76.i_crit_edge, %for.end71.i
  %.pn205.in.i = phi ptr [ %res_convertqueue.i73, %for.end71.i ], [ %.pn205.i, %print_format3_lock.exit247.i.for.cond76.i_crit_edge ]
  %194 = ptrtoint ptr %.pn205.in.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %.pn205.i = load ptr, ptr %.pn205.in.i, align 4
  %cmp79.not.i = icmp eq ptr %.pn205.i, %res_convertqueue.i73
  br i1 %cmp79.not.i, label %for.end93.i, label %for.body83.i

for.body83.i:                                     ; preds = %for.cond76.i
  %lkb_flags.i221.i = getelementptr i8, ptr %.pn205.i, i32 -20
  %195 = ptrtoint ptr %lkb_flags.i221.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %lkb_flags.i221.i, align 8
  %and.i222.i = and i32 %196, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i222.i)
  %tobool.not.i223.i = icmp eq i32 %and.i222.i, 0
  br i1 %tobool.not.i223.i, label %for.body83.i.print_format3_lock.exit247.i_crit_edge, label %if.then.i225.i

for.body83.i.print_format3_lock.exit247.i_crit_edge: ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit247.i

if.then.i225.i:                                   ; preds = %for.body83.i
  %197 = getelementptr i8, ptr %.pn205.i, i32 444
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 8
  %tobool1.not.i224.i = icmp eq ptr %199, null
  br i1 %tobool1.not.i224.i, label %if.then.i225.i.print_format3_lock.exit247.i_crit_edge, label %if.then2.i227.i

if.then.i225.i.print_format3_lock.exit247.i_crit_edge: ; preds = %if.then.i225.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit247.i

if.then2.i227.i:                                  ; preds = %if.then.i225.i
  call void @__sanitizer_cov_trace_pc() #11
  %xid3.i226.i = getelementptr inbounds %struct.dlm_user_args, ptr %199, i32 0, i32 7
  %200 = ptrtoint ptr %xid3.i226.i to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %xid3.i226.i, align 8
  br label %print_format3_lock.exit247.i

print_format3_lock.exit247.i:                     ; preds = %if.then2.i227.i, %if.then.i225.i.print_format3_lock.exit247.i_crit_edge, %for.body83.i.print_format3_lock.exit247.i_crit_edge
  %xid.0.i228.i = phi i64 [ %201, %if.then2.i227.i ], [ 0, %if.then.i225.i.print_format3_lock.exit247.i_crit_edge ], [ 0, %for.body83.i.print_format3_lock.exit247.i_crit_edge ]
  %lkb_id.i229.i = getelementptr i8, ptr %.pn205.i, i32 -36
  %202 = ptrtoint ptr %lkb_id.i229.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %lkb_id.i229.i, align 8
  %lkb_nodeid.i230.i = getelementptr i8, ptr %.pn205.i, i32 -44
  %204 = ptrtoint ptr %lkb_nodeid.i230.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %lkb_nodeid.i230.i, align 8
  %lkb_remid.i231.i = getelementptr i8, ptr %.pn205.i, i32 -32
  %206 = ptrtoint ptr %lkb_remid.i231.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %lkb_remid.i231.i, align 4
  %lkb_ownpid.i232.i = getelementptr i8, ptr %.pn205.i, i32 -40
  %208 = ptrtoint ptr %lkb_ownpid.i232.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %lkb_ownpid.i232.i, align 4
  %lkb_exflags.i233.i = getelementptr i8, ptr %.pn205.i, i32 -28
  %210 = ptrtoint ptr %lkb_exflags.i233.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %lkb_exflags.i233.i, align 8
  %lkb_status.i234.i = getelementptr i8, ptr %.pn205.i, i32 -12
  %212 = ptrtoint ptr %lkb_status.i234.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %lkb_status.i234.i, align 8
  %conv.i235.i = sext i8 %213 to i32
  %lkb_grmode.i236.i = getelementptr i8, ptr %.pn205.i, i32 -10
  %214 = ptrtoint ptr %lkb_grmode.i236.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %lkb_grmode.i236.i, align 2
  %conv6.i237.i = sext i8 %215 to i32
  %lkb_rqmode.i238.i = getelementptr i8, ptr %.pn205.i, i32 -11
  %216 = ptrtoint ptr %lkb_rqmode.i238.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %lkb_rqmode.i238.i, align 1
  %conv7.i239.i = sext i8 %217 to i32
  %mode.i240.i = getelementptr i8, ptr %.pn205.i, i32 397
  %218 = ptrtoint ptr %mode.i240.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %mode.i240.i, align 1
  %conv8.i241.i = sext i8 %219 to i32
  %lkb_wait_type.i242.i = getelementptr i8, ptr %.pn205.i, i32 -8
  %220 = ptrtoint ptr %lkb_wait_type.i242.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %lkb_wait_type.i242.i, align 4
  %conv9.i243.i = sext i8 %221 to i32
  %lkb_lvbseq.i244.i = getelementptr i8, ptr %.pn205.i, i32 -16
  %222 = ptrtoint ptr %lkb_lvbseq.i244.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %lkb_lvbseq.i244.i, align 4
  %lkb_timestamp.i245.i = getelementptr i8, ptr %.pn205.i, i32 44
  %224 = ptrtoint ptr %lkb_timestamp.i245.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %lkb_timestamp.i245.i, align 8
  %lkb_last_bast_time.i246.i = getelementptr i8, ptr %.pn205.i, i32 412
  %226 = ptrtoint ptr %lkb_last_bast_time.i246.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %lkb_last_bast_time.i246.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %203, i32 noundef %205, i32 noundef %207, i32 noundef %209, i64 noundef %xid.0.i228.i, i32 noundef %211, i32 noundef %196, i32 noundef %conv.i235.i, i32 noundef %conv6.i237.i, i32 noundef %conv7.i239.i, i32 noundef %conv8.i241.i, i32 noundef 0, i32 noundef %conv9.i243.i, i32 noundef %223, i64 noundef %225, i64 noundef %227) #9
  %228 = ptrtoint ptr %count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %count.i.i59, align 4
  %230 = ptrtoint ptr %size.i.i60 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %size.i.i60, align 4
  %cmp.i250.i74 = icmp eq i32 %229, %231
  br i1 %cmp.i250.i74, label %print_format3_lock.exit247.i.sw.epilog.sink.split_crit_edge, label %print_format3_lock.exit247.i.for.cond76.i_crit_edge

print_format3_lock.exit247.i.for.cond76.i_crit_edge: ; preds = %print_format3_lock.exit247.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond76.i

print_format3_lock.exit247.i.sw.epilog.sink.split_crit_edge: ; preds = %print_format3_lock.exit247.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end93.i:                                      ; preds = %for.cond76.i
  %res_waitqueue.i75 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 18
  br label %for.cond98.i

for.cond98.i:                                     ; preds = %print_format3_lock.exit277.i.for.cond98.i_crit_edge, %for.end93.i
  %.pn206.in.i = phi ptr [ %res_waitqueue.i75, %for.end93.i ], [ %.pn206.i, %print_format3_lock.exit277.i.for.cond98.i_crit_edge ]
  %232 = ptrtoint ptr %.pn206.in.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pn206.i = load ptr, ptr %.pn206.in.i, align 4
  %cmp101.not.i = icmp eq ptr %.pn206.i, %res_waitqueue.i75
  br i1 %cmp101.not.i, label %for.end115.i, label %for.body105.i

for.body105.i:                                    ; preds = %for.cond98.i
  %lkb_flags.i251.i = getelementptr i8, ptr %.pn206.i, i32 -20
  %233 = ptrtoint ptr %lkb_flags.i251.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %lkb_flags.i251.i, align 8
  %and.i252.i = and i32 %234, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252.i)
  %tobool.not.i253.i = icmp eq i32 %and.i252.i, 0
  br i1 %tobool.not.i253.i, label %for.body105.i.print_format3_lock.exit277.i_crit_edge, label %if.then.i255.i

for.body105.i.print_format3_lock.exit277.i_crit_edge: ; preds = %for.body105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit277.i

if.then.i255.i:                                   ; preds = %for.body105.i
  %235 = getelementptr i8, ptr %.pn206.i, i32 444
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 8
  %tobool1.not.i254.i = icmp eq ptr %237, null
  br i1 %tobool1.not.i254.i, label %if.then.i255.i.print_format3_lock.exit277.i_crit_edge, label %if.then2.i257.i

if.then.i255.i.print_format3_lock.exit277.i_crit_edge: ; preds = %if.then.i255.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit277.i

if.then2.i257.i:                                  ; preds = %if.then.i255.i
  call void @__sanitizer_cov_trace_pc() #11
  %xid3.i256.i = getelementptr inbounds %struct.dlm_user_args, ptr %237, i32 0, i32 7
  %238 = ptrtoint ptr %xid3.i256.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %xid3.i256.i, align 8
  br label %print_format3_lock.exit277.i

print_format3_lock.exit277.i:                     ; preds = %if.then2.i257.i, %if.then.i255.i.print_format3_lock.exit277.i_crit_edge, %for.body105.i.print_format3_lock.exit277.i_crit_edge
  %xid.0.i258.i = phi i64 [ %239, %if.then2.i257.i ], [ 0, %if.then.i255.i.print_format3_lock.exit277.i_crit_edge ], [ 0, %for.body105.i.print_format3_lock.exit277.i_crit_edge ]
  %lkb_id.i259.i = getelementptr i8, ptr %.pn206.i, i32 -36
  %240 = ptrtoint ptr %lkb_id.i259.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %lkb_id.i259.i, align 8
  %lkb_nodeid.i260.i = getelementptr i8, ptr %.pn206.i, i32 -44
  %242 = ptrtoint ptr %lkb_nodeid.i260.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %lkb_nodeid.i260.i, align 8
  %lkb_remid.i261.i = getelementptr i8, ptr %.pn206.i, i32 -32
  %244 = ptrtoint ptr %lkb_remid.i261.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %lkb_remid.i261.i, align 4
  %lkb_ownpid.i262.i = getelementptr i8, ptr %.pn206.i, i32 -40
  %246 = ptrtoint ptr %lkb_ownpid.i262.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %lkb_ownpid.i262.i, align 4
  %lkb_exflags.i263.i = getelementptr i8, ptr %.pn206.i, i32 -28
  %248 = ptrtoint ptr %lkb_exflags.i263.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %lkb_exflags.i263.i, align 8
  %lkb_status.i264.i = getelementptr i8, ptr %.pn206.i, i32 -12
  %250 = ptrtoint ptr %lkb_status.i264.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %lkb_status.i264.i, align 8
  %conv.i265.i = sext i8 %251 to i32
  %lkb_grmode.i266.i = getelementptr i8, ptr %.pn206.i, i32 -10
  %252 = ptrtoint ptr %lkb_grmode.i266.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %lkb_grmode.i266.i, align 2
  %conv6.i267.i = sext i8 %253 to i32
  %lkb_rqmode.i268.i = getelementptr i8, ptr %.pn206.i, i32 -11
  %254 = ptrtoint ptr %lkb_rqmode.i268.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %lkb_rqmode.i268.i, align 1
  %conv7.i269.i = sext i8 %255 to i32
  %mode.i270.i = getelementptr i8, ptr %.pn206.i, i32 397
  %256 = ptrtoint ptr %mode.i270.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %mode.i270.i, align 1
  %conv8.i271.i = sext i8 %257 to i32
  %lkb_wait_type.i272.i = getelementptr i8, ptr %.pn206.i, i32 -8
  %258 = ptrtoint ptr %lkb_wait_type.i272.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %lkb_wait_type.i272.i, align 4
  %conv9.i273.i = sext i8 %259 to i32
  %lkb_lvbseq.i274.i = getelementptr i8, ptr %.pn206.i, i32 -16
  %260 = ptrtoint ptr %lkb_lvbseq.i274.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %lkb_lvbseq.i274.i, align 4
  %lkb_timestamp.i275.i = getelementptr i8, ptr %.pn206.i, i32 44
  %262 = ptrtoint ptr %lkb_timestamp.i275.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %lkb_timestamp.i275.i, align 8
  %lkb_last_bast_time.i276.i = getelementptr i8, ptr %.pn206.i, i32 412
  %264 = ptrtoint ptr %lkb_last_bast_time.i276.i to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %lkb_last_bast_time.i276.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %241, i32 noundef %243, i32 noundef %245, i32 noundef %247, i64 noundef %xid.0.i258.i, i32 noundef %249, i32 noundef %234, i32 noundef %conv.i265.i, i32 noundef %conv6.i267.i, i32 noundef %conv7.i269.i, i32 noundef %conv8.i271.i, i32 noundef 0, i32 noundef %conv9.i273.i, i32 noundef %261, i64 noundef %263, i64 noundef %265) #9
  %266 = ptrtoint ptr %count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %count.i.i59, align 4
  %268 = ptrtoint ptr %size.i.i60 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %size.i.i60, align 4
  %cmp.i280.i = icmp eq i32 %267, %269
  br i1 %cmp.i280.i, label %print_format3_lock.exit277.i.sw.epilog.sink.split_crit_edge, label %print_format3_lock.exit277.i.for.cond98.i_crit_edge

print_format3_lock.exit277.i.for.cond98.i_crit_edge: ; preds = %print_format3_lock.exit277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond98.i

print_format3_lock.exit277.i.sw.epilog.sink.split_crit_edge: ; preds = %print_format3_lock.exit277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.end115.i:                                     ; preds = %for.cond98.i
  %res_lookup.i76 = getelementptr inbounds %struct.dlm_rsb, ptr %104, i32 0, i32 14
  br label %for.cond120.i

for.cond120.i:                                    ; preds = %print_format3_lock.exit307.i.for.cond120.i_crit_edge, %for.end115.i
  %.pn207.in.i = phi ptr [ %res_lookup.i76, %for.end115.i ], [ %.pn207.i, %print_format3_lock.exit307.i.for.cond120.i_crit_edge ]
  %270 = ptrtoint ptr %.pn207.in.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %.pn207.i = load ptr, ptr %.pn207.in.i, align 4
  %cmp122.not.i = icmp eq ptr %.pn207.i, %res_lookup.i76
  br i1 %cmp122.not.i, label %for.cond120.i.sw.epilog.sink.split_crit_edge, label %for.body126.i

for.cond120.i.sw.epilog.sink.split_crit_edge:     ; preds = %for.cond120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.body126.i:                                    ; preds = %for.cond120.i
  %lkb_flags.i281.i = getelementptr i8, ptr %.pn207.i, i32 -28
  %271 = ptrtoint ptr %lkb_flags.i281.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %lkb_flags.i281.i, align 8
  %and.i282.i = and i32 %272, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i282.i)
  %tobool.not.i283.i = icmp eq i32 %and.i282.i, 0
  br i1 %tobool.not.i283.i, label %for.body126.i.print_format3_lock.exit307.i_crit_edge, label %if.then.i285.i

for.body126.i.print_format3_lock.exit307.i_crit_edge: ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit307.i

if.then.i285.i:                                   ; preds = %for.body126.i
  %273 = getelementptr i8, ptr %.pn207.i, i32 436
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 8
  %tobool1.not.i284.i = icmp eq ptr %275, null
  br i1 %tobool1.not.i284.i, label %if.then.i285.i.print_format3_lock.exit307.i_crit_edge, label %if.then2.i287.i

if.then.i285.i.print_format3_lock.exit307.i_crit_edge: ; preds = %if.then.i285.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format3_lock.exit307.i

if.then2.i287.i:                                  ; preds = %if.then.i285.i
  call void @__sanitizer_cov_trace_pc() #11
  %xid3.i286.i = getelementptr inbounds %struct.dlm_user_args, ptr %275, i32 0, i32 7
  %276 = ptrtoint ptr %xid3.i286.i to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %xid3.i286.i, align 8
  br label %print_format3_lock.exit307.i

print_format3_lock.exit307.i:                     ; preds = %if.then2.i287.i, %if.then.i285.i.print_format3_lock.exit307.i_crit_edge, %for.body126.i.print_format3_lock.exit307.i_crit_edge
  %xid.0.i288.i = phi i64 [ %277, %if.then2.i287.i ], [ 0, %if.then.i285.i.print_format3_lock.exit307.i_crit_edge ], [ 0, %for.body126.i.print_format3_lock.exit307.i_crit_edge ]
  %lkb_id.i289.i = getelementptr i8, ptr %.pn207.i, i32 -44
  %278 = ptrtoint ptr %lkb_id.i289.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %lkb_id.i289.i, align 8
  %lkb_nodeid.i290.i = getelementptr i8, ptr %.pn207.i, i32 -52
  %280 = ptrtoint ptr %lkb_nodeid.i290.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %lkb_nodeid.i290.i, align 8
  %lkb_remid.i291.i = getelementptr i8, ptr %.pn207.i, i32 -40
  %282 = ptrtoint ptr %lkb_remid.i291.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %lkb_remid.i291.i, align 4
  %lkb_ownpid.i292.i = getelementptr i8, ptr %.pn207.i, i32 -48
  %284 = ptrtoint ptr %lkb_ownpid.i292.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %lkb_ownpid.i292.i, align 4
  %lkb_exflags.i293.i = getelementptr i8, ptr %.pn207.i, i32 -36
  %286 = ptrtoint ptr %lkb_exflags.i293.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %lkb_exflags.i293.i, align 8
  %lkb_status.i294.i = getelementptr i8, ptr %.pn207.i, i32 -20
  %288 = ptrtoint ptr %lkb_status.i294.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %lkb_status.i294.i, align 8
  %conv.i295.i = sext i8 %289 to i32
  %lkb_grmode.i296.i = getelementptr i8, ptr %.pn207.i, i32 -18
  %290 = ptrtoint ptr %lkb_grmode.i296.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %lkb_grmode.i296.i, align 2
  %conv6.i297.i = sext i8 %291 to i32
  %lkb_rqmode.i298.i = getelementptr i8, ptr %.pn207.i, i32 -19
  %292 = ptrtoint ptr %lkb_rqmode.i298.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %lkb_rqmode.i298.i, align 1
  %conv7.i299.i = sext i8 %293 to i32
  %mode.i300.i = getelementptr i8, ptr %.pn207.i, i32 389
  %294 = ptrtoint ptr %mode.i300.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %mode.i300.i, align 1
  %conv8.i301.i = sext i8 %295 to i32
  %lkb_wait_type.i302.i = getelementptr i8, ptr %.pn207.i, i32 -16
  %296 = ptrtoint ptr %lkb_wait_type.i302.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %lkb_wait_type.i302.i, align 4
  %conv9.i303.i = sext i8 %297 to i32
  %lkb_lvbseq.i304.i = getelementptr i8, ptr %.pn207.i, i32 -24
  %298 = ptrtoint ptr %lkb_lvbseq.i304.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %lkb_lvbseq.i304.i, align 4
  %lkb_timestamp.i305.i = getelementptr i8, ptr %.pn207.i, i32 36
  %300 = ptrtoint ptr %lkb_timestamp.i305.i to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %lkb_timestamp.i305.i, align 8
  %lkb_last_bast_time.i306.i = getelementptr i8, ptr %.pn207.i, i32 404
  %302 = ptrtoint ptr %lkb_last_bast_time.i306.i to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %lkb_last_bast_time.i306.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %279, i32 noundef %281, i32 noundef %283, i32 noundef %285, i64 noundef %xid.0.i288.i, i32 noundef %287, i32 noundef %272, i32 noundef %conv.i295.i, i32 noundef %conv6.i297.i, i32 noundef %conv7.i299.i, i32 noundef %conv8.i301.i, i32 noundef 1, i32 noundef %conv9.i303.i, i32 noundef %299, i64 noundef %301, i64 noundef %303) #9
  %304 = ptrtoint ptr %count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %count.i.i59, align 4
  %306 = ptrtoint ptr %size.i.i60 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %size.i.i60, align 4
  %cmp.i310.i = icmp eq i32 %305, %307
  br i1 %cmp.i310.i, label %print_format3_lock.exit307.i.sw.epilog.sink.split_crit_edge, label %print_format3_lock.exit307.i.for.cond120.i_crit_edge

print_format3_lock.exit307.i.for.cond120.i_crit_edge: ; preds = %print_format3_lock.exit307.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond120.i

print_format3_lock.exit307.i.sw.epilog.sink.split_crit_edge: ; preds = %print_format3_lock.exit307.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  %header12 = getelementptr inbounds %struct.rsbtbl_iter, ptr %iter_ptr, i32 0, i32 3
  %308 = ptrtoint ptr %header12 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %header12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool13.not = icmp eq i32 %309, 0
  br i1 %tobool13.not, label %sw.bb11.if.end16_crit_edge, label %if.then14

sw.bb11.if.end16_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.22) #9
  %310 = ptrtoint ptr %header12 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 0, ptr %header12, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sw.bb11.if.end16_crit_edge
  %311 = ptrtoint ptr %iter_ptr to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %iter_ptr, align 4
  %call.i = tail call i32 @dlm_our_nodeid() #9
  %res_mutex.i.i77 = getelementptr inbounds %struct.dlm_rsb, ptr %312, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %res_mutex.i.i77, i32 noundef 0) #9
  %res_nodeid.i78 = getelementptr inbounds %struct.dlm_rsb, ptr %312, i32 0, i32 5
  %313 = ptrtoint ptr %res_nodeid.i78 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %res_nodeid.i78, align 4
  %res_master_nodeid.i = getelementptr inbounds %struct.dlm_rsb, ptr %312, i32 0, i32 6
  %315 = ptrtoint ptr %res_master_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %res_master_nodeid.i, align 4
  %res_dir_nodeid.i = getelementptr inbounds %struct.dlm_rsb, ptr %312, i32 0, i32 7
  %317 = ptrtoint ptr %res_dir_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %res_dir_nodeid.i, align 4
  %res_toss_time.i = getelementptr inbounds %struct.dlm_rsb, ptr %312, i32 0, i32 12
  %319 = ptrtoint ptr %res_toss_time.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %res_toss_time.i, align 4
  %res_flags.i79 = getelementptr inbounds %struct.dlm_rsb, ptr %312, i32 0, i32 3
  %321 = ptrtoint ptr %res_flags.i79 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %res_flags.i79, align 4
  %res_length.i80 = getelementptr inbounds %struct.dlm_rsb, ptr %312, i32 0, i32 4
  %323 = ptrtoint ptr %res_length.i80 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %res_length.i80, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, ptr noundef %312, i32 noundef %314, i32 noundef %316, i32 noundef %318, i32 noundef %call.i, i32 noundef %320, i32 noundef %322, i32 noundef %324) #9
  %325 = ptrtoint ptr %res_length.i80 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %res_length.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %cmp55.i = icmp sgt i32 %326, 0
  br i1 %cmp55.i, label %if.end16.for.body.i82_crit_edge, label %if.end16.for.end.i92_crit_edge

if.end16.for.end.i92_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i92

if.end16.for.body.i82_crit_edge:                  ; preds = %if.end16
  br label %for.body.i82

for.body.i82:                                     ; preds = %for.inc.i88.for.body.i82_crit_edge, %if.end16.for.body.i82_crit_edge
  %i.057.i = phi i32 [ %inc.i86, %for.inc.i88.for.body.i82_crit_edge ], [ 0, %if.end16.for.body.i82_crit_edge ]
  %print_name.056.i = phi i32 [ %print_name.1.i85, %for.inc.i88.for.body.i82_crit_edge ], [ 1, %if.end16.for.body.i82_crit_edge ]
  %arrayidx.i81 = getelementptr %struct.dlm_rsb, ptr %312, i32 0, i32 23, i32 %i.057.i
  %327 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx.i81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %328)
  %cmp2.i = icmp sgt i8 %328, -1
  br i1 %cmp2.i, label %lor.lhs.false.i84, label %for.body.i82.if.then.i_crit_edge

for.body.i82.if.then.i_crit_edge:                 ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i84:                                ; preds = %for.body.i82
  %conv.i83 = zext i8 %328 to i32
  %arrayidx7.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i83
  %329 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx7.i, align 1
  %331 = and i8 %330, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %cmp9.not.i = icmp eq i8 %331, 0
  br i1 %cmp9.not.i, label %lor.lhs.false.i84.if.then.i_crit_edge, label %lor.lhs.false.i84.for.inc.i88_crit_edge

lor.lhs.false.i84.for.inc.i88_crit_edge:          ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i88

lor.lhs.false.i84.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i84.if.then.i_crit_edge, %for.body.i82.if.then.i_crit_edge
  br label %for.inc.i88

for.inc.i88:                                      ; preds = %if.then.i, %lor.lhs.false.i84.for.inc.i88_crit_edge
  %print_name.1.i85 = phi i32 [ %print_name.056.i, %lor.lhs.false.i84.for.inc.i88_crit_edge ], [ 0, %if.then.i ]
  %inc.i86 = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, %326
  br i1 %exitcond.not.i87, label %for.inc.i88.for.end.i92_crit_edge, label %for.inc.i88.for.body.i82_crit_edge

for.inc.i88.for.body.i82_crit_edge:               ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i82

for.inc.i88.for.end.i92_crit_edge:                ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i92

for.end.i92:                                      ; preds = %for.inc.i88.for.end.i92_crit_edge, %if.end16.for.end.i92_crit_edge
  %print_name.0.lcssa.i89 = phi i32 [ 1, %if.end16.for.end.i92_crit_edge ], [ %print_name.1.i85, %for.inc.i88.for.end.i92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print_name.0.lcssa.i89)
  %tobool.not.i90 = icmp eq i32 %print_name.0.lcssa.i89, 0
  %cond.i91 = select i1 %tobool.not.i90, ptr @.str.54, ptr @.str.53
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull %cond.i91) #9
  %332 = ptrtoint ptr %res_length.i80 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %res_length.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp1358.i = icmp sgt i32 %333, 0
  br i1 %cmp1358.i, label %for.body15.i.preheader, label %for.end.i92.print_format4.exit_crit_edge

for.end.i92.print_format4.exit_crit_edge:         ; preds = %for.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format4.exit

for.body15.i.preheader:                           ; preds = %for.end.i92
  %.str.55..str.24.i93 = select i1 %tobool.not.i90, ptr @.str.55, ptr @.str.24
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body15.i.preheader
  %i.159.i = phi i32 [ %inc26.i, %for.body15.i.for.body15.i_crit_edge ], [ 0, %for.body15.i.preheader ]
  %arrayidx22.i = getelementptr %struct.dlm_rsb, ptr %312, i32 0, i32 23, i32 %i.159.i
  %334 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %335 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull %.str.55..str.24.i93, i32 noundef %conv23.i) #9
  %inc26.i = add nuw nsw i32 %i.159.i, 1
  %336 = ptrtoint ptr %res_length.i80 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %res_length.i80, align 4
  %cmp13.i = icmp slt i32 %inc26.i, %337
  br i1 %cmp13.i, label %for.body15.i.for.body15.i_crit_edge, label %for.body15.i.print_format4.exit_crit_edge

for.body15.i.print_format4.exit_crit_edge:        ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_format4.exit

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i

print_format4.exit:                               ; preds = %for.body15.i.print_format4.exit_crit_edge, %for.end.i92.print_format4.exit_crit_edge
  tail call void @seq_putc(ptr noundef %seq, i8 noundef zeroext 10) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %print_format4.exit, %print_format3_lock.exit307.i.sw.epilog.sink.split_crit_edge, %for.cond120.i.sw.epilog.sink.split_crit_edge, %print_format3_lock.exit277.i.sw.epilog.sink.split_crit_edge, %print_format3_lock.exit247.i.sw.epilog.sink.split_crit_edge, %print_format3_lock.exit.i.sw.epilog.sink.split_crit_edge, %for.end51.i.sw.epilog.sink.split_crit_edge, %for.end35.i.sw.epilog.sink.split_crit_edge, %if.end9.sw.epilog.sink.split_crit_edge, %for.body36.i.sw.epilog.sink.split_crit_edge, %for.cond31.i.sw.epilog.sink.split_crit_edge, %for.body16.i.sw.epilog.sink.split_crit_edge, %for.body.i42.sw.epilog.sink.split_crit_edge, %if.end146.i.sw.epilog.sink.split_crit_edge, %for.cond133.i.sw.epilog.sink.split_crit_edge, %for.end123.i.sw.epilog.sink.split_crit_edge, %for.body113.i.sw.epilog.sink.split_crit_edge, %for.body91.i.sw.epilog.sink.split_crit_edge, %for.body69.i.sw.epilog.sink.split_crit_edge, %if.end48.i.sw.epilog.sink.split_crit_edge, %if.end27.i.sw.epilog.sink.split_crit_edge
  %res_mutex.i.i77.sink = phi ptr [ %res_mutex.i.i77, %print_format4.exit ], [ %res_mutex.i.i, %if.end27.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i, %if.end48.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i, %for.end123.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %if.end9.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %for.end35.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %for.end51.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i, %for.cond133.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i, %if.end146.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i, %for.body113.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i, %for.body91.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i, %for.body69.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i34, %for.cond31.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i34, %for.body36.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i34, %for.body16.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i34, %for.body.i42.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %for.cond120.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %print_format3_lock.exit307.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %print_format3_lock.exit277.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %print_format3_lock.exit247.i.sw.epilog.sink.split_crit_edge ], [ %res_mutex.i.i49, %print_format3_lock.exit.i.sw.epilog.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %res_mutex.i.i77.sink) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_hold_rsb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_put_rsb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_format1_lock(ptr noundef %s, ptr nocapture noundef readonly %lkb, ptr nocapture noundef readonly %res) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %0 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lkb_id, align 8
  %lkb_grmode = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 12
  %2 = ptrtoint ptr %lkb_grmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lkb_grmode, align 2
  %conv = sext i8 %3 to i32
  %switch.tableidx = add nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 7
  br i1 %4, label %switch.lookup, label %entry.print_lockmode.exit_crit_edge

entry.print_lockmode.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_lockmode.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.print_format1_lock, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %print_lockmode.exit

print_lockmode.exit:                              ; preds = %switch.lookup, %entry.print_lockmode.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.50, %entry.print_lockmode.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %1, ptr noundef nonnull %retval.0.i) #9
  %lkb_status = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 10
  %6 = ptrtoint ptr %lkb_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lkb_status, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %7, label %print_lockmode.exit.if.end_crit_edge [
    i8 3, label %print_lockmode.exit.if.then_crit_edge
    i8 1, label %print_lockmode.exit.if.then_crit_edge53
  ]

print_lockmode.exit.if.then_crit_edge53:          ; preds = %print_lockmode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

print_lockmode.exit.if.then_crit_edge:            ; preds = %print_lockmode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

print_lockmode.exit.if.end_crit_edge:             ; preds = %print_lockmode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %print_lockmode.exit.if.then_crit_edge, %print_lockmode.exit.if.then_crit_edge53
  %lkb_rqmode = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 11
  %9 = ptrtoint ptr %lkb_rqmode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lkb_rqmode, align 1
  %conv7 = sext i8 %10 to i32
  %switch.tableidx50 = add nsw i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx50)
  %11 = icmp ult i32 %switch.tableidx50, 7
  br i1 %11, label %switch.lookup49, label %if.then.print_lockmode.exit48_crit_edge

if.then.print_lockmode.exit48_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %print_lockmode.exit48

switch.lookup49:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep51 = getelementptr inbounds [7 x ptr], ptr @switch.table.print_format1_lock.62, i32 0, i32 %switch.tableidx50
  %12 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load52 = load ptr, ptr %switch.gep51, align 4
  br label %print_lockmode.exit48

print_lockmode.exit48:                            ; preds = %switch.lookup49, %if.then.print_lockmode.exit48_crit_edge
  %retval.0.i47 = phi ptr [ %switch.load52, %switch.lookup49 ], [ @.str.50, %if.then.print_lockmode.exit48_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, ptr noundef nonnull %retval.0.i47) #9
  br label %if.end

if.end:                                           ; preds = %print_lockmode.exit48, %print_lockmode.exit.if.end_crit_edge
  %lkb_nodeid = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 2
  %13 = ptrtoint ptr %lkb_nodeid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lkb_nodeid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then9

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then9:                                         ; preds = %if.end
  %res_nodeid = getelementptr inbounds %struct.dlm_rsb, ptr %res, i32 0, i32 5
  %15 = ptrtoint ptr %res_nodeid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %res_nodeid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp11.not = icmp eq i32 %14, %16
  %lkb_remid15 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 5
  %17 = ptrtoint ptr %lkb_remid15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lkb_remid15, align 4
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, i32 noundef %14, i32 noundef %18) #9
  br label %if.end17

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i32 noundef %18) #9
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then13, %if.end.if.end17_crit_edge
  %lkb_wait_type = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 14
  %19 = ptrtoint ptr %lkb_wait_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %lkb_wait_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  br i1 %tobool18.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %conv21 = sext i8 %20 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %conv21) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_format2_lock(ptr noundef %s, ptr nocapture noundef readonly %lkb, ptr noundef %r) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lkb_flags = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 8
  %0 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lkb_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 38
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %xid3 = getelementptr inbounds %struct.dlm_user_args, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %xid3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %xid3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %xid.0 = phi i64 [ %6, %if.then2 ], [ 0, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %call = tail call i64 @ktime_get() #9
  %lkb_timestamp = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 22
  %7 = ptrtoint ptr %lkb_timestamp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %lkb_timestamp, align 8
  %sub = sub i64 %call, %8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %9 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #9
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %9, i32 0) #13, !srcloc !177
  %asmresult.i.i.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %9, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !178
  %asmresult10.i.i.i = extractvalue { i64, i32 } %11, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %lkb_id = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 4
  %12 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lkb_id, align 8
  %lkb_nodeid = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 2
  %14 = ptrtoint ptr %lkb_nodeid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lkb_nodeid, align 8
  %lkb_remid = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 5
  %16 = ptrtoint ptr %lkb_remid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lkb_remid, align 4
  %lkb_ownpid = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 3
  %18 = ptrtoint ptr %lkb_ownpid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lkb_ownpid, align 4
  %lkb_exflags = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 6
  %20 = ptrtoint ptr %lkb_exflags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lkb_exflags, align 8
  %22 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lkb_flags, align 8
  %lkb_status = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 10
  %24 = ptrtoint ptr %lkb_status to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %lkb_status, align 8
  %conv = sext i8 %25 to i32
  %lkb_grmode = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 12
  %26 = ptrtoint ptr %lkb_grmode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lkb_grmode, align 2
  %conv7 = sext i8 %27 to i32
  %lkb_rqmode = getelementptr inbounds %struct.dlm_lkb, ptr %lkb, i32 0, i32 11
  %28 = ptrtoint ptr %lkb_rqmode to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lkb_rqmode, align 1
  %conv8 = sext i8 %29 to i32
  %res_nodeid = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 5
  %30 = ptrtoint ptr %res_nodeid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %res_nodeid, align 4
  %res_length = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 4
  %32 = ptrtoint ptr %res_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %res_length, align 4
  %res_name = getelementptr inbounds %struct.dlm_rsb, ptr %r, i32 0, i32 23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i64 noundef %xid.0, i32 noundef %21, i32 noundef %23, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8, i64 noundef %cond213.i.i, i32 noundef %31, i32 noundef %33, ptr noundef %res_name) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_write2(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %lkb_nodeid = alloca i32, align 4
  %lkb_status = alloca i32, align 4
  %name = alloca [65 x i8], align 1
  %lkb_flags = alloca i32, align 4
  %buf = alloca [256 x i8], align 1
  %lkb_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkb_nodeid) #9
  %2 = ptrtoint ptr %lkb_nodeid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lkb_nodeid, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkb_status) #9
  %3 = ptrtoint ptr %lkb_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lkb_status, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %name) #9
  %4 = call ptr @memset(ptr %name, i32 0, i32 65)
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkb_flags) #9
  %7 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %lkb_flags, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %8 = call ptr @memset(ptr %buf, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkb_id) #9
  %9 = ptrtoint ptr %lkb_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %lkb_id, align 4, !annotation !179
  %10 = tail call i32 @llvm.umin.i32(i32 %count, i32 255)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %10, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %10, i32 -1226833920) #13, !srcloc !172
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !173

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %10) #9
  %12 = call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !174
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %10) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %10, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %10, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !173

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %10, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.59, ptr noundef nonnull %lkb_id, ptr noundef nonnull %name, ptr noundef nonnull %lkb_flags, ptr noundef nonnull %lkb_nodeid, ptr noundef nonnull %lkb_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 5
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 @strnlen(ptr noundef nonnull %name, i32 noundef 64) #14
  %16 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lkb_id, align 4
  %18 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lkb_flags, align 4
  %20 = ptrtoint ptr %lkb_nodeid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lkb_nodeid, align 4
  %22 = ptrtoint ptr %lkb_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lkb_status, align 4
  %call10 = call i32 @dlm_debug_add_lkb(ptr noundef %6, i32 noundef %17, ptr noundef nonnull %name, i32 noundef %call8, i32 noundef %19, i32 noundef %21, i32 noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %count.call10 = select i1 %tobool11.not, i32 %count, i32 %call10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count.call10, %if.end6 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkb_id) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkb_flags) #9
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkb_status) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkb_nodeid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_open2(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @format2_seq_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_debug_add_lkb(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_open3(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @format3_seq_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @table_open4(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @format4_seq_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waiters_read(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @debug_buf_lock, i32 noundef 0) #9
  %ls_waiters_mutex = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %ls_waiters_mutex, i32 noundef 0) #9
  %2 = call ptr @memset(ptr @debug_buf, i32 0, i32 4096)
  %ls_waiters = getelementptr inbounds %struct.dlm_ls, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %ls_waiters to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn27 = load ptr, ptr %ls_waiters, align 4
  %cmp.not28 = icmp eq ptr %.pn27, %ls_waiters
  br i1 %cmp.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %add = add i32 %call, %pos.029
  %4 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, %ls_waiters
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn27, %entry.for.body_crit_edge ]
  %pos.029 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %lkb.0 = getelementptr i8, ptr %.pn30, i32 -68
  %add.ptr2 = getelementptr i8, ptr @debug_buf, i32 %pos.029
  %sub = sub i32 4096, %pos.029
  %lkb_id = getelementptr i8, ptr %.pn30, i32 -52
  %5 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lkb_id, align 8
  %lkb_wait_type = getelementptr i8, ptr %.pn30, i32 -24
  %7 = ptrtoint ptr %lkb_wait_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lkb_wait_type, align 4
  %conv = sext i8 %8 to i32
  %lkb_nodeid = getelementptr i8, ptr %.pn30, i32 -60
  %9 = ptrtoint ptr %lkb_nodeid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lkb_nodeid, align 8
  %11 = ptrtoint ptr %lkb.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lkb.0, align 8
  %res_name = getelementptr inbounds %struct.dlm_rsb, ptr %12, i32 0, i32 23
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull @.str.60, i32 noundef %6, i32 noundef %conv, i32 noundef %10, ptr noundef %res_name)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub)
  %cmp4.not = icmp ult i32 %call, %sub
  br i1 %cmp4.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pos.029, %for.body.for.end_crit_edge ], [ %add, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ls_waiters_mutex) #9
  %call12 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull @debug_buf, i32 noundef %pos.0.lcssa) #9
  tail call void @mutex_unlock(ptr noundef nonnull @debug_buf_lock) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @waiters_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %mstype = alloca i32, align 4
  %to_nodeid = alloca i32, align 4
  %buf = alloca [128 x i8], align 1
  %lkb_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mstype) #9
  %2 = ptrtoint ptr %mstype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mstype, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %to_nodeid) #9
  %3 = ptrtoint ptr %to_nodeid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %to_nodeid, align 4, !annotation !179
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #9
  %4 = call ptr @memset(ptr %buf, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lkb_id) #9
  %5 = ptrtoint ptr %lkb_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lkb_id, align 4, !annotation !179
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 127)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %6, i32 -1226833920) #13, !srcloc !172
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !173

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #9
  %8 = call i32 @llvm.read_register.i32(metadata !162) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !174
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %6) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !175
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !173

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.61, ptr noundef nonnull %lkb_id, ptr noundef nonnull %mstype, ptr noundef nonnull %to_nodeid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 3
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %lkb_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lkb_id, align 4
  %14 = ptrtoint ptr %mstype to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mstype, align 4
  %16 = ptrtoint ptr %to_nodeid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %to_nodeid, align 4
  %call6 = call i32 @dlm_debug_add_lkb_to_waiters(ptr noundef %1, i32 noundef %13, i32 noundef %15, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %count.call6 = select i1 %tobool7.not, i32 %count, i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ %count.call6, %if.end5 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lkb_id) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %to_nodeid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mstype) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_debug_add_lkb_to_waiters(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/debug_fs.c", i32 868, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/dlm/debug_fs.c", i32 871, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/dlm/debug_fs.c", i32 872, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/dlm/debug_fs.c", i32 873, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/dlm/debug_fs.c", i32 875, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/dlm/debug_fs.c", i32 876, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/dlm/debug_fs.c", i32 901, i32 40}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/dlm/debug_fs.c", i32 912, i32 40}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/dlm/debug_fs.c", i32 923, i32 40}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/dlm/debug_fs.c", i32 932, i32 40}
!20 = !{ptr @dlm_register_debugfs.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/dlm/debug_fs.c", i32 943, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/dlm/debug_fs.c", i32 944, i32 32}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/dlm/debug_fs.c", i32 945, i32 33}
!27 = !{ptr @debug_buf_lock, !28, !"debug_buf_lock", i1 false, i1 false}
!28 = !{!"../fs/dlm/debug_fs.c", i32 24, i32 21}
!29 = !{ptr @dlm_root, !30, !"dlm_root", i1 false, i1 false}
!30 = !{!"../fs/dlm/debug_fs.c", i32 26, i32 23}
!31 = !{ptr @dlm_comms, !32, !"dlm_comms", i1 false, i1 false}
!32 = !{!"../fs/dlm/debug_fs.c", i32 27, i32 23}
!33 = !{ptr @dlm_state_fops, !34, !"dlm_state_fops", i1 false, i1 false}
!34 = !{!"../fs/dlm/debug_fs.c", i32 803, i32 1}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/dlm/debug_fs.c", i32 800, i32 19}
!37 = !{ptr @dlm_flags_fops, !38, !"dlm_flags_fops", i1 false, i1 false}
!38 = !{!"../fs/dlm/debug_fs.c", i32 810, i32 1}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/dlm/debug_fs.c", i32 807, i32 19}
!41 = !{ptr @dlm_send_queue_cnt_fops, !42, !"dlm_send_queue_cnt_fops", i1 false, i1 false}
!42 = !{!"../fs/dlm/debug_fs.c", i32 817, i32 1}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/dlm/debug_fs.c", i32 814, i32 19}
!45 = !{ptr @dlm_version_fops, !46, !"dlm_version_fops", i1 false, i1 false}
!46 = !{!"../fs/dlm/debug_fs.c", i32 824, i32 1}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/dlm/debug_fs.c", i32 821, i32 19}
!49 = !{ptr @dlm_rawmsg_fops, !50, !"dlm_rawmsg_fops", i1 false, i1 false}
!50 = !{!"../fs/dlm/debug_fs.c", i32 856, i32 37}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!53 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!58 = !{ptr @format1_fops, !59, !"format1_fops", i1 false, i1 false}
!59 = !{!"../fs/dlm/debug_fs.c", i32 695, i32 37}
!60 = !{ptr @format1_seq_ops, !61, !"format1_seq_ops", i1 false, i1 false}
!61 = !{!"../fs/dlm/debug_fs.c", i32 577, i32 36}
!62 = !{ptr @format4_seq_ops, !63, !"format4_seq_ops", i1 false, i1 false}
!63 = !{!"../fs/dlm/debug_fs.c", i32 598, i32 36}
!64 = !{ptr @format2_seq_ops, !65, !"format2_seq_ops", i1 false, i1 false}
!65 = !{!"../fs/dlm/debug_fs.c", i32 584, i32 36}
!66 = !{ptr @format3_seq_ops, !67, !"format3_seq_ops", i1 false, i1 false}
!67 = !{!"../fs/dlm/debug_fs.c", i32 591, i32 36}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/dlm/debug_fs.c", i32 392, i32 18}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/dlm/debug_fs.c", i32 399, i32 18}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/dlm/debug_fs.c", i32 406, i32 18}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/dlm/debug_fs.c", i32 81, i32 16}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/dlm/debug_fs.c", i32 85, i32 18}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/dlm/debug_fs.c", i32 91, i32 17}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/dlm/debug_fs.c", i32 94, i32 15}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/dlm/debug_fs.c", i32 96, i32 17}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/dlm/debug_fs.c", i32 99, i32 17}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/dlm/debug_fs.c", i32 105, i32 15}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/dlm/debug_fs.c", i32 108, i32 17}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/dlm/debug_fs.c", i32 109, i32 18}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/dlm/debug_fs.c", i32 113, i32 16}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/dlm/debug_fs.c", i32 123, i32 17}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/dlm/debug_fs.c", i32 129, i32 14}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/dlm/debug_fs.c", i32 136, i32 14}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/dlm/debug_fs.c", i32 143, i32 14}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/dlm/debug_fs.c", i32 153, i32 14}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/dlm/debug_fs.c", i32 155, i32 17}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/dlm/debug_fs.c", i32 158, i32 18}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/dlm/debug_fs.c", i32 58, i32 17}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/dlm/debug_fs.c", i32 62, i32 18}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/dlm/debug_fs.c", i32 65, i32 18}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/dlm/debug_fs.c", i32 33, i32 10}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/dlm/debug_fs.c", i32 35, i32 10}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/dlm/debug_fs.c", i32 37, i32 10}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/dlm/debug_fs.c", i32 39, i32 10}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/dlm/debug_fs.c", i32 41, i32 10}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/dlm/debug_fs.c", i32 43, i32 10}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/dlm/debug_fs.c", i32 45, i32 10}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/dlm/debug_fs.c", i32 47, i32 10}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/dlm/debug_fs.c", i32 184, i32 16}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/dlm/debug_fs.c", i32 265, i32 16}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/dlm/debug_fs.c", i32 282, i32 27}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/dlm/debug_fs.c", i32 282, i32 36}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/dlm/debug_fs.c", i32 288, i32 18}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/dlm/debug_fs.c", i32 297, i32 16}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/dlm/debug_fs.c", i32 238, i32 16}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/dlm/debug_fs.c", i32 341, i32 16}
!146 = !{ptr @format2_fops, !147, !"format2_fops", i1 false, i1 false}
!147 = !{!"../fs/dlm/debug_fs.c", i32 703, i32 37}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/dlm/debug_fs.c", i32 653, i32 18}
!150 = !{ptr @format3_fops, !151, !"format3_fops", i1 false, i1 false}
!151 = !{!"../fs/dlm/debug_fs.c", i32 712, i32 37}
!152 = !{ptr @format4_fops, !153, !"format4_fops", i1 false, i1 false}
!153 = !{!"../fs/dlm/debug_fs.c", i32 720, i32 37}
!154 = !{ptr @waiters_fops, !155, !"waiters_fops", i1 false, i1 false}
!155 = !{!"../fs/dlm/debug_fs.c", i32 781, i32 37}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/dlm/debug_fs.c", i32 743, i32 46}
!158 = !{ptr @debug_buf, !159, !"debug_buf", i1 false, i1 false}
!159 = !{!"../fs/dlm/debug_fs.c", i32 23, i32 13}
!160 = !{ptr @.str.61, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/dlm/debug_fs.c", i32 770, i32 18}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2152784316, i64 2152784341}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 5279871}
!175 = !{i64 5280068}
!176 = !{i64 2152765301}
!177 = !{i64 1088327, i64 1088354, i64 1088376, i64 1088404}
!178 = !{i64 1088735, i64 1088762, i64 1088795, i64 1088816, i64 1088843, i64 1088869}
!179 = !{!"auto-init"}
