; ModuleID = '/llk/IR_all_yes/net/sunrpc/debugfs.c_pt.bc'
source_filename = "../net/sunrpc/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fail_sunrpc\22, \22a\22\09"
module asm "\09.weak\09__crc_fail_sunrpc\09\09\09\09"
module asm "\09.long\09__crc_fail_sunrpc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fail_sunrpc:\09\09\09\09\09"
module asm "\09.asciz \09\22fail_sunrpc\22\09\09\09\09\09"
module asm "__kstrtabns_fail_sunrpc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fail_sunrpc_attr = type { %struct.fault_attr, i8, i8 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.130, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.130 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.129, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.__kernel_sockaddr_storage = type { %union.anon.127 }
%union.anon.127 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.129 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.112, %struct.list_head, %struct.list_head, %union.anon.113 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.6, ptr }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.8 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.spinlock, i32 }
%union.anon.112 = type { %struct.list_head }
%union.anon.113 = type { %struct.hlist_node }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.131, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.132, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.133, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.131 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.132 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.133 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.134 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.2, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.2 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.126, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.126 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@rpc_clnt_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tasks\00", [26 x i8] zeroinitializer }, align 32
@tasks_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tasks_open, ptr null, ptr @tasks_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rpc_xprt_debugfs_register.cur_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rpc_xprt_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@xprt_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xprt_info_open, ptr null, ptr @xprt_info_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state.lock\00", [43 x i8] zeroinitializer }, align 32
@fail_sunrpc = dso_local global { %struct.fail_sunrpc_attr, [36 x i8] } { %struct.fail_sunrpc_attr { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, i8 0, i8 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_fail_sunrpc = external dso_local constant [0 x i8], align 1
@__kstrtabns_fail_sunrpc = external dso_local constant [0 x i8], align 1
@__ksymtab_fail_sunrpc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fail_sunrpc to i32), ptr @__kstrtab_fail_sunrpc, ptr @__kstrtabns_fail_sunrpc }, section "___ksymtab_gpl+fail_sunrpc", align 4
@topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunrpc\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rpc_clnt\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rpc_xprt\00", [23 x i8] zeroinitializer }, align 32
@tasks_seq_operations = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @tasks_start, ptr @tasks_stop, ptr @tasks_next, ptr @tasks_show }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%5u %04x %6d 0x%x 0x%x %8ld %ps %sv%u %s a:%ps q:%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"../../rpc_xprt/%s\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xprt\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xprt%d\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netid: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"addr:  %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port:  %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"state: 0x%lx\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fail_sunrpc\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ignore-client-disconnect\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ignore-server-disconnect\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 152, i32 37 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"rpc_clnt_dir\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 16, i32 23 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 160, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"tasks_fops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 112, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"cur_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 223, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"rpc_xprt_dir\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 17, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 236, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"xprt_info_fops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 211, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 249, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"fail_sunrpc\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 248, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"topdir\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 15, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 284, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 286, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 288, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"tasks_seq_operations\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 79, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 25, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 33, i32 16 }
@___asan_gen_.72 = private unnamed_addr constant [32 x i8] c"../include/linux/sunrpc/sched.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 275, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 129, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 134, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 136, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 178, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 179, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 180, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 181, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 257, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 260, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [24 x i8] c"../net/sunrpc/debugfs.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 263, i32 22 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_fail_sunrpc, ptr @sunrpc_debugfs_exit, ptr @.str, ptr @rpc_clnt_dir, ptr @.str.1, ptr @tasks_fops, ptr @rpc_xprt_debugfs_register.cur_id, ptr @rpc_xprt_dir, ptr @.str.2, ptr @xprt_info_fops, ptr @.str.3, ptr @fail_sunrpc, ptr @topdir, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tasks_seq_operations, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_clnt_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasks_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_xprt_debugfs_register.cur_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_xprt_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xprt_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_sunrpc to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tasks_seq_operations to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_clnt_debugfs_register(ptr noundef %clnt) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [9 x i8], align 1
  %xprtnum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xprtnum) #7
  %1 = ptrtoint ptr %xprtnum to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %xprtnum, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 1
  %2 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_clid, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 9, ptr noundef nonnull @.str, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp = icmp ugt i32 %call, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr @rpc_clnt_dir, align 4
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %4) #7
  %cl_debugfs = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 26
  %5 = ptrtoint ptr %cl_debugfs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %cl_debugfs, align 4
  %call4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32512, ptr noundef %call2, ptr noundef %clnt, ptr noundef nonnull @tasks_fops) #7
  %call5 = call i32 @rpc_clnt_iterate_for_each_xprt(ptr noundef %clnt, ptr noundef nonnull @do_xprt_debugfs, ptr noundef nonnull %xprtnum) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xprtnum) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %name) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_iterate_for_each_xprt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_xprt_debugfs(ptr nocapture noundef readonly %clnt, ptr nocapture noundef readonly %xprt, ptr nocapture noundef %numv) #0 align 64 {
