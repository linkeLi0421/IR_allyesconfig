; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/miscdev.c_pt.bc'
source_filename = "../fs/ecryptfs/miscdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ecryptfs_msg_ctx = type { i8, i8, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.mutex }
%struct.ecryptfs_message = type { i32, i32, [0 x i8] }
%struct.ecryptfs_daemon = type { i32, i32, ptr, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ecryptfs_num_miscdev_opens = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ecryptfs_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.3, ptr @ecryptfs_miscdev_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@ecryptfs_init_ecryptfs_miscdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013%s: Failed to register miscellaneous device for communications with userspace daemons; rc = [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ecryptfs_init_ecryptfs_miscdev\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ecryptfs/miscdev.c\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_init_ecryptfs_miscdev._entry_ptr = internal global ptr @ecryptfs_init_ecryptfs_miscdev._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecryptfs\00", [23 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @ecryptfs_miscdev_read, ptr @ecryptfs_miscdev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecryptfs_miscdev_poll, ptr null, ptr null, ptr null, i32 0, ptr @ecryptfs_miscdev_open, ptr null, ptr @ecryptfs_miscdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: Attempt to read from zombified daemon\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ecryptfs_miscdev_read\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_read._entry_ptr = internal global ptr @ecryptfs_miscdev_read._entry, section ".printk_index", align 4
@ecryptfs_miscdev_read._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Error writing packet length; rc = [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_read._entry_ptr.8 = internal global ptr @ecryptfs_miscdev_read._entry.6, section ".printk_index", align 4
@ecryptfs_miscdev_read._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014%s: Only given user buffer of size [%zd], but we need [%zd] to read the pending message\0A\00", [37 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_read._entry_ptr.11 = internal global ptr @ecryptfs_miscdev_read._entry.9, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014%s: Acceptable packet size range is [%d-%zu], but amount of data written is [%zu].\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ecryptfs_miscdev_write\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry_ptr = internal global ptr @ecryptfs_miscdev_write._entry, section ".printk_index", align 4
@ecryptfs_miscdev_write._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: Error while inspecting packet size\0A\00", [54 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry_ptr.19 = internal global ptr @ecryptfs_miscdev_write._entry.17, section ".printk_index", align 4
@ecryptfs_miscdev_write._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Error parsing packet length; rc = [%zd]\0A\00", [49 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry_ptr.22 = internal global ptr @ecryptfs_miscdev_write._entry.20, section ".printk_index", align 4
@ecryptfs_miscdev_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: Invalid packet size [%zu]\0A\00", [63 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry_ptr.25 = internal global ptr @ecryptfs_miscdev_write._entry.23, section ".printk_index", align 4
@ecryptfs_miscdev_write._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: memdup_user returned error [%ld]\0A\00", [56 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry_ptr.28 = internal global ptr @ecryptfs_miscdev_write._entry.26, section ".printk_index", align 4
@ecryptfs_miscdev_write._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\014%s: Minimum acceptable packet size is [%zd], but amount of data written is only [%zd]. Discarding response packet.\0A\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry_ptr.31 = internal global ptr @ecryptfs_miscdev_write._entry.29, section ".printk_index", align 4
@ecryptfs_miscdev_write._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014%s: Failed to deliver miscdev response to requesting operation; rc = [%zd]\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_write._entry_ptr.34 = internal global ptr @ecryptfs_miscdev_write._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: Dropping miscdev message of unrecognized type [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014%s: (sizeof(*msg) + msg->data_len) = [%zd]; data_size = [%zd]. Invalid packet.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ecryptfs_miscdev_response\00", [38 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_response._entry_ptr = internal global ptr @ecryptfs_miscdev_response._entry, section ".printk_index", align 4
@ecryptfs_miscdev_response._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Error processing response message; rc = [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_response._entry_ptr.40 = internal global ptr @ecryptfs_miscdev_response._entry.38, section ".printk_index", align 4
@ecryptfs_miscdev_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: Attempt to poll on zombified daemon\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ecryptfs_miscdev_poll\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_poll._entry_ptr = internal global ptr @ecryptfs_miscdev_poll._entry, section ".printk_index", align 4
@ecryptfs_daemon_hash_mux = external dso_local global %struct.mutex, align 4
@ecryptfs_miscdev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Error attempting to spawn daemon; rc = [%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ecryptfs_miscdev_open\00", [42 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_open._entry_ptr = internal global ptr @ecryptfs_miscdev_open._entry, section ".printk_index", align 4
@ecryptfs_miscdev_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\012%s: Fatal error whilst attempting to shut down daemon; rc = [%d]. Please report this bug.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ecryptfs_miscdev_release\00", [39 x i8] zeroinitializer }, align 32
@ecryptfs_miscdev_release._entry_ptr = internal global ptr @ecryptfs_miscdev_release._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 100, i64 101, i64 103]
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"ecryptfs_num_miscdev_opens\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 19, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"ecryptfs_miscdev\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 456, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 479, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 458, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"ecryptfs_miscdev_fops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 446, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 224, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 265, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 277, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 230, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 214, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 174, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 369, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 377, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 385, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 392, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 400, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 408, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 423, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 433, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 329, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 337, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 36, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 77, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [25 x i8] c"../fs/ecryptfs/miscdev.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 122, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @ecryptfs_init_ecryptfs_miscdev._entry, ptr @ecryptfs_init_ecryptfs_miscdev._entry_ptr, ptr @ecryptfs_miscdev_open._entry, ptr @ecryptfs_miscdev_open._entry_ptr, ptr @ecryptfs_miscdev_poll._entry, ptr @ecryptfs_miscdev_poll._entry_ptr, ptr @ecryptfs_miscdev_read._entry, ptr @ecryptfs_miscdev_read._entry.6, ptr @ecryptfs_miscdev_read._entry.9, ptr @ecryptfs_miscdev_read._entry_ptr, ptr @ecryptfs_miscdev_read._entry_ptr.11, ptr @ecryptfs_miscdev_read._entry_ptr.8, ptr @ecryptfs_miscdev_release._entry, ptr @ecryptfs_miscdev_release._entry_ptr, ptr @ecryptfs_miscdev_response._entry, ptr @ecryptfs_miscdev_response._entry.38, ptr @ecryptfs_miscdev_response._entry_ptr, ptr @ecryptfs_miscdev_response._entry_ptr.40, ptr @ecryptfs_miscdev_write._entry, ptr @ecryptfs_miscdev_write._entry.17, ptr @ecryptfs_miscdev_write._entry.20, ptr @ecryptfs_miscdev_write._entry.23, ptr @ecryptfs_miscdev_write._entry.26, ptr @ecryptfs_miscdev_write._entry.29, ptr @ecryptfs_miscdev_write._entry.32, ptr @ecryptfs_miscdev_write._entry_ptr, ptr @ecryptfs_miscdev_write._entry_ptr.19, ptr @ecryptfs_miscdev_write._entry_ptr.22, ptr @ecryptfs_miscdev_write._entry_ptr.25, ptr @ecryptfs_miscdev_write._entry_ptr.28, ptr @ecryptfs_miscdev_write._entry_ptr.31, ptr @ecryptfs_miscdev_write._entry_ptr.34, ptr @ecryptfs_num_miscdev_opens, ptr @ecryptfs_miscdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ecryptfs_miscdev_fops, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_num_miscdev_opens to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_init_ecryptfs_miscdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_read._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_read._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_write._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_write._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_write._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_write._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_write._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_response._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_miscdev_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_send_miscdev(ptr nocapture noundef readonly %data, i32 noundef %data_size, ptr noundef %msg_ctx, i8 noundef zeroext %msg_type, i16 noundef zeroext %msg_flags, ptr noundef %daemon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %data_size, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mux = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %msg1 = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 5
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i, ptr %msg1, align 4
  %index = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 2
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %3 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call9.i, align 128
  %data_len = getelementptr inbounds %struct.ecryptfs_message, ptr %call9.i, i32 0, i32 1
  %4 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %data_size, ptr %data_len, align 4
  %type = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %msg_type, ptr %type, align 1
  %6 = load ptr, ptr %msg1, align 4
  %data6 = getelementptr inbounds %struct.ecryptfs_message, ptr %6, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %data6, ptr %data, i32 %data_size)
  %msg_size = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 4
  %8 = ptrtoint ptr %msg_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %msg_size, align 4
  %daemon_out_list = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 8
  %msg_ctx_out_queue = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %daemon_out_list, ptr noundef %10, ptr noundef %msg_ctx_out_queue) #8
  br i1 %call.i.i, label %if.end.i.i28, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i28:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %daemon_out_list, ptr %prev.i, align 4
  %12 = ptrtoint ptr %daemon_out_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg_ctx_out_queue, ptr %daemon_out_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ecryptfs_msg_ctx, ptr %msg_ctx, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %daemon_out_list, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i28, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mux) #8
  %mux9 = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mux9, i32 noundef 0) #8
  %num_queued_msg_ctx = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 1
  %15 = ptrtoint ptr %num_queued_msg_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_queued_msg_ctx, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %num_queued_msg_ctx, align 4
  %wait = getelementptr inbounds %struct.ecryptfs_daemon, ptr %daemon, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %mux9) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_init_ecryptfs_miscdev() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ecryptfs_num_miscdev_opens, i32 noundef 4) #8
  store volatile i32 0, ptr @ecryptfs_num_miscdev_opens, align 4
  %call = tail call i32 @misc_register(ptr noundef nonnull @ecryptfs_miscdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecryptfs_destroy_ecryptfs_miscdev() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ecryptfs_num_miscdev_opens, i32 noundef 4) #8
  %0 = load volatile i32, ptr @ecryptfs_num_miscdev_opens, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !99

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/miscdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #8, !srcloc !100
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @misc_deregister(ptr noundef nonnull @ecryptfs_miscdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_miscdev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %packet_length_size = alloca i32, align 4
  %packet_length = alloca [2 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet_length_size) #8
  %2 = ptrtoint ptr %packet_length_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %packet_length_size, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %packet_length) #8
  %3 = ptrtoint ptr %packet_length to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %packet_length, align 1, !annotation !101
  %4 = getelementptr inbounds [2 x i8], ptr %packet_length, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !101
  %mux = getelementptr inbounds %struct.ecryptfs_daemon, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12
  br label %out_unlock_daemon

