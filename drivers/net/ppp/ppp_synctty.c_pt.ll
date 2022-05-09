; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/ppp_synctty.c_pt.bc'
source_filename = "../drivers/net/ppp/ppp_synctty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ppp_channel_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.100, %struct.anon.101, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.100 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.101 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syncppp = type { ptr, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, [8 x i32], i32, i32, i32, ptr, i32, %struct.sk_buff_head, %struct.tasklet_struct, %struct.refcount_struct, %struct.completion, %struct.ppp_channel }
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

@ppp_sync_ldisc = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str, i32 14, ptr @ppp_sync_open, ptr @ppp_sync_close, ptr null, ptr @ppp_sync_read, ptr @ppp_sync_write, ptr @ppp_synctty_ioctl, ptr null, ptr null, ptr @ppp_sync_poll, ptr @ppp_sync_hangup, ptr @ppp_sync_receive, ptr @ppp_sync_wakeup, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_ppp_synctty__338_731_ppp_sync_init6 = internal global ptr @ppp_sync_init, section ".initcall6.init", align 4
@__exitcall_ppp_sync_cleanup = internal global ptr @ppp_sync_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file339 = internal constant [45 x i8] c"ppp_synctty.file=drivers/net/ppp/ppp_synctty\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [24 x i8] c"ppp_synctty.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias341 = internal constant [31 x i8] c"ppp_synctty.alias=tty-ldisc-14\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pppsync\00", [24 x i8] zeroinitializer }, align 32
@ppp_sync_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ap->xmit_lock\00", [17 x i8] zeroinitializer }, align 32
@ppp_sync_open.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ap->recv_lock\00", [17 x i8] zeroinitializer }, align 32
@sync_ops = internal constant { %struct.ppp_channel_ops, [20 x i8] } { %struct.ppp_channel_ops { ptr @ppp_sync_send, ptr @ppp_sync_ioctl, ptr null }, [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"send buffer\00", [20 x i8] zeroinitializer }, align 32
@ppp_print_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017ppp_synctty: %s, count = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ppp_print_buffer\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/ppp/ppp_synctty.c\00", [34 x i8] zeroinitializer }, align 32
@ppp_print_buffer._entry_ptr = internal global ptr @ppp_print_buffer._entry, section ".printk_index", align 4
@ppp_print_buffer.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.8, ptr @.str.9, ptr @.str.11, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ppp_synctty\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@disc_data_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disc_data_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"receive buffer\00", [17 x i8] zeroinitializer }, align 32
@ppp_sync_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013PPPsync: no memory (input pkt)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ppp_sync_input\00", [17 x i8] zeroinitializer }, align 32
@ppp_sync_input._entry_ptr = internal global ptr @ppp_sync_input._entry, section ".printk_index", align 4
@ppp_sync_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013PPP_sync: error %d registering line disc.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ppp_sync_init\00", [18 x i8] zeroinitializer }, align 32
@ppp_sync_init._entry_ptr = internal global ptr @ppp_sync_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 21515, i64 21531, i64 2147775543, i64 2147775574]
@__sancov_gen_cov_switch_values.22 = internal global [12 x i64] [i64 10, i64 32, i64 1074033746, i64 1074033748, i64 1074033751, i64 1074033753, i64 1075868751, i64 2147775571, i64 2147775573, i64 2147775576, i64 2147775578, i64 2149610576]
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"ppp_sync_ldisc\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 364, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 367, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 173, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 174, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"sync_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 99, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1984, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 87, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 549, i32 21 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 111, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 113, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 174, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"disc_data_lock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 132, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 676, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 681, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [33 x i8] c"../drivers/net/ppp/ppp_synctty.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 386, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias341, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__exitcall_ppp_sync_cleanup, ptr @__initcall__kmod_ppp_synctty__338_731_ppp_sync_init6, ptr @ppp_print_buffer._entry, ptr @ppp_print_buffer._entry_ptr, ptr @ppp_sync_cleanup, ptr @ppp_sync_init._entry, ptr @ppp_sync_init._entry_ptr, ptr @ppp_sync_input._entry, ptr @ppp_sync_input._entry_ptr, ptr @ppp_sync_ldisc, ptr @.str, ptr @ppp_sync_open.__key, ptr @.str.1, ptr @ppp_sync_open.__key.2, ptr @.str.3, ptr @sync_ops, ptr @skb_queue_head_init.__key, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @disc_data_lock, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_sync_ldisc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_sync_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_sync_open.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_print_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disc_data_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_sync_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ppp_sync_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ppp_sync_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @ppp_sync_ldisc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_sync_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @ppp_sync_ldisc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_sync_open(ptr noundef %tty) #2 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 328) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tty, ptr %call7.i.i, align 8
  %mru = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %mru to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1500, ptr %mru, align 4
  %xmit_lock = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %xmit_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ppp_sync_open.__key, i16 noundef signext 3) #10
  %recv_lock = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %recv_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ppp_sync_open.__key.2, i16 noundef signext 3) #10
  %xaccm = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %xaccm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %xaccm, align 4
  %arrayidx10 = getelementptr %struct.syncppp, ptr %call7.i.i, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1610612736, ptr %arrayidx10, align 8
  %raccm = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %raccm to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %raccm, align 4
  %rqueue = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 13
  %lock.i = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %10 = ptrtoint ptr %rqueue to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rqueue, ptr %rqueue, align 8
  %prev.i.i = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 13, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rqueue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i, align 8
  %tsk = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 14
  tail call void @tasklet_setup(ptr noundef %tsk, ptr noundef nonnull @ppp_sync_process) #10
  %refcnt = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %refcnt, align 8
  %dead_cmp = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %dead_cmp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dead_cmp, align 4
  %wait.i = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #10
  %chan = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %chan, align 4
  %ops12 = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %ops12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sync_ops, ptr %ops12, align 8
  %mtu = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 17, i32 2
  %17 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1500, ptr %mtu, align 4
  %hdrlen = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 17, i32 3
  %18 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %hdrlen, align 8
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios.i) #10
  %speed17 = getelementptr inbounds %struct.syncppp, ptr %call7.i.i, i32 0, i32 17, i32 5
  %19 = ptrtoint ptr %speed17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i, ptr %speed17, align 8
  %call19 = tail call i32 @ppp_register_channel(ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %out_free

if.end22:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %20 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %disc_data, align 4
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 22
  %21 = ptrtoint ptr %receive_room to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65536, ptr %receive_room, align 4
  br label %cleanup

out_free:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -95, %entry.cleanup_crit_edge ], [ %call19, %out_free ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_sync_close(ptr nocapture noundef %tty) #2 align 64 {
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
  %refcnt = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then2_crit_edge, label %if.then10.i.i.i, !prof !74

if.end5.i.i.i.if.then2_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.then2

refcount_dec_and_test.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  br label %if.end3

if.then2:                                         ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then2_crit_edge
  %dead_cmp = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 16
  tail call void @wait_for_completion(ptr noundef %dead_cmp) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %refcount_dec_and_test.exit
  %tsk = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 14
  tail call void @tasklet_kill(ptr noundef %tsk) #10
  %chan = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 17
  tail call void @ppp_unregister_channel(ptr noundef %chan) #10
  %rqueue = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 13
  tail call void @skb_queue_purge(ptr noundef %rqueue) #10
  %tpkt = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tpkt, align 4
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ppp_sync_read(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count, ptr nocapture noundef readnone %cookie, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ppp_sync_write(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_synctty_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #10
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %sp_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !76
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !77

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !74

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

sp_get.exit:                                      ; preds = %entry
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
  %chan = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 17
  %call1 = tail call i32 @ppp_channel_index(ptr noundef %chan) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 289) #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !78
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %call1, i32 -1226833921) #10, !srcloc !81
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chan12 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 17
  %call13 = tail call i32 @ppp_unit_number(ptr noundef %chan12) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 296) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i72 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i72 to ptr
  %cpu_domain.i.i73 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i73) #7, !srcloc !78
  %and.i74 = and i32 %12, -13
  %or.i75 = or i32 %and.i74, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i75) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %call13, i32 -1226833921) #10, !srcloc !82
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
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
  %xmit_lock.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %xmit_lock.i) #10
  %tpkt.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %tpkt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tpkt.i, align 4
  %cmp.not.i80 = icmp eq ptr %15, null
  br i1 %cmp.not.i80, label %if.end5.critedge.i, label %if.then.i81