entry:
  %name = alloca [24 x i8], align 1
  %link = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %link) #7
  %debugfs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 52
  %1 = call ptr @memset(ptr %link, i32 255, i32 9)
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %name2 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name2, align 8
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 24, ptr noundef nonnull @.str.10, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call3)
  %cmp = icmp ugt i32 %call3, 23
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %numv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %link, ptr @.str.11, i32 5)
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %link, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call11)
  %cmp12 = icmp ugt i32 %call11, 8
  br i1 %cmp12, label %if.else.cleanup_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then7
  %cl_debugfs = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 26
  %9 = ptrtoint ptr %cl_debugfs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_debugfs, align 4
  %call18 = call ptr @debugfs_create_symlink(ptr noundef nonnull %link, ptr noundef %10, ptr noundef nonnull %name) #7
  %11 = ptrtoint ptr %numv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numv, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %numv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %link) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_clnt_debugfs_unregister(ptr nocapture noundef %clnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_debugfs = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 26
  %0 = ptrtoint ptr %cl_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  %2 = ptrtoint ptr %cl_debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cl_debugfs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_xprt_debugfs_register(ptr noundef %xprt) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %name) #7
  %0 = call ptr @memset(ptr %name, i32 255, i32 9)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rpc_xprt_debugfs_register.cur_id, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr nonnull @rpc_xprt_debugfs_register.cur_id, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @rpc_xprt_debugfs_register.cur_id, ptr nonnull @rpc_xprt_debugfs_register.cur_id, i32 1, ptr nonnull elementtype(i32) @rpc_xprt_debugfs_register.cur_id) #7, !srcloc !68
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 9, ptr noundef nonnull @.str, i32 noundef %asmresult.i.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp = icmp ugt i32 %call1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load ptr, ptr @rpc_xprt_dir, align 4
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %2) #7
  %debugfs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 52
  %3 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %debugfs, align 8
  %call5 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext -32512, ptr noundef %call3, ptr noundef %xprt, ptr noundef nonnull @xprt_info_fops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %name) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_xprt_debugfs_unregister(ptr nocapture noundef %xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 52
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %1) #7
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sunrpc_debugfs_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  store ptr null, ptr @topdir, align 4
  store ptr null, ptr @rpc_clnt_dir, align 4
  store ptr null, ptr @rpc_xprt_dir, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sunrpc_debugfs_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef null) #7
  store ptr %call, ptr @topdir, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.5, ptr noundef %call) #7
  store ptr %call1, ptr @rpc_clnt_dir, align 4
  %0 = load ptr, ptr @topdir, align 4
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.6, ptr noundef %0) #7
  store ptr %call2, ptr @rpc_xprt_dir, align 4
  %call.i = tail call ptr @fault_create_debugfs_attr(ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef nonnull @fail_sunrpc) #7
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.18, i16 noundef zeroext -32384, ptr noundef %call.i, ptr noundef getelementptr inbounds (%struct.fail_sunrpc_attr, ptr @fail_sunrpc, i32 0, i32 1)) #7
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.19, i16 noundef zeroext -32384, ptr noundef %call.i, ptr noundef getelementptr inbounds (%struct.fail_sunrpc_attr, ptr @fail_sunrpc, i32 0, i32 2)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tasks_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %filp, ptr noundef nonnull @tasks_seq_operations) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #7
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %3, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.then
  %7 = phi i32 [ %6, %if.then ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #7
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #7
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %10, i32 %add.i.i.i, ptr elementtype(i32) %3) #7, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !71

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !71

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 0) #7
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #7
  br i1 %tobool12.i.i.i.not, label %if.then2, label %refcount_inc_not_zero.exit.if.end4_crit_edge

