; ModuleID = '/llk/IR_all_yes/net/atm/signaling.c_pt.bc'
source_filename = "../net/atm/signaling.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.atmsvc_msg = type { i32, %struct.atm_kptr_t, %struct.atm_kptr_t, i32, %struct.sockaddr_atmpvc, %struct.sockaddr_atmsvc, %struct.atm_qos, %struct.atm_sap, i32, %struct.sockaddr_atmsvc }
%struct.atm_kptr_t = type { [8 x i8] }
%struct.sockaddr_atmpvc = type { i16, %struct.anon.152 }
%struct.anon.152 = type { i16, i16, i32 }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.140, i8, %union.anon.142 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.146 }
%struct.anon.146 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
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

@sigd = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@sigd_enq2.session = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sigd_enq2.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"atm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sigd_enq2\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/atm/signaling.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%d (0x%p)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atm:%s: %d (0x%p)\0A\00", [45 x i8] zeroinitializer }, align 32
@sigd_attach.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sigd_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atm:%s: \0A\00", [22 x i8] zeroinitializer }, align 32
@sigd_dev = internal global { %struct.atm_dev, [264 x i8] } { %struct.atm_dev { ptr @sigd_dev_ops, ptr null, ptr @.str.11, i32 999, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [6 x i8] zeroinitializer, %struct.atm_cirange zeroinitializer, %struct.k_atm_dev_stats zeroinitializer, i8 0, i32 0, %struct.refcount_struct zeroinitializer, %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null, ptr null, %struct.device zeroinitializer, %struct.list_head zeroinitializer }, [264 x i8] zeroinitializer }, align 32
@sigd_put_skb.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sigd_put_skb\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atmsvc: no signaling daemon\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"atm:%s: atmsvc: no signaling daemon\0A\00", [59 x i8] zeroinitializer }, align 32
@sigd_dev_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr null, ptr @sigd_close, ptr null, ptr @sigd_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sig\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sigd_dev.lock\00", [18 x i8] zeroinitializer }, align 32
@sigd_close.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.6, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sigd_close\00", [21 x i8] zeroinitializer }, align 32
@sigd_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.13, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013atm:%s: closing with requests pending\0A\00", [55 x i8] zeroinitializer }, align 32
@sigd_close._entry_ptr = internal global ptr @sigd_close._entry, section ".printk_index", align 4
@vcc_sklist_lock = external dso_local global %struct.rwlock_t, align 4
@vcc_hash = external dso_local local_unnamed_addr global [32 x %struct.hlist_head], align 4
@sigd_send.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sigd_send\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d (0x%lx)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atm:%s: %d (0x%lx)\0A\00", [44 x i8] zeroinitializer }, align 32
@sigd_send.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"as_indicate!!!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atm:%s: as_indicate!!!\0A\00", [40 x i8] zeroinitializer }, align 32
@sigd_send.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.20, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"waking sk_sleep(sk) 0x%p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"atm:%s: waking sk_sleep(sk) 0x%p\0A\00", [62 x i8] zeroinitializer }, align 32
@sigd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\011atm:%s: bad message type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sigd_send._entry_ptr = internal global ptr @sigd_send._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 6, i64 7, i64 8, i64 9, i64 11, i64 14, i64 15]
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"sigd\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 23, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [8 x i8] c"session\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 149, i32 22 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 151, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 237, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"sigd_dev\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 226, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 28, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"sigd_dev_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 221, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 228, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 230, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 202, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 205, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 73, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 105, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 114, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [23 x i8] c"../net/atm/signaling.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 133, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @sigd_close._entry, ptr @sigd_close._entry_ptr, ptr @sigd_send._entry, ptr @sigd_send._entry_ptr, ptr @sigd, ptr @sigd_enq2.session, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sigd_dev, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sigd_dev_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigd_enq2.session to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigd_dev to i32), i32 1112, i32 1376, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigd_dev_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigd_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sigd_enq2(ptr noundef %vcc, i32 noundef %type, ptr noundef %listen_vcc, ptr noundef readonly %pvc, ptr noundef readonly %svc, ptr noundef readonly %qos, i32 noundef %reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_enq2.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigd_enq2, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_enq2.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %type, ptr noundef %vcc) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i69 = tail call ptr @__alloc_skb(i32 noundef 252, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool4.not70 = icmp eq ptr %call.i69, null
  br i1 %tobool4.not70, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  tail call void @schedule() #4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 252, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %call.i.lcssa = phi ptr [ %call.i69, %do.end.while.end_crit_edge ], [ %call.i, %while.body.while.end_crit_edge ]
  %call.i67 = tail call ptr @skb_put(ptr noundef nonnull %call.i.lcssa, i32 noundef 252) #4
  %0 = getelementptr inbounds i8, ptr %call.i67, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 244)
  %2 = ptrtoint ptr %call.i67 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %call.i67, align 4
  %vcc9 = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 1
  %3 = ptrtoint ptr %vcc9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vcc, ptr %vcc9, align 4
  %listen_vcc10 = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 2
  %4 = ptrtoint ptr %listen_vcc10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %listen_vcc, ptr %listen_vcc10, align 4
  %reply11 = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 3
  %5 = ptrtoint ptr %reply11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reply, ptr %reply11, align 4
  %tobool12.not = icmp eq ptr %qos, null
  br i1 %tobool12.not, label %while.end.if.end15_crit_edge, label %if.then13

