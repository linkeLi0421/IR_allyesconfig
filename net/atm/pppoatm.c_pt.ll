; ModuleID = '/llk/IR_all_yes/net/atm/pppoatm.c_pt.bc'
source_filename = "../net/atm/pppoatm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atm_ioctl = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ppp_channel_ops = type { ptr, ptr, ptr }
%struct.atm_backend_ppp = type { i16, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.145, i8, %union.anon.147 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i8, i8 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.151 }
%struct.anon.151 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pppoatm_vcc = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, i32, i32, %struct.ppp_channel, %struct.tasklet_struct }
%struct.ppp_channel = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.152, i32 }
%union.anon.152 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }

@pppoatm_ioctl_ops = internal global { %struct.atm_ioctl, [16 x i8] } { %struct.atm_ioctl { ptr null, ptr @pppoatm_ioctl, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_pppoatm__463_486_pppoatm_init6 = internal global ptr @pppoatm_init, section ".initcall6.init", align 4
@__exitcall_pppoatm_exit = internal global ptr @pppoatm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author464 = internal constant [52 x i8] c"pppoatm.author=Mitchell Blank Jr <mitch@sfgoth.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description465 = internal constant [46 x i8] c"pppoatm.description=RFC2364 PPP over ATM/AAL5\00", section ".modinfo", align 1
@__UNIQUE_ID_file466 = internal constant [29 x i8] c"pppoatm.file=net/atm/pppoatm\00", section ".modinfo", align 1
@__UNIQUE_ID_license467 = internal constant [20 x i8] c"pppoatm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/atm/pppoatm.c\00", [46 x i8] zeroinitializer }, align 32
@pppoatm_push.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pppoatm\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pppoatm_push\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pppoatm:%s: \0A\00", [18 x i8] zeroinitializer }, align 32
@pppoatm_push.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.5, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"removing ATMPPP VCC %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pppoatm:%s: removing ATMPPP VCC %p\0A\00", [60 x i8] zeroinitializer }, align 32
@pppllc = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FE\FE\03\CF\C0!", [26 x i8] zeroinitializer }, align 32
@pppoatm_push.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.7, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't autodetect yet (skb: %6ph)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pppoatm:%s: Couldn't autodetect yet (skb: %6ph)\0A\00", [47 x i8] zeroinitializer }, align 32
@pppoatm_ops = internal constant { %struct.ppp_channel_ops, [20 x i8] } { %struct.ppp_channel_ops { ptr @pppoatm_send, ptr @pppoatm_devppp_ioctl, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pppoatm_send.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pppoatm_send\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(skb=0x%p, vcc=0x%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pppoatm:%s: (skb=0x%p, vcc=0x%p)\0A\00", [62 x i8] zeroinitializer }, align 32
@pppoatm_send.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str, ptr @.str.15, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Trying to send without setting encaps!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pppoatm:%s: Trying to send without setting encaps!\0A\00", [44 x i8] zeroinitializer }, align 32
@pppoatm_send.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str, ptr @.str.17, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pppoatm:%s: atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", [53 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2147775543, i64 2147775574]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1074033753, i64 2147775578]
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"pppoatm_ioctl_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 470, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 450, i32 7 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 184, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 188, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"pppllc\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 86, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 221, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"pppoatm_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 384, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 156, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 296, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 345, i32 3 }
@___asan_gen_.81 = private constant [21 x i8] c"../net/atm/pppoatm.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 351, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 1750, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author464, ptr @__UNIQUE_ID_description465, ptr @__UNIQUE_ID_file466, ptr @__UNIQUE_ID_license467, ptr @__exitcall_pppoatm_exit, ptr @__initcall__kmod_pppoatm__463_486_pppoatm_init6, ptr @pppoatm_exit, ptr @pppoatm_ioctl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pppllc, ptr @.str.7, ptr @.str.8, ptr @pppoatm_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoatm_ioctl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppllc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppoatm_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pppoatm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @deregister_atm_ioctl(ptr noundef nonnull @pppoatm_ioctl_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_atm_ioctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoatm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_atm_ioctl(ptr noundef nonnull @pppoatm_ioctl_ops) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoatm_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %be.i = alloca %struct.atm_backend_ppp, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  %2 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073897970, i32 %cmd)
  %cond64 = icmp eq i32 %cmd, 1073897970
  br i1 %cond64, label %sw.bb, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %push = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %push, align 8
  %cmp1.not = icmp eq ptr %4, @pppoatm_push
  br i1 %cmp1.not, label %if.end, label %land.lhs.true.cleanup54_crit_edge

land.lhs.true.cleanup54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end:                                           ; preds = %land.lhs.true
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup54_crit_edge [
    i32 -2147191722, label %sw.bb33
    i32 -2147191753, label %sw.bb20
  ]

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 450) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !66
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #8, !srcloc !69
  %asmresult = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end6, label %sw.bb.cleanup54_crit_edge

sw.bb.cleanup54_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end6:                                          ; preds = %sw.bb
  %asmresult3 = extractvalue { i32, i32 } %9, 1
  %conv7 = and i32 %asmresult3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv7)
  %cmp8.not = icmp eq i32 %conv7, 1
  br i1 %cmp8.not, label %if.end11, label %if.end6.cleanup54_crit_edge

if.end6.cleanup54_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end11:                                         ; preds = %if.end6
  %call12 = tail call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call12, label %if.end14, label %if.end11.cleanup54_crit_edge

if.end11.cleanup54_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end14:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp15.not = icmp eq i32 %11, 3
  br i1 %cmp15.not, label %if.end18, label %if.end14.cleanup54_crit_edge

if.end14.cleanup54_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %be.i) #8
  %12 = ptrtoint ptr %be.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %be.i, align 8, !annotation !70
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end18.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end18.if.then11.i.i.i_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end18
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #11, !srcloc !71
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !72

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %be.i, i32 noundef 8) #8
  %14 = call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !66
  %and.i.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %be.i, ptr noundef %2, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #8, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !72

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end18.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end18.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %be.i, i32 %sub.i.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %pppoatm_assign_vcc.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %encaps.i = getelementptr inbounds %struct.atm_backend_ppp, ptr %be.i, i32 0, i32 1
  %18 = ptrtoint ptr %encaps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %encaps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %switch.i = icmp ult i32 %19, 3
  br i1 %switch.i, label %if.end7.i, label %if.end.i.pppoatm_assign_vcc.exit_crit_edge

