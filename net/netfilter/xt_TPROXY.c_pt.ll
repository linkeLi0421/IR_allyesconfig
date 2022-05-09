; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_TPROXY.c_pt.bc'
source_filename = "../net/netfilter/xt_TPROXY.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_tproxy_target_info = type { i32, i32, i32, i16 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_tproxy_target_info_v1 = type { i32, i32, %union.nf_inet_addr, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.192 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.inet_timewait_sock = type { %struct.sock_common, i32, i8, i8, i16, i32, i32, i32, %struct.timer_list, ptr }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@tproxy_tg_reg = internal global [3 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TPROXY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tproxy_tg4_v0, ptr @tproxy_tg4_check, ptr @tproxy_tg4_destroy, ptr null, ptr @.str, i32 16, i32 0, i32 1, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TPROXY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @tproxy_tg4_v1, ptr @tproxy_tg4_check, ptr @tproxy_tg4_destroy, ptr null, ptr @.str, i32 28, i32 0, i32 1, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TPROXY\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @tproxy_tg6_v1, ptr @tproxy_tg6_check, ptr @tproxy_tg6_destroy, ptr null, ptr @.str, i32 28, i32 0, i32 1, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_TPROXY__629_284_tproxy_tg_init6 = internal global ptr @tproxy_tg_init, section ".initcall6.init", align 4
@__exitcall_tproxy_tg_exit = internal global ptr @tproxy_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file630 = internal constant [39 x i8] c"xt_TPROXY.file=net/netfilter/xt_TPROXY\00", section ".modinfo", align 1
@__UNIQUE_ID_license631 = internal constant [22 x i8] c"xt_TPROXY.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author632 = internal constant [52 x i8] c"xt_TPROXY.author=Balazs Scheidler, Krisztian Kovacs\00", section ".modinfo", align 1
@__UNIQUE_ID_description633 = internal constant [74 x i8] c"xt_TPROXY.description=Netfilter transparent proxy (TPROXY) target module.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias634 = internal constant [27 x i8] c"xt_TPROXY.alias=ipt_TPROXY\00", section ".modinfo", align 1
@__UNIQUE_ID_alias635 = internal constant [28 x i8] c"xt_TPROXY.alias=ip6t_TPROXY\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@tproxy_tg4.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xt_TPROXY\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tproxy_tg4\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_TPROXY.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"redirecting: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"xt_TPROXY: redirecting: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@tproxy_tg4.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"no socket, dropping: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"xt_TPROXY: no socket, dropping: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", [53 x i8] zeroinitializer }, align 32
@tproxy_tg4_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tproxy_tg4_check = private unnamed_addr constant [17 x i8] c"tproxy_tg4_check\00", align 1
@tproxy_tg4_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.tproxy_tg4_check, ptr @.str.3, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016xt_TPROXY: Can be used only with -p tcp or -p udp\0A\00", [43 x i8] zeroinitializer }, align 32
@tproxy_tg4_check._entry_ptr = internal global ptr @tproxy_tg4_check._entry, section ".printk_index", align 4
@tproxy_tg6_v1.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tproxy_tg6_v1\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"unable to find transport header in IPv6 packet, dropping\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"xt_TPROXY: unable to find transport header in IPv6 packet, dropping\0A\00", [59 x i8] zeroinitializer }, align 32
@tproxy_tg6_v1.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.13, i8 0, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"unable to grab transport header contents in IPv6 packet, dropping\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"xt_TPROXY: unable to grab transport header contents in IPv6 packet, dropping\0A\00", [50 x i8] zeroinitializer }, align 32
@tproxy_tg6_v1.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.15, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"redirecting: proto %hhu %pI6:%hu -> %pI6:%hu, mark: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"xt_TPROXY: redirecting: proto %hhu %pI6:%hu -> %pI6:%hu, mark: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@tproxy_tg6_v1.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.17, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"no socket, dropping: proto %hhu %pI6:%hu -> %pI6:%hu, mark: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"xt_TPROXY: no socket, dropping: proto %hhu %pI6:%hu -> %pI6:%hu, mark: %x\0A\00", [53 x i8] zeroinitializer }, align 32
@tproxy_tg6_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tproxy_tg6_check = private unnamed_addr constant [17 x i8] c"tproxy_tg6_check\00", align 1
@tproxy_tg6_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.tproxy_tg6_check, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tproxy_tg6_check._entry_ptr = internal global ptr @tproxy_tg6_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 12]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 236, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 78, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 86, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 223, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 126, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 132, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 172, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 180, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private constant [29 x i8] c"../net/netfilter/xt_TPROXY.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 200, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias634, ptr @__UNIQUE_ID_alias635, ptr @__UNIQUE_ID_author632, ptr @__UNIQUE_ID_description633, ptr @__UNIQUE_ID_file630, ptr @__UNIQUE_ID_license631, ptr @__exitcall_tproxy_tg_exit, ptr @__initcall__kmod_xt_TPROXY__629_284_tproxy_tg_init6, ptr @tproxy_tg4_check._entry, ptr @tproxy_tg4_check._entry_ptr, ptr @tproxy_tg6_check._entry, ptr @tproxy_tg6_check._entry_ptr, ptr @tproxy_tg_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tproxy_tg4_check._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tproxy_tg6_check._rs], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tproxy_tg4_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tproxy_tg4_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tproxy_tg6_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tproxy_tg6_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tproxy_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_targets(ptr noundef nonnull @tproxy_tg_reg, i32 noundef 3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tproxy_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @tproxy_tg_reg, i32 noundef 3) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tproxy_tg4_v0(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %laddr = getelementptr inbounds %struct.xt_tproxy_target_info, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %laddr, align 4
  %lport = getelementptr inbounds %struct.xt_tproxy_target_info, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %lport, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %mark_value = getelementptr inbounds %struct.xt_tproxy_target_info, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %mark_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mark_value, align 4
  %call1 = tail call fastcc i32 @tproxy_tg4(ptr noundef %6, ptr noundef %skb, i32 noundef %8, i16 noundef zeroext %10, i32 noundef %12, i32 noundef %14)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tproxy_tg4_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entryinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %call = tail call i32 @nf_defrag_ipv4_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %proto = getelementptr inbounds %struct.ipt_ip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %proto, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end.if.end9_crit_edge [
    i16 6, label %if.end.land.lhs.true_crit_edge
    i16 17, label %if.end.land.lhs.true_crit_edge20
  ]