if.then.i81:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #10
  %16 = ptrtoint ptr %tpkt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tpkt.i, align 4
  %xmit_flags.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xmit_flags.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmit_lock.i) #10
  %chan.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 17
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
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 310) #10
  %17 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i76 to ptr
  %cpu_domain.i.i77 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i77) #7, !srcloc !78
  %and.i78 = and i32 %19, -13
  %or.i79 = or i32 %and.i78, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i79) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 0, i32 -1226833921) #10, !srcloc !83
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool49.not = icmp eq i32 %20, 0
  %spec.select71 = select i1 %tobool49.not, i32 0, i32 -14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb33, %if.end31, %sw.bb7, %sw.bb
  %err.0 = phi i32 [ %call52, %sw.default ], [ %call32, %if.end31 ], [ %spec.select, %sw.bb ], [ %spec.select70, %sw.bb7 ], [ %spec.select71, %sw.bb33 ]
  %call.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i85, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i84 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i84, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !74

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i85:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %dead_cmp.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %dead_cmp.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i85, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sp_get.exit
  %retval.0 = phi i32 [ -6, %sp_get.exit ], [ %err.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %err.0, %if.then10.i.i.i.i ], [ %err.0, %if.then.i85 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ppp_sync_poll(ptr nocapture noundef readnone %tty, ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_sync_hangup(ptr nocapture noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ppp_sync_close(ptr noundef %tty)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_sync_receive(ptr noundef %tty, ptr noundef %buf, ptr noundef %cflags, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @disc_data_lock) #10
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %sp_get.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !76
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !77

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.do.body1_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !74

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

sp_get.exit:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  br label %cleanup

do.body1:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.do.body1_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @disc_data_lock) #10
  %recv_lock = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_lock) #10
  tail call fastcc void @ppp_sync_input(ptr noundef nonnull %1, ptr noundef %buf, ptr noundef %cflags, i32 noundef %count)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_lock, i32 noundef %call3) #10
  %rqueue = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %rqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rqueue, align 4
  %cmp.i.not = icmp eq ptr %5, %rqueue
  br i1 %cmp.i.not, label %do.body1.if.end10_crit_edge, label %if.then9

