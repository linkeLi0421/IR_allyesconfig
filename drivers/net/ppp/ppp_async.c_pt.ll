; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/ppp_async.c_pt.bc'
source_filename = "../drivers/net/ppp/ppp_async.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.100 }
%union.anon.100 = type { ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ppp_channel_ops = type { ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asyncppp = type { ptr, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, [8 x i32], i32, i32, i32, ptr, i32, i16, ptr, ptr, i32, ptr, i32, %struct.sk_buff_head, %struct.tasklet_struct, %struct.refcount_struct, %struct.completion, %struct.ppp_channel, [4096 x i8] }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ppp_channel = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@__param_str_flag_time = internal constant [20 x i8] c"ppp_async.flag_time\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@flag_time = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_flag_time = internal constant %struct.kernel_param { ptr @__param_str_flag_time, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.100 { ptr @flag_time } }, section "__param", align 4
@__UNIQUE_ID_flag_timetype337 = internal constant [33 x i8] c"ppp_async.parmtype=flag_time:int\00", section ".modinfo", align 1
@__UNIQUE_ID_flag_time338 = internal constant [86 x i8] c"ppp_async.parm=flag_time:ppp_async: interval between flagged packets (in clock ticks)\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [41 x i8] c"ppp_async.file=drivers/net/ppp/ppp_async\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [22 x i8] c"ppp_async.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [28 x i8] c"ppp_async.alias=tty-ldisc-3\00", section ".modinfo", align 1
@ppp_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 3, ptr @ppp_asynctty_open, ptr @ppp_asynctty_close, ptr null, ptr @ppp_asynctty_read, ptr @ppp_asynctty_write, ptr @ppp_asynctty_ioctl, ptr null, ptr null, ptr @ppp_asynctty_poll, ptr @ppp_asynctty_hangup, ptr @ppp_asynctty_receive, ptr @ppp_asynctty_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_ppp_async__342_1020_ppp_async_init6 = internal global ptr @ppp_async_init, section ".initcall6.init", align 4
@__exitcall_ppp_async_cleanup = internal global ptr @ppp_async_cleanup, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ppp\00", [28 x i8] zeroinitializer }, align 32
@ppp_asynctty_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ap->xmit_lock\00", [17 x i8] zeroinitializer }, align 32
@ppp_asynctty_open.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ap->recv_lock\00", [17 x i8] zeroinitializer }, align 32
@async_ops = internal constant { %struct.ppp_channel_ops, [20 x i8] } { %struct.ppp_channel_ops { ptr @ppp_async_send, ptr @ppp_async_ioctl, ptr null }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@crc_ccitt_table = external dso_local local_unnamed_addr constant [256 x i16], align 2
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ppp/ppp_async.c\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@disc_data_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disc_data_lock\00", [17 x i8] zeroinitializer }, align 32
@ppp_async_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013PPPasync: no memory (input pkt)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ppp_async_input\00", [16 x i8] zeroinitializer }, align 32
@ppp_async_input._entry_ptr = internal global ptr @ppp_async_input._entry, section ".printk_index", align 4
@ppp_async_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013PPP_async: error %d registering line disc.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppp_async_init\00", [17 x i8] zeroinitializer }, align 32
@ppp_async_init._entry_ptr = internal global ptr @ppp_async_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 21515, i64 21531, i64 2147775543, i64 2147775574]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 125, i64 126]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [12 x i64] [i64 10, i64 32, i64 1074033746, i64 1074033748, i64 1074033751, i64 1074033753, i64 1075868751, i64 2147775571, i64 2147775573, i64 2147775576, i64 2147775578, i64 2149610576]
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"flag_time\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 87, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"ppp_ldisc\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 371, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 374, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 172, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 173, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"async_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 109, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1984, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 87, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 414, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 174, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"disc_data_lock\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 130, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 927, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [31 x i8] c"../drivers/net/ppp/ppp_async.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 393, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_flag_time338, ptr @__UNIQUE_ID_flag_timetype337, ptr @__UNIQUE_ID_license340, ptr @__exitcall_ppp_async_cleanup, ptr @__initcall__kmod_ppp_async__342_1020_ppp_async_init6, ptr @__param_flag_time, ptr @ppp_async_cleanup, ptr @ppp_async_init._entry, ptr @ppp_async_init._entry_ptr, ptr @ppp_async_input._entry, ptr @ppp_async_input._entry_ptr, ptr @flag_time, ptr @ppp_ldisc, ptr @.str, ptr @ppp_asynctty_open.__key, ptr @.str.1, ptr @ppp_asynctty_open.__key.2, ptr @.str.3, ptr @async_ops, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @disc_data_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flag_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_asynctty_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_asynctty_open.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disc_data_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_async_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_async_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ppp_async_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @ppp_ldisc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_async_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @ppp_ldisc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_asynctty_open(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4452) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tty, ptr %call7.i.i, align 8
  %mru = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %mru to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1500, ptr %mru, align 8
  %xmit_lock = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %xmit_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ppp_asynctty_open.__key, i16 noundef signext 3) #10
  %recv_lock = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %recv_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ppp_asynctty_open.__key.2, i16 noundef signext 3) #10
  %xaccm = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %xaccm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %xaccm, align 8
  %arrayidx10 = getelementptr %struct.asyncppp, ptr %call7.i.i, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1610612736, ptr %arrayidx10, align 4
  %raccm = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %raccm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %raccm, align 8
  %obuf = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 25
  %optr = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %optr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %obuf, ptr %optr, align 8
  %olim = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %olim to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %obuf, ptr %olim, align 4
  %lcp_fcs = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %lcp_fcs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %lcp_fcs, align 8
  %rqueue = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 20
  %lock.i = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 20, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %13 = ptrtoint ptr %rqueue to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rqueue, ptr %rqueue, align 4
  %prev.i.i = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 20, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rqueue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 20, i32 1
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i, align 4
  %tsk = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 21
  tail call void @tasklet_setup(ptr noundef %tsk, ptr noundef nonnull @ppp_async_process) #10
  %refcnt = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %16 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %refcnt, align 4
  %dead = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 23
  %17 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dead, align 8
  %wait.i = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #10
  %chan = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 24
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %chan, align 8
  %ops14 = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 24, i32 1
  %19 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @async_ops, ptr %ops14, align 4
  %mtu = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 24, i32 2
  %20 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1500, ptr %mtu, align 8
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #10
  %speed18 = getelementptr inbounds %struct.asyncppp, ptr %call7.i.i, i32 0, i32 24, i32 5
  %21 = ptrtoint ptr %speed18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i, ptr %speed18, align 4
  %call20 = tail call i32 @ppp_register_channel(ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %out_free

if.end23:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %22 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %disc_data, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %23 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65536, ptr %receive_room, align 4
  br label %cleanup

out_free:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -95, %entry.cleanup_crit_edge ], [ %call20, %out_free ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_asynctty_close(ptr nocapture noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @disc_data_lock) #10
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  store ptr null, ptr %disc_data, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @disc_data_lock) #10
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 22
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then2_crit_edge, label %if.then10.i.i.i, !prof !69

if.end5.i.i.i.if.then2_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.then2

refcount_dec_and_test.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  br label %if.end3

if.then2:                                         ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then2_crit_edge
  %dead = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 23
  tail call void @wait_for_completion(ptr noundef %dead) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %refcount_dec_and_test.exit
  %tsk = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 21
  tail call void @tasklet_kill(ptr noundef %tsk) #10
  %chan = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 24
  tail call void @ppp_unregister_channel(ptr noundef %chan) #10
  %rpkt = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %rpkt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rpkt, align 4
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #10
  %rqueue = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %rqueue) #10
  %tpkt = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tpkt, align 4
  tail call void @kfree_skb_reason(ptr noundef %6, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ppp_asynctty_read(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %cookie, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ppp_asynctty_write(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_asynctty_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #10
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %ap_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

ap_get.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  br label %cleanup

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  %4 = inttoptr i32 %arg to ptr
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 -2147191753, label %sw.bb
    i32 -2147191722, label %sw.bb7
    i32 21515, label %sw.bb28
    i32 21531, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chan = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 24
  %call1 = tail call i32 @ppp_channel_index(ptr noundef %chan) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 296) #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !73
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %call1, i32 -1226833921) #10, !srcloc !76
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chan12 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 24
  %call13 = tail call i32 @ppp_unit_number(ptr noundef %chan12) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 303) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i72 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i72 to ptr
  %cpu_domain.i.i73 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i73) #6, !srcloc !73
  %and.i74 = and i32 %12, -13
  %or.i75 = or i32 %and.i74, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i75) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %call13, i32 -1226833921) #10, !srcloc !77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool25.not = icmp eq i32 %13, 0
  %spec.select70 = select i1 %tobool25.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %arg.off = add i32 %arg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg.off)
  %switch = icmp ult i32 %arg.off, 2
  br i1 %switch, label %if.then30, label %sw.bb28.if.end31_crit_edge

sw.bb28.if.end31_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %sw.bb28
  %xmit_lock.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %xmit_lock.i) #10
  %olim.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %olim.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %olim.i, align 4
  %optr.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %optr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %optr.i, align 4
  %tpkt.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %tpkt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tpkt.i, align 4
  %cmp.not.i80 = icmp eq ptr %18, null
  br i1 %cmp.not.i80, label %if.end5.critedge.i, label %if.then.i81

if.then.i81:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #10
  %19 = ptrtoint ptr %tpkt.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tpkt.i, align 4
  %xmit_flags.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xmit_flags.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmit_lock.i) #10
  %chan.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 24
  tail call void @ppp_output_wakeup(ptr noundef %chan.i) #10
  br label %if.end31

if.end5.critedge.i:                               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmit_lock.i) #10
  br label %if.end31