if.end.land.lhs.true_crit_edge20:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge20
  %invflags = getelementptr inbounds %struct.ipt_ip, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %invflags, align 1
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @tproxy_tg4_check._rs, ptr noundef nonnull @__func__.tproxy_tg4_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tproxy_tg4_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @nf_defrag_ipv4_disable(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tproxy_tg4_v1(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %laddr = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %laddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %laddr, align 4
  %lport = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %lport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %lport, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %mark_value = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %mark_value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mark_value, align 4
  %call1 = tail call fastcc i32 @tproxy_tg4(ptr noundef %6, ptr noundef %skb, i32 noundef %8, i16 noundef zeroext %10, i32 noundef %12, i32 noundef %14)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tproxy_tg6_v1(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_hdr = alloca %struct.udphdr, align 8
  %thoff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr) #5
  %7 = ptrtoint ptr %_hdr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff) #5
  %8 = ptrtoint ptr %thoff to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %thoff, align 4
  %call1 = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %thoff, i32 noundef -1, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tproxy_tg6_v1, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !68

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tproxy_tg6_v1.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end6:                                          ; preds = %entry
  %9 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %thoff, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  %15 = add i32 %10, %14
  %sub.i1.i = sub i32 %12, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 7
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !69

if.end.i.i:                                       ; preds = %if.end6
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body10_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.do.body10_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %10, ptr noundef nonnull %_hdr, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.do.body10_crit_edge, label %lor.lhs.false.i.i.if.end26_crit_edge

lor.lhs.false.i.i.if.end26_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

lor.lhs.false.i.i.do.body10_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

skb_header_pointer.exit:                          ; preds = %if.end6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i174 = getelementptr i8, ptr %17, i32 %10
  %cmp8 = icmp eq ptr %add.ptr.i.i174, null
  br i1 %cmp8, label %skb_header_pointer.exit.do.body10_crit_edge, label %skb_header_pointer.exit.if.end26_crit_edge

skb_header_pointer.exit.if.end26_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

skb_header_pointer.exit.do.body10_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

do.body10:                                        ; preds = %skb_header_pointer.exit.do.body10_crit_edge, %lor.lhs.false.i.i.do.body10_crit_edge, %if.end.i.i.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tproxy_tg6_v1, %if.then22)) #5
          to label %cleanup [label %if.then22], !srcloc !68

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tproxy_tg6_v1.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.14) #5
  br label %cleanup