if.end.i.pppoatm_assign_vcc.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pppoatm_assign_vcc.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 88) #12
  %cmp9.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp9.i, label %if.end7.i.pppoatm_assign_vcc.exit_crit_edge, label %if.end11.i

if.end7.i.pppoatm_assign_vcc.exit_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pppoatm_assign_vcc.exit

if.end11.i:                                       ; preds = %if.end7.i
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %call7.i.i.i, align 8
  %inflight.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 6
  %call.i.i58.i = call zeroext i1 @__kasan_check_write(ptr noundef %inflight.i, i32 noundef 4) #8
  %22 = ptrtoint ptr %inflight.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 -2, ptr %inflight.i, align 8
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %push.i, align 8
  %old_push.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %old_push.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %old_push.i, align 4
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %pop.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pop.i, align 4
  %old_pop.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %old_pop.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %old_pop.i, align 8
  %owner.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 17
  %29 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner.i, align 4
  %old_owner.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %old_owner.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %old_owner.i, align 8
  %release_cb.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %release_cb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %release_cb.i, align 4
  %old_release_cb.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %old_release_cb.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %old_release_cb.i, align 4
  %35 = ptrtoint ptr %encaps.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %encaps.i, align 4
  %encaps14.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %encaps14.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %encaps14.i, align 4
  %chan.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 9
  %38 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %chan.i, align 4
  %ops.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @pppoatm_ops, ptr %ops.i, align 8
  %max_sdu.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 7, i32 0, i32 5
  %40 = ptrtoint ptr %max_sdu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_sdu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp17.i = icmp eq i32 %36, 1
  %sub.i = select i1 %cmp17.i, i32 -4, i32 -8
  %sub18.i = add i32 %41, %sub.i
  %mtu.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  %42 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub18.i, ptr %mtu.i, align 4
  %wakeup_tasklet.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %call7.i.i.i, i32 0, i32 10
  call void @tasklet_setup(ptr noundef %wakeup_tasklet.i, ptr noundef nonnull @pppoatm_wakeup_sender) #8
  %call21.i = call i32 @ppp_register_channel(ptr noundef %chan.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %if.end24.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %pppoatm_assign_vcc.exit

if.end24.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %43 = ptrtoint ptr %user_back.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i, ptr %user_back.i, align 8
  %44 = ptrtoint ptr %push.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @pppoatm_push, ptr %push.i, align 8
  %45 = ptrtoint ptr %pop.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @pppoatm_pop, ptr %pop.i, align 4
  %46 = ptrtoint ptr %release_cb.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @pppoatm_release_cb, ptr %release_cb.i, align 4
  call void @__module_get(ptr noundef null) #8
  %47 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %owner.i, align 4
  call void @vcc_process_recv_queue(ptr noundef %1) #8
  br label %pppoatm_assign_vcc.exit

pppoatm_assign_vcc.exit:                          ; preds = %if.end24.i, %if.then23.i, %if.end7.i.pppoatm_assign_vcc.exit_crit_edge, %if.end.i.pppoatm_assign_vcc.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %call21.i, %if.then23.i ], [ 0, %if.end24.i ], [ -22, %if.end.i.pppoatm_assign_vcc.exit_crit_edge ], [ -12, %if.end7.i.pppoatm_assign_vcc.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %be.i) #8
  br label %cleanup54

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %user_back.i73 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %48 = ptrtoint ptr %user_back.i73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %user_back.i73, align 8
  %chan = getelementptr inbounds %struct.pppoatm_vcc, ptr %49, i32 0, i32 9
  %call22 = tail call i32 @ppp_channel_index(ptr noundef %chan) #8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 462) #8
  %50 = tail call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i65 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i65 to ptr
  %cpu_domain.i.i66 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66) #5, !srcloc !66
  %and.i67 = and i32 %52, -13
  %or.i68 = or i32 %and.i67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %53 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %call22, i32 -1226833921) #8, !srcloc !73
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool32.not = icmp eq i32 %53, 0
  %cond = select i1 %tobool32.not, i32 0, i32 -14
  br label %cleanup54

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %user_back.i74 = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %54 = ptrtoint ptr %user_back.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %user_back.i74, align 8
  %chan39 = getelementptr inbounds %struct.pppoatm_vcc, ptr %55, i32 0, i32 9
  %call40 = tail call i32 @ppp_unit_number(ptr noundef %chan39) #8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 465) #8
  %56 = tail call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i69 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i69 to ptr
  %cpu_domain.i.i70 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i70) #5, !srcloc !66
  %and.i71 = and i32 %58, -13
  %or.i72 = or i32 %and.i71, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i72) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %59 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %call40, i32 -1226833921) #8, !srcloc !74
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool52.not = icmp eq i32 %59, 0
  %cond53 = select i1 %tobool52.not, i32 0, i32 -14
  br label %cleanup54