if.end31:                                         ; preds = %if.end5.critedge.i, %if.then.i81, %sw.bb28.if.end31_crit_edge
  %call32 = tail call i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef 21515, i32 noundef %arg) #10
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 317) #10
  %20 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i76 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i76 to ptr
  %cpu_domain.i.i77 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i77) #6, !srcloc !73
  %and.i78 = and i32 %22, -13
  %or.i79 = or i32 %and.i78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i79) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 0, i32 -1226833921) #10, !srcloc !78
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool49.not = icmp eq i32 %23, 0
  %spec.select71 = select i1 %tobool49.not, i32 0, i32 -14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %if.end31, %sw.bb7, %sw.bb
  %err.0 = phi i32 [ %call52, %sw.default ], [ %call32, %if.end31 ], [ %spec.select, %sw.bb ], [ %spec.select70, %sw.bb7 ], [ %spec.select71, %sw.bb33 ]
  %call.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i85, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i84 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i84, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i85:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %dead.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 23
  tail call void @complete(ptr noundef %dead.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i85, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %ap_get.exit
  %retval.0 = phi i32 [ -6, %ap_get.exit ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i85 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ppp_asynctty_poll(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_asynctty_hangup(ptr nocapture noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ppp_asynctty_close(ptr noundef %tty)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_asynctty_receive(ptr noundef %tty, ptr nocapture noundef readonly %buf, ptr noundef readonly %cflags, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #10
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %ap_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.do.body1_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.do.body1_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %do.body1

ap_get.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  br label %cleanup

do.body1:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.do.body1_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  %recv_lock = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_lock) #10
  %rbits.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rbits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rbits.i, align 4
  %neg.i = and i32 %5, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %neg.i)
  %tobool.not.i = icmp eq i32 %neg.i, 251658240
  br i1 %tobool.not.i, label %do.body1.if.end16.i_crit_edge, label %for.cond.preheader.i

do.body1.if.end16.i_crit_edge:                    ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

for.cond.preheader.i:                             ; preds = %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp256.i = icmp sgt i32 %count, 0
  br i1 %cmp256.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %tobool1.not.i = icmp eq ptr %cflags, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %s.0260.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %s.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0257.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.0257.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  br i1 %tobool1.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx2.i = getelementptr i8, ptr %cflags, i32 %i.0257.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp4.not.i = icmp eq i8 %9, 0
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %and7.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond.i = select i1 %tobool8.not.i, i32 16777216, i32 33554432
  %or.i = or i32 %cond.i, %s.0260.i
  %10 = lshr i32 %conv.i, 4
  %conv.masked.i = and i32 %conv.i, 15
  %and9.i = xor i32 %10, %conv.masked.i
  %shl.i = shl nuw i32 1, %and9.i
  %and10.i = and i32 %shl.i, 27030
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  %cond12.i = select i1 %tobool11.not.i, i32 67108864, i32 134217728
  %or13.i = or i32 %or.i, %cond12.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %land.lhs.true.i.for.inc.i_crit_edge
  %s.1.i = phi i32 [ %s.0260.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %or13.i, %if.end.i ]
  %inc.i = add nuw nsw i32 %i.0257.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %s.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %s.1.i, %for.inc.i.for.end.i_crit_edge ]
  %or15.i = or i32 %s.0.lcssa.i, %5
  %11 = ptrtoint ptr %rbits.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or15.i, ptr %rbits.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %for.end.i, %do.body1.if.end16.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp17263.i = icmp sgt i32 %count, 0
  br i1 %cmp17263.i, label %while.body.lr.ph.i, label %if.end16.i.ppp_async_input.exit_crit_edge

if.end16.i.ppp_async_input.exit_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ppp_async_input.exit

while.body.lr.ph.i:                               ; preds = %if.end16.i
  %state.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 2
  %raccm.i.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 9
  %rpkt.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 18
  %mru.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 4
  %rqueue.i.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 20
  %lcp_fcs.i46 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %if.end161.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buf.addr.0268.i = phi ptr [ %buf, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end161.i.while.body.i_crit_edge ]
  %count.addr.0265.i = phi i32 [ %count, %while.body.lr.ph.i ], [ %sub.i, %if.end161.i.while.body.i_crit_edge ]
  %flags.addr.0264.i = phi ptr [ %cflags, %while.body.lr.ph.i ], [ %spec.select.i, %if.end161.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  %and19.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %while.body.i.for.body.i.i.preheader_crit_edge, label %land.lhs.true21.i

while.body.i.for.body.i.i.preheader_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.preheader

land.lhs.true21.i:                                ; preds = %while.body.i
  %14 = ptrtoint ptr %buf.addr.0268.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf.addr.0268.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %15)
  %cmp24.i = icmp eq i8 %15, 125
  br i1 %cmp24.i, label %land.lhs.true21.i.if.end27.i_crit_edge, label %land.lhs.true21.i.for.body.i.i.preheader_crit_edge

land.lhs.true21.i.for.body.i.i.preheader_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.preheader

land.lhs.true21.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

for.body.i.i.preheader:                           ; preds = %land.lhs.true21.i.for.body.i.i.preheader_crit_edge, %while.body.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.017.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr i8, ptr %buf.addr.0268.i, i32 %i.017.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %.off.i.i = add i8 %17, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  br i1 %switch.i.i, label %for.body.i.i.if.end27.i_crit_edge, label %lor.lhs.false5.i.i

for.body.i.i.if.end27.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

lor.lhs.false5.i.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %17)
  %cmp6.i.i = icmp ult i8 %17, 32
  br i1 %cmp6.i.i, label %land.lhs.true.i.i, label %lor.lhs.false5.i.i.for.inc.i.i_crit_edge

lor.lhs.false5.i.i.for.inc.i.i_crit_edge:         ; preds = %lor.lhs.false5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false5.i.i
  %18 = ptrtoint ptr %raccm.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %raccm.i.i, align 4
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %19, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp8.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp8.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.end27.i_crit_edge

land.lhs.true.i.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %lor.lhs.false5.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %count.addr.0265.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end27.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end27.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.inc.i.i.if.end27.i_crit_edge, %land.lhs.true.i.i.if.end27.i_crit_edge, %for.body.i.i.if.end27.i_crit_edge, %land.lhs.true21.i.if.end27.i_crit_edge
  %n.0.i = phi i32 [ 1, %land.lhs.true21.i.if.end27.i_crit_edge ], [ %i.017.i.i, %for.body.i.i.if.end27.i_crit_edge ], [ %i.017.i.i, %land.lhs.true.i.i.if.end27.i_crit_edge ], [ %count.addr.0265.i, %for.inc.i.i.if.end27.i_crit_edge ]
  %tobool28.not.i = icmp eq ptr %flags.addr.0264.i, null
  %tobool28.not.not.i = xor i1 %tobool28.not.i, true
  %and31.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %cmp32.i = icmp eq i32 %and31.i, 0
  %or.cond.i = select i1 %tobool28.not.not.i, i1 %cmp32.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.i)
  %cmp36261.i = icmp sgt i32 %n.0.i, 0
  %or.cond270.i = select i1 %or.cond.i, i1 %cmp36261.i, i1 false
  br i1 %or.cond270.i, label %if.end27.i.for.body38.i_crit_edge, label %if.end27.i.if.else54.i_crit_edge

if.end27.i.if.else54.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54.i

if.end27.i.for.body38.i_crit_edge:                ; preds = %if.end27.i
  br label %for.body38.i

for.cond35.i:                                     ; preds = %for.body38.i
  %inc46.i = add nuw nsw i32 %j.0262.i, 1
  %exitcond271.not.i = icmp eq i32 %inc46.i, %n.0.i
  br i1 %exitcond271.not.i, label %for.cond35.i.if.else54.i_crit_edge, label %for.cond35.i.for.body38.i_crit_edge

for.cond35.i.for.body38.i_crit_edge:              ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i

for.cond35.i.if.else54.i_crit_edge:               ; preds = %for.cond35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else54.i

for.body38.i:                                     ; preds = %for.cond35.i.for.body38.i_crit_edge, %if.end27.i.for.body38.i_crit_edge
  %j.0262.i = phi i32 [ %inc46.i, %for.cond35.i.for.body38.i_crit_edge ], [ 0, %if.end27.i.for.body38.i_crit_edge ]
  %arrayidx39.i = getelementptr i8, ptr %flags.addr.0264.i, i32 %j.0262.i
  %20 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp41.not.i = icmp eq i8 %21, 0
  br i1 %cmp41.not.i, label %for.cond35.i, label %if.then51.i

if.then51.i:                                      ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #12
  %or53.i = or i32 %13, 1
  br label %if.end107.sink.split.i

if.else54.i:                                      ; preds = %for.cond35.i.if.else54.i_crit_edge, %if.end27.i.if.else54.i_crit_edge
  %or.cond255.i = select i1 %cmp36261.i, i1 %cmp32.i, i1 false
  br i1 %or.cond255.i, label %if.then62.i, label %if.else54.i.if.end107.i_crit_edge

if.else54.i.if.end107.i_crit_edge:                ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.i

if.then62.i:                                      ; preds = %if.else54.i
  %22 = ptrtoint ptr %rpkt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rpkt.i, align 4
  %tobool63.not.i = icmp eq ptr %23, null
  br i1 %tobool63.not.i, label %if.then64.i, label %if.then62.i.if.end71.i_crit_edge

if.then62.i.if.end71.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71.i

if.then64.i:                                      ; preds = %if.then62.i
  %24 = ptrtoint ptr %mru.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mru.i, align 4
  %add65.i = add i32 %25, 6
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add65.i, i32 noundef 2592) #10
  %tobool67.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool67.not.i, label %do.end.i, label %if.end69.i

if.end69.i:                                       ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %rpkt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i.i, ptr %rpkt.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end69.i, %if.then62.i.if.end71.i_crit_edge
  %skb.0.i = phi ptr [ %23, %if.then62.i.if.end71.i_crit_edge ], [ %call.i.i.i, %if.end69.i ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 6
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp72.i = icmp eq i32 %28, 0
  br i1 %cmp72.i, label %if.then74.i, label %if.end71.i.if.end85.i_crit_edge

if.end71.i.if.end85.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then74.i:                                      ; preds = %if.end71.i
  %29 = ptrtoint ptr %buf.addr.0268.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buf.addr.0268.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp77.not.i = icmp eq i8 %30, -1
  br i1 %cmp77.not.i, label %if.then74.i.if.end85.i_crit_edge, label %if.then79.i

if.then74.i.if.end85.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then79.i:                                      ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = and i8 %30, 1
  %32 = or i8 %31, 2
  %add83.i = zext i8 %32 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %add83.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %36, i32 %add83.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then79.i, %if.then74.i.if.end85.i_crit_edge, %if.end71.i.if.end85.i_crit_edge
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 7
  %37 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end85.i.skb_tailroom.exit.i_crit_edge

if.end85.i.skb_tailroom.exit.i_crit_edge:         ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 17
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %tail.i246.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.i, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i246.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i246.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end85.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end85.i.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.i, i32 %cond.i.i)
  %cmp87.i = icmp sgt i32 %n.0.i, %cond.i.i
  br i1 %cmp87.i, label %if.then89.i, label %if.else92.i

if.then89.i:                                      ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 4
  %or91.i = or i32 %44, 1
  br label %if.end107.sink.split.i

if.else92.i:                                      ; preds = %skb_tailroom.exit.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %skb.0.i, i32 noundef %n.0.i) #10
  %45 = call ptr @memcpy(ptr %call.i.i, ptr %buf.addr.0268.i, i32 %n.0.i)
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state.i, align 4
  %and95.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.else92.i.if.end107.i_crit_edge, label %if.then97.i

if.else92.i.if.end107.i_crit_edge:                ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107.i

if.then97.i:                                      ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %call.i.i, align 1
  %50 = xor i8 %49, 32
  store i8 %50, ptr %call.i.i, align 1
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state.i, align 4
  %and103.i = and i32 %52, -3
  br label %if.end107.sink.split.i