if.end26:                                         ; preds = %skb_header_pointer.exit.if.end26_crit_edge, %lor.lhs.false.i.i.if.end26_crit_edge
  %retval.0.i.i190 = phi ptr [ %add.ptr.i.i174, %skb_header_pointer.exit.if.end26_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end26_crit_edge ]
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i, align 4
  %22 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %thoff, align 4
  %conv = trunc i32 %call1 to i8
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %retval.0.i.i190 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %retval.0.i.i190, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i190, i32 0, i32 1
  %26 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dest, align 2
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in.i, align 4
  %call29 = call ptr @nf_tproxy_get_sock_v6(ptr noundef %21, ptr noundef %skb, i32 noundef %23, i8 noundef zeroext %conv, ptr noundef %saddr, ptr noundef %daddr, i16 noundef zeroext %25, i16 noundef zeroext %27, ptr noundef %29, i32 noundef 1) #5
  %laddr30 = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %6, i32 0, i32 2
  %call32 = call ptr @nf_tproxy_laddr6(ptr noundef %skb, ptr noundef %laddr30, ptr noundef %daddr) #5
  %lport33 = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %6, i32 0, i32 3
  %30 = ptrtoint ptr %lport33 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %lport33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool35.not = icmp eq i16 %31, 0
  br i1 %tobool35.not, label %cond.false, label %if.end26.cond.end_crit_edge

if.end26.cond.end_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dest, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end26.cond.end_crit_edge
  %cond.in = phi i16 [ %33, %cond.false ], [ %31, %if.end26.cond.end_crit_edge ]
  %tobool41.not = icmp eq ptr %call29, null
  br i1 %tobool41.not, label %if.then52.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call29, i32 0, i32 4
  %34 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %35)
  %cmp43 = icmp eq i8 %35, 6
  br i1 %cmp43, label %if.then45, label %land.lhs.true.land.lhs.true62_crit_edge

land.lhs.true.land.lhs.true62_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true62

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %4, align 4
  %38 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %thoff, align 4
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state.i, align 4
  %net.i177 = getelementptr inbounds %struct.nf_hook_state, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %net.i177 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net.i177, align 4
  %laddr48 = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %37, i32 0, i32 2
  %lport49 = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %37, i32 0, i32 3
  %44 = ptrtoint ptr %lport49 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %lport49, align 4
  %call50 = call ptr @nf_tproxy_handle_time_wait6(ptr noundef %skb, i32 noundef %call1, i32 noundef %39, ptr noundef %43, ptr noundef %laddr48, i16 noundef zeroext %45, ptr noundef nonnull %call29) #5
  br label %if.end60