if.end:                                           ; preds = %entry
  %and2 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_unlock_daemon_crit_edge

if.end.out_unlock_daemon_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_daemon

if.end5:                                          ; preds = %if.end
  %or = or i32 %7, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %1, align 4
  %msg_ctx_out_queue = getelementptr inbounds %struct.ecryptfs_daemon, ptr %1, i32 0, i32 4
  %wait = getelementptr inbounds %struct.ecryptfs_daemon, ptr %1, i32 0, i32 5
  br label %check_list

check_list:                                       ; preds = %if.end43.check_list_crit_edge, %if.end5
  %9 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %msg_ctx_out_queue, align 4
  %cmp.i.not = icmp eq ptr %10, %msg_ctx_out_queue
  br i1 %cmp.i.not, label %if.then9, label %check_list.if.end38_crit_edge

check_list.if.end38_crit_edge:                    ; preds = %check_list
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then9:                                         ; preds = %check_list
  call void @mutex_unlock(ptr noundef %mux) #8
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 238) #8
  %11 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %msg_ctx_out_queue, align 4
  %cmp.i227.not = icmp eq ptr %12, %msg_ctx_out_queue
  br i1 %cmp.i227.not, label %if.then20, label %if.then9.if.end38.sink.split_crit_edge

if.then9.if.end38.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split