if.end107.sink.split.i:                           ; preds = %if.then97.i, %if.then89.i, %if.then51.i
  %and103.sink.i = phi i32 [ %and103.i, %if.then97.i ], [ %or91.i, %if.then89.i ], [ %or53.i, %if.then51.i ]
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and103.sink.i, ptr %state.i, align 4
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end107.sink.split.i, %if.else92.i.if.end107.i_crit_edge, %if.else54.i.if.end107.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.i, i32 %count.addr.0265.i)
  %cmp108.not.i = icmp slt i32 %n.0.i, %count.addr.0265.i
  br i1 %cmp108.not.i, label %if.end111.i, label %if.end107.i.ppp_async_input.exit_crit_edge

if.end107.i.ppp_async_input.exit_crit_edge:       ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ppp_async_input.exit

if.end111.i:                                      ; preds = %if.end107.i
  %arrayidx112.i = getelementptr i8, ptr %buf.addr.0268.i, i32 %n.0.i
  %54 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx112.i, align 1
  br i1 %tobool28.not.i, label %if.end111.i.if.else124.i_crit_edge, label %land.lhs.true116.i

if.end111.i.if.else124.i_crit_edge:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else124.i

land.lhs.true116.i:                               ; preds = %if.end111.i
  %arrayidx117.i = getelementptr i8, ptr %flags.addr.0264.i, i32 %n.0.i
  %56 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx117.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp119.not.i = icmp eq i8 %57, 0
  br i1 %cmp119.not.i, label %land.lhs.true116.i.if.else124.i_crit_edge, label %if.then121.i

land.lhs.true116.i.if.else124.i_crit_edge:        ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else124.i

if.then121.i:                                     ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i, align 4
  %or123.i = or i32 %59, 1
  store i32 %or123.i, ptr %state.i, align 4
  br label %if.end161.i

if.else124.i:                                     ; preds = %land.lhs.true116.i.if.else124.i_crit_edge, %if.end111.i.if.else124.i_crit_edge
  %60 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %55, label %if.else134.i [
    i8 126, label %if.then127.i
    i8 125, label %if.then131.i
  ]

if.then127.i:                                     ; preds = %if.else124.i
  %61 = ptrtoint ptr %rpkt.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rpkt.i, align 4
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state.i, align 4
  %and.i247.i = and i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i247.i)
  %tobool.not.i.i = icmp eq i32 %and.i247.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then127.i.err.i.i_crit_edge

if.then127.i.err.i.i_crit_edge:                   ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end.i.i:                                       ; preds = %if.then127.i
  %cmp.i.i = icmp eq ptr %62, null
  br i1 %cmp.i.i, label %if.end.i.i.if.end161.i_crit_edge, label %if.end2.i.i

if.end.i.i.if.end161.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %data.i248.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 19
  %len3.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 6
  %65 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp4.i.i = icmp ult i32 %66, 3
  br i1 %cmp4.i.i, label %err.thread.i.i, label %if.end6.i.i

err.thread.i.i:                                   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %state.i, align 4
  br label %if.then57.i.i

if.end6.i.i:                                      ; preds = %if.end2.i.i
  %68 = ptrtoint ptr %data.i248.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i248.i, align 4
  br label %for.body.i250.i

for.body.i250.i:                                  ; preds = %for.body.i250.i.for.body.i250.i_crit_edge, %if.end6.i.i
  %fcs.0108.i.i = phi i32 [ 65535, %if.end6.i.i ], [ %conv8.i.i, %for.body.i250.i.for.body.i250.i_crit_edge ]
  %len.0107.i.i = phi i32 [ %66, %if.end6.i.i ], [ %dec.i.i, %for.body.i250.i.for.body.i250.i_crit_edge ]
  %p.0106.i.i = phi ptr [ %69, %if.end6.i.i ], [ %incdec.ptr.i.i, %for.body.i250.i.for.body.i250.i_crit_edge ]
  %conv.i249.i = trunc i32 %fcs.0108.i.i to i16
  %incdec.ptr.i.i = getelementptr i8, ptr %p.0106.i.i, i32 1
  %70 = ptrtoint ptr %p.0106.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %p.0106.i.i, align 1
  %72 = lshr i16 %conv.i249.i, 8
  %conv2.i.i.i = zext i8 %71 to i32
  %73 = and i32 %fcs.0108.i.i, 255
  %and.i.i.i = xor i32 %73, %conv2.i.i.i
  %arrayidx.i.i.i = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i.i.i
  %74 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i.i.i, align 2
  %xor4.i.i.i = xor i16 %75, %72
  %conv8.i.i = zext i16 %xor4.i.i.i to i32
  %dec.i.i = add i32 %len.0107.i.i, -1
  %cmp7.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp7.not.i.i, label %for.end.i.i, label %for.body.i250.i.for.body.i250.i_crit_edge

for.body.i250.i.for.body.i250.i_crit_edge:        ; preds = %for.body.i250.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i250.i

for.end.i.i:                                      ; preds = %for.body.i250.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3912, i16 %xor4.i.i.i)
  %cmp9.not.i.i = icmp eq i16 %xor4.i.i.i, -3912
  br i1 %cmp9.not.i.i, label %if.end12.i.i, label %for.end.i.i.err.i.i_crit_edge

for.end.i.i.err.i.i_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end12.i.i:                                     ; preds = %for.end.i.i
  %sub.i.i = add i32 %66, -2
  tail call void @skb_trim(ptr noundef nonnull %62, i32 noundef %sub.i.i) #10
  %76 = ptrtoint ptr %data.i248.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i248.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp16.i251.i = icmp eq i8 %79, -1
  br i1 %cmp16.i251.i, label %if.then18.i.i, label %if.end12.i.i.if.end29.i.i_crit_edge

if.end12.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i.i

if.then18.i.i:                                    ; preds = %if.end12.i.i
  %arrayidx19.i.i = getelementptr i8, ptr %77, i32 1
  %80 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %81)
  %cmp21.not.i.i = icmp eq i8 %81, 3
  br i1 %cmp21.not.i.i, label %lor.lhs.false.i.i, label %if.then18.i.i.err.i.i_crit_edge

if.then18.i.i.err.i.i_crit_edge:                  ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

lor.lhs.false.i.i:                                ; preds = %if.then18.i.i
  %82 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp24.i.i = icmp ult i32 %83, 3
  br i1 %cmp24.i.i, label %lor.lhs.false.i.i.err.i.i_crit_edge, label %if.end27.i.i

lor.lhs.false.i.i.err.i.i_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end27.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call28.i.i = tail call ptr @skb_pull(ptr noundef nonnull %62, i32 noundef 2) #10
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end27.i.i, %if.end12.i.i.if.end29.i.i_crit_edge
  %p.1.i.i = phi ptr [ %call28.i.i, %if.end27.i.i ], [ %77, %if.end12.i.i.if.end29.i.i_crit_edge ]
  %84 = ptrtoint ptr %p.1.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %p.1.i.i, align 1
  %conv31.i.i = zext i8 %85 to i32
  %and32.i.i = and i32 %conv31.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %if.end29.i.i.if.end49.i.i_crit_edge

if.end29.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.then34.i.i:                                    ; preds = %if.end29.i.i
  %86 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp36.i.i = icmp ult i32 %87, 2
  br i1 %cmp36.i.i, label %if.then34.i.i.err.i.i_crit_edge, label %if.end39.i.i

if.then34.i.i.err.i.i_crit_edge:                  ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i.i

if.end39.i.i:                                     ; preds = %if.then34.i.i
  %shl.i252.i = shl nuw nsw i32 %conv31.i.i, 8
  %arrayidx42.i.i = getelementptr i8, ptr %p.1.i.i, i32 1
  %88 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx42.i.i, align 1
  %conv43.i.i = zext i8 %89 to i32
  %add.i.i = or i32 %shl.i252.i, %conv43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49185, i32 %add.i.i)
  %cmp44.i.i = icmp eq i32 %add.i.i, 49185
  br i1 %cmp44.i.i, label %if.then46.i.i, label %if.end39.i.i.if.end49.i.i_crit_edge

if.end39.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.then46.i.i:                                    ; preds = %if.end39.i.i
  %add.ptr.i29 = getelementptr i8, ptr %p.1.i.i, i32 2
  %sub.i30 = add i32 %87, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i30)
  %cmp.i31 = icmp slt i32 %sub.i30, 4
  br i1 %cmp.i31, label %if.then46.i.i.if.end49.i.i_crit_edge, label %if.end.i33

if.then46.i.i.if.end49.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.end.i33:                                       ; preds = %if.then46.i.i
  %90 = ptrtoint ptr %add.ptr.i29 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %add.ptr.i29, align 1
  %.off.i = add i8 %91, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end6.i, label %if.end.i33.if.end49.i.i_crit_edge

if.end.i33.if.end49.i.i_crit_edge:                ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

if.end6.i:                                        ; preds = %if.end.i33
  %add.ptr7.i = getelementptr i8, ptr %p.1.i.i, i32 4
  %92 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %add.ptr7.i, align 1
  %conv8.i = zext i16 %93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i30, i32 %conv8.i)
  %cmp9.i = icmp uge i32 %sub.i30, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %91)
  %cmp13.i = icmp eq i8 %91, 2
  %or.cond = select i1 %cmp9.i, i1 %cmp13.i, i1 false
  br i1 %or.cond, label %for.cond.preheader.i34, label %if.end6.i.if.end49.i.i_crit_edge

if.end6.i.if.end49.i.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

for.cond.preheader.i34:                           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %93)
  %cmp16115.i = icmp ugt i16 %93, 1
  br i1 %cmp16115.i, label %for.cond.preheader.i34.for.body.i39_crit_edge, label %for.end.i40.thread

for.cond.preheader.i34.for.body.i39_crit_edge:    ; preds = %for.cond.preheader.i34
  br label %for.body.i39

for.end.i40.thread:                               ; preds = %for.cond.preheader.i34
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %lcp_fcs.i46 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %lcp_fcs.i46, align 4
  br label %if.end49.i.i

for.body.i39:                                     ; preds = %for.body.i39.for.body.i39_crit_edge, %for.cond.preheader.i34.for.body.i39_crit_edge
  %i.0117.i = phi i32 [ %inc.i37, %for.body.i39.for.body.i39_crit_edge ], [ 1, %for.cond.preheader.i34.for.body.i39_crit_edge ]
  %fcs.0116.i = phi i32 [ %conv21.i, %for.body.i39.for.body.i39_crit_edge ], [ 65535, %for.cond.preheader.i34.for.body.i39_crit_edge ]
  %conv18.i = trunc i32 %fcs.0116.i to i16
  %arrayidx19.i = getelementptr i8, ptr %add.ptr.i29, i32 %i.0117.i
  %95 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx19.i, align 1
  %97 = lshr i16 %conv18.i, 8
  %conv2.i.i = zext i8 %96 to i32
  %98 = and i32 %fcs.0116.i, 255
  %and.i.i35 = xor i32 %98, %conv2.i.i
  %arrayidx.i.i36 = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i.i35
  %99 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx.i.i36, align 2
  %xor4.i.i = xor i16 %100, %97
  %conv21.i = zext i16 %xor4.i.i to i32
  %inc.i37 = add nuw nsw i32 %i.0117.i, 1
  %exitcond.not.i38 = icmp eq i32 %inc.i37, %conv8.i
  br i1 %exitcond.not.i38, label %for.end.i40, label %for.body.i39.for.body.i39_crit_edge