if.then52.critedge:                               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state.i, align 4
  %net.i179 = getelementptr inbounds %struct.nf_hook_state, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %net.i179 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net.i179, align 4
  %50 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %thoff, align 4
  %52 = ptrtoint ptr %retval.0.i.i190 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %retval.0.i.i190, align 2
  %in.i181 = getelementptr inbounds %struct.nf_hook_state, ptr %47, i32 0, i32 2
  %54 = ptrtoint ptr %in.i181 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %in.i181, align 4
  %call58 = call ptr @nf_tproxy_get_sock_v6(ptr noundef %49, ptr noundef %skb, i32 noundef %51, i8 noundef zeroext %conv, ptr noundef %saddr, ptr noundef %call32, i16 noundef zeroext %53, i16 noundef zeroext %cond.in, ptr noundef %55, i32 noundef 0) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then52.critedge, %if.then45
  %sk.0 = phi ptr [ %call50, %if.then45 ], [ %call58, %if.then52.critedge ]
  %tobool61.not = icmp eq ptr %sk.0, null
  br i1 %tobool61.not, label %if.end60.do.body87_crit_edge, label %if.end60.land.lhs.true62_crit_edge

if.end60.land.lhs.true62_crit_edge:               ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true62

if.end60.do.body87_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

land.lhs.true62:                                  ; preds = %if.end60.land.lhs.true62_crit_edge, %land.lhs.true.land.lhs.true62_crit_edge
  %sk.0197 = phi ptr [ %sk.0, %if.end60.land.lhs.true62_crit_edge ], [ %call29, %land.lhs.true.land.lhs.true62_crit_edge ]
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0197, i32 0, i32 4
  %56 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load volatile i8, ptr %skc_state.i.i, align 2
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %57, label %sw.epilog.i.i [
    i8 6, label %inet_sk_transparent.exit.i
    i8 12, label %sw.bb1.i.i
  ]

sw.bb1.i.i:                                       ; preds = %land.lhs.true62
  %no_srccheck.i.i = getelementptr inbounds %struct.inet_request_sock, ptr %sk.0197, i32 0, i32 1
  %59 = ptrtoint ptr %no_srccheck.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load4.i.i = load i16, ptr %no_srccheck.i.i, align 8
  %60 = and i16 %bf.load4.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool7.i.not.i = icmp eq i16 %60, 0
  br i1 %tobool7.i.not.i, label %sw.bb1.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge, label %sw.bb1.i.i.if.then65_crit_edge

sw.bb1.i.i.if.then65_crit_edge:                   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

sw.bb1.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge: ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_sk_is_transparent.exit

sw.epilog.i.i:                                    ; preds = %land.lhs.true62
  %transparent.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk.0197, i32 0, i32 12
  %61 = ptrtoint ptr %transparent.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load9.i.i = load i16, ptr %transparent.i.i, align 8
  %62 = and i16 %bf.load9.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool12.i.not.i = icmp eq i16 %62, 0
  br i1 %tobool12.i.not.i, label %sw.epilog.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge, label %sw.epilog.i.i.if.then65_crit_edge

sw.epilog.i.i.if.then65_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

sw.epilog.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_sk_is_transparent.exit

inet_sk_transparent.exit.i:                       ; preds = %land.lhs.true62
  %tw_transparent.i.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk.0197, i32 0, i32 5
  %63 = ptrtoint ptr %tw_transparent.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load.i.i = load i32, ptr %tw_transparent.i.i, align 8
  %64 = and i32 %bf.load.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i, label %inet_sk_transparent.exit.i.nf_tproxy_sk_is_transparent.exit_crit_edge, label %inet_sk_transparent.exit.i.if.then65_crit_edge

inet_sk_transparent.exit.i.if.then65_crit_edge:   ; preds = %inet_sk_transparent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

inet_sk_transparent.exit.i.nf_tproxy_sk_is_transparent.exit_crit_edge: ; preds = %inet_sk_transparent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_sk_is_transparent.exit

nf_tproxy_sk_is_transparent.exit:                 ; preds = %inet_sk_transparent.exit.i.nf_tproxy_sk_is_transparent.exit_crit_edge, %sw.epilog.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge, %sw.bb1.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge
  call void @sock_gen_put(ptr noundef nonnull %sk.0197) #5
  br label %do.body87