refcount_inc_not_zero.exit.if.end4_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 @seq_release(ptr noundef %inode, ptr noundef %filp) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %refcount_inc_not_zero.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.1 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ 0, %refcount_inc_not_zero.exit.if.end4_crit_edge ], [ -22, %if.then2 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tasks_release(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @rpc_release_client(ptr noundef %3) #7
  %call = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %filp) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tasks_start(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %cl_lock = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #7
  %cl_tasks = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cl_tasks to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn16 = load ptr, ptr %cl_tasks, align 4
  %cmp.not17 = icmp eq ptr %.pn16, %cl_tasks
  br i1 %cmp.not17, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %dec = add i64 %pos.018, -1
  %5 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn19, align 4
  %cmp.not = icmp eq ptr %.pn, %cl_tasks
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn16, %entry.for.body_crit_edge ]
  %pos.018 = phi i64 [ %dec, %for.cond.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.018)
  %cmp2 = icmp eq i64 %pos.018, 0
  br i1 %cmp2, label %cleanup.split.loop.exit14, label %for.cond

cleanup.split.loop.exit14:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %task.0.le = getelementptr i8, ptr %.pn19, i32 -8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit14, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %task.0.le, %cleanup.split.loop.exit14 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tasks_stop(ptr nocapture noundef readonly %f, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %cl_lock = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tasks_next(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %v, ptr nocapture noundef %pos) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tk_task = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %tk_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_task, align 8
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %cl_tasks = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 3
  %cmp = icmp eq ptr %3, %cl_tasks
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %retval.0 = select i1 %cmp, ptr null, ptr %add.ptr
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tasks_show(ptr noundef %f, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 13
  %0 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_client, align 4
  %tk_runstate = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 6
  %2 = ptrtoint ptr %tk_runstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tk_runstate, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %tk_waitqueue = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 7
  %5 = ptrtoint ptr %tk_waitqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tk_waitqueue, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.rpc_wait_queue, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  %spec.select.i = select i1 %tobool1.not.i, ptr @.str.9, ptr %8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rpc_waitq.0 = phi ptr [ @.str.7, %entry.if.end_crit_edge ], [ @.str.9, %if.then.if.end_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 16
  %9 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tk_rqstp, align 8
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_xid, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %xid.0 = phi i32 [ %12, %if.then3 ], [ 0, %if.end.if.end5_crit_edge ]
  %tk_pid = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 22
  %13 = ptrtoint ptr %tk_pid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tk_pid, align 8
  %conv = zext i16 %14 to i32
  %tk_flags = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 20
  %15 = ptrtoint ptr %tk_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tk_flags, align 4
  %conv6 = zext i16 %16 to i32
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 1
  %17 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tk_status, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cl_clid, align 4
  %call7 = tail call i32 @rpc_task_timeout(ptr noundef %v) #7
  %tk_ops = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 12
  %21 = ptrtoint ptr %tk_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tk_ops, align 8
  %cl_program = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 24
  %23 = ptrtoint ptr %cl_program to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_program, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cl_vers = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %cl_vers to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cl_vers, align 4
  %call8 = tail call ptr @rpc_proc_name(ptr noundef %v) #7
  %tk_action = getelementptr inbounds %struct.rpc_task, ptr %v, i32 0, i32 4
  %29 = ptrtoint ptr %tk_action to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tk_action, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv6, i32 noundef %18, i32 noundef %20, i32 noundef %xid.0, i32 noundef %call7, ptr noundef %22, ptr noundef %26, i32 noundef %28, ptr noundef %call8, ptr noundef %30, ptr noundef %rpc_waitq.0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_task_timeout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_proc_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_client(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprt_info_open(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %filp, ptr noundef nonnull @xprt_info_show, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @xprt_get(ptr noundef %1) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %filp) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end5_crit_edge ], [ 0, %if.then.if.end5_crit_edge ], [ -22, %if.then3 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprt_info_release(ptr noundef %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  tail call void @xprt_put(ptr noundef %1) #7
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %filp) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xprt_info_show(ptr noundef %f, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 51
  %arrayidx = getelementptr %struct.rpc_xprt, ptr %1, i32 0, i32 51, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.13, ptr noundef %3) #7
  %4 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %address_strings, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.14, ptr noundef %5) #7
  %arrayidx4 = getelementptr %struct.rpc_xprt, ptr %1, i32 0, i32 51, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.15, ptr noundef %7) #7
  %state = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.16, i32 noundef %9) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fault_create_debugfs_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/debugfs.c", i32 152, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sunrpc/debugfs.c", i32 160, i32 22}
!4 = !{ptr @rpc_xprt_debugfs_register.cur_id, !5, !"cur_id", i1 false, i1 false}
!5 = !{!"../net/sunrpc/debugfs.c", i32 223, i32 18}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/debugfs.c", i32 236, i32 22}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/debugfs.c", i32 249, i32 12}
!10 = !{ptr @fail_sunrpc, !11, !"fail_sunrpc", i1 false, i1 false}
!11 = !{!"../net/sunrpc/debugfs.c", i32 248, i32 25}
!12 = !{ptr @__ksymtab_fail_sunrpc, !13, !"__ksymtab_fail_sunrpc", i1 false, i1 false}
!13 = !{!"../net/sunrpc/debugfs.c", i32 251, i32 1}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/sunrpc/debugfs.c", i32 284, i32 30}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/debugfs.c", i32 286, i32 36}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sunrpc/debugfs.c", i32 288, i32 36}
!20 = !{ptr @topdir, !21, !"topdir", i1 false, i1 false}
!21 = !{!"../net/sunrpc/debugfs.c", i32 15, i32 23}
!22 = !{ptr @rpc_clnt_dir, !23, !"rpc_clnt_dir", i1 false, i1 false}
!23 = !{!"../net/sunrpc/debugfs.c", i32 16, i32 23}
!24 = !{ptr @rpc_xprt_dir, !25, !"rpc_xprt_dir", i1 false, i1 false}
!25 = !{!"../net/sunrpc/debugfs.c", i32 17, i32 23}
!26 = !{ptr @tasks_fops, !27, !"tasks_fops", i1 false, i1 false}
!27 = !{!"../net/sunrpc/debugfs.c", i32 112, i32 37}
!28 = !{ptr @tasks_seq_operations, !29, !"tasks_seq_operations", i1 false, i1 false}
!29 = !{!"../net/sunrpc/debugfs.c", i32 79, i32 36}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sunrpc/debugfs.c", i32 25, i32 26}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sunrpc/debugfs.c", i32 33, i32 16}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/sunrpc/sched.h", i32 275, i32 37}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sunrpc/debugfs.c", i32 129, i32 37}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/sunrpc/debugfs.c", i32 134, i32 16}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/sunrpc/debugfs.c", i32 136, i32 38}
!42 = !{ptr @xprt_info_fops, !43, !"xprt_info_fops", i1 false, i1 false}
!43 = !{!"../net/sunrpc/debugfs.c", i32 211, i32 37}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/sunrpc/debugfs.c", i32 178, i32 16}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/sunrpc/debugfs.c", i32 179, i32 16}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sunrpc/debugfs.c", i32 180, i32 16}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sunrpc/debugfs.c", i32 181, i32 16}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/sunrpc/debugfs.c", i32 257, i32 34}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/sunrpc/debugfs.c", i32 260, i32 22}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/sunrpc/debugfs.c", i32 263, i32 22}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148753713}
!68 = !{i64 2148668998, i64 2148669030, i64 2148669059, i64 2148669093, i64 2148669124, i64 2148669147}
!69 = !{i64 2148753942}
!70 = !{i64 1153791, i64 1153815, i64 1153836, i64 1153853, i64 1153870}
!71 = !{!"branch_weights", i32 2000, i32 1}