cleanup54:                                        ; preds = %sw.bb33, %sw.bb20, %pppoatm_assign_vcc.exit, %if.end14.cleanup54_crit_edge, %if.end11.cleanup54_crit_edge, %if.end6.cleanup54_crit_edge, %sw.bb.cleanup54_crit_edge, %if.end.cleanup54_crit_edge, %land.lhs.true.cleanup54_crit_edge
  %retval.1 = phi i32 [ %cond53, %sw.bb33 ], [ %cond, %sw.bb20 ], [ -515, %land.lhs.true.cleanup54_crit_edge ], [ %retval.0.i, %pppoatm_assign_vcc.exit ], [ -14, %sw.bb.cleanup54_crit_edge ], [ -515, %if.end6.cleanup54_crit_edge ], [ -1, %if.end11.cleanup54_crit_edge ], [ -22, %if.end14.cleanup54_crit_edge ], [ -515, %if.end.cleanup54_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppoatm_push(ptr noundef %atmvcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pppoatm_push.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pppoatm_push, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pppoatm_push.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %if.then4, label %if.end21

if.then4:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pppoatm_push.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pppoatm_push, %if.then17)) #8
          to label %do.end20 [label %if.then17], !srcloc !75

if.then17:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pppoatm_push.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %1) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %if.then4
  %old_owner = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %old_owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %old_owner, align 4
  %4 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_back.i, align 8
  %old_push.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %old_push.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_push.i, align 4
  %push.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 10
  %8 = ptrtoint ptr %push.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %push.i, align 8
  %old_pop.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %old_pop.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %old_pop.i, align 4
  %pop.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 11
  %11 = ptrtoint ptr %pop.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %pop.i, align 4
  %old_release_cb.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %old_release_cb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %old_release_cb.i, align 4
  %release_cb.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 9
  %14 = ptrtoint ptr %release_cb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %release_cb.i, align 4
  %wakeup_tasklet.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %5, i32 0, i32 10
  tail call void @tasklet_kill(ptr noundef %wakeup_tasklet.i) #8
  %chan.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %5, i32 0, i32 9
  tail call void @ppp_unregister_channel(ptr noundef %chan.i) #8
  %15 = ptrtoint ptr %user_back.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %user_back.i, align 8
  tail call void @kfree(ptr noundef %5) #8
  %16 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %push.i, align 8
  tail call void %17(ptr noundef %atmvcc, ptr noundef null) #8
  tail call void @module_put(ptr noundef %3) #8
  br label %cleanup