if.then65:                                        ; preds = %inet_sk_transparent.exit.i.if.then65_crit_edge, %sw.epilog.i.i.if.then65_crit_edge, %sw.bb1.i.i.if.then65_crit_edge
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %6, align 4
  %neg = xor i32 %69, -1
  %and = and i32 %67, %neg
  %mark_value = getelementptr inbounds %struct.xt_tproxy_target_info_v1, ptr %6, i32 0, i32 1
  %70 = ptrtoint ptr %mark_value to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mark_value, align 4
  %xor = xor i32 %and, %71
  store i32 %xor, ptr %65, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tproxy_tg6_v1, %if.then78)) #5
          to label %do.end85 [label %if.then78], !srcloc !68

if.then78:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %retval.0.i.i190 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %retval.0.i.i190, align 2
  %conv81 = zext i16 %73 to i32
  %conv82 = zext i16 %cond.in to i32
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %65, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tproxy_tg6_v1.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.16, i32 noundef %call1, ptr noundef %saddr, i32 noundef %conv81, ptr noundef %call32, i32 noundef %conv82, i32 noundef %75) #5
  br label %do.end85

do.end85:                                         ; preds = %if.then78, %if.then65
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %76 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i182

if.then.i.i182:                                   ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #7
  call void %77(ptr noundef %skb) #5
  br label %nf_tproxy_assign_sock.exit

do.body.i.i:                                      ; preds = %do.end85
  %78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %tobool3.not.i.i = icmp eq ptr %80, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.nf_tproxy_assign_sock.exit_crit_edge, label %do.body7.i.i, !prof !69

do.body.i.i.nf_tproxy_assign_sock.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_assign_sock.exit

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !70
  unreachable

nf_tproxy_assign_sock.exit:                       ; preds = %do.body.i.i.nf_tproxy_assign_sock.exit_crit_edge, %if.then.i.i182
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %sk.0197, ptr %81, align 4
  %83 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @sock_edemux, ptr %destructor.i.i, align 4
  br label %cleanup

do.body87:                                        ; preds = %nf_tproxy_sk_is_transparent.exit, %if.end60.do.body87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tproxy_tg6_v1, %if.then99)) #5
          to label %cleanup [label %if.then99], !srcloc !68

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %retval.0.i.i190 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %retval.0.i.i190, align 2
  %conv102 = zext i16 %85 to i32
  %86 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %dest, align 2
  %conv105 = zext i16 %87 to i32
  %88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tproxy_tg6_v1.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.18, i32 noundef %call1, ptr noundef %saddr, i32 noundef %conv102, ptr noundef %daddr, i32 noundef %conv105, i32 noundef %90) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %do.body87, %nf_tproxy_assign_sock.exit, %if.then22, %do.body10, %if.then5, %do.body
  %retval.0 = phi i32 [ 1, %nf_tproxy_assign_sock.exit ], [ 0, %if.then5 ], [ 0, %if.then22 ], [ 0, %if.then99 ], [ 0, %do.body ], [ 0, %do.body10 ], [ 0, %do.body87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tproxy_tg6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entryinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %call = tail call i32 @nf_defrag_ipv6_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %proto = getelementptr inbounds %struct.ip6t_ip6, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %proto, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %5, label %if.end.if.end9_crit_edge [
    i16 6, label %if.end.land.lhs.true_crit_edge
    i16 17, label %if.end.land.lhs.true_crit_edge20
  ]

if.end.land.lhs.true_crit_edge20:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge20
  %invflags = getelementptr inbounds %struct.ip6t_ip6, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %invflags, align 4
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @tproxy_tg6_check._rs, ptr noundef nonnull @__func__.tproxy_tg6_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tproxy_tg6_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @nf_defrag_ipv6_disable(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tproxy_tg4(ptr noundef %net, ptr noundef %skb, i32 noundef %laddr, i16 noundef zeroext %lport, i32 noundef %mark_mask, i32 noundef %mark_value) unnamed_addr #2 align 64 {
entry:
  %laddr.addr = alloca i32, align 4
  %_hdr = alloca %struct.udphdr, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %laddr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %laddr, ptr %laddr.addr, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_hdr) #5
  %5 = ptrtoint ptr %_hdr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %_hdr, align 8
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %7 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %7 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %11, %mul.i
  %sub.i1.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 7
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !69

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i, ptr noundef nonnull %_hdr, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %14, i32 %mul.i
  %cmp = icmp eq ptr %add.ptr.i.i111, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i119 = phi ptr [ %add.ptr.i.i111, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol, align 1
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %daddr, align 4
  %21 = ptrtoint ptr %retval.0.i.i119 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %retval.0.i.i119, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i119, i32 0, i32 1
  %23 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dest, align 2
  %25 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %call3 = call ptr @nf_tproxy_get_sock_v4(ptr noundef %net, ptr noundef %skb, i8 noundef zeroext %16, i32 noundef %18, i32 noundef %20, i16 noundef zeroext %22, i16 noundef zeroext %24, ptr noundef %27, i32 noundef 1) #5
  %28 = ptrtoint ptr %laddr.addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %laddr.addr, align 4
  %30 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %daddr, align 4
  %call5 = call i32 @nf_tproxy_laddr4(ptr noundef %skb, i32 noundef %29, i32 noundef %31) #5
  %32 = ptrtoint ptr %laddr.addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call5, ptr %laddr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lport)
  %tobool.not = icmp eq i16 %lport, 0
  br i1 %tobool.not, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dest, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %lport.addr.0 = phi i16 [ %lport, %if.end.if.end8_crit_edge ], [ %34, %if.then6 ]
  %tobool9.not = icmp eq ptr %call3, null
  br i1 %tobool9.not, label %if.then15.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call3, i32 0, i32 4
  %35 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %36)
  %cmp10 = icmp eq i8 %36, 6
  br i1 %cmp10, label %if.then12, label %land.lhs.true.land.lhs.true23_crit_edge