do.body1.if.end10_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %do.body1
  %state.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 14, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i19, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then.i19:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %tsk = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 14
  tail call void @__tasklet_schedule(ptr noundef %tsk) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then.i19, %if.then9.if.end10_crit_edge, %do.body1.if.end10_crit_edge
  %call.i.i.i.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i23, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i22, label %if.end5.i.i.i.i.sp_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !74

if.end5.i.i.i.i.sp_put.exit_crit_edge:            ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sp_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %sp_put.exit

if.then.i23:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %dead_cmp.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %dead_cmp.i) #10
  br label %sp_put.exit

sp_put.exit:                                      ; preds = %if.then.i23, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sp_put.exit_crit_edge
  tail call void @tty_unthrottle(ptr noundef %tty) #10
  br label %cleanup

cleanup:                                          ; preds = %sp_put.exit, %sp_get.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ppp_sync_wakeup(ptr noundef %tty) #2 align 64 {
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
  %refcnt.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !76
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !77

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !74

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
  %xmit_flags = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %xmit_flags) #10
  %state.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 14, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i5, label %if.end.tasklet_schedule.exit_crit_edge

if.end.tasklet_schedule.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tasklet_schedule.exit

if.then.i5:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tsk = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 14
  tail call void @__tasklet_schedule(ptr noundef %tsk) #10
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i5, %if.end.tasklet_schedule.exit_crit_edge
  %call.i.i.i.i.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i9, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i8 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i8, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !74

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i9:                                       ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %dead_cmp.i = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %dead_cmp.i) #10
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
define internal void @ppp_sync_process(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -216
  %rqueue = getelementptr i8, ptr %t, i32 -56
  %call16 = tail call ptr @skb_dequeue(ptr noundef %rqueue) #10
  %cmp.not17 = icmp eq ptr %call16, null
  br i1 %cmp.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %chan2 = getelementptr i8, ptr %t, i32 84
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call18 = phi ptr [ %call16, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %call18, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ppp_input_error(ptr noundef %chan2, i32 noundef 0) #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call18, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ppp_input(ptr noundef %chan2, ptr noundef nonnull %call18) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
  %xmit_flags = getelementptr i8, ptr %t, i32 -112
  %2 = ptrtoint ptr %xmit_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %xmit_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %while.end.if.end8_crit_edge, label %land.lhs.true

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

land.lhs.true:                                    ; preds = %while.end
  %call4 = tail call fastcc i32 @ppp_sync_push(ptr noundef %add.ptr)
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
define internal fastcc i32 @ppp_sync_push(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap, align 4
  %xmit_lock = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %xmit_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %xmit_flags = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 6
  %tpkt = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 11
  %flags = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 16
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  br label %for.cond.outer.outer

for.cond.outer.outer:                             ; preds = %if.else, %for.cond.preheader
  %done.0.ph.ph = phi i32 [ 1, %if.else ], [ 0, %for.cond.preheader ]
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end13.for.cond.outer_crit_edge, %for.cond.outer.outer
  %tty_stuffed.0.ph = phi i32 [ 1, %if.end13.for.cond.outer_crit_edge ], [ 0, %for.cond.outer.outer ]
  br label %for.cond

for.cond:                                         ; preds = %if.end32.for.cond_crit_edge, %for.cond.outer
  %tty_stuffed.0 = phi i32 [ %spec.select, %if.end32.for.cond_crit_edge ], [ %tty_stuffed.0.ph, %for.cond.outer ]
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %xmit_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool3.not, i32 %tty_stuffed.0, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool6.not = icmp eq i32 %spec.select, 0
  br i1 %tobool6.not, label %land.lhs.true, label %for.cond.if.end22_crit_edge

for.cond.if.end22_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %for.cond
  %2 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpkt, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %land.lhs.true.if.end22_crit_edge, label %if.then8

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then8:                                         ; preds = %land.lhs.true
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #10
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  %8 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpkt, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %call11 = tail call i32 %7(ptr noundef %1, ptr noundef %11, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  %14 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tpkt, align 4
  br i1 %cmp, label %flush, label %if.end13

if.end13:                                         ; preds = %if.then8
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len15, align 4
  %cmp16 = icmp ult i32 %call11, %17
  br i1 %cmp16, label %if.end13.for.cond.outer_crit_edge, label %if.else

if.end13.for.cond.outer_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.outer

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %15) #10
  %18 = ptrtoint ptr %tpkt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tpkt, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xmit_flags) #10
  br label %for.cond.outer.outer

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %for.cond.if.end22_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmit_lock) #10
  %19 = ptrtoint ptr %xmit_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %xmit_flags, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool26.not = icmp eq i32 %and1.i, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end22.if.end32_crit_edge

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

lor.lhs.false:                                    ; preds = %if.end22
  br i1 %tobool6.not, label %land.lhs.true28, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %tpkt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tpkt, align 4
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.if.end32_crit_edge

land.lhs.true28.if.end32_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true28.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  %call.i72 = tail call i32 @_raw_spin_trylock_bh(ptr noundef %xmit_lock) #10
  %tobool35.not = icmp eq i32 %call.i72, 0
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.end32.for.cond_crit_edge

if.end32.for.cond_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

flush:                                            ; preds = %if.then8
  %tobool39.not = icmp eq ptr %15, null
  br i1 %tobool39.not, label %flush.if.end44_crit_edge, label %if.then40

flush.if.end44_crit_edge:                         ; preds = %flush
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then40:                                        ; preds = %flush
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #10
  %23 = ptrtoint ptr %tpkt to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %tpkt, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xmit_flags) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %flush.if.end44_crit_edge
  %done.2 = phi i32 [ 1, %if.then40 ], [ %done.0.ph.ph, %flush.if.end44_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %xmit_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end32.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %done.2, %if.end44 ], [ 0, %entry.cleanup_crit_edge ], [ %done.0.ph.ph, %if.end32.cleanup_crit_edge ], [ %done.0.ph.ph, %lor.lhs.false.cleanup_crit_edge ], [ %done.0.ph.ph, %land.lhs.true28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_output_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_sync_send(ptr nocapture noundef readonly %chan, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call = tail call fastcc i32 @ppp_sync_push(ptr noundef %1)
  %xmit_flags = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %xmit_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @ppp_sync_txmunge(ptr noundef %1, ptr noundef %skb)
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tpkt = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tpkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %tpkt, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xmit_flags) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %call6 = tail call fastcc i32 @ppp_sync_push(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ppp_sync_ioctl(ptr nocapture noundef readonly %chan, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %accm = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %accm) #10
  %2 = getelementptr inbounds [8 x i32], ptr %accm, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i32], ptr %accm, i32 0, i32 3
  %4 = inttoptr i32 %arg to ptr
  %5 = call ptr @memset(ptr %accm, i32 255, i32 32)
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
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
  %flags = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %rbits = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %rbits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rbits, align 4
  %or = or i32 %10, %8
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 407) #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !78
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %or, i32 -1226833921) #10, !srcloc !84
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 412) #10
  %15 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i182 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i182 to ptr
  %cpu_domain.i.i183 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i183) #7, !srcloc !78
  %and.i184 = and i32 %17, -13
  %or.i185 = or i32 %and.i184, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i185) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %18 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #10, !srcloc !85
  %asmresult = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
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
  %flags16 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %flags16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %flags16, align 4
  %recv_lock = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %recv_lock) #10
  %and17 = and i32 %asmresult11, 251658240
  %rbits18 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %rbits18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and17, ptr %rbits18, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %recv_lock) #10
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xaccm = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %xaccm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xaccm, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 422) #10
  %23 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i186 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i186 to ptr
  %cpu_domain.i.i187 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i187) #7, !srcloc !78
  %and.i188 = and i32 %25, -13
  %or.i189 = or i32 %and.i188, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i189) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %22, i32 -1226833921) #10, !srcloc !86
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  %spec.select176 = select i1 %tobool36.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 427) #10
  %27 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i190 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i190 to ptr
  %cpu_domain.i.i191 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i191) #7, !srcloc !78
  %and.i192 = and i32 %29, -13
  %or.i193 = or i32 %and.i192, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i193) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #10, !srcloc !87
  %asmresult49 = extractvalue { i32, i32 } %30, 0
  %asmresult50 = extractvalue { i32, i32 } %30, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %xaccm51 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %xaccm51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %asmresult50, ptr %xaccm51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult49)
  %tobool54.not = icmp eq i32 %asmresult49, 0
  %spec.select177 = select i1 %tobool54.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %raccm = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %raccm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %raccm, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 433) #10
  %34 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i194 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i194 to ptr
  %cpu_domain.i.i195 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i195) #7, !srcloc !78
  %and.i196 = and i32 %36, -13
  %or.i197 = or i32 %and.i196, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i197) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %37 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %33, i32 -1226833921) #10, !srcloc !88
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool73.not = icmp eq i32 %37, 0
  %spec.select178 = select i1 %tobool73.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 438) #10
  %38 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i198 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i198 to ptr
  %cpu_domain.i.i199 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 4
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i199) #7, !srcloc !78
  %and.i200 = and i32 %40, -13
  %or.i201 = or i32 %and.i200, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i201) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %41 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #10, !srcloc !89
  %asmresult86 = extractvalue { i32, i32 } %41, 0
  %asmresult87 = extractvalue { i32, i32 } %41, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %raccm88 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %raccm88 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %asmresult87, ptr %raccm88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult86)
  %tobool90.not = icmp eq i32 %asmresult86, 0
  %spec.select179 = select i1 %tobool90.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb93:                                          ; preds = %entry
  %xaccm94 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 7
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %sw.bb93.sw.epilog_crit_edge, label %if.end.i.i