for.body.i39.for.body.i39_crit_edge:              ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i39

for.end.i40:                                      ; preds = %for.body.i39
  %101 = ptrtoint ptr %lcp_fcs.i46 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lcp_fcs.i46, align 4
  store i32 -1, ptr %lcp_fcs.i46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %conv21.i)
  %cmp27.not.i = icmp eq i32 %102, %conv21.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %93)
  %cmp37118.old.i = icmp ugt i16 %93, 5
  %or.cond123.i = select i1 %cmp27.not.i, i1 %cmp37118.old.i, i1 false
  br i1 %or.cond123.i, label %land.lhs.true39.lr.ph.i, label %for.end.i40.if.end49.i.i_crit_edge

for.end.i40.if.end49.i.i_crit_edge:               ; preds = %for.end.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

land.lhs.true39.lr.ph.i:                          ; preds = %for.end.i40
  %sub36.i = add nsw i32 %conv8.i, -4
  %add.ptr35.i = getelementptr i8, ptr %p.1.i.i, i32 6
  br label %land.lhs.true39.i

land.lhs.true39.i:                                ; preds = %sw.epilog.i.land.lhs.true39.i_crit_edge, %land.lhs.true39.lr.ph.i
  %dlen.0121.i = phi i32 [ %sub36.i, %land.lhs.true39.lr.ph.i ], [ %sub67.i, %sw.epilog.i.land.lhs.true39.i_crit_edge ]
  %data.addr.0119.i = phi ptr [ %add.ptr35.i, %land.lhs.true39.lr.ph.i ], [ %add.ptr70.i, %sw.epilog.i.land.lhs.true39.i_crit_edge ]
  %arrayidx40.i = getelementptr i8, ptr %data.addr.0119.i, i32 1
  %103 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dlen.0121.i, i32 %conv41.i)
  %cmp42.not.i = icmp uge i32 %dlen.0121.i, %conv41.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp46.i = icmp ugt i8 %104, 1
  %or.cond.i43 = and i1 %cmp46.i, %cmp42.not.i
  br i1 %or.cond.i43, label %while.body.i44, label %land.lhs.true39.i.if.end49.i.i_crit_edge

land.lhs.true39.i.if.end49.i.i_crit_edge:         ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

while.body.i44:                                   ; preds = %land.lhs.true39.i
  %105 = ptrtoint ptr %data.addr.0119.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %data.addr.0119.i, align 1
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %106, label %while.body.i44.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb57.i
  ]

while.body.i44.sw.epilog.i_crit_edge:             ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr50.i = getelementptr i8, ptr %data.addr.0119.i, i32 2
  %108 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %add.ptr50.i, align 1
  %conv52.i = zext i16 %109 to i32
  %110 = ptrtoint ptr %mru.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv52.i, ptr %mru.i, align 4
  br label %sw.epilog.i

sw.bb57.i:                                        ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr58.i = getelementptr i8, ptr %data.addr.0119.i, i32 2
  %111 = ptrtoint ptr %add.ptr58.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %add.ptr58.i, align 1
  %113 = ptrtoint ptr %raccm.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %raccm.i.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb57.i, %sw.bb.i, %while.body.i44.sw.epilog.i_crit_edge
  %114 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx40.i, align 1
  %conv66.i = zext i8 %115 to i32
  %sub67.i = sub nsw i32 %dlen.0121.i, %conv66.i
  %add.ptr70.i = getelementptr i8, ptr %data.addr.0119.i, i32 %conv66.i
  %cmp37.i = icmp sgt i32 %sub67.i, 1
  br i1 %cmp37.i, label %sw.epilog.i.land.lhs.true39.i_crit_edge, label %sw.epilog.i.if.end49.i.i_crit_edge

sw.epilog.i.if.end49.i.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49.i.i

sw.epilog.i.land.lhs.true39.i_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39.i

if.end49.i.i:                                     ; preds = %sw.epilog.i.if.end49.i.i_crit_edge, %land.lhs.true39.i.if.end49.i.i_crit_edge, %for.end.i40.if.end49.i.i_crit_edge, %for.end.i40.thread, %if.end6.i.if.end49.i.i_crit_edge, %if.end.i33.if.end49.i.i_crit_edge, %if.then46.i.i.if.end49.i.i_crit_edge, %if.end39.i.i.if.end49.i.i_crit_edge, %if.end29.i.i.if.end49.i.i_crit_edge
  %116 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %state.i, align 4
  %conv51.i.i = trunc i32 %117 to i8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3
  %118 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv51.i.i, ptr %cb.i.i, align 8
  tail call void @skb_queue_tail(ptr noundef %rqueue.i.i, ptr noundef nonnull %62) #10
  %119 = ptrtoint ptr %rpkt.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %rpkt.i, align 4
  %120 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %state.i, align 4
  br label %if.end161.i

err.i.i:                                          ; preds = %if.then34.i.i.err.i.i_crit_edge, %lor.lhs.false.i.i.err.i.i_crit_edge, %if.then18.i.i.err.i.i_crit_edge, %for.end.i.i.err.i.i_crit_edge, %if.then127.i.err.i.i_crit_edge
  %121 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 4, ptr %state.i, align 4
  %tobool56.not.i.i = icmp eq ptr %62, null
  br i1 %tobool56.not.i.i, label %err.i.i.if.end161.i_crit_edge, label %err.i.i.if.then57.i.i_crit_edge

err.i.i.if.then57.i.i_crit_edge:                  ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57.i.i

err.i.i.if.end161.i_crit_edge:                    ; preds = %err.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then57.i.i:                                    ; preds = %err.i.i.if.then57.i.i_crit_edge, %err.thread.i.i
  tail call void @skb_trim(ptr noundef nonnull %62, i32 noundef 0) #10
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 19
  %122 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 18
  %124 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %123 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %125 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %123, i32 %sub.ptr.sub.i.neg.i.i
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 16
  %126 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %127, i32 %sub.ptr.sub.i.neg.i.i
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end161.i

if.then131.i:                                     ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %state.i, align 4
  %or133.i = or i32 %129, 2
  store i32 %or133.i, ptr %state.i, align 4
  br label %if.end161.i

if.else134.i:                                     ; preds = %if.else124.i
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %131, i32 0, i32 13
  %132 = ptrtoint ptr %termios.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %termios.i, align 4
  %and135.i = and i32 %133, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.else134.i.if.end161.i_crit_edge, label %if.then137.i

if.else134.i.if.end161.i_crit_edge:               ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then137.i:                                     ; preds = %if.else134.i
  %arrayidx140.i = getelementptr %struct.tty_struct, ptr %131, i32 0, i32 13, i32 5, i32 8
  %134 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx140.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %135)
  %cmp142.i = icmp eq i8 %55, %135
  br i1 %cmp142.i, label %if.then144.i, label %if.else146.i

if.then144.i:                                     ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @start_tty(ptr noundef %131) #10
  br label %if.end161.i

if.else146.i:                                     ; preds = %if.then137.i
  %arrayidx150.i = getelementptr %struct.tty_struct, ptr %131, i32 0, i32 13, i32 5, i32 9
  %136 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx150.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %137)
  %cmp152.i = icmp eq i8 %55, %137
  br i1 %cmp152.i, label %if.then154.i, label %if.else146.i.if.end161.i_crit_edge

if.else146.i.if.end161.i_crit_edge:               ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then154.i:                                     ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @stop_tty(ptr noundef %131) #10
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then154.i, %if.else146.i.if.end161.i_crit_edge, %if.then144.i, %if.else134.i.if.end161.i_crit_edge, %if.then131.i, %if.then57.i.i, %err.i.i.if.end161.i_crit_edge, %if.end49.i.i, %if.end.i.i.if.end161.i_crit_edge, %if.then121.i
  %inc162.i = add i32 %n.0.i, 1
  %add.ptr.i = getelementptr i8, ptr %buf.addr.0268.i, i32 %inc162.i
  %add.ptr165.i = getelementptr i8, ptr %flags.addr.0264.i, i32 %inc162.i
  %spec.select.i = select i1 %tobool28.not.i, ptr null, ptr %add.ptr165.i
  %sub.i = sub i32 %count.addr.0265.i, %inc162.i
  %cmp17.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp17.i, label %if.end161.i.while.body.i_crit_edge, label %if.end161.i.ppp_async_input.exit_crit_edge

if.end161.i.ppp_async_input.exit_crit_edge:       ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ppp_async_input.exit

if.end161.i.while.body.i_crit_edge:               ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

do.end.i:                                         ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  %call167.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  %138 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %state.i, align 4
  %or169.i = or i32 %139, 1
  store i32 %or169.i, ptr %state.i, align 4
  br label %ppp_async_input.exit

ppp_async_input.exit:                             ; preds = %do.end.i, %if.end161.i.ppp_async_input.exit_crit_edge, %if.end107.i.ppp_async_input.exit_crit_edge, %if.end16.i.ppp_async_input.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_lock, i32 noundef %call3) #10
  %rqueue = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 20
  %140 = ptrtoint ptr %rqueue to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rqueue, align 4
  %cmp.i.not = icmp eq ptr %141, %rqueue
  br i1 %cmp.i.not, label %ppp_async_input.exit.if.end10_crit_edge, label %if.then9

ppp_async_input.exit.if.end10_crit_edge:          ; preds = %ppp_async_input.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %ppp_async_input.exit
  %state.i20 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 21, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %if.then.i22, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i22:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %tsk = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %tsk) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then.i22, %if.then9.if.end10_crit_edge, %ppp_async_input.exit.if.end10_crit_edge
  %call.i.i.i.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %142 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %142, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i27, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i26 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i26, label %if.end5.i.i.i.i.ap_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.ap_put.exit_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ap_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %ap_put.exit

if.then.i27:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %dead.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 23
  tail call void @complete(ptr noundef %dead.i) #10
  br label %ap_put.exit

ap_put.exit:                                      ; preds = %if.then.i27, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ap_put.exit_crit_edge
  tail call void @tty_unthrottle(ptr noundef %tty) #10
  br label %cleanup