while.end.if.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %qos14 = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 6
  %6 = call ptr @memcpy(ptr %qos14, ptr %qos, i32 84)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %while.end.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %vcc, null
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %sap = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 7
  %sap18 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 8
  %7 = call ptr @memcpy(ptr %sap, ptr %sap18, i32 40)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %svc, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %svc22 = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 9
  %8 = call ptr @memcpy(ptr %svc22, ptr %svc, i32 44)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  br i1 %tobool16.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %local = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 5
  %local26 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 19
  %9 = call ptr @memcpy(ptr %local, ptr %local26, i32 44)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %pvc, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %pvc30 = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %pvc30, ptr %pvc, i32 12)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp ne i32 %type, 2
  %11 = or i1 %tobool16.not, %cmp
  br i1 %11, label %if.end31.if.end38_crit_edge, label %land.lhs.true

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end31
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool35.not = icmp eq i32 %14, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end38_crit_edge, label %if.then36

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %15 = load i32, ptr @sigd_enq2.session, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @sigd_enq2.session, align 4
  %session = getelementptr inbounds %struct.atmsvc_msg, ptr %call.i67, i32 0, i32 8
  %16 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %session, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  %17 = load ptr, ptr @sigd, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_put_skb.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigd_enq2, %if.then4.i)) #4
          to label %do.end.i [label %if.then4.i], !srcloc !62

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_put_skb.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.lcssa, i32 noundef 0) #4
  br label %sigd_put_skb.exit

if.end5.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.lcssa, i32 0, i32 20
  %18 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %17, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #4
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %19, ptr elementtype(i32) %sk_backlog.i.i) #4, !srcloc !63
  %21 = load ptr, ptr @sigd, align 4
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue.i, ptr noundef nonnull %call.i.lcssa) #4
  %22 = load ptr, ptr @sigd, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 77
  %23 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk_data_ready.i, align 8
  tail call void %24(ptr noundef %22) #4
  br label %sigd_put_skb.exit

sigd_put_skb.exit:                                ; preds = %if.end5.i, %do.end.i
  br i1 %tobool16.not, label %sigd_put_skb.exit.if.end42_crit_edge, label %if.then40