sw.bb93.sw.epilog_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb93
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 32, i32 -1226833920) #15, !srcloc !90
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
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %xaccm94, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool96.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select223 = select i1 %tobool96.not, i32 0, i32 -14
  br label %sw.epilog

if.then.i205:                                     ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #10
  %call.i.i204 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i204, label %if.then.i205.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i205.if.then11.i.i_crit_edge:             ; preds = %if.then.i205
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i205
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 32, i32 -1226833920) #15, !srcloc !91
  %asmresult.i.i206 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i206)
  %cmp.i.i207 = icmp eq i32 %asmresult.i.i206, 0
  br i1 %cmp.i.i207, label %if.end.i.i209, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !74

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i209:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i208 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %accm, i32 noundef 32) #10
  %45 = call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !78
  %and.i.i.i.i = and i32 %47, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %accm, ptr noundef %4, i32 noundef 32) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #10, !srcloc !79
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end104, label %if.end.i.i209.if.then11.i.i_crit_edge, !prof !74

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
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %2, align 4
  %and106 = and i32 %50, -1073741825
  store i32 %and106, ptr %2, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  %or108 = or i32 %52, 1610612736
  store i32 %or108, ptr %3, align 4
  %xaccm109 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 7
  %53 = call ptr @memcpy(ptr %xaccm109, ptr %accm, i32 32)
  br label %sw.epilog