cleanup:                                          ; preds = %ap_put.exit, %ap_get.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_asynctty_wakeup(ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #10
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %cleanup.critedge, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !69

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  %flags.c12 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.c12) #10
  %xmit_flags = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %xmit_flags) #10
  %state.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 21, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i5, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i5:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tsk = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 21
  tail call void @__tasklet_schedule(ptr noundef %tsk) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i5, %if.end.tasklet_schedule.exit_crit_edge
  %call.i.i.i.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i9, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i8 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i8, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i9:                                       ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !70
  %dead.i = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 23
  tail call void @complete(ptr noundef %dead.i) #10
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  %flags.c = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.c) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.then.i9, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_async_process(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -244
  %rqueue = getelementptr i8, ptr %t, i32 -56
  %call15 = tail call ptr @skb_dequeue(ptr noundef %rqueue) #10
  %cmp.not16 = icmp eq ptr %call15, null
  br i1 %cmp.not16, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %chan = getelementptr i8, ptr %t, i32 84
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call17 = phi ptr [ %call15, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call17, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ppp_input_error(ptr noundef %chan, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  tail call void @ppp_input(ptr noundef %chan, ptr noundef nonnull %call17) #10
  %call = tail call ptr @skb_dequeue(ptr noundef %rqueue) #10
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %xmit_flags = getelementptr i8, ptr %t, i32 -136
  %2 = ptrtoint ptr %xmit_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %xmit_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %while.end.if.end8_crit_edge, label %land.lhs.true

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %while.end
  %call4 = tail call fastcc i32 @ppp_async_push(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %chan7 = getelementptr i8, ptr %t, i32 84
  tail call void @ppp_output_wakeup(ptr noundef %chan7) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %while.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ppp_async_push(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap, align 4
  %xmit_flags = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 7
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %xmit_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %xmit_lock = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %xmit_lock) #10
  %optr = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 15
  %olim = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 16
  %tpkt = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 12
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %obuf.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 25
  %tpkt_pos.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 13
  %tfcs.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 14
  %last_xmit.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 17
  %xaccm.i.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 8
  %mtu.i.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 24, i32 2
  %lcp_fcs.i.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 19
  %incdec.ptr.i = getelementptr %struct.asyncppp, ptr %ap, i32 0, i32 25, i32 1
  %flags.i = getelementptr inbounds %struct.asyncppp, ptr %ap, i32 0, i32 1
  %arrayidx32.i = getelementptr %struct.asyncppp, ptr %ap, i32 0, i32 8, i32 7
  %add.ptr65.i = getelementptr %struct.asyncppp, ptr %ap, i32 0, i32 25, i32 4090
  br label %for.cond.outer.outer

for.cond.outer.outer:                             ; preds = %if.then29, %if.end
  %done.0.ph.ph = phi i32 [ 1, %if.then29 ], [ 0, %if.end ]
  %tty_stuffed.0.ph.ph = phi i32 [ %spec.select, %if.then29 ], [ 0, %if.end ]
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %ppp_async_encode.exit.thread, %for.cond.outer.outer
  %tty_stuffed.0.ph = phi i32 [ %spec.select, %ppp_async_encode.exit.thread ], [ %tty_stuffed.0.ph.ph, %for.cond.outer.outer ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %tty_stuffed.0 = phi i32 [ %tty_stuffed.0.ph, %for.cond.outer ], [ %tty_stuffed.0.be, %for.cond.backedge ]
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %xmit_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 %tty_stuffed.0, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool7.not = icmp eq i32 %spec.select, 0
  br i1 %tobool7.not, label %land.lhs.true, label %for.cond.if.end20_crit_edge

for.cond.if.end20_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %for.cond
  %2 = ptrtoint ptr %optr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %optr, align 4
  %4 = ptrtoint ptr %olim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %olim, align 4
  %cmp = icmp ult ptr %3, %5
  br i1 %cmp, label %if.then8, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then8:                                         ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #10
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %10 = ptrtoint ptr %optr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %optr, align 4
  %call12 = tail call i32 %9(ptr noundef %1, ptr noundef %11, i32 noundef %sub.ptr.sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %flush, label %if.end15

if.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %optr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %optr, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %call12
  store ptr %add.ptr, ptr %optr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %sub.ptr.sub)
  %cmp17 = icmp slt i32 %call12, %sub.ptr.sub
  %spec.select100 = zext i1 %cmp17 to i32
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end42.for.cond.backedge_crit_edge, %if.end15
  %tty_stuffed.0.be = phi i32 [ %spec.select, %if.end42.for.cond.backedge_crit_edge ], [ %spec.select100, %if.end15 ]
  br label %for.cond

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %for.cond.if.end20_crit_edge
  %14 = ptrtoint ptr %optr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %optr, align 4
  %16 = ptrtoint ptr %olim to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %olim, align 4
  %cmp23.not = icmp ult ptr %15, %17
  br i1 %cmp23.not, label %if.end20.if.end32_crit_edge, label %land.lhs.true24

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.end20
  %18 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tpkt, align 4
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %land.lhs.true24.if.end32_crit_edge, label %if.then26

land.lhs.true24.if.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true24
  %20 = ptrtoint ptr %olim to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %obuf.i, ptr %olim, align 4
  %21 = ptrtoint ptr %optr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %obuf.i, ptr %optr, align 4
  %22 = ptrtoint ptr %tpkt_pos.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tpkt_pos.i, align 4
  %data1.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %24 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data1.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 6
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  %28 = ptrtoint ptr %tfcs.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tfcs.i, align 4
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16351, i16 %31)
  %cmp.i = icmp eq i16 %31, -16351
  br i1 %cmp.i, label %land.end.i, label %land.end.thread.i

land.end.i:                                       ; preds = %if.then26
  %arrayidx.i = getelementptr i8, ptr %25, i32 2
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %34 = add i8 %33, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %35 = icmp ult i8 %34, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp12.i = icmp eq i32 %23, 0
  br i1 %cmp12.i, label %if.then.i, label %land.end.i.if.end62.i_crit_edge

land.end.i.if.end62.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

land.end.thread.i:                                ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp12275.i = icmp eq i32 %23, 0
  br i1 %cmp12275.i, label %land.end.thread.i.lor.lhs.false.critedge.i_crit_edge, label %land.end.thread.i.if.end62.i_crit_edge

land.end.thread.i.if.end62.i_crit_edge:           ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

land.end.thread.i.lor.lhs.false.critedge.i_crit_edge: ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.critedge.i

if.then.i:                                        ; preds = %land.end.i
  br i1 %35, label %if.then14.i, label %if.then.i.lor.lhs.false.critedge.i_crit_edge

if.then.i.lor.lhs.false.critedge.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.critedge.i

if.then14.i:                                      ; preds = %if.then.i
  %sub.i.i = add i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %switch.i.i = icmp ult i8 %34, 2
  %or.cond = select i1 %cmp.i.i, i1 %switch.i.i, i1 false
  br i1 %or.cond, label %if.end6.i.i, label %if.then14.i.if.then21.i_crit_edge

if.then14.i.if.then21.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.end6.i.i:                                      ; preds = %if.then14.i
  %add.ptr7.i.i = getelementptr i8, ptr %25, i32 4
  %36 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %add.ptr7.i.i, align 1
  %conv8.i.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv8.i.i)
  %cmp9.i.i = icmp ult i32 %sub.i.i, %conv8.i.i
  br i1 %cmp9.i.i, label %if.end6.i.i.if.then21.i_crit_edge, label %if.end12.i.i

if.end6.i.i.if.then21.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp13.i.i = icmp eq i8 %33, 1
  br i1 %cmp13.i.i, label %for.cond.preheader.i.i, label %if.else.i.i

for.cond.preheader.i.i:                           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp16115.i.i = icmp ugt i16 %37, 1
  br i1 %cmp16115.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.0117.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %fcs.0116.i.i = phi i32 [ %conv21.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 65535, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %conv18.i.i = trunc i32 %fcs.0116.i.i to i16
  %arrayidx19.i.i = getelementptr i8, ptr %arrayidx.i, i32 %i.0117.i.i
  %38 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx19.i.i, align 1
  %40 = lshr i16 %conv18.i.i, 8
  %conv2.i.i.i = zext i8 %39 to i32
  %41 = and i32 %fcs.0116.i.i, 255
  %and.i.i.i = xor i32 %41, %conv2.i.i.i
  %arrayidx.i.i.i = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i.i.i, align 2
  %xor4.i.i.i = xor i16 %43, %40
  %conv21.i.i = zext i16 %xor4.i.i.i to i32
  %inc.i.i = add nuw nsw i32 %i.0117.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv8.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %fcs.0.lcssa.i.i = phi i32 [ 65535, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %conv21.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %44 = ptrtoint ptr %lcp_fcs.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %fcs.0.lcssa.i.i, ptr %lcp_fcs.i.i, align 4
  br label %if.then21.i

if.else.i.i:                                      ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %37)
  %cmp37118.i.i = icmp ugt i16 %37, 5
  br i1 %cmp37118.i.i, label %land.lhs.true39.lr.ph.i.i, label %if.else.i.i.if.then21.i_crit_edge

if.else.i.i.if.then21.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

land.lhs.true39.lr.ph.i.i:                        ; preds = %if.else.i.i
  %sub36.i.i = add nsw i32 %conv8.i.i, -4
  %add.ptr35.i.i = getelementptr i8, ptr %25, i32 6
  br label %land.lhs.true39.i.i

land.lhs.true39.i.i:                              ; preds = %sw.epilog.i.i.land.lhs.true39.i.i_crit_edge, %land.lhs.true39.lr.ph.i.i
  %dlen.0121.i.i = phi i32 [ %sub36.i.i, %land.lhs.true39.lr.ph.i.i ], [ %sub67.i.i, %sw.epilog.i.i.land.lhs.true39.i.i_crit_edge ]
  %data.addr.0119.i.i = phi ptr [ %add.ptr35.i.i, %land.lhs.true39.lr.ph.i.i ], [ %add.ptr70.i.i, %sw.epilog.i.i.land.lhs.true39.i.i_crit_edge ]
  %arrayidx40.i.i = getelementptr i8, ptr %data.addr.0119.i.i, i32 1
  %45 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx40.i.i, align 1
  %conv41.i.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dlen.0121.i.i, i32 %conv41.i.i)
  %cmp42.not.i.i = icmp uge i32 %dlen.0121.i.i, %conv41.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp46.i.i = icmp ugt i8 %46, 1
  %or.cond.i.i = and i1 %cmp46.i.i, %cmp42.not.i.i
  br i1 %or.cond.i.i, label %while.body.i.i, label %land.lhs.true39.i.i.if.then21.i_crit_edge

land.lhs.true39.i.i.if.then21.i_crit_edge:        ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

while.body.i.i:                                   ; preds = %land.lhs.true39.i.i
  %47 = ptrtoint ptr %data.addr.0119.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data.addr.0119.i.i, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %48, label %while.body.i.i.sw.epilog.i.i_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb57.i.i
  ]

while.body.i.i.sw.epilog.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr50.i.i = getelementptr i8, ptr %data.addr.0119.i.i, i32 2
  %50 = ptrtoint ptr %add.ptr50.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %add.ptr50.i.i, align 1
  %conv52.i.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv52.i.i, ptr %mtu.i.i, align 4
  br label %sw.epilog.i.i

sw.bb57.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr58.i.i = getelementptr i8, ptr %data.addr.0119.i.i, i32 2
  %53 = ptrtoint ptr %add.ptr58.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %add.ptr58.i.i, align 1
  %55 = ptrtoint ptr %xaccm.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %xaccm.i.i, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb57.i.i, %sw.bb.i.i, %while.body.i.i.sw.epilog.i.i_crit_edge
  %56 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx40.i.i, align 1
  %conv66.i.i = zext i8 %57 to i32
  %sub67.i.i = sub nsw i32 %dlen.0121.i.i, %conv66.i.i
  %add.ptr70.i.i = getelementptr i8, ptr %data.addr.0119.i.i, i32 %conv66.i.i
  %cmp37.i.i = icmp sgt i32 %sub67.i.i, 1
  br i1 %cmp37.i.i, label %sw.epilog.i.i.land.lhs.true39.i.i_crit_edge, label %sw.epilog.i.i.if.then21.i_crit_edge

sw.epilog.i.i.if.then21.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

sw.epilog.i.i.land.lhs.true39.i.i_crit_edge:      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true39.i.i

lor.lhs.false.critedge.i:                         ; preds = %if.then.i.lor.lhs.false.critedge.i_crit_edge, %land.end.thread.i.lor.lhs.false.critedge.i_crit_edge
  %58 = load i32, ptr @flag_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp16.i = icmp eq i32 %58, 0
  br i1 %cmp16.i, label %lor.lhs.false.critedge.i.if.then21.i_crit_edge, label %lor.lhs.false18.i

lor.lhs.false.critedge.i.if.then21.i_crit_edge:   ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false.critedge.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = ptrtoint ptr %last_xmit.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_xmit.i, align 4
  %62 = add i32 %58, %61
  %sub.i = sub i32 %59, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp19.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp19.i, label %lor.lhs.false18.i.if.then21.i_crit_edge, label %lor.lhs.false18.i.if.end22.i_crit_edge

lor.lhs.false18.i.if.end22.i_crit_edge:           ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

lor.lhs.false18.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false18.i.if.then21.i_crit_edge, %lor.lhs.false.critedge.i.if.then21.i_crit_edge, %sw.epilog.i.i.if.then21.i_crit_edge, %land.lhs.true39.i.i.if.then21.i_crit_edge, %if.else.i.i.if.then21.i_crit_edge, %for.end.i.i, %if.end6.i.i.if.then21.i_crit_edge, %if.then14.i.if.then21.i_crit_edge
  %63 = phi i1 [ false, %lor.lhs.false18.i.if.then21.i_crit_edge ], [ false, %lor.lhs.false.critedge.i.if.then21.i_crit_edge ], [ true, %if.then14.i.if.then21.i_crit_edge ], [ true, %if.end6.i.i.if.then21.i_crit_edge ], [ true, %for.end.i.i ], [ true, %if.else.i.i.if.then21.i_crit_edge ], [ true, %land.lhs.true39.i.i.if.then21.i_crit_edge ], [ true, %sw.epilog.i.i.if.then21.i_crit_edge ]
  %64 = ptrtoint ptr %obuf.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 126, ptr %obuf.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %lor.lhs.false18.i.if.end22.i_crit_edge
  %65 = phi i1 [ %63, %if.then21.i ], [ false, %lor.lhs.false18.i.if.end22.i_crit_edge ]
  %buf.0.i = phi ptr [ %incdec.ptr.i, %if.then21.i ], [ %obuf.i, %lor.lhs.false18.i.if.end22.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %67 = ptrtoint ptr %last_xmit.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %last_xmit.i, align 4
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp24.i = icmp eq i32 %and.i, 0
  %brmerge.i = or i1 %65, %cmp24.i
  br i1 %brmerge.i, label %do.body.i, label %if.end22.i.if.end62.i_crit_edge

if.end22.i.if.end62.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

do.body.i:                                        ; preds = %if.end22.i
  %70 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %tobool34.not.i = icmp sgt i32 %71, -1
  br i1 %tobool34.not.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr36.i = getelementptr i8, ptr %buf.0.i, i32 1
  %72 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 125, ptr %buf.0.i, align 1
  %73 = ptrtoint ptr %incdec.ptr36.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -33, ptr %incdec.ptr36.i, align 1
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %buf.0.i, align 1
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then35.i
  %incdec.ptr36.pn.i = phi ptr [ %incdec.ptr36.i, %if.then35.i ], [ %buf.0.i, %if.else.i ]
  %buf.1.i = getelementptr i8, ptr %incdec.ptr36.pn.i, i32 1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @crc_ccitt_table to i32))
  %75 = load i16, ptr @crc_ccitt_table, align 2
  br i1 %65, label %do.end.i.if.then50.i_crit_edge, label %lor.lhs.false45.i

do.end.i.if.then50.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50.i

lor.lhs.false45.i:                                ; preds = %do.end.i
  %76 = ptrtoint ptr %xaccm.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %xaccm.i.i, align 4
  %and48.i = and i32 %77, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else53.i, label %lor.lhs.false45.i.if.then50.i_crit_edge

lor.lhs.false45.i.if.then50.i_crit_edge:          ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50.i

if.then50.i:                                      ; preds = %lor.lhs.false45.i.if.then50.i_crit_edge, %do.end.i.if.then50.i_crit_edge
  %incdec.ptr51.i = getelementptr i8, ptr %incdec.ptr36.pn.i, i32 2
  %78 = ptrtoint ptr %buf.1.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 125, ptr %buf.1.i, align 1
  %incdec.ptr52.i = getelementptr i8, ptr %incdec.ptr36.pn.i, i32 3
  %79 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 35, ptr %incdec.ptr51.i, align 1
  br label %do.end57.i

if.else53.i:                                      ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr54.i = getelementptr i8, ptr %incdec.ptr36.pn.i, i32 2
  %80 = ptrtoint ptr %buf.1.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 3, ptr %buf.1.i, align 1
  br label %do.end57.i

do.end57.i:                                       ; preds = %if.else53.i, %if.then50.i
  %buf.2.i = phi ptr [ %incdec.ptr52.i, %if.then50.i ], [ %incdec.ptr54.i, %if.else53.i ]
  %81 = lshr i16 %75, 8
  %xor4.i.i = and i16 %75, 255
  %82 = xor i16 %xor4.i.i, 252
  %and.i.i = zext i16 %82 to i32
  %arrayidx.i.i = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i.i
  %83 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx.i.i, align 2
  %xor4.i270.i = xor i16 %84, %81
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end57.i, %if.end22.i.if.end62.i_crit_edge, %land.end.thread.i.if.end62.i_crit_edge, %land.end.i.if.end62.i_crit_edge
  %85 = phi i1 [ %65, %do.end57.i ], [ %35, %land.end.i.if.end62.i_crit_edge ], [ false, %if.end22.i.if.end62.i_crit_edge ], [ false, %land.end.thread.i.if.end62.i_crit_edge ]
  %fcs.0.shrunk.i = phi i16 [ %xor4.i270.i, %do.end57.i ], [ %29, %land.end.i.if.end62.i_crit_edge ], [ -1, %if.end22.i.if.end62.i_crit_edge ], [ %29, %land.end.thread.i.if.end62.i_crit_edge ]
  %buf.3.i = phi ptr [ %buf.2.i, %do.end57.i ], [ %obuf.i, %land.end.i.if.end62.i_crit_edge ], [ %buf.0.i, %if.end22.i.if.end62.i_crit_edge ], [ %obuf.i, %land.end.thread.i.if.end62.i_crit_edge ]
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %do.end110.i, %if.end62.i
  %fcs.1.ph.in.i = phi i16 [ %xor4.i274.i, %do.end110.i ], [ %fcs.0.shrunk.i, %if.end62.i ]
  %i.0.ph.i = phi i32 [ %inc.le.i, %do.end110.i ], [ %23, %if.end62.i ]
  %buf.4.ph.i = phi ptr [ %buf.5.i, %do.end110.i ], [ %buf.3.i, %if.end62.i ]
  %fcs.1.ph.i = zext i16 %fcs.1.ph.in.i to i32
  %cmp69.i = icmp ult ptr %buf.4.ph.i, %add.ptr65.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.lhs.true80.i.while.cond.i_crit_edge, %while.cond.outer.i
  %i.0.i = phi i32 [ 1, %land.lhs.true80.i.while.cond.i_crit_edge ], [ %i.0.ph.i, %while.cond.outer.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %27)
  %cmp66.i = icmp slt i32 %i.0.i, %27
  %or.cond.i = select i1 %cmp66.i, i1 %cmp69.i, i1 false
  br i1 %or.cond.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %arrayidx73.i = getelementptr i8, ptr %25, i32 %i.0.i
  %86 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx73.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp75.i = icmp eq i32 %i.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp78.i = icmp eq i8 %87, 0
  %or.cond266.i = select i1 %cmp75.i, i1 %cmp78.i, i1 false
  br i1 %or.cond266.i, label %land.lhs.true80.i, label %while.body.i.if.end85.i_crit_edge

while.body.i.if.end85.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

land.lhs.true80.i:                                ; preds = %while.body.i
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.i, align 4
  %and82.i = and i32 %89, 1
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %land.lhs.true80.i.if.end85.i_crit_edge, label %land.lhs.true80.i.while.cond.i_crit_edge

land.lhs.true80.i.while.cond.i_crit_edge:         ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

land.lhs.true80.i.if.end85.i_crit_edge:           ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.end85.i:                                       ; preds = %land.lhs.true80.i.if.end85.i_crit_edge, %while.body.i.if.end85.i_crit_edge
  %.lcssa.i = phi i8 [ 0, %land.lhs.true80.i.if.end85.i_crit_edge ], [ %87, %while.body.i.if.end85.i_crit_edge ]
  %i.0.lcssa282.i = phi i32 [ 0, %land.lhs.true80.i.if.end85.i_crit_edge ], [ %i.0.i, %while.body.i.if.end85.i_crit_edge ]
  %inc.le.i = add nsw i32 %i.0.lcssa282.i, 1
  %conv74.le.i = zext i8 %.lcssa.i to i32
  %90 = lshr i16 %fcs.1.ph.in.i, 8
  %91 = and i32 %fcs.1.ph.i, 255
  %and.i272.i = xor i32 %91, %conv74.le.i
  %arrayidx.i273.i = getelementptr [256 x i16], ptr @crc_ccitt_table, i32 0, i32 %and.i272.i
  %92 = ptrtoint ptr %arrayidx.i273.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i273.i, align 2
  %xor4.i274.i = xor i16 %93, %90
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.lcssa.i)
  %cmp93.i = icmp ult i8 %.lcssa.i, 32
  %or.cond267.i = select i1 %85, i1 %cmp93.i, i1 false
  br i1 %or.cond267.i, label %if.end85.i.if.then101.i_crit_edge, label %lor.lhs.false95.i