sigd_put_skb.exit.if.end42_crit_edge:             ; preds = %sigd_put_skb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then40:                                        ; preds = %sigd_put_skb.exit
  call void @__sanitizer_cov_trace_pc() #6
  %flags41 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags41) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %sigd_put_skb.exit.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sigd_enq(ptr noundef %vcc, i32 noundef %type, ptr noundef %listen_vcc, ptr noundef %pvc, ptr noundef %svc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vcc, null
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %spec.select = select i1 %tobool.not, ptr null, ptr %qos
  tail call void @sigd_enq2(ptr noundef %vcc, i32 noundef %type, ptr noundef %listen_vcc, ptr noundef %pvc, ptr noundef %svc, ptr noundef %spec.select, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sigd_attach(ptr noundef %vcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sigd, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_attach.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigd_attach, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !62

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_attach.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  store ptr %vcc, ptr @sigd, align 4
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sigd_dev, ptr %dev, align 4
  tail call void @vcc_insert_socket(ptr noundef %vcc) #4
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -98, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_insert_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sigd_close(ptr noundef %vcc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_close.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigd_close, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_close.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  store ptr null, ptr @sigd, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 8
  %0 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp eq ptr %1, %sk_receive_queue
  %tobool5.not48 = icmp eq ptr %1, null
  %tobool5.not = or i1 %cmp.i, %tobool5.not48
  br i1 %tobool5.not, label %do.end.if.end12_crit_edge, label %do.end9

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %do.end.if.end12_crit_edge
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #4
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end12
  %i.052 = phi i32 [ 0, %if.end12 ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %i.052
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -84
  %tobool19.not4953 = icmp eq ptr %add.ptr, null
  %tobool19.not49 = or i1 %tobool16.not, %tobool19.not4953
  br i1 %tobool19.not49, label %for.body.for.end_crit_edge, label %for.body.for.body20_crit_edge

for.body.for.body20_crit_edge:                    ; preds = %for.body
  br label %for.body20

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body20:                                       ; preds = %purge_vcc.exit.for.body20_crit_edge, %for.body.for.body20_crit_edge
  %s.050 = phi ptr [ %add.ptr28, %purge_vcc.exit.for.body20_crit_edge ], [ %add.ptr, %for.body.for.body20_crit_edge ]
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %s.050, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %5)
  %cmp.i44 = icmp eq i16 %5, 20
  br i1 %cmp.i44, label %land.lhs.true.i, label %for.body20.purge_vcc.exit_crit_edge

for.body20.purge_vcc.exit_crit_edge:              ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %purge_vcc.exit

land.lhs.true.i:                                  ; preds = %for.body20
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %s.050, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.purge_vcc.exit_crit_edge

land.lhs.true.i.purge_vcc.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %purge_vcc.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #4
  tail call void @vcc_release_async(ptr noundef nonnull %s.050, i32 noundef -49) #4
  br label %purge_vcc.exit

purge_vcc.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.purge_vcc.exit_crit_edge, %for.body20.purge_vcc.exit_crit_edge
  %9 = getelementptr inbounds %struct.sock_common, ptr %s.050, i32 0, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool24.not = icmp eq ptr %11, null
  %add.ptr28 = getelementptr i8, ptr %11, i32 -84
  %tobool19.not54 = icmp eq ptr %add.ptr28, null
  %tobool19.not = or i1 %tobool24.not, %tobool19.not54
  br i1 %tobool19.not, label %purge_vcc.exit.for.end_crit_edge, label %purge_vcc.exit.for.body20_crit_edge

purge_vcc.exit.for.body20_crit_edge:              ; preds = %purge_vcc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20

purge_vcc.exit.for.end_crit_edge:                 ; preds = %purge_vcc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %purge_vcc.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end33, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sigd_send(ptr noundef %vcc, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #4
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %3, ptr elementtype(i32) %sk_wmem_alloc) #4, !srcloc !65
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %3)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, %3
  br i1 %cmp.i.i, label %do.end, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %entry
  %sub.i.i = sub i32 %asmresult.i.i.i.i.i, %3
  %5 = or i32 %sub.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i, label %if.end5.i.i.if.end_crit_edge, label %if.then10.i.i, !prof !66

if.end5.i.i.if.end_crit_edge:                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef 3) #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 71, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then10.i.i, %if.end5.i.i.if.end_crit_edge
  %vcc20 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vcc20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_send.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigd_send, %if.then31)) #4
          to label %do.end34 [label %if.then31], !srcloc !62

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = ptrtoint ptr %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_send.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %9, i32 noundef %10) #4
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %if.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end140 [
    i32 6, label %sw.bb
    i32 7, label %sw.bb85
    i32 8, label %sw.bb92
    i32 9, label %sw.bb130
    i32 11, label %sw.bb133
    i32 14, label %do.end34.sw.bb134_crit_edge
    i32 15, label %do.end34.sw.bb134_crit_edge216
  ]