sw.bb112:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mru = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 458) #10
  %56 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i211 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i211 to ptr
  %cpu_domain.i.i212 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i212) #7, !srcloc !78
  %and.i213 = and i32 %58, -13
  %or.i214 = or i32 %and.i213, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i214) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %55, i32 -1226833921) #10, !srcloc !92
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool128.not = icmp eq i32 %59, 0
  %spec.select181 = select i1 %tobool128.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb131:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 463) #10
  %60 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i215 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i215 to ptr
  %cpu_domain.i.i216 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i216) #7, !srcloc !78
  %and.i217 = and i32 %62, -13
  %or.i218 = or i32 %and.i217, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i218) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %63 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #10, !srcloc !93
  %asmresult141 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
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
  %mru149 = getelementptr inbounds %struct.syncppp, ptr %1, i32 0, i32 3
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
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ppp_sync_txmunge(ptr nocapture noundef %ap, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16351, i16 %3)
  %cmp = icmp eq i16 %3, -16351
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr i8, ptr %1, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %7 = icmp ult i8 %6, 7
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %7, %land.lhs.true ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp12 = icmp eq i8 %10, 0
  br i1 %cmp12, label %land.lhs.true14, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true14:                                  ; preds = %land.end
  %flags = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %8
  br i1 %brmerge, label %land.lhs.true14.if.end_crit_edge, label %if.then