if.end21:                                         ; preds = %do.end
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %18 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %atmvcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %19, ptr elementtype(i32) %sk_backlog.i) #8, !srcloc !76
  %encaps = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %encaps, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %22, label %if.end21.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb28
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp22 = icmp ult i32 %25, 4
  br i1 %cmp22, label %sw.bb.error_crit_edge, label %lor.lhs.false

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

lor.lhs.false:                                    ; preds = %sw.bb
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %bcmp96 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %27, ptr noundef nonnull dereferenceable(4) @pppllc, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp96)
  %tobool24.not = icmp eq i32 %bcmp96, 0
  br i1 %tobool24.not, label %if.end26, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 4) #8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end21
  %ppp = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 9, i32 4
  %28 = ptrtoint ptr %ppp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ppp, align 4
  %cmp29 = icmp eq ptr %29, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #8
  br label %cleanup

if.end31:                                         ; preds = %sw.bb28
  %len32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp33 = icmp ugt i32 %31, 5
  br i1 %cmp33, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end31
  %data34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data34, align 4
  %bcmp95 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %33, ptr noundef nonnull dereferenceable(6) @pppllc, i32 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp95)
  %tobool36.not = icmp eq i32 %bcmp95, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true.land.lhs.true43_crit_edge

land.lhs.true.land.lhs.true43_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true43

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %encaps to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %encaps, align 4
  %call39 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 4) #8
  br label %sw.epilog

if.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp42 = icmp ugt i32 %31, 1
  br i1 %cmp42, label %if.end40.land.lhs.true43_crit_edge, label %if.end40.do.body51_crit_edge

if.end40.do.body51_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51

if.end40.land.lhs.true43_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true43

land.lhs.true43:                                  ; preds = %if.end40.land.lhs.true43_crit_edge, %land.lhs.true.land.lhs.true43_crit_edge
  %data44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data44, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %36, ptr noundef dereferenceable(2) getelementptr inbounds ([6 x i8], ptr @pppllc, i32 0, i32 4), i32 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool46.not = icmp eq i32 %bcmp, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true43.do.body51_crit_edge

land.lhs.true43.do.body51_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51

if.then47:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %encaps to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %encaps, align 4
  %mtu = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mtu, align 4
  %add = add i32 %39, 4
  store i32 %add, ptr %mtu, align 4
  br label %sw.epilog

do.body51:                                        ; preds = %land.lhs.true43.do.body51_crit_edge, %if.end40.do.body51_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pppoatm_push.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pppoatm_push, %if.then63)) #8
          to label %error [label %if.then63], !srcloc !75

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %data64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data64, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pppoatm_push.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, ptr noundef %41) #8
  br label %error

sw.epilog:                                        ; preds = %if.then47, %if.then37, %if.end26, %if.end21.sw.epilog_crit_edge
  %chan68 = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 9
  tail call void @ppp_input(ptr noundef %chan68, ptr noundef nonnull %skb) #8
  br label %cleanup