do.end34.sw.bb134_crit_edge216:                   ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb134

do.end34.sw.bb134_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb134

sw.bb:                                            ; preds = %do.end34
  %reply = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reply, align 4
  %sub = sub i32 0, %15
  %sk_err = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %16 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %sk_err, align 4
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags) #4
  %local = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 19
  %sas_addr = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sas_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool37.not = icmp eq i8 %18, 0
  br i1 %tobool37.not, label %land.lhs.true, label %sw.bb.if.end60_crit_edge

sw.bb.if.end60_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

land.lhs.true:                                    ; preds = %sw.bb
  %pub = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 19, i32 1, i32 1
  %19 = ptrtoint ptr %pub to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pub, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool41.not = icmp eq i8 %20, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %local to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 20, ptr %local, align 4
  %sas_addr49 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 5, i32 1
  %22 = call ptr @memcpy(ptr %sas_addr, ptr %sas_addr49, i32 20)
  %pub58 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 5, i32 1, i32 1
  %23 = call ptr @memcpy(ptr %pub, ptr %pub58, i32 13)
  br label %if.end60

if.end60:                                         ; preds = %if.then42, %land.lhs.true.if.end60_crit_edge, %sw.bb.if.end60_crit_edge
  %session = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 21
  %24 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %session, align 4
  %tobool61.not = icmp eq ptr %25, null
  %. = select i1 %tobool61.not, ptr %7, ptr %25
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %., i32 0, i32 2
  %26 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vpi, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool63.not = icmp eq i16 %27, 0
  br i1 %tobool63.not, label %lor.lhs.false, label %if.end60.sw.epilog_crit_edge

if.end60.sw.epilog_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end60
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %., i32 0, i32 3
  %28 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vci, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool64.not = icmp eq i32 %29, 0
  br i1 %tobool64.not, label %if.end66, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end66:                                         ; preds = %lor.lhs.false
  %sap_addr = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %sap_addr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sap_addr, align 4
  %itf67 = getelementptr inbounds %struct.atm_vcc, ptr %., i32 0, i32 18
  %32 = ptrtoint ptr %itf67 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %itf67, align 8
  %vpi70 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %vpi70 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vpi70, align 2
  %35 = ptrtoint ptr %vpi to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vpi, align 4
  %vci74 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 4, i32 1, i32 2
  %36 = ptrtoint ptr %vci74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vci74, align 4
  %38 = ptrtoint ptr %vci to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %vci, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool78.not = icmp eq i16 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool81.not = icmp eq i32 %37, 0
  %or.cond = select i1 %tobool78.not, i1 %tobool81.not, i1 false
  br i1 %or.cond, label %if.end66.sw.epilog_crit_edge, label %if.then82

if.end66.sw.epilog_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then82:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %., i32 0, i32 7
  %qos83 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 6
  %39 = call ptr @memcpy(ptr %qos, ptr %qos83, i32 84)
  br label %sw.epilog