land.lhs.true14.if.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true14.if.end_crit_edge, %land.end.if.end_crit_edge
  %flags18 = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 1
  %13 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags18, align 4
  %and19 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  %brmerge80 = select i1 %cmp20, i1 true, i1 %8
  br i1 %brmerge80, label %if.then23, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then23:                                        ; preds = %if.end
  %15 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data1, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i)
  %cmp25 = icmp ult i32 %sub.ptr.sub.i, 2
  br i1 %cmp25, label %if.then27, label %if.then23.if.end36_crit_edge

if.then23.if.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then27:                                        ; preds = %if.then23
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %add = add i32 %20, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #10
  %cmp29 = icmp eq ptr %call.i.i, null
  br i1 %cmp29, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup52

cleanup:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %data.i81 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i81, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 2
  store ptr %add.ptr.i, ptr %data.i81, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %call34 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %26) #10
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %29 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data1, align 4
  %31 = call ptr @memcpy(ptr %call34, ptr %30, i32 %28)
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %if.end36

if.end36:                                         ; preds = %cleanup, %if.then23.if.end36_crit_edge
  %skb.addr.1 = phi ptr [ %call.i.i, %cleanup ], [ %skb, %if.then23.if.end36_crit_edge ]
  %call37 = tail call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 2) #10
  %data38 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %32 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data38, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %33, align 1
  %35 = load ptr, ptr %data38, align 4
  %arrayidx41 = getelementptr i8, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %arrayidx41, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.end36, %if.end.if.end42_crit_edge
  %skb.addr.2 = phi ptr [ %skb.addr.1, %if.end36 ], [ %skb, %if.end.if.end42_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %last_xmit = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 12
  %38 = ptrtoint ptr %last_xmit to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %last_xmit, align 4
  %tobool43.not = icmp eq ptr %skb.addr.2, null
  br i1 %tobool43.not, label %if.end42.cleanup52_crit_edge, label %land.lhs.true44

if.end42.cleanup52_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

land.lhs.true44:                                  ; preds = %if.end42
  %39 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags18, align 4
  %and46 = and i32 %40, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true44.cleanup52_crit_edge, label %if.then48

land.lhs.true44.cleanup52_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.then48:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #12
  %data49 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 19
  %41 = ptrtoint ptr %data49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data49, align 4
  %len50 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 6
  %43 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len50, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %44) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppp_print_buffer.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppp_sync_txmunge, %if.then6.i)) #10
          to label %cleanup52 [label %if.then6.i], !srcloc !94

if.then6.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %42, i32 noundef %44, i1 noundef zeroext true) #10
  br label %cleanup52