land.lhs.true.land.lhs.true23_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true23

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = call ptr @nf_tproxy_handle_time_wait4(ptr noundef %net, ptr noundef %skb, i32 noundef %call5, i16 noundef zeroext %lport.addr.0, ptr noundef nonnull %call3) #5
  br label %if.end21

if.then15.critedge:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %protocol, align 1
  %39 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %saddr, align 4
  %41 = ptrtoint ptr %retval.0.i.i119 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %retval.0.i.i119, align 2
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %25, align 8
  %call19 = call ptr @nf_tproxy_get_sock_v4(ptr noundef %net, ptr noundef %skb, i8 noundef zeroext %38, i32 noundef %40, i32 noundef %call5, i16 noundef zeroext %42, i16 noundef zeroext %lport.addr.0, ptr noundef %44, i32 noundef 0) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then15.critedge, %if.then12
  %sk.0 = phi ptr [ %call13, %if.then12 ], [ %call19, %if.then15.critedge ]
  %tobool22.not = icmp eq ptr %sk.0, null
  br i1 %tobool22.not, label %if.end21.do.body40_crit_edge, label %if.end21.land.lhs.true23_crit_edge

if.end21.land.lhs.true23_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true23

if.end21.do.body40_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40

land.lhs.true23:                                  ; preds = %if.end21.land.lhs.true23_crit_edge, %land.lhs.true.land.lhs.true23_crit_edge
  %sk.0125 = phi ptr [ %sk.0, %if.end21.land.lhs.true23_crit_edge ], [ %call3, %land.lhs.true.land.lhs.true23_crit_edge ]
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0125, i32 0, i32 4
  %45 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load volatile i8, ptr %skc_state.i.i, align 2
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %46, label %sw.epilog.i.i [
    i8 6, label %inet_sk_transparent.exit.i
    i8 12, label %sw.bb1.i.i
  ]

sw.bb1.i.i:                                       ; preds = %land.lhs.true23
  %no_srccheck.i.i = getelementptr inbounds %struct.inet_request_sock, ptr %sk.0125, i32 0, i32 1
  %48 = ptrtoint ptr %no_srccheck.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load4.i.i = load i16, ptr %no_srccheck.i.i, align 8
  %49 = and i16 %bf.load4.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool7.i.not.i = icmp eq i16 %49, 0
  br i1 %tobool7.i.not.i, label %sw.bb1.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge, label %sw.bb1.i.i.if.then26_crit_edge