if.then20:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call22253 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %14 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %msg_ctx_out_queue, align 4
  %cmp.i229.not254 = icmp eq ptr %15, %msg_ctx_out_queue
  br i1 %cmp.i229.not254, label %if.then20.if.end27_crit_edge, label %if.then20.if.end33.thread244_crit_edge

if.then20.if.end33.thread244_crit_edge:           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread244

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  br label %if.end27

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %if.then20.if.end27_crit_edge
  %call22255 = phi i32 [ %call22, %cleanup.if.end27_crit_edge ], [ %call22253, %if.then20.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22255)
  %tobool28.not = icmp eq i32 %call22255, 0
  br i1 %tobool28.not, label %cleanup, label %if.end33

cleanup:                                          ; preds = %if.end27
  call void @schedule() #8
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %16 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %msg_ctx_out_queue, align 4
  %cmp.i229.not = icmp eq ptr %17, %msg_ctx_out_queue
  br i1 %cmp.i229.not, label %cleanup.if.end27_crit_edge, label %cleanup.if.end33.thread244_crit_edge

cleanup.if.end33.thread244_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.thread244

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end33.thread244:                               ; preds = %cleanup.if.end33.thread244_crit_edge, %if.then20.if.end33.thread244_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end38.sink.split

if.end33:                                         ; preds = %if.end27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22255)
  %cmp = icmp slt i32 %call22255, 0
  br i1 %cmp, label %if.end33.out_unlock_daemon_crit_edge, label %if.end33.if.end38_crit_edge

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end33.out_unlock_daemon_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_daemon

if.end38.sink.split:                              ; preds = %if.end33.thread244, %if.then9.if.end38.sink.split_crit_edge
  call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.end33.if.end38_crit_edge, %check_list.if.end38_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %and40 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.out_unlock_daemon_crit_edge

if.end38.out_unlock_daemon_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_daemon

if.end43:                                         ; preds = %if.end38
  %20 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %msg_ctx_out_queue, align 4
  %cmp.i231.not = icmp eq ptr %21, %msg_ctx_out_queue
  br i1 %cmp.i231.not, label %if.end43.check_list_crit_edge, label %if.end48

if.end43.check_list_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_list

if.end48:                                         ; preds = %if.end43
  %add.ptr = getelementptr i8, ptr %21, i32 -32
  %tobool52.not = icmp eq ptr %add.ptr, null
  br i1 %tobool52.not, label %do.body57, label %do.end65, !prof !102

do.body57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/miscdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

do.end65:                                         ; preds = %if.end48
  %mux66 = getelementptr i8, ptr %21, i32 8
  call void @mutex_lock_nested(ptr noundef %mux66, i32 noundef 0) #8
  %msg = getelementptr i8, ptr %21, i32 -16
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %msg, align 4
  %tobool67.not = icmp eq ptr %23, null
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %do.end65
  %msg_size = getelementptr i8, ptr %21, i32 -20
  %24 = ptrtoint ptr %msg_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_size, align 4
  %call69 = call i32 @ecryptfs_write_packet_length(ptr noundef nonnull %packet_length, i32 noundef %25, ptr noundef nonnull %packet_length_size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then68.if.end79_crit_edge, label %if.then71

if.then68.if.end79_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 0) #12
  br label %out_unlock_msg_ctx