error:                                            ; preds = %if.then63, %do.body51, %lor.lhs.false.error_crit_edge, %sw.bb.error_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #8
  %chan69 = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 9
  tail call void @ppp_input_error(ptr noundef %chan69, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %sw.epilog, %if.then30, %do.end20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_channel_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_unit_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_input_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_unregister_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppoatm_wakeup_sender(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr i8, ptr %t, i32 -28
  tail call void @ppp_output_wakeup(ptr noundef %chan) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_register_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppoatm_pop(ptr noundef %atmvcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back.i, align 8
  %old_pop = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %old_pop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %old_pop, align 4
  tail call void %3(ptr noundef %atmvcc, ptr noundef %skb) #8
  %inflight = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 1, ptr elementtype(i32) %inflight) #8, !srcloc !76
  %blocked = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %blocked) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup_tasklet = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %wakeup_tasklet) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pppoatm_release_cb(ptr noundef %atmvcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back.i, align 8
  %blocked = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %blocked) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 10, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup_tasklet = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 10
  tail call void @__tasklet_schedule(ptr noundef %wakeup_tasklet) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %old_release_cb = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %old_release_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %old_release_cb, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %atmvcc) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_process_recv_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoatm_send(ptr nocapture noundef readonly %chan, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %cb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pppoatm_send.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pppoatm_send, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pppoatm_send.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %skb, ptr noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %do.end
  %flags = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %13 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb, align 8
  %sk_lock = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #8
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end10.sock_owned_by_user.exit_crit_edge

if.end10.sock_owned_by_user.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end10
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !72

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1750, i32 noundef 9, ptr noundef null) #8
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end10.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %blocked = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 7
  %call18 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %blocked) #8
  br label %nospace

if.end19:                                         ; preds = %sock_owned_by_user.exit
  %flags20 = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags20, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.end19.if.then30_crit_edge

if.end19.if.then30_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end19
  %21 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags20, align 4
  %23 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not = icmp eq i32 %23, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags20, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool29.not = icmp eq i32 %26, 0
  br i1 %tobool29.not, label %lor.lhs.false26.if.then30_crit_edge, label %if.end34

lor.lhs.false26.if.then30_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false26.if.then30_crit_edge, %lor.lhs.false.if.then30_crit_edge, %if.end19.if.then30_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup139

if.end34:                                         ; preds = %lor.lhs.false26
  %encaps = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %encaps, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %28, label %if.end34.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb61
    i32 0, label %sw.bb67
  ]

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end34
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp36 = icmp ult i32 %sub.ptr.sub.i, 4
  br i1 %cmp36, label %if.then38, label %if.else

if.then38:                                        ; preds = %sw.bb
  %call39 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef 4) #8
  %cmp40.not = icmp eq ptr %call39, null
  br i1 %cmp40.not, label %cleanup.thread, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.then38
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call39, i32 0, i32 20
  %34 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %truesize, align 8
  %call43 = tail call fastcc i32 @pppoatm_may_send(ptr noundef %1, i32 noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup, label %cleanup.thread204

cleanup.thread204:                                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %if.end59

cleanup.thread:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %skb) #8
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  br label %cleanup139

cleanup:                                          ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call39, i32 noundef 0) #8
  br label %nospace

if.else:                                          ; preds = %sw.bb
  %truesize54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %36 = ptrtoint ptr %truesize54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %truesize54, align 8
  %call55 = tail call fastcc i32 @pppoatm_may_send(ptr noundef %1, i32 noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.else.nospace_crit_edge, label %if.else.if.end59_crit_edge

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.else.nospace_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %nospace

if.end59:                                         ; preds = %if.else.if.end59_crit_edge, %cleanup.thread204
  %skb.addr.1 = phi ptr [ %skb, %if.else.if.end59_crit_edge ], [ %call39, %cleanup.thread204 ]
  %call60 = tail call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 4) #8
  %38 = ptrtoint ptr %call60 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 -16907313, ptr %call60, align 1
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end34
  %truesize62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %39 = ptrtoint ptr %truesize62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %truesize62, align 8
  %call63 = tail call fastcc i32 @pppoatm_may_send(ptr noundef %1, i32 noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %sw.bb61.nospace_crit_edge, label %sw.bb61.sw.epilog_crit_edge

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb61.nospace_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %nospace

sw.bb67:                                          ; preds = %if.end34
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pppoatm_send.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pppoatm_send, %if.then83)) #8
          to label %do.end86 [label %if.then83], !srcloc !75