sw.bb85:                                          ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  %flags86 = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags86) #4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags86) #4
  %reply88 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %reply88 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reply88, align 4
  %sub89 = sub i32 0, %41
  %sk_err90 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %42 = ptrtoint ptr %sk_err90 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub89, ptr %sk_err90, align 4
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags86) #4
  br label %sw.epilog

sw.bb92:                                          ; preds = %do.end34
  %listen_vcc = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %listen_vcc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %listen_vcc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_send.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigd_send, %if.then106)) #4
          to label %do.end109 [label %if.then106], !srcloc !62

if.then106:                                       ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_send.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.15) #4
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %sw.bb92
  tail call void @lock_sock_nested(ptr noundef %44, i32 noundef 0) #4
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 53
  %45 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %sk_ack_backlog.i, align 4
  %sk_max_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 54
  %47 = ptrtoint ptr %sk_max_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %sk_max_ack_backlog.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.i = icmp ugt i32 %46, %48
  br i1 %cmp.i, label %if.then111, label %if.end112

if.then111:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sigd_enq2(ptr noundef null, i32 noundef 4, ptr noundef %44, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #4
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %as_indicate_complete

if.end112:                                        ; preds = %do.end109
  %add.i = add i32 %46, 1
  %49 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %add.i, ptr %sk_ack_backlog.i, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef %skb) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_send.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigd_send, %if.then125)) #4
          to label %do.end129 [label %if.then125], !srcloc !62

if.then125:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  %50 = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 17
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %50, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_send.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.15, ptr noundef %52) #4
  br label %do.end129

do.end129:                                        ; preds = %if.then125, %if.end112
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 76
  %53 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sk_state_change, align 4
  tail call void %54(ptr noundef %44) #4
  br label %as_indicate_complete

as_indicate_complete:                             ; preds = %do.end129, %if.then111
  tail call void @release_sock(ptr noundef %44) #4
  br label %cleanup

sw.bb130:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  %flags131 = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags131) #4
  %reply132 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %reply132 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reply132, align 4
  tail call void @vcc_release_async(ptr noundef %7, i32 noundef %56) #4
  br label %out

sw.bb133:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @modify_qos(ptr noundef %7, ptr noundef %1)
  br label %sw.epilog

sw.bb134:                                         ; preds = %do.end34.sw.bb134_crit_edge, %do.end34.sw.bb134_crit_edge216
  %reply135 = getelementptr inbounds %struct.atmsvc_msg, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %reply135 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reply135, align 4
  %sub136 = sub i32 0, %58
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 52
  %59 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub136, ptr %sk_err_soft, align 8
  %flags137 = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %flags137) #4
  br label %sw.epilog

do.end140:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15, i32 noundef %12) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb134, %sw.bb133, %sw.bb85, %if.then82, %if.end66.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end60.sw.epilog_crit_edge
  %sk_state_change144 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 76
  %60 = ptrtoint ptr %sk_state_change144 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk_state_change144, align 4
  tail call void %61(ptr noundef %7) #4
  br label %out