if.else:                                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %packet_length_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %packet_length_size, align 4
  %msg_size78 = getelementptr i8, ptr %21, i32 -20
  %27 = ptrtoint ptr %msg_size78 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %msg_size78, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then68.if.end79_crit_edge
  %28 = ptrtoint ptr %packet_length_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %packet_length_size, align 4
  %add = add i32 %29, 5
  %msg_size80 = getelementptr i8, ptr %21, i32 -20
  %30 = ptrtoint ptr %msg_size80 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_size80, align 4
  %add81 = add i32 %add, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add81, i32 %count)
  %cmp82 = icmp ugt i32 %add81, %count
  br i1 %cmp82, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %count, i32 noundef %add81) #12
  br label %out_unlock_msg_ctx

if.end89:                                         ; preds = %if.end79
  %type = getelementptr i8, ptr %21, i32 -31
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type, align 1
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 283) #8
  %34 = call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !104
  %and.i = and i32 %36, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %37 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf, i8 %33, i32 -1226833921) #8, !srcloc !107
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #8, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool96.not = icmp eq i32 %37, 0
  br i1 %tobool96.not, label %if.end98, label %if.end89.out_unlock_msg_ctx_crit_edge

if.end89.out_unlock_msg_ctx_crit_edge:            ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_msg_ctx

if.end98:                                         ; preds = %if.end89
  %arrayidx = getelementptr i8, ptr %buf, i32 1
  %counter = getelementptr i8, ptr %21, i32 -24
  %38 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %counter, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 286) #8
  %40 = call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i200 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i200 to ptr
  %cpu_domain.i.i201 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i201) #6, !srcloc !104
  %and.i202 = and i32 %42, -13
  %or.i203 = or i32 %and.i202, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i203) #8, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %43 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arrayidx, i32 %39, i32 -1226833921) #8, !srcloc !108
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #8, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool114.not = icmp eq i32 %43, 0
  br i1 %tobool114.not, label %if.end116, label %if.end98.out_unlock_msg_ctx_crit_edge

if.end98.out_unlock_msg_ctx_crit_edge:            ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_msg_ctx

if.end116:                                        ; preds = %if.end98
  %44 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %msg, align 4
  %tobool118.not = icmp eq ptr %45, null
  br i1 %tobool118.not, label %if.end116.if.end136_crit_edge, label %if.then119

if.end116.if.end136_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then119:                                       ; preds = %if.end116
  %arrayidx120 = getelementptr i8, ptr %buf, i32 5
  %46 = ptrtoint ptr %packet_length_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %packet_length_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp1.i.i = icmp ugt i32 %47, 2
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !102

if.then3.i.i:                                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef %47) #8
  br label %out_unlock_msg_ctx

if.then.i.i.i:                                    ; preds = %if.then119
  call void @__check_object_size(ptr noundef nonnull %packet_length, i32 noundef %47, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %48 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx120, i32 %47, i32 -1226833920) #13, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %packet_length, i32 noundef %47) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arrayidx120, ptr noundef nonnull %packet_length, i32 noundef %47) #8
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %47, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %47, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool123.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool123.not, label %if.end125, label %copy_to_user.exit.out_unlock_msg_ctx_crit_edge

copy_to_user.exit.out_unlock_msg_ctx_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_msg_ctx

if.end125:                                        ; preds = %copy_to_user.exit
  %49 = ptrtoint ptr %packet_length_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %packet_length_size, align 4
  %add126 = add i32 %50, 5
  %arrayidx127 = getelementptr i8, ptr %buf, i32 %add126
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %msg, align 4
  %53 = ptrtoint ptr %msg_size80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_size80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp9.i.i210 = icmp slt i32 %54, 0
  br i1 %cmp9.i.i210, label %land.rhs16.i.i213, label %if.then.i.i.i216

land.rhs16.i.i213:                                ; preds = %if.end125
  %.b71.i.i212 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i212, label %land.rhs16.i.i213.out_unlock_msg_ctx_crit_edge, label %if.then27.i.i214, !prof !99

land.rhs16.i.i213.out_unlock_msg_ctx_crit_edge:   ; preds = %land.rhs16.i.i213
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_msg_ctx

if.then27.i.i214:                                 ; preds = %land.rhs16.i.i213
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %out_unlock_msg_ctx

if.then.i.i.i216:                                 ; preds = %if.end125
  call void @__check_object_size(ptr noundef %52, i32 noundef %54, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #8
  %call.i.i217 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i217, label %if.then.i.i.i216.copy_to_user.exit226_crit_edge, label %if.end.i.i221

if.then.i.i.i216.copy_to_user.exit226_crit_edge:  ; preds = %if.then.i.i.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit226

if.end.i.i221:                                    ; preds = %if.then.i.i.i216
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx127, i32 %54, i32 -1226833920) #13, !srcloc !109
  %asmresult.i.i219 = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i219)
  %cmp.i6.i220 = icmp eq i32 %asmresult.i.i219, 0
  br i1 %cmp.i6.i220, label %if.then2.i.i224, label %if.end.i.i221.copy_to_user.exit226_crit_edge

if.end.i.i221.copy_to_user.exit226_crit_edge:     ; preds = %if.end.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit226