if.end85.i.if.then101.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

lor.lhs.false95.i:                                ; preds = %if.end85.i
  %94 = lshr i32 %conv74.le.i, 5
  %arrayidx97.i = getelementptr %struct.asyncppp, ptr %ap, i32 0, i32 8, i32 %94
  %95 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx97.i, align 4
  %and98.i = and i32 %conv74.le.i, 31
  %shl.i = shl nuw i32 1, %and98.i
  %and99.i = and i32 %96, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.else105.i, label %lor.lhs.false95.i.if.then101.i_crit_edge

lor.lhs.false95.i.if.then101.i_crit_edge:         ; preds = %lor.lhs.false95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101.i

if.then101.i:                                     ; preds = %lor.lhs.false95.i.if.then101.i_crit_edge, %if.end85.i.if.then101.i_crit_edge
  %incdec.ptr102.i = getelementptr i8, ptr %buf.4.ph.i, i32 1
  %97 = ptrtoint ptr %buf.4.ph.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 125, ptr %buf.4.ph.i, align 1
  %xor.i = xor i8 %.lcssa.i, 32
  %98 = ptrtoint ptr %incdec.ptr102.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %xor.i, ptr %incdec.ptr102.i, align 1
  br label %do.end110.i

if.else105.i:                                     ; preds = %lor.lhs.false95.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %buf.4.ph.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %.lcssa.i, ptr %buf.4.ph.i, align 1
  br label %do.end110.i