if.then83:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pppoatm_send.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12) #8
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %sw.bb67
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup139

sw.epilog:                                        ; preds = %sw.bb61.sw.epilog_crit_edge, %if.end59, %if.end34.sw.epilog_crit_edge
  %skb.addr.2 = phi ptr [ %skb, %if.end34.sw.epilog_crit_edge ], [ %skb, %sw.bb61.sw.epilog_crit_edge ], [ %skb.addr.1, %if.end59 ]
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 20
  %41 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %truesize.i, align 8
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i, i32 1, i32 3, i32 1) #8
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i, ptr %sk_wmem_alloc.i, i32 %42, ptr elementtype(i32) %sk_wmem_alloc.i) #8, !srcloc !77
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %sw.epilog.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !78

sw.epilog.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %sw.epilog
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, %42
  %44 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.atm_account_tx.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !72

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.atm_account_tx.exit_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atm_account_tx.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %sw.epilog.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %sw.epilog.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i, i32 noundef %.sink.i.i.i) #8
  br label %atm_account_tx.exit

atm_account_tx.exit:                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.atm_account_tx.exit_crit_edge
  %45 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %truesize.i, align 8
  %acct_truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %acct_truesize.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %acct_truesize.i, align 8
  %atm_options.i = getelementptr inbounds %struct.atm_vcc, ptr %14, i32 0, i32 5
  %48 = ptrtoint ptr %atm_options.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %atm_options.i, align 8
  %atm_options4.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 3, i32 4
  %50 = ptrtoint ptr %atm_options4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %atm_options4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pppoatm_send.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pppoatm_send, %if.then99)) #8
          to label %do.end108 [label %if.then99], !srcloc !75

if.then99:                                        ; preds = %atm_account_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cb100 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 3
  %51 = ptrtoint ptr %cb100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cb100, align 8
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pppoatm_send.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, ptr noundef %skb.addr.2, ptr noundef %52, ptr noundef %54) #8
  br label %do.end108

do.end108:                                        ; preds = %if.then99, %atm_account_tx.exit
  %cb109 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.2, i32 0, i32 3
  %55 = ptrtoint ptr %cb109 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cb109, align 8
  %send = getelementptr inbounds %struct.atm_vcc, ptr %56, i32 0, i32 13
  %57 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %send, align 4
  %call115 = tail call i32 %58(ptr noundef %56, ptr noundef %skb.addr.2) #8
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  br label %cleanup139

nospace:                                          ; preds = %sw.bb61.nospace_crit_edge, %if.else.nospace_crit_edge, %cleanup, %if.then17
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  %flags123 = getelementptr inbounds %struct.pppoatm_vcc, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %flags123 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags123, align 4
  %and124 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %nospace.cleanup139_crit_edge, label %land.lhs.true126

nospace.cleanup139_crit_edge:                     ; preds = %nospace
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup139

land.lhs.true126:                                 ; preds = %nospace
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %head.i197 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %63 = ptrtoint ptr %head.i197 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %head.i197, align 8
  %cmp128.not = icmp eq ptr %62, %64
  br i1 %cmp128.not, label %land.lhs.true126.cleanup139_crit_edge, label %land.lhs.true130

land.lhs.true126.cleanup139_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup139

land.lhs.true130:                                 ; preds = %land.lhs.true126
  %arrayidx132 = getelementptr i8, ptr %62, i32 -1
  %65 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp134 = icmp eq i8 %66, 0
  br i1 %cmp134, label %if.then136, label %land.lhs.true130.cleanup139_crit_edge

land.lhs.true130.cleanup139_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup139

if.then136:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #10
  %call137 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup139