if.then2.i.i224:                                  ; preds = %if.end.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i222 = call zeroext i1 @__kasan_check_read(ptr noundef %52, i32 noundef %54) #8
  %call.i12.i.i223 = call i32 @arm_copy_to_user(ptr noundef %arrayidx127, ptr noundef %52, i32 noundef %54) #8
  br label %copy_to_user.exit226

copy_to_user.exit226:                             ; preds = %if.then2.i.i224, %if.end.i.i221.copy_to_user.exit226_crit_edge, %if.then.i.i.i216.copy_to_user.exit226_crit_edge
  %n.addr.0.i225 = phi i32 [ %54, %if.then.i.i.i216.copy_to_user.exit226_crit_edge ], [ %call.i12.i.i223, %if.then2.i.i224 ], [ %54, %if.end.i.i221.copy_to_user.exit226_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i225)
  %tobool131.not = icmp eq i32 %n.addr.0.i225, 0
  br i1 %tobool131.not, label %if.end133, label %copy_to_user.exit226.out_unlock_msg_ctx_crit_edge

copy_to_user.exit226.out_unlock_msg_ctx_crit_edge: ; preds = %copy_to_user.exit226
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_msg_ctx

if.end133:                                        ; preds = %copy_to_user.exit226
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %msg_size80 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_size80, align 4
  %add135 = add i32 %57, %add126
  br label %if.end136

if.end136:                                        ; preds = %if.end133, %if.end116.if.end136_crit_edge
  %i.0 = phi i32 [ %add135, %if.end133 ], [ 5, %if.end116.if.end136_crit_edge ]
  %call.i.i233 = call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #8
  br i1 %call.i.i233, label %if.end.i.i234, label %if.end136.list_del.exit_crit_edge

if.end136.list_del.exit_crit_edge:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i234:                                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i, align 4
  %60 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i234, %if.end136.list_del.exit_crit_edge
  %64 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %66 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %msg, align 4
  call void @kfree(ptr noundef %67) #8
  %68 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %msg, align 4
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %70)
  %cmp140.not = icmp eq i8 %70, 102
  br i1 %cmp140.not, label %list_del.exit.out_unlock_msg_ctx_crit_edge, label %if.then142

list_del.exit.out_unlock_msg_ctx_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_msg_ctx

if.then142:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @ecryptfs_msg_ctx_alloc_to_free(ptr noundef nonnull %add.ptr) #8
  br label %out_unlock_msg_ctx

out_unlock_msg_ctx:                               ; preds = %if.then142, %list_del.exit.out_unlock_msg_ctx_crit_edge, %copy_to_user.exit226.out_unlock_msg_ctx_crit_edge, %if.then27.i.i214, %land.rhs16.i.i213.out_unlock_msg_ctx_crit_edge, %copy_to_user.exit.out_unlock_msg_ctx_crit_edge, %if.then3.i.i, %if.end98.out_unlock_msg_ctx_crit_edge, %if.end89.out_unlock_msg_ctx_crit_edge, %if.then83, %if.then71
  %rc.0 = phi i32 [ 0, %if.then71 ], [ 0, %if.then83 ], [ -14, %if.end89.out_unlock_msg_ctx_crit_edge ], [ -14, %if.end98.out_unlock_msg_ctx_crit_edge ], [ -14, %copy_to_user.exit.out_unlock_msg_ctx_crit_edge ], [ -14, %copy_to_user.exit226.out_unlock_msg_ctx_crit_edge ], [ %i.0, %if.then142 ], [ %i.0, %list_del.exit.out_unlock_msg_ctx_crit_edge ], [ -14, %if.then3.i.i ], [ -14, %if.then27.i.i214 ], [ -14, %land.rhs16.i.i213.out_unlock_msg_ctx_crit_edge ]
  call void @mutex_unlock(ptr noundef %mux66) #8
  br label %out_unlock_daemon

out_unlock_daemon:                                ; preds = %out_unlock_msg_ctx, %if.end38.out_unlock_daemon_crit_edge, %if.end33.out_unlock_daemon_crit_edge, %if.end.out_unlock_daemon_crit_edge, %if.then
  %rc.1 = phi i32 [ 0, %if.then ], [ %rc.0, %out_unlock_msg_ctx ], [ 0, %if.end.out_unlock_daemon_crit_edge ], [ 0, %if.end33.out_unlock_daemon_crit_edge ], [ 0, %if.end38.out_unlock_daemon_crit_edge ]
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %1, align 4
  %and146 = and i32 %72, -2
  store i32 %and146, ptr %1, align 4
  call void @mutex_unlock(ptr noundef %mux) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %packet_length) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet_length_size) #8
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_miscdev_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %packet_size = alloca i32, align 4
  %packet_size_length = alloca i32, align 4
  %packet_size_peek = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet_size) #8
  %0 = ptrtoint ptr %packet_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %packet_size, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packet_size_length) #8
  %1 = ptrtoint ptr %packet_size_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %packet_size_length, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %packet_size_peek) #8
  %2 = ptrtoint ptr %packet_size_peek to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %packet_size_peek, align 1, !annotation !101
  %3 = getelementptr inbounds [2 x i8], ptr %packet_size_peek, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !101
  %5 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %count, label %if.else3 [
    i32 0, label %entry.cleanup_crit_edge
    i32 5, label %entry.memdup_crit_edge
  ]