do.end110.i:                                      ; preds = %if.else105.i, %if.then101.i
  %incdec.ptr102.pn.i = phi ptr [ %incdec.ptr102.i, %if.then101.i ], [ %buf.4.ph.i, %if.else105.i ]
  %buf.5.i = getelementptr i8, ptr %incdec.ptr102.pn.i, i32 1
  br label %while.cond.outer.i

while.end.i:                                      ; preds = %while.cond.i
  br i1 %cmp66.i, label %ppp_async_encode.exit.thread, label %if.end118.i

ppp_async_encode.exit.thread:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %olim to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %buf.4.ph.i, ptr %olim, align 4
  %101 = ptrtoint ptr %tpkt_pos.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %i.0.i, ptr %tpkt_pos.i, align 4
  %102 = ptrtoint ptr %tfcs.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %fcs.1.ph.in.i, ptr %tfcs.i, align 4
  br label %for.cond.outer

if.end118.i:                                      ; preds = %while.end.i
  %neg.i = xor i32 %fcs.1.ph.i, -1
  %and119.i = and i32 %neg.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and119.i)
  %cmp123.i = icmp ult i32 %and119.i, 32
  %or.cond268.i = select i1 %85, i1 %cmp123.i, i1 false
  br i1 %or.cond268.i, label %if.end118.i.if.then133.i_crit_edge, label %lor.lhs.false125.i

if.end118.i.if.then133.i_crit_edge:               ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then133.i

lor.lhs.false125.i:                               ; preds = %if.end118.i
  %103 = lshr i32 %and119.i, 5
  %arrayidx128.i = getelementptr %struct.asyncppp, ptr %ap, i32 0, i32 8, i32 %103
  %104 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx128.i, align 4
  %and129.i = and i32 %neg.i, 31
  %shl130.i = shl nuw i32 1, %and129.i
  %and131.i = and i32 %105, %shl130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  br i1 %tobool132.not.i, label %if.else138.i, label %lor.lhs.false125.i.if.then133.i_crit_edge

lor.lhs.false125.i.if.then133.i_crit_edge:        ; preds = %lor.lhs.false125.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then133.i

if.then133.i:                                     ; preds = %lor.lhs.false125.i.if.then133.i_crit_edge, %if.end118.i.if.then133.i_crit_edge
  %incdec.ptr134.i = getelementptr i8, ptr %buf.4.ph.i, i32 1
  %106 = ptrtoint ptr %buf.4.ph.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 125, ptr %buf.4.ph.i, align 1
  %107 = trunc i16 %fcs.1.ph.in.i to i8
  %conv136.i = xor i8 %107, -33
  %108 = ptrtoint ptr %incdec.ptr134.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv136.i, ptr %incdec.ptr134.i, align 1
  br label %do.end143.i

if.else138.i:                                     ; preds = %lor.lhs.false125.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv139.i = trunc i32 %neg.i to i8
  %109 = ptrtoint ptr %buf.4.ph.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv139.i, ptr %buf.4.ph.i, align 1
  br label %do.end143.i

do.end143.i:                                      ; preds = %if.else138.i, %if.then133.i
  %incdec.ptr134.pn.i = phi ptr [ %incdec.ptr134.i, %if.then133.i ], [ %buf.4.ph.i, %if.else138.i ]
  %buf.6.i = getelementptr i8, ptr %incdec.ptr134.pn.i, i32 1
  %110 = lshr i32 %neg.i, 8
  %and145.i = and i32 %110, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and145.i)
  %cmp149.i = icmp ult i32 %and145.i, 32
  %or.cond269.i = select i1 %85, i1 %cmp149.i, i1 false
  br i1 %or.cond269.i, label %do.end143.i.if.then159.i_crit_edge, label %lor.lhs.false151.i

do.end143.i.if.then159.i_crit_edge:               ; preds = %do.end143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then159.i

lor.lhs.false151.i:                               ; preds = %do.end143.i
  %111 = lshr i32 %and145.i, 5
  %arrayidx154.i = getelementptr %struct.asyncppp, ptr %ap, i32 0, i32 8, i32 %111
  %112 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx154.i, align 4
  %and155.i = and i32 %110, 31
  %shl156.i = shl nuw i32 1, %and155.i
  %and157.i = and i32 %113, %shl156.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157.i)
  %tobool158.not.i = icmp eq i32 %and157.i, 0
  br i1 %tobool158.not.i, label %if.else164.i, label %lor.lhs.false151.i.if.then159.i_crit_edge

lor.lhs.false151.i.if.then159.i_crit_edge:        ; preds = %lor.lhs.false151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then159.i

if.then159.i:                                     ; preds = %lor.lhs.false151.i.if.then159.i_crit_edge, %do.end143.i.if.then159.i_crit_edge
  %incdec.ptr160.i = getelementptr i8, ptr %incdec.ptr134.pn.i, i32 2
  %114 = ptrtoint ptr %buf.6.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 125, ptr %buf.6.i, align 1
  %115 = trunc i32 %110 to i8
  %conv162.i = xor i8 %115, 32
  %incdec.ptr163.i = getelementptr i8, ptr %incdec.ptr134.pn.i, i32 3
  %116 = ptrtoint ptr %incdec.ptr160.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv162.i, ptr %incdec.ptr160.i, align 1
  br label %if.then29

if.else164.i:                                     ; preds = %lor.lhs.false151.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv165.i = trunc i32 %110 to i8
  %incdec.ptr166.i = getelementptr i8, ptr %incdec.ptr134.pn.i, i32 2
  %117 = ptrtoint ptr %buf.6.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv165.i, ptr %buf.6.i, align 1
  br label %if.then29

if.then29:                                        ; preds = %if.else164.i, %if.then159.i
  %buf.7.i = phi ptr [ %incdec.ptr163.i, %if.then159.i ], [ %incdec.ptr166.i, %if.else164.i ]
  %incdec.ptr170.i = getelementptr i8, ptr %buf.7.i, i32 1
  %118 = ptrtoint ptr %buf.7.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 126, ptr %buf.7.i, align 1
  %119 = ptrtoint ptr %olim to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %incdec.ptr170.i, ptr %olim, align 4
  %120 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tpkt, align 4
  tail call void @consume_skb(ptr noundef %121) #10
  %122 = ptrtoint ptr %tpkt to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %tpkt, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xmit_flags) #10
  br label %for.cond.outer.outer

if.end32:                                         ; preds = %land.lhs.true24.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %xmit_flags) #10
  %123 = ptrtoint ptr %xmit_flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %xmit_flags, align 4
  %and1.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool36.not = icmp eq i32 %and1.i, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.end32.if.end42_crit_edge

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

lor.lhs.false:                                    ; preds = %if.end32
  br i1 %tobool7.not, label %land.lhs.true38, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true38:                                  ; preds = %lor.lhs.false
  %125 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tpkt, align 4
  %tobool40.not = icmp eq ptr %126, null
  br i1 %tobool40.not, label %land.lhs.true38.cleanup.sink.split_crit_edge, label %land.lhs.true38.if.end42_crit_edge

land.lhs.true38.if.end42_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true38.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end42:                                         ; preds = %land.lhs.true38.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  %call44 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %xmit_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end42.for.cond.backedge_crit_edge, label %if.end42.cleanup.sink.split_crit_edge

if.end42.cleanup.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end42.for.cond.backedge_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

flush:                                            ; preds = %if.then8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %xmit_flags) #10
  %127 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tpkt, align 4
  %tobool51.not = icmp eq ptr %128, null
  br i1 %tobool51.not, label %flush.if.end56_crit_edge, label %if.then52