cleanup52:                                        ; preds = %if.then6.i, %if.then48, %land.lhs.true44.cleanup52_crit_edge, %if.end42.cleanup52_crit_edge, %cleanup.thread
  %retval.1 = phi ptr [ %skb.addr.2, %land.lhs.true44.cleanup52_crit_edge ], [ null, %if.end42.cleanup52_crit_edge ], [ null, %cleanup.thread ], [ %skb.addr.2, %if.then48 ], [ %skb.addr.2, %if.then6.i ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

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
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ppp_sync_input(ptr noundef %ap, ptr noundef %buf, ptr noundef readonly %flags, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, i32 noundef %count) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ppp_print_buffer.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ppp_sync_input, %if.then6.i)) #10
          to label %if.end3 [label %if.then6.i], !srcloc !94

if.then6.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %buf, i32 noundef %count, i1 noundef zeroext true) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then6.i, %if.then2, %if.end.if.end3_crit_edge
  %mru = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 3
  %2 = ptrtoint ptr %mru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mru, align 4
  %add4 = add i32 %3, 6
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add4, i32 noundef 2592) #10
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end8

if.end8:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp9.not = icmp eq i8 %5, -1
  br i1 %cmp9.not, label %if.end8.if.end16_crit_edge, label %if.then11

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %6 = and i8 %5, 1
  %7 = or i8 %6, 2
  %add15 = zext i8 %7 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add15
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %add15
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end8.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %flags, null
  br i1 %tobool17.not, label %if.end16.if.else_crit_edge, label %land.lhs.true

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end16
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then57_crit_edge

land.lhs.true.if.then57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end16.if.else_crit_edge
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.else.skb_tailroom.exit_crit_edge

if.else.skb_tailroom.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %tail.i84 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i84, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.else.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.else.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %count)
  %cmp22 = icmp slt i32 %cond.i, %count
  br i1 %cmp22, label %skb_tailroom.exit.if.then57_crit_edge, label %if.end26

skb_tailroom.exit.if.then57_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end26:                                         ; preds = %skb_tailroom.exit
  %call.i85 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %count) #10
  %20 = call ptr @memcpy(ptr %call.i85, ptr %buf, i32 %count)
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp30 = icmp eq i8 %24, -1
  br i1 %cmp30, label %land.lhs.true32, label %if.end26.if.end43_crit_edge

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

land.lhs.true32:                                  ; preds = %if.end26
  %arrayidx33 = getelementptr i8, ptr %22, i32 1
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp35 = icmp eq i8 %26, 3
  br i1 %cmp35, label %if.then37, label %land.lhs.true32.if.end43_crit_edge

land.lhs.true32.if.end43_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then37:                                        ; preds = %land.lhs.true32
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp38 = icmp ult i32 %28, 3
  br i1 %cmp38, label %if.then37.if.then57_crit_edge, label %if.end41

if.then37.if.then57_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end41:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i, i32 noundef 2) #10
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %land.lhs.true32.if.end43_crit_edge, %if.end26.if.end43_crit_edge
  %p.0 = phi ptr [ %call42, %if.end41 ], [ %22, %land.lhs.true32.if.end43_crit_edge ], [ %22, %if.end26.if.end43_crit_edge ]
  %29 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %p.0, align 1
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool47.not = icmp eq i8 %31, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.end43.cleanup.sink.split_crit_edge

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true48:                                  ; preds = %if.end43
  %len49 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %len49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp50 = icmp ult i32 %33, 2
  br i1 %cmp50, label %land.lhs.true48.if.then57_crit_edge, label %land.lhs.true48.cleanup.sink.split_crit_edge