entry.memdup_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %memdup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else3:                                         ; preds = %entry
  %6 = add i32 %count, -532
  call void @__sanitizer_cov_trace_const_cmp4(i32 -526, i32 %6)
  %7 = icmp ult i32 %6, -526
  br i1 %7, label %do.end, label %if.end8

do.end:                                           ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 6, i32 noundef 531, i32 noundef %count) #12
  br label %cleanup

if.end8:                                          ; preds = %if.else3
  %arrayidx = getelementptr i8, ptr %buf, i32 5
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.end8.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.if.then11.i.i_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 2, i32 -1226833920) #13, !srcloc !110
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !99

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %packet_size_peek, i32 noundef 2) #8
  %9 = call i32 @llvm.read_register.i32(metadata !89) #8
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !104
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %packet_size_peek, ptr noundef %arrayidx, i32 noundef 2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #8, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !99

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 2, %if.end8.if.then11.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %packet_size_peek, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end16:                                         ; preds = %if.end.i.i
  %call18 = call i32 @ecryptfs_parse_packet_length(ptr noundef nonnull %packet_size_peek, ptr noundef nonnull %packet_size, ptr noundef nonnull %packet_size_length) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef %call18) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %packet_size_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %packet_size_length, align 4
  %add = add i32 %14, 5
  %15 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %packet_size, align 4
  %add27 = add i32 %add, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %count)
  %cmp28.not = icmp eq i32 %add27, %count
  br i1 %cmp28.not, label %if.end26.memdup_crit_edge, label %do.end32

if.end26.memdup_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %memdup

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, i32 noundef %16) #12
  br label %cleanup

memdup:                                           ; preds = %if.end26.memdup_crit_edge, %entry.memdup_crit_edge
  %call36 = call ptr @memdup_user(ptr noundef %buf, i32 noundef %count) #8
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end41, label %if.end46

do.end41:                                         ; preds = %memdup
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call36 to i32
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.16, i32 noundef %17) #12
  br label %cleanup

if.end46:                                         ; preds = %memdup
  %18 = ptrtoint ptr %call36 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call36, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %19, label %sw.default [
    i8 103, label %sw.bb
    i8 100, label %if.end46.out_free_crit_edge
    i8 101, label %if.end46.out_free_crit_edge105
  ]

if.end46.out_free_crit_edge105:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end46.out_free_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

sw.bb:                                            ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %count)
  %cmp48 = icmp ult i32 %count, 14
  br i1 %cmp48, label %do.end53, label %if.end56

do.end53:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.16, i32 noundef 14, i32 noundef %count) #12
  br label %out_free

if.end56:                                         ; preds = %sw.bb
  %21 = ptrtoint ptr %packet_size_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %packet_size_length, align 4
  %add58 = add i32 %22, 5
  %arrayidx59 = getelementptr i8, ptr %call36, i32 %add58
  %23 = ptrtoint ptr %packet_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %packet_size, align 4
  %data_len.i = getelementptr inbounds %struct.ecryptfs_message, ptr %arrayidx59, i32 0, i32 1
  %25 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i, align 4
  %add.i = add i32 %26, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp.not.i = icmp eq i32 %add.i, %24
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %add.i, i32 noundef %24) #12
  br label %do.end65

if.end.i:                                         ; preds = %if.end56
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 4
  %arrayidx57 = getelementptr i8, ptr %call36, i32 1
  %29 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %counter_nbo.0.copyload = load i32, ptr %arrayidx57, align 1
  %call3.i = call i32 @ecryptfs_process_response(ptr noundef %28, ptr noundef %arrayidx59, i32 noundef %counter_nbo.0.copyload) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i.out_free_crit_edge, label %do.end7.i

if.end.i.out_free_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %call3.i) #12
  br label %do.end65

do.end65:                                         ; preds = %do.end7.i, %do.end.i
  %rc.0.i.ph = phi i32 [ %call3.i, %do.end7.i ], [ -22, %do.end.i ]
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.16, i32 noundef %rc.0.i.ph) #12
  br label %out_free

sw.default:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %19 to i32
  call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.16, i32 noundef %conv) #8
  br label %out_free