flush.if.end56_crit_edge:                         ; preds = %flush
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then52:                                        ; preds = %flush
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %128, i32 noundef 0) #10
  %129 = ptrtoint ptr %tpkt to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %tpkt, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xmit_flags) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %flush.if.end56_crit_edge
  %done.2 = phi i32 [ 1, %if.then52 ], [ %done.0.ph.ph, %flush.if.end56_crit_edge ]
  %130 = ptrtoint ptr %olim to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %olim, align 4
  %132 = ptrtoint ptr %optr to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %optr, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end56, %if.end42.cleanup.sink.split_crit_edge, %land.lhs.true38.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %done.2, %if.end56 ], [ %done.0.ph.ph, %if.end42.cleanup.sink.split_crit_edge ], [ %done.0.ph.ph, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %done.0.ph.ph, %land.lhs.true38.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmit_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_output_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_async_send(ptr nocapture noundef readonly %chan, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call = tail call fastcc i32 @ppp_async_push(ptr noundef %1)
  %xmit_flags = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %xmit_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tpkt = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tpkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %tpkt, align 4
  %tpkt_pos = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %tpkt_pos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tpkt_pos, align 4
  %call2 = tail call fastcc i32 @ppp_async_push(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_async_ioctl(ptr nocapture noundef readonly %chan, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %accm = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %accm) #10
  %3 = getelementptr inbounds [8 x i32], ptr %accm, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i32], ptr %accm, i32 0, i32 3
  %5 = call ptr @memset(ptr %accm, i32 255, i32 32)
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2147191718, label %sw.bb
    i32 1074033753, label %sw.bb2
    i32 -2147191720, label %sw.bb20
    i32 1074033751, label %sw.bb39
    i32 -2147191723, label %sw.bb57
    i32 1074033748, label %sw.bb76
    i32 -2145356720, label %sw.bb93
    i32 1075868751, label %if.then.i205
    i32 -2147191725, label %sw.bb112
    i32 1074033746, label %sw.bb131
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %rbits = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %rbits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rbits, align 4
  %or = or i32 %10, %8
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 414) #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !73
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %or, i32 -1226833921) #10, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 419) #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i182 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i182 to ptr
  %cpu_domain.i.i183 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i183) #6, !srcloc !73
  %and.i184 = and i32 %17, -13
  %or.i185 = or i32 %and.i184, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i185) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #10, !srcloc !80
  %asmresult = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool13.not = icmp eq i32 %asmresult, 0
  br i1 %tobool13.not, label %if.end15, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end15:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult11 = extractvalue { i32, i32 } %18, 1
  %and = and i32 %asmresult11, -251658241
  %flags16 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %flags16, align 4
  %recv_lock = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %recv_lock) #10
  %and17 = and i32 %asmresult11, 251658240
  %rbits18 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %rbits18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and17, ptr %rbits18, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %recv_lock) #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xaccm = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %xaccm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xaccm, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 429) #10
  %23 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i186 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i186 to ptr
  %cpu_domain.i.i187 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i187) #6, !srcloc !73
  %and.i188 = and i32 %25, -13
  %or.i189 = or i32 %and.i188, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i189) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %22, i32 -1226833921) #10, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  %spec.select176 = select i1 %tobool36.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 434) #10
  %27 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i190 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i190 to ptr
  %cpu_domain.i.i191 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i191) #6, !srcloc !73
  %and.i192 = and i32 %29, -13
  %or.i193 = or i32 %and.i192, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i193) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #10, !srcloc !82
  %asmresult49 = extractvalue { i32, i32 } %30, 0
  %asmresult50 = extractvalue { i32, i32 } %30, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %xaccm51 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %xaccm51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %asmresult50, ptr %xaccm51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult49)
  %tobool54.not = icmp eq i32 %asmresult49, 0
  %spec.select177 = select i1 %tobool54.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %raccm = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %raccm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %raccm, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 440) #10
  %34 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i194 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i194 to ptr
  %cpu_domain.i.i195 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i195) #6, !srcloc !73
  %and.i196 = and i32 %36, -13
  %or.i197 = or i32 %and.i196, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i197) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %33, i32 -1226833921) #10, !srcloc !83
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool73.not = icmp eq i32 %37, 0
  %spec.select178 = select i1 %tobool73.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 445) #10
  %38 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i198 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i198 to ptr
  %cpu_domain.i.i199 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i199) #6, !srcloc !73
  %and.i200 = and i32 %40, -13
  %or.i201 = or i32 %and.i200, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i201) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %41 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #10, !srcloc !84
  %asmresult86 = extractvalue { i32, i32 } %41, 0
  %asmresult87 = extractvalue { i32, i32 } %41, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %raccm88 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %raccm88 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %asmresult87, ptr %raccm88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult86)
  %tobool90.not = icmp eq i32 %asmresult86, 0
  %spec.select179 = select i1 %tobool90.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb93:                                          ; preds = %entry
  %xaccm94 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 8
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb93.sw.epilog_crit_edge, label %if.end.i.i

sw.bb93.sw.epilog_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb93
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1226833920) #15, !srcloc !85
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %xaccm94, i32 noundef 32) #10
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %xaccm94, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool96.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select223 = select i1 %tobool96.not, i32 0, i32 -14
  br label %sw.epilog

if.then.i205:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #10
  %call.i.i204 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i204, label %if.then.i205.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i205.if.then11.i.i_crit_edge:             ; preds = %if.then.i205
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i205
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 32, i32 -1226833920) #15, !srcloc !86
  %asmresult.i.i206 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i206)
  %cmp.i.i207 = icmp eq i32 %asmresult.i.i206, 0
  br i1 %cmp.i.i207, label %if.end.i.i209, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !69

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i209:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i208 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %accm, i32 noundef 32) #10
  %45 = call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !73
  %and.i.i.i.i = and i32 %47, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %accm, ptr noundef %2, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #10, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end104, label %if.end.i.i209.if.then11.i.i_crit_edge, !prof !69

if.end.i.i209.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i209.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i205.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i209.if.then11.i.i_crit_edge ], [ 32, %if.then.i205.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %accm, i32 %sub.i.i
  %48 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %sw.epilog

if.end104:                                        ; preds = %if.end.i.i209
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %3, align 4
  %and106 = and i32 %50, -1073741825
  store i32 %and106, ptr %3, align 4
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %4, align 4
  %or108 = or i32 %52, 1610612736
  store i32 %or108, ptr %4, align 4
  %xaccm109 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 8
  %53 = call ptr @memcpy(ptr %xaccm109, ptr %accm, i32 32)
  br label %sw.epilog

sw.bb112:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mru = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 465) #10
  %56 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i211 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i211 to ptr
  %cpu_domain.i.i212 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i212) #6, !srcloc !73
  %and.i213 = and i32 %58, -13
  %or.i214 = or i32 %and.i213, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i214) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %55, i32 -1226833921) #10, !srcloc !87
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool128.not = icmp eq i32 %59, 0
  %spec.select181 = select i1 %tobool128.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb131:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 470) #10
  %60 = tail call i32 @llvm.read_register.i32(metadata !57) #10
  %and.i.i.i215 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i215 to ptr
  %cpu_domain.i.i216 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i216) #6, !srcloc !73
  %and.i217 = and i32 %62, -13
  %or.i218 = or i32 %and.i217, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i218) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  %63 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #10, !srcloc !88
  %asmresult141 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #10, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult141)
  %tobool144.not = icmp eq i32 %asmresult141, 0
  br i1 %tobool144.not, label %if.end146, label %sw.bb131.sw.epilog_crit_edge

sw.bb131.sw.epilog_crit_edge:                     ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end146:                                        ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #12
  %asmresult142 = extractvalue { i32, i32 } %63, 1
  %64 = tail call i32 @llvm.smax.i32(i32 %asmresult142, i32 1500)
  %mru149 = getelementptr inbounds %struct.asyncppp, ptr %1, i32 0, i32 4
  %65 = ptrtoint ptr %mru149 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %mru149, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end146, %sw.bb131.sw.epilog_crit_edge, %sw.bb112, %if.end104, %if.then11.i.i, %copy_to_user.exit, %if.end.i.i.sw.epilog_crit_edge, %sw.bb93.sw.epilog_crit_edge, %sw.bb76, %sw.bb57, %sw.bb39, %sw.bb20, %if.end15, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -14, %sw.bb131.sw.epilog_crit_edge ], [ 0, %if.end146 ], [ 0, %if.end104 ], [ -14, %sw.bb2.sw.epilog_crit_edge ], [ 0, %if.end15 ], [ %spec.select, %sw.bb ], [ %spec.select176, %sw.bb20 ], [ %spec.select177, %sw.bb39 ], [ %spec.select178, %sw.bb57 ], [ %spec.select179, %sw.bb76 ], [ %spec.select181, %sw.bb112 ], [ -25, %entry.sw.epilog_crit_edge ], [ -14, %sw.bb93.sw.epilog_crit_edge ], [ -14, %if.end.i.i.sw.epilog_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select223, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %accm) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_unregister_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_channel_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_unit_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @n_tty_ioctl_helper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_mode_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !40, !42, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__param_flag_time, !1, !"__param_flag_time", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/ppp_async.c", i32 88, i32 1}
!2 = !{ptr @__UNIQUE_ID_flag_timetype337, !1, !"__UNIQUE_ID_flag_timetype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_flag_time338, !4, !"__UNIQUE_ID_flag_time338", i1 false, i1 false}
!4 = !{!"../drivers/net/ppp/ppp_async.c", i32 89, i32 1}
!5 = !{ptr @__UNIQUE_ID_file339, !6, !"__UNIQUE_ID_file339", i1 false, i1 false}
!6 = !{!"../drivers/net/ppp/ppp_async.c", i32 90, i32 1}
!7 = !{ptr @__UNIQUE_ID_license340, !6, !"__UNIQUE_ID_license340", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias341, !9, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!9 = !{!"../drivers/net/ppp/ppp_async.c", i32 91, i32 1}
!10 = !{ptr @__initcall__kmod_ppp_async__342_1020_ppp_async_init6, !11, !"__initcall__kmod_ppp_async__342_1020_ppp_async_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/ppp/ppp_async.c", i32 1020, i32 1}
!12 = !{ptr @__exitcall_ppp_async_cleanup, !13, !"__exitcall_ppp_async_cleanup", i1 false, i1 false}
!13 = !{!"../drivers/net/ppp/ppp_async.c", i32 1021, i32 1}
!14 = !{ptr @__param_str_flag_time, !1, !"__param_str_flag_time", i1 false, i1 false}
!15 = !{ptr @flag_time, !16, !"flag_time", i1 false, i1 false}
!16 = !{!"../drivers/net/ppp/ppp_async.c", i32 87, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ppp/ppp_async.c", i32 374, i32 10}
!19 = !{ptr @ppp_ldisc, !20, !"ppp_ldisc", i1 false, i1 false}
!20 = !{!"../drivers/net/ppp/ppp_async.c", i32 371, i32 29}
!21 = !{ptr @ppp_asynctty_open.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ppp/ppp_async.c", i32 172, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ppp_asynctty_open.__key.2, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ppp/ppp_async.c", i32 173, i32 2}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @skb_queue_head_init.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @init_completion.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/completion.h", i32 87, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @async_ops, !34, !"async_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/ppp/ppp_async.c", i32 109, i32 37}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ppp/ppp_async.c", i32 414, i32 7}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ppp/ppp_async.c", i32 130, i32 8}
!46 = !{ptr @disc_data_lock, !45, !"disc_data_lock", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ppp/ppp_async.c", i32 927, i32 2}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ppp_async_input._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ppp_async_input._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ppp/ppp_async.c", i32 393, i32 3}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ppp_async_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ppp_async_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148451582}
!68 = !{i64 2148366022, i64 2148366054, i64 2148366083, i64 2148366117, i64 2148366148, i64 2148366171}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2149327696}
!71 = !{i64 2148363557, i64 2148363589, i64 2148363618, i64 2148363652, i64 2148363683, i64 2148363706}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 5079178}
!74 = !{i64 5079375}
!75 = !{i64 2152564608}
!76 = !{i64 2156155498, i64 2156155778, i64 2156156112, i64 2156156446}
!77 = !{i64 2156169068, i64 2156169348, i64 2156169682, i64 2156170016}
!78 = !{i64 2156177851, i64 2156178131, i64 2156178465, i64 2156178799}
!79 = !{i64 2156189619, i64 2156189899, i64 2156190233, i64 2156190567}
!80 = !{i64 2156201782, i64 2156202062, i64 2156202396, i64 2156202730}
!81 = !{i64 2156212216, i64 2156212496, i64 2156212830, i64 2156213164}
!82 = !{i64 2156224519, i64 2156224799, i64 2156225133, i64 2156225467}
!83 = !{i64 2156234759, i64 2156235039, i64 2156235373, i64 2156235707}
!84 = !{i64 2156247038, i64 2156247318, i64 2156247652, i64 2156247986}
!85 = !{i64 2152584304, i64 2152584329}
!86 = !{i64 2152583623, i64 2152583648}
!87 = !{i64 2156258680, i64 2156258960, i64 2156259294, i64 2156259628}
!88 = !{i64 2156270843, i64 2156271123, i64 2156271457, i64 2156271791}