cleanup139:                                       ; preds = %if.then136, %land.lhs.true130.cleanup139_crit_edge, %land.lhs.true126.cleanup139_crit_edge, %nospace.cleanup139_crit_edge, %do.end108, %do.end86, %cleanup.thread, %if.then30
  %retval.1 = phi i32 [ 1, %if.then30 ], [ 1, %do.end108 ], [ 1, %do.end86 ], [ 0, %if.then136 ], [ 0, %land.lhs.true130.cleanup139_crit_edge ], [ 0, %land.lhs.true126.cleanup139_crit_edge ], [ 0, %nospace.cleanup139_crit_edge ], [ 1, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppoatm_devppp_ioctl(ptr nocapture noundef readonly %chan, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 -2147191718, label %sw.bb
    i32 1074033753, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = inttoptr i32 %arg to ptr
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %flags = getelementptr inbounds %struct.pppoatm_vcc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 375) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !66
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %5, i32 -1226833921) #8, !srcloc !79
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 378) #8
  %10 = inttoptr i32 %arg to ptr
  %11 = tail call i32 @llvm.read_register.i32(metadata !56) #8
  %and.i.i.i20 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i20 to ptr
  %cpu_domain.i.i21 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i21) #5, !srcloc !66
  %and.i22 = and i32 %13, -13
  %or.i23 = or i32 %and.i22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i23) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %10, i32 -1226833921) #8, !srcloc !80
  %asmresult = extractvalue { i32, i32 } %14, 0
  %asmresult12 = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan, align 4
  %flags14 = getelementptr inbounds %struct.pppoatm_vcc, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %asmresult12, ptr %flags14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool16.not = icmp eq i32 %asmresult, 0
  %cond17 = select i1 %tobool16.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %sw.bb3, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond17, %sw.bb3 ], [ %cond, %sw.bb ], [ -25, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pppoatm_may_send(ptr noundef %pvcc, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvcc, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %add.i = add i32 %3, %size
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndbuf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i.not = icmp ult i32 %add.i, %5
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %inflight = getelementptr inbounds %struct.pppoatm_vcc, ptr %pvcc, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %inflight, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %inflight, ptr %inflight, i32 0, i32 1, ptr elementtype(i32) %inflight) #8, !srcloc !82
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true.if.end_crit_edge, label %atomic_inc_not_zero.exit.thread

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

atomic_inc_not_zero.exit.thread:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %blocked = getelementptr inbounds %struct.pppoatm_vcc, ptr %pvcc, i32 0, i32 7
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %blocked) #8
  %7 = ptrtoint ptr %pvcc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pvcc, align 4
  %sk_wmem_alloc.i22 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 23
  %call.i.i.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i22, i32 noundef 4) #8
  %9 = ptrtoint ptr %sk_wmem_alloc.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_wmem_alloc.i22, align 4
  %add.i24 = add i32 %10, %size
  %sk_sndbuf.i25 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %sk_sndbuf.i25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sk_sndbuf.i25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i24, i32 %12)
  %cmp.i26.not = icmp ult i32 %add.i24, %12
  br i1 %cmp.i26.not, label %land.lhs.true6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true6:                                   ; preds = %if.end
  %inflight7 = getelementptr inbounds %struct.pppoatm_vcc, ptr %pvcc, i32 0, i32 6
  %call.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %inflight7, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %inflight7, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %inflight7, ptr %inflight7, i32 0, i32 1, ptr elementtype(i32) %inflight7) #8, !srcloc !82
  %asmresult.i.i.i.i17 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i17)
  %cmp.not.i.i.i.i18 = icmp eq i32 %asmresult.i.i.i.i17, 0
  br i1 %cmp.not.i.i.i.i18, label %land.lhs.true6.return_crit_edge, label %atomic_inc_not_zero.exit21.thread

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

atomic_inc_not_zero.exit21.thread:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  br label %return

return:                                           ; preds = %atomic_inc_not_zero.exit21.thread, %land.lhs.true6.return_crit_edge, %if.end.return_crit_edge, %atomic_inc_not_zero.exit.thread
  %retval.0 = phi i32 [ 1, %atomic_inc_not_zero.exit.thread ], [ 1, %atomic_inc_not_zero.exit21.thread ], [ 0, %land.lhs.true6.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_output_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_atm_ioctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_pppoatm__463_486_pppoatm_init6, !1, !"__initcall__kmod_pppoatm__463_486_pppoatm_init6", i1 false, i1 false}