out_free:                                         ; preds = %sw.default, %do.end65, %if.end.i.out_free_crit_edge, %do.end53, %if.end46.out_free_crit_edge, %if.end46.out_free_crit_edge105
  %rc.0 = phi i32 [ -22, %sw.default ], [ -22, %do.end53 ], [ %rc.0.i.ph, %do.end65 ], [ %count, %if.end46.out_free_crit_edge ], [ %count, %if.end46.out_free_crit_edge105 ], [ %count, %if.end.i.out_free_crit_edge ]
  call void @kfree(ptr noundef %call36) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end41, %do.end32, %do.end23, %if.then11.i.i, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %do.end41 ], [ %rc.0, %out_free ], [ -22, %do.end ], [ -14, %if.then11.i.i ], [ %call18, %do.end23 ], [ -22, %do.end32 ], [ %count, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %packet_size_peek) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet_size_length) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packet_size) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_miscdev_poll(ptr noundef %file, ptr noundef %pt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mux = getelementptr inbounds %struct.ecryptfs_daemon, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #12
  br label %out_unlock_daemon

if.end:                                           ; preds = %entry
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end10, label %if.end.out_unlock_daemon_crit_edge

if.end.out_unlock_daemon_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_daemon

if.end10:                                         ; preds = %if.end
  %or = or i32 %3, 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %mux) #8
  %wait = getelementptr inbounds %struct.ecryptfs_daemon, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %pt, null
  br i1 %tobool.not.i, label %if.end10.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end10.poll_wait.exit_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end10
  %7 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pt, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  %tobool3.not.i = icmp eq ptr %wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %file, ptr noundef nonnull %wait, ptr noundef nonnull %pt) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end10.poll_wait.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %msg_ctx_out_queue = getelementptr inbounds %struct.ecryptfs_daemon, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %msg_ctx_out_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %msg_ctx_out_queue, align 4
  %cmp.i.not = icmp eq ptr %10, %msg_ctx_out_queue
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  br label %out_unlock_daemon

out_unlock_daemon:                                ; preds = %poll_wait.exit, %if.end.out_unlock_daemon_crit_edge, %do.end
  %mask.0 = phi i32 [ 0, %do.end ], [ 0, %if.end.out_unlock_daemon_crit_edge ], [ %spec.select, %poll_wait.exit ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %and20 = and i32 %12, -3
  store i32 %and20, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %mux) #8
  ret i32 %mask.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_miscdev_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  %daemon = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %daemon) #8
  %0 = ptrtoint ptr %daemon to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %daemon, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_daemon_hash_mux, i32 noundef 0) #8
  %call = call i32 @ecryptfs_find_daemon_by_euid(ptr noundef nonnull %daemon) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_unlock_daemon_list_crit_edge, label %if.end

entry.out_unlock_daemon_list_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_daemon_list

if.end:                                           ; preds = %entry
  %call1 = call i32 @ecryptfs_spawn_daemon(ptr noundef nonnull %daemon, ptr noundef %file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call1) #12
  br label %out_unlock_daemon_list

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %daemon to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %daemon, align 4
  %mux = getelementptr inbounds %struct.ecryptfs_daemon, ptr %2, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %3 = ptrtoint ptr %daemon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %daemon, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.out_unlock_daemon_crit_edge

if.end5.out_unlock_daemon_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_daemon

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %6, 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %4, align 4
  %8 = ptrtoint ptr %daemon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %daemon, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %private_data, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ecryptfs_num_miscdev_opens, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @ecryptfs_num_miscdev_opens, i32 1, i32 3, i32 1) #8
  %11 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ecryptfs_num_miscdev_opens, ptr nonnull @ecryptfs_num_miscdev_opens, i32 1, ptr nonnull elementtype(i32) @ecryptfs_num_miscdev_opens) #8, !srcloc !111
  br label %out_unlock_daemon

out_unlock_daemon:                                ; preds = %if.end8, %if.end5.out_unlock_daemon_crit_edge
  %rc.0 = phi i32 [ 0, %if.end8 ], [ -16, %if.end5.out_unlock_daemon_crit_edge ]
  %12 = ptrtoint ptr %daemon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %daemon, align 4
  %mux10 = getelementptr inbounds %struct.ecryptfs_daemon, ptr %13, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %mux10) #8
  br label %out_unlock_daemon_list

out_unlock_daemon_list:                           ; preds = %out_unlock_daemon, %do.end, %entry.out_unlock_daemon_list_crit_edge
  %rc.1 = phi i32 [ %call1, %do.end ], [ %rc.0, %out_unlock_daemon ], [ -22, %entry.out_unlock_daemon_list_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ecryptfs_daemon_hash_mux) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %daemon) #8
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_miscdev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mux = getelementptr inbounds %struct.ecryptfs_daemon, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mux, i32 noundef 0) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !102

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/miscdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !112
  unreachable

do.end9:                                          ; preds = %entry
  %and11 = and i32 %3, -9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and11, ptr %1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ecryptfs_num_miscdev_opens, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @ecryptfs_num_miscdev_opens, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ecryptfs_num_miscdev_opens, ptr nonnull @ecryptfs_num_miscdev_opens, i32 1, ptr nonnull elementtype(i32) @ecryptfs_num_miscdev_opens) #8, !srcloc !113
  tail call void @mutex_unlock(ptr noundef %mux) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @ecryptfs_daemon_hash_mux, i32 noundef 0) #8
  %call = tail call i32 @ecryptfs_exorcise_daemon(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef nonnull @ecryptfs_daemon_hash_mux) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end25, label %do.end17

do.end17:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %call) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/miscdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !114
  unreachable