sw.bb1.i.i.if.then26_crit_edge:                   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

sw.bb1.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge: ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_sk_is_transparent.exit

sw.epilog.i.i:                                    ; preds = %land.lhs.true23
  %transparent.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk.0125, i32 0, i32 12
  %50 = ptrtoint ptr %transparent.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load9.i.i = load i16, ptr %transparent.i.i, align 8
  %51 = and i16 %bf.load9.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool12.i.not.i = icmp eq i16 %51, 0
  br i1 %tobool12.i.not.i, label %sw.epilog.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge, label %sw.epilog.i.i.if.then26_crit_edge

sw.epilog.i.i.if.then26_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

sw.epilog.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_sk_is_transparent.exit

inet_sk_transparent.exit.i:                       ; preds = %land.lhs.true23
  %tw_transparent.i.i = getelementptr inbounds %struct.inet_timewait_sock, ptr %sk.0125, i32 0, i32 5
  %52 = ptrtoint ptr %tw_transparent.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load.i.i = load i32, ptr %tw_transparent.i.i, align 8
  %53 = and i32 %bf.load.i.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i, label %inet_sk_transparent.exit.i.nf_tproxy_sk_is_transparent.exit_crit_edge, label %inet_sk_transparent.exit.i.if.then26_crit_edge

inet_sk_transparent.exit.i.if.then26_crit_edge:   ; preds = %inet_sk_transparent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

inet_sk_transparent.exit.i.nf_tproxy_sk_is_transparent.exit_crit_edge: ; preds = %inet_sk_transparent.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_sk_is_transparent.exit

nf_tproxy_sk_is_transparent.exit:                 ; preds = %inet_sk_transparent.exit.i.nf_tproxy_sk_is_transparent.exit_crit_edge, %sw.epilog.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge, %sw.bb1.i.i.nf_tproxy_sk_is_transparent.exit_crit_edge
  call void @sock_gen_put(ptr noundef nonnull %sk.0125) #5
  br label %do.body40

if.then26:                                        ; preds = %inet_sk_transparent.exit.i.if.then26_crit_edge, %sw.epilog.i.i.if.then26_crit_edge, %sw.bb1.i.i.if.then26_crit_edge
  %54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %neg = xor i32 %mark_mask, -1
  %and = and i32 %56, %neg
  %xor = xor i32 %and, %mark_value
  store i32 %xor, ptr %54, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tproxy_tg4.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tproxy_tg4, %if.then31)) #5
          to label %do.end [label %if.then31], !srcloc !68

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %protocol, align 1
  %conv33 = zext i8 %58 to i32
  %59 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %dest, align 2
  %conv36 = zext i16 %60 to i32
  %conv37 = zext i16 %lport.addr.0 to i32
  %61 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %54, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tproxy_tg4.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.5, i32 noundef %conv33, ptr noundef %daddr, i32 noundef %conv36, ptr noundef nonnull %laddr.addr, i32 noundef %conv37, i32 noundef %62) #5
  br label %do.end

do.end:                                           ; preds = %if.then31, %if.then26
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i112

if.then.i.i112:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void %64(ptr noundef %skb) #5
  br label %nf_tproxy_assign_sock.exit

do.body.i.i:                                      ; preds = %do.end
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %tobool3.not.i.i = icmp eq ptr %67, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.nf_tproxy_assign_sock.exit_crit_edge, label %do.body7.i.i, !prof !69

do.body.i.i.nf_tproxy_assign_sock.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_tproxy_assign_sock.exit

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #5, !srcloc !70
  unreachable

nf_tproxy_assign_sock.exit:                       ; preds = %do.body.i.i.nf_tproxy_assign_sock.exit_crit_edge, %if.then.i.i112
  %68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %sk.0125, ptr %68, align 4
  %70 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @sock_edemux, ptr %destructor.i.i, align 4
  br label %cleanup