out:                                              ; preds = %sw.epilog, %sw.bb130
  tail call void @consume_skb(ptr noundef %skb) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end140, %as_indicate_complete
  %retval.0 = phi i32 [ -22, %do.end140 ], [ 0, %out ], [ 0, %as_indicate_complete ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_release_async(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @modify_qos(ptr noundef %vcc, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %msg, align 4
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %change_qos = getelementptr inbounds %struct.atmdev_ops, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %change_qos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %change_qos, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %reply = getelementptr inbounds %struct.atmsvc_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -95, ptr %reply, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end
  %qos = getelementptr inbounds %struct.atmsvc_msg, ptr %msg, i32 0, i32 6
  %reply9 = getelementptr inbounds %struct.atmsvc_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %reply9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reply9, align 4
  %call10 = tail call i32 %12(ptr noundef %vcc, ptr noundef %qos, i32 noundef %15) #4
  %16 = ptrtoint ptr %reply9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call10, ptr %reply9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool13.not = icmp eq i32 %call10, 0
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %msg, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge, %if.then5
  %call.i35 = tail call ptr @__alloc_skb(i32 noundef 252, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool19.not36 = icmp eq ptr %call.i35, null
  br i1 %tobool19.not36, label %if.end17.while.body_crit_edge, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end17.while.body_crit_edge
  tail call void @schedule() #4
  %call.i = tail call ptr @__alloc_skb(i32 noundef 252, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %call.i.lcssa = phi ptr [ %call.i35, %if.end17.while.end_crit_edge ], [ %call.i, %while.body.while.end_crit_edge ]
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i.lcssa, i32 noundef 252) #4
  %18 = call ptr @memcpy(ptr %call20, ptr %msg, i32 252)
  %19 = load ptr, ptr @sigd, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end5.i

do.body.i:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigd_put_skb.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@modify_qos, %if.then4.i)) #4
          to label %do.end.i [label %if.then4.i], !srcloc !62

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigd_put_skb.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.lcssa, i32 noundef 0) #4
  br label %cleanup

if.end5.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.lcssa, i32 0, i32 20
  %20 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #4
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %21, ptr elementtype(i32) %sk_backlog.i.i) #4, !srcloc !63
  %23 = load ptr, ptr @sigd, align 4
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %23, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue.i, ptr noundef nonnull %call.i.lcssa) #4
  %24 = load ptr, ptr @sigd, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 77
  %25 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sk_data_ready.i, align 8
  tail call void %26(ptr noundef %24) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %do.end.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @sigd, !1, !"sigd", i1 false, i1 false}
!1 = !{!"../net/atm/signaling.c", i32 23, i32 17}
!2 = !{ptr @sigd_enq2.session, !3, !"session", i1 false, i1 false}
!3 = !{!"../net/atm/signaling.c", i32 149, i32 22}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/atm/signaling.c", i32 151, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sigd_enq2.__UNIQUE_ID_ddebug461, !5, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/atm/signaling.c", i32 237, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sigd_attach.__UNIQUE_ID_ddebug463, !12, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/atm/signaling.c", i32 28, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sigd_put_skb.__UNIQUE_ID_ddebug457, !17, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!20 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/atm/signaling.c", i32 228, i32 11}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/atm/signaling.c", i32 230, i32 11}
!25 = !{ptr @sigd_dev, !26, !"sigd_dev", i1 false, i1 false}
!26 = !{!"../net/atm/signaling.c", i32 226, i32 23}
!27 = !{ptr @sigd_dev_ops, !28, !"sigd_dev_ops", i1 false, i1 false}
!28 = !{!"../net/atm/signaling.c", i32 221, i32 32}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/atm/signaling.c", i32 202, i32 2}
!31 = !{ptr @sigd_close.__UNIQUE_ID_ddebug462, !30, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/atm/signaling.c", i32 205, i32 3}
!34 = !{ptr @sigd_close._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sigd_close._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/atm/signaling.c", i32 73, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sigd_send.__UNIQUE_ID_ddebug458, !37, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!40 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/atm/signaling.c", i32 105, i32 3}
!43 = !{ptr @sigd_send.__UNIQUE_ID_ddebug459, !42, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!44 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/atm/signaling.c", i32 114, i32 3}
!47 = !{ptr @sigd_send.__UNIQUE_ID_ddebug460, !46, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/atm/signaling.c", i32 133, i32 3}
!51 = !{ptr @sigd_send._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sigd_send._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148697491, i64 2148697496, i64 2148697509, i64 2148697553, i64 2148697587, i64 2148697608}
!63 = !{i64 2148215676, i64 2148215702, i64 2148215731, i64 2148215765, i64 2148215796, i64 2148215819}
!64 = !{i64 2148305207}
!65 = !{i64 2148219671, i64 2148219703, i64 2148219732, i64 2148219766, i64 2148219797, i64 2148219820}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2150524296}