land.lhs.true48.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true48.if.then57_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end3
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  %call.i.i86 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 0, i32 noundef 2592) #10
  %tobool56.not = icmp eq ptr %call.i.i86, null
  br i1 %tobool56.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then57:                                        ; preds = %lor.lhs.false.if.then57_crit_edge, %land.lhs.true48.if.then57_crit_edge, %if.then37.if.then57_crit_edge, %skb_tailroom.exit.if.then57_crit_edge, %land.lhs.true.if.then57_crit_edge
  %skb.0 = phi ptr [ %call.i.i86, %lor.lhs.false.if.then57_crit_edge ], [ %call.i.i, %land.lhs.true48.if.then57_crit_edge ], [ %call.i.i, %if.then37.if.then57_crit_edge ], [ %call.i.i, %skb_tailroom.exit.if.then57_crit_edge ], [ %call.i.i, %land.lhs.true.if.then57_crit_edge ]
  tail call void @skb_trim(ptr noundef nonnull %skb.0, i32 noundef 0) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then57, %land.lhs.true48.cleanup.sink.split_crit_edge, %if.end43.cleanup.sink.split_crit_edge
  %skb.0.sink = phi ptr [ %skb.0, %if.then57 ], [ %call.i.i, %land.lhs.true48.cleanup.sink.split_crit_edge ], [ %call.i.i, %if.end43.cleanup.sink.split_crit_edge ]
  %rqueue58 = getelementptr inbounds %struct.syncppp, ptr %ap, i32 0, i32 13
  tail call void @skb_queue_tail(ptr noundef %rqueue58, ptr noundef nonnull %skb.0.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unthrottle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_ppp_synctty__338_731_ppp_sync_init6, !1, !"__initcall__kmod_ppp_synctty__338_731_ppp_sync_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 731, i32 1}
!2 = !{ptr @__exitcall_ppp_sync_cleanup, !3, !"__exitcall_ppp_sync_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 732, i32 1}
!4 = !{ptr @__UNIQUE_ID_file339, !5, !"__UNIQUE_ID_file339", i1 false, i1 false}
!5 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 733, i32 1}
!6 = !{ptr @__UNIQUE_ID_license340, !5, !"__UNIQUE_ID_license340", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias341, !8, !"__UNIQUE_ID_alias341", i1 false, i1 false}
!8 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 734, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 367, i32 10}
!11 = !{ptr @ppp_sync_ldisc, !12, !"ppp_sync_ldisc", i1 false, i1 false}
!12 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 364, i32 29}
!13 = !{ptr @ppp_sync_open.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 173, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ppp_sync_open.__key.2, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 174, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @skb_queue_head_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @init_completion.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/completion.h", i32 87, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sync_ops, !26, !"sync_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 99, i32 37}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 549, i32 21}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 111, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ppp_print_buffer._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @ppp_print_buffer._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 113, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ppp_print_buffer.__UNIQUE_ID_ddebug337, !36, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!39 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!42 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 132, i32 8}
!49 = !{ptr @disc_data_lock, !48, !"disc_data_lock", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 676, i32 21}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 681, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ppp_sync_input._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ppp_sync_input._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ppp/ppp_synctty.c", i32 386, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ppp_sync_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ppp_sync_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148444432}
!73 = !{i64 2148358872, i64 2148358904, i64 2148358933, i64 2148358967, i64 2148358998, i64 2148359021}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2149320546}
!76 = !{i64 2148356407, i64 2148356439, i64 2148356468, i64 2148356502, i64 2148356533, i64 2148356556}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 5072028}
!79 = !{i64 5072225}
!80 = !{i64 2152557458}
!81 = !{i64 2156146348, i64 2156146628, i64 2156146962, i64 2156147296}
!82 = !{i64 2156155859, i64 2156156139, i64 2156156473, i64 2156156807}
!83 = !{i64 2156164644, i64 2156164924, i64 2156165258, i64 2156165592}
!84 = !{i64 2156180562, i64 2156180842, i64 2156181176, i64 2156181510}
!85 = !{i64 2156192799, i64 2156193079, i64 2156193413, i64 2156193747}
!86 = !{i64 2156203150, i64 2156203430, i64 2156203764, i64 2156204098}
!87 = !{i64 2156215387, i64 2156215667, i64 2156216001, i64 2156216335}
!88 = !{i64 2156225544, i64 2156225824, i64 2156226158, i64 2156226492}
!89 = !{i64 2156237757, i64 2156238037, i64 2156238371, i64 2156238705}
!90 = !{i64 2152577154, i64 2152577179}
!91 = !{i64 2152576473, i64 2152576498}
!92 = !{i64 2156249491, i64 2156249771, i64 2156250105, i64 2156250439}
!93 = !{i64 2156261728, i64 2156262008, i64 2156262342, i64 2156262676}
!94 = !{i64 2148968254, i64 2148968259, i64 2148968272, i64 2148968316, i64 2148968350, i64 2148968371}