do.body40:                                        ; preds = %nf_tproxy_sk_is_transparent.exit, %if.end21.do.body40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tproxy_tg4.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tproxy_tg4, %if.then52)) #5
          to label %cleanup [label %if.then52], !srcloc !68

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %protocol, align 1
  %conv54 = zext i8 %72 to i32
  %73 = ptrtoint ptr %retval.0.i.i119 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %retval.0.i.i119, align 2
  %conv57 = zext i16 %74 to i32
  %75 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %dest, align 2
  %conv60 = zext i16 %76 to i32
  %77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tproxy_tg4.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.7, i32 noundef %conv54, ptr noundef %saddr, i32 noundef %conv57, ptr noundef %daddr, i32 noundef %conv60, i32 noundef %79) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.body40, %nf_tproxy_assign_sock.exit, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %nf_tproxy_assign_sock.exit ], [ 0, %skb_header_pointer.exit.cleanup_crit_edge ], [ 0, %if.then52 ], [ 0, %do.body40 ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_hdr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_get_sock_v4(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_tproxy_laddr4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_handle_time_wait4(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_edemux(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_defrag_ipv4_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_defrag_ipv4_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_get_sock_v6(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_laddr6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_tproxy_handle_time_wait6(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_defrag_ipv6_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_defrag_ipv6_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_xt_TPROXY__629_284_tproxy_tg_init6, !1, !"__initcall__kmod_xt_TPROXY__629_284_tproxy_tg_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_TPROXY.c", i32 284, i32 1}
!2 = !{ptr @__exitcall_tproxy_tg_exit, !3, !"__exitcall_tproxy_tg_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_TPROXY.c", i32 285, i32 1}
!4 = !{ptr @__UNIQUE_ID_file630, !5, !"__UNIQUE_ID_file630", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_TPROXY.c", i32 286, i32 1}
!6 = !{ptr @__UNIQUE_ID_license631, !5, !"__UNIQUE_ID_license631", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author632, !8, !"__UNIQUE_ID_author632", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_TPROXY.c", i32 287, i32 1}
!9 = !{ptr @__UNIQUE_ID_description633, !10, !"__UNIQUE_ID_description633", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_TPROXY.c", i32 288, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias634, !12, !"__UNIQUE_ID_alias634", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_TPROXY.c", i32 289, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias635, !14, !"__UNIQUE_ID_alias635", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_TPROXY.c", i32 290, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_TPROXY.c", i32 236, i32 13}
!17 = !{ptr @tproxy_tg_reg, !18, !"tproxy_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_TPROXY.c", i32 232, i32 25}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_TPROXY.c", i32 78, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tproxy_tg4.__UNIQUE_ID_ddebug623, !20, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!25 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/xt_TPROXY.c", i32 86, i32 2}
!28 = !{ptr @tproxy_tg4.__UNIQUE_ID_ddebug624, !27, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/xt_TPROXY.c", i32 223, i32 2}
!32 = !{ptr @tproxy_tg4_check._rs, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @__func__.tproxy_tg4_check, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tproxy_tg4_check._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @tproxy_tg4_check._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/xt_TPROXY.c", i32 126, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug625, !38, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!41 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/xt_TPROXY.c", i32 132, i32 3}
!44 = !{ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug626, !43, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!45 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/xt_TPROXY.c", i32 172, i32 3}
!48 = !{ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug627, !47, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!49 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/xt_TPROXY.c", i32 180, i32 2}
!52 = !{ptr @tproxy_tg6_v1.__UNIQUE_ID_ddebug628, !51, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tproxy_tg6_check._rs, !55, !"_rs", i1 false, i1 false}
!55 = !{!"../net/netfilter/xt_TPROXY.c", i32 200, i32 2}
!56 = !{ptr @__func__.tproxy_tg6_check, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tproxy_tg6_check._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @tproxy_tg6_check._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148959853, i64 2148959858, i64 2148959871, i64 2148959915, i64 2148959949, i64 2148959970}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2154590260, i64 2154590748, i64 2154590297, i64 2154590353, i64 2154590387, i64 2154590411, i64 2154590452, i64 2154590473, i64 2154590501, i64 2154590535}