if.end25:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_packet_length(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_msg_ctx_alloc_to_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_parse_packet_length(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ecryptfs_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_process_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_find_daemon_by_euid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_spawn_daemon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_exorcise_daemon(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/miscdev.c", i32 479, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ecryptfs_init_ecryptfs_miscdev._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ecryptfs_init_ecryptfs_miscdev._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @ecryptfs_num_miscdev_opens, !7, !"ecryptfs_num_miscdev_opens", i1 false, i1 false}
!7 = !{!"../fs/ecryptfs/miscdev.c", i32 19, i32 17}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ecryptfs/miscdev.c", i32 458, i32 11}
!10 = !{ptr @ecryptfs_miscdev, !11, !"ecryptfs_miscdev", i1 false, i1 false}
!11 = !{!"../fs/ecryptfs/miscdev.c", i32 456, i32 26}
!12 = !{ptr @ecryptfs_miscdev_fops, !13, !"ecryptfs_miscdev_fops", i1 false, i1 false}
!13 = !{!"../fs/ecryptfs/miscdev.c", i32 446, i32 37}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ecryptfs/miscdev.c", i32 224, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ecryptfs_miscdev_read._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @ecryptfs_miscdev_read._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ecryptfs/miscdev.c", i32 265, i32 4}
!21 = !{ptr @ecryptfs_miscdev_read._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ecryptfs_miscdev_read._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ecryptfs/miscdev.c", i32 277, i32 3}
!25 = !{ptr @ecryptfs_miscdev_read._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ecryptfs_miscdev_read._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ecryptfs/miscdev.c", i32 369, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ecryptfs_miscdev_write._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ecryptfs_miscdev_write._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ecryptfs/miscdev.c", i32 377, i32 3}
!41 = !{ptr @ecryptfs_miscdev_write._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ecryptfs_miscdev_write._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ecryptfs/miscdev.c", i32 385, i32 3}
!45 = !{ptr @ecryptfs_miscdev_write._entry.20, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ecryptfs_miscdev_write._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ecryptfs/miscdev.c", i32 392, i32 3}
!49 = !{ptr @ecryptfs_miscdev_write._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ecryptfs_miscdev_write._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ecryptfs/miscdev.c", i32 400, i32 3}
!53 = !{ptr @ecryptfs_miscdev_write._entry.26, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ecryptfs_miscdev_write._entry_ptr.28, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ecryptfs/miscdev.c", i32 408, i32 4}
!57 = !{ptr @ecryptfs_miscdev_write._entry.29, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ecryptfs_miscdev_write._entry_ptr.31, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ecryptfs/miscdev.c", i32 423, i32 4}
!61 = !{ptr @ecryptfs_miscdev_write._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ecryptfs_miscdev_write._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ecryptfs/miscdev.c", i32 433, i32 3}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ecryptfs/miscdev.c", i32 329, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ecryptfs_miscdev_response._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ecryptfs_miscdev_response._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ecryptfs/miscdev.c", i32 337, i32 3}
!72 = !{ptr @ecryptfs_miscdev_response._entry.38, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ecryptfs_miscdev_response._entry_ptr.40, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ecryptfs/miscdev.c", i32 36, i32 3}
!76 = !{ptr @.str.42, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ecryptfs_miscdev_poll._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ecryptfs_miscdev_poll._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ecryptfs/miscdev.c", i32 77, i32 3}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ecryptfs_miscdev_open._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ecryptfs_miscdev_open._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ecryptfs/miscdev.c", i32 122, i32 3}
!86 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ecryptfs_miscdev_release._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ecryptfs_miscdev_release._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2154812983, i64 2154813469, i64 2154813020, i64 2154813076, i64 2154813110, i64 2154813134, i64 2154813175, i64 2154813196, i64 2154813224, i64 2154813258}
!101 = !{!"auto-init"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2154771074, i64 2154771560, i64 2154771111, i64 2154771167, i64 2154771201, i64 2154771225, i64 2154771266, i64 2154771287, i64 2154771315, i64 2154771349}
!104 = !{i64 4672691}
!105 = !{i64 4672888}
!106 = !{i64 2152158121}
!107 = !{i64 2154777908, i64 2154778188, i64 2154778522, i64 2154778856}
!108 = !{i64 2154790886, i64 2154791166, i64 2154791500, i64 2154791834}
!109 = !{i64 2152177817, i64 2152177842}
!110 = !{i64 2152177136, i64 2152177161}
!111 = !{i64 2148664657, i64 2148664683, i64 2148664712, i64 2148664746, i64 2148664777, i64 2148664800}
!112 = !{i64 2154760692, i64 2154761178, i64 2154760729, i64 2154760785, i64 2154760819, i64 2154760843, i64 2154760884, i64 2154760905, i64 2154760933, i64 2154760967}
!113 = !{i64 2148667122, i64 2148667148, i64 2148667177, i64 2148667211, i64 2148667242, i64 2148667265}
!114 = !{i64 2154764164, i64 2154764650, i64 2154764201, i64 2154764257, i64 2154764291, i64 2154764315, i64 2154764356, i64 2154764377, i64 2154764405, i64 2154764439}