!1 = !{!"../net/atm/pppoatm.c", i32 486, i32 1}
!2 = !{ptr @__exitcall_pppoatm_exit, !3, !"__exitcall_pppoatm_exit", i1 false, i1 false}
!3 = !{!"../net/atm/pppoatm.c", i32 487, i32 1}
!4 = !{ptr @__UNIQUE_ID_author464, !5, !"__UNIQUE_ID_author464", i1 false, i1 false}
!5 = !{!"../net/atm/pppoatm.c", i32 489, i32 1}
!6 = !{ptr @__UNIQUE_ID_description465, !7, !"__UNIQUE_ID_description465", i1 false, i1 false}
!7 = !{!"../net/atm/pppoatm.c", i32 490, i32 1}
!8 = !{ptr @__UNIQUE_ID_file466, !9, !"__UNIQUE_ID_file466", i1 false, i1 false}
!9 = !{!"../net/atm/pppoatm.c", i32 491, i32 1}
!10 = !{ptr @__UNIQUE_ID_license467, !9, !"__UNIQUE_ID_license467", i1 false, i1 false}
!11 = !{ptr @pppoatm_ioctl_ops, !12, !"pppoatm_ioctl_ops", i1 false, i1 false}
!12 = !{!"../net/atm/pppoatm.c", i32 470, i32 25}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/atm/pppoatm.c", i32 450, i32 7}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/atm/pppoatm.c", i32 184, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pppoatm_push.__UNIQUE_ID_ddebug457, !16, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!20 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/atm/pppoatm.c", i32 188, i32 3}
!23 = !{ptr @pppoatm_push.__UNIQUE_ID_ddebug458, !22, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/atm/pppoatm.c", i32 221, i32 3}
!27 = !{ptr @pppoatm_push.__UNIQUE_ID_ddebug459, !26, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pppllc, !30, !"pppllc", i1 false, i1 false}
!30 = !{!"../net/atm/pppoatm.c", i32 86, i32 28}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!33 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!38 = !{ptr @pppoatm_ops, !39, !"pppoatm_ops", i1 false, i1 false}
!39 = !{!"../net/atm/pppoatm.c", i32 384, i32 37}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/atm/pppoatm.c", i32 296, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pppoatm_send.__UNIQUE_ID_ddebug460, !41, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!44 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/atm/pppoatm.c", i32 345, i32 3}
!47 = !{ptr @pppoatm_send.__UNIQUE_ID_ddebug461, !46, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!48 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/atm/pppoatm.c", i32 351, i32 2}
!51 = !{ptr @pppoatm_send.__UNIQUE_ID_ddebug462, !50, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!52 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/net/sock.h", i32 1750, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 5789730}
!67 = !{i64 5789927}
!68 = !{i64 2153275160}
!69 = !{i64 2156935670, i64 2156935950, i64 2156936284, i64 2156936618}
!70 = !{!"auto-init"}
!71 = !{i64 2153294175, i64 2153294200}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2156948566, i64 2156948846, i64 2156949180, i64 2156949514}
!74 = !{i64 2156958209, i64 2156958489, i64 2156958823, i64 2156959157}
!75 = !{i64 2148966810, i64 2148966815, i64 2148966828, i64 2148966872, i64 2148966906, i64 2148966927}
!76 = !{i64 2148355898, i64 2148355924, i64 2148355953, i64 2148355987, i64 2148356018, i64 2148356041}
!77 = !{i64 2148354963, i64 2148354995, i64 2148355024, i64 2148355058, i64 2148355089, i64 2148355112}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2156911665, i64 2156911945, i64 2156912279, i64 2156912613}
!80 = !{i64 2156924065, i64 2156924345, i64 2156924679, i64 2156925013}
!81 = !{i64 2148352852}
!82 = !{i64 838472, i64 838497, i64 838519, i64 838535, i64 838547, i64 838567, i64 838591, i64 838607, i64 838619}
!83 = !{i64 2148353040}
