; ModuleID = '/llk/IR_all_yes/net/netfilter/nfnetlink_cthelper.c_pt.bc'
source_filename = "../net/netfilter/nfnetlink_cthelper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfnl_cthelper = type { %struct.list_head, %struct.nf_conntrack_helper }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.105 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.105 = type { %union.nf_inet_addr, %union.anon.106, i8, i8 }
%union.anon.106 = type { i16 }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
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
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.113, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.113 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.160 }
%union.anon.160 = type { [6 x i32], [24 x i8] }

@__UNIQUE_ID_file587 = internal constant [57 x i8] c"nfnetlink_cthelper.file=net/netfilter/nfnetlink_cthelper\00", section ".modinfo", align 1
@__UNIQUE_ID_license588 = internal constant [31 x i8] c"nfnetlink_cthelper.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author589 = internal constant [66 x i8] c"nfnetlink_cthelper.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description590 = internal constant [85 x i8] c"nfnetlink_cthelper.description=nfnl_cthelper: User-space connection tracking helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_alias597 = internal constant [44 x i8] c"nfnetlink_cthelper.alias=nfnetlink-subsys-9\00", section ".modinfo", align 1
@nfnl_cthelper_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str, i8 9, i8 3, ptr @nfnl_cthelper_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfnl_cthelper_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nfnl_cthelper_list, ptr @nfnl_cthelper_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_nfnetlink_cthelper__598_799_nfnl_cthelper_init6 = internal global ptr @nfnl_cthelper_init, section ".initcall6.init", align 4
@__exitcall_nfnl_cthelper_exit = internal global ptr @nfnl_cthelper_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cthelper\00", [23 x i8] zeroinitializer }, align 32
@nfnl_cthelper_cb = internal constant { [3 x %struct.nfnl_callback], [48 x i8] } { [3 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @nfnl_cthelper_new, ptr @nfnl_cthelper_policy, i32 1, i16 6 }, %struct.nfnl_callback { ptr @nfnl_cthelper_get, ptr @nfnl_cthelper_policy, i32 1, i16 6 }, %struct.nfnl_callback { ptr @nfnl_cthelper_del, ptr @nfnl_cthelper_policy, i32 1, i16 6 }], [48 x i8] zeroinitializer }, align 32
@nfnl_cthelper_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nfnl_cthelper_tuple_pol = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfnl_cthelper_expect_policy_set = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nfnl_cthelper_expect_pol = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nfnl_userspace_cthelper.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/netfilter/nfnetlink_cthelper.c\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__const.nfnl_cthelper_get.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @nfnl_cthelper_dump_table, ptr null, ptr null, ptr null, i32 0 }, align 4
@nf_ct_helper_hsize = external dso_local local_unnamed_addr global i32, align 4
@nfnl_cthelper_dump_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nf_ct_helper_hash = external dso_local local_unnamed_addr global ptr, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@nfnl_cthelper_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nfnl_cthelper: cannot register with nfnetlink.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfnl_cthelper_init\00", [45 x i8] zeroinitializer }, align 32
@nfnl_cthelper_init._entry_ptr = internal global ptr @nfnl_cthelper_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"nfnl_cthelper_subsys\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 760, i32 41 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"nfnl_cthelper_list\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 38, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 761, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"nfnl_cthelper_cb\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 739, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"nfnl_cthelper_policy\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 731, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [24 x i8] c"nfnl_cthelper_tuple_pol\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 66, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"nfnl_cthelper_expect_policy_set\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 163, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"nfnl_cthelper_expect_pol\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 125, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 52, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 581, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 695, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 991, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [38 x i8] c"../net/netfilter/nfnetlink_cthelper.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 775, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias597, ptr @__UNIQUE_ID_author589, ptr @__UNIQUE_ID_description590, ptr @__UNIQUE_ID_file587, ptr @__UNIQUE_ID_license588, ptr @__exitcall_nfnl_cthelper_exit, ptr @__initcall__kmod_nfnetlink_cthelper__598_799_nfnl_cthelper_init6, ptr @nfnl_cthelper_exit, ptr @nfnl_cthelper_init._entry, ptr @nfnl_cthelper_init._entry_ptr, ptr @nfnl_cthelper_subsys, ptr @nfnl_cthelper_list, ptr @.str, ptr @nfnl_cthelper_cb, ptr @nfnl_cthelper_policy, ptr @nfnl_cthelper_tuple_pol, ptr @nfnl_cthelper_expect_policy_set, ptr @nfnl_cthelper_expect_pol, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_cb to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_tuple_pol to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_expect_policy_set to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_expect_pol to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_cthelper_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfnl_cthelper_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfnl_cthelper_subsys) #11
  %0 = load ptr, ptr @nfnl_cthelper_list, align 4
  %cmp.not15 = icmp eq ptr %0, @nfnl_cthelper_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %nlcth.016 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %nlcth.016 to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.0 = load ptr, ptr %nlcth.016, align 4
  %helper = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.016, i32 0, i32 1
  tail call void @nf_conntrack_helper_unregister(ptr noundef %helper) #11
  %expect_policy = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.016, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %expect_policy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %expect_policy, align 4
  tail call void @kfree(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %nlcth.016) #11
  %cmp.not = icmp eq ptr %n.0, @nfnl_cthelper_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_cthelper_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @nfnl_cthelper_subsys) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_cthelper_new(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  %tb.i.i.i.i = alloca [4 x ptr], align 4
  %tb.i.i72 = alloca [6 x ptr], align 4
  %tb.i.i.i = alloca [4 x ptr], align 4
  %tb.i.i = alloca [6 x ptr], align 4
  %tb.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #11
  %4 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !60
  %5 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !60
  %7 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !60
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %conv.i.i.i = zext i16 %10 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nfnl_cthelper_tuple_pol, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.end4.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %if.end.i

if.end4.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

if.end.i:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %nfnl_cthelper_parse_tuple.exit

lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

nfnl_cthelper_parse_tuple.exit.thread:            ; preds = %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, %if.end4.nfnl_cthelper_parse_tuple.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ], [ %call2.i.i, %if.end4.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %cleanup

nfnl_cthelper_parse_tuple.exit:                   ; preds = %lor.lhs.false.i
  %add.ptr.i.i13.i = getelementptr i8, ptr %12, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i13.i, align 2
  %add.ptr.i.i14.i = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i14.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  %nlcth.0127 = load ptr, ptr @nfnl_cthelper_list, align 4
  %cmp11.not128 = icmp eq ptr %nlcth.0127, @nfnl_cthelper_list
  br i1 %cmp11.not128, label %nfnl_cthelper_parse_tuple.exit.if.then43_crit_edge, label %nfnl_cthelper_parse_tuple.exit.for.body_crit_edge

nfnl_cthelper_parse_tuple.exit.for.body_crit_edge: ; preds = %nfnl_cthelper_parse_tuple.exit
  br label %for.body

nfnl_cthelper_parse_tuple.exit.if.then43_crit_edge: ; preds = %nfnl_cthelper_parse_tuple.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %nfnl_cthelper_parse_tuple.exit.for.body_crit_edge
  %nlcth.0129 = phi ptr [ %nlcth.0, %for.inc.for.body_crit_edge ], [ %nlcth.0127, %nfnl_cthelper_parse_tuple.exit.for.body_crit_edge ]
  %name = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 1
  %call13 = call i32 @strncmp(ptr noundef %name, ptr noundef %add.ptr.i, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end16:                                         ; preds = %for.body
  %l3num19 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 5, i32 0, i32 2
  %19 = ptrtoint ptr %l3num19 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %l3num19, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %20)
  %cmp21.not = icmp eq i16 %16, %20
  br i1 %cmp21.not, label %lor.lhs.false23, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false23:                                  ; preds = %if.end16
  %protonum27 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 5, i32 1, i32 2
  %21 = ptrtoint ptr %protonum27 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %protonum27, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %22)
  %cmp29.not = icmp eq i8 %18, %22
  br i1 %cmp29.not, label %if.end32, label %lor.lhs.false23.for.inc_crit_edge

lor.lhs.false23.for.inc_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32:                                         ; preds = %lor.lhs.false23
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %23 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nlmsg_flags, align 2
  %27 = and i16 %26, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool34.not = icmp eq i16 %27, 0
  br i1 %tobool34.not, label %for.end, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false23.for.inc_crit_edge, %if.end16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %nlcth.0129 to i32
  call void @__asan_load4_noabort(i32 %28)
  %nlcth.0 = load ptr, ptr %nlcth.0129, align 4
  %cmp11.not = icmp eq ptr %nlcth.0, @nfnl_cthelper_list
  br i1 %cmp11.not, label %for.inc.if.then43_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.then43_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

for.end:                                          ; preds = %if.end32
  %helper12.le = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1
  %cmp41 = icmp eq ptr %helper12.le, null
  br i1 %cmp41, label %for.end.if.then43_crit_edge, label %if.else

for.end.if.then43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then43:                                        ; preds = %for.end.if.then43_crit_edge, %for.inc.if.then43_crit_edge, %nfnl_cthelper_parse_tuple.exit.if.then43_crit_edge
  %29 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i65 = icmp eq ptr %30, null
  br i1 %tobool.not.i65, label %if.then43.cleanup_crit_edge, label %lor.lhs.false.i67

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i67:                                ; preds = %if.then43
  %arrayidx1.i = getelementptr ptr, ptr %tb, i32 4
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i66 = icmp eq ptr %32, null
  br i1 %tobool2.not.i66, label %lor.lhs.false.i67.cleanup_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i67.cleanup_crit_edge:              ; preds = %lor.lhs.false.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i67
  %arrayidx4.i = getelementptr ptr, ptr %tb, i32 5
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %34, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.cleanup_crit_edge, label %if.end.i69

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i69:                                       ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 132) #15
  %cmp.i68 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i68, label %if.end.i69.cleanup_crit_edge, label %if.end7.i

if.end.i69.cleanup_crit_edge:                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i69
  %helper8.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx1.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb.i.i) #11
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 4
  %38 = call ptr @memset(ptr %tb.i.i, i32 255, i32 24)
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %37, align 2
  %conv.i.i.i.i = zext i16 %40 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i, i32 noundef 5, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i, ptr noundef nonnull @nfnl_cthelper_expect_policy_set, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i, label %if.end7.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, label %if.end.i.i

if.end7.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_expect_policy.exit.thread.i

if.end.i.i:                                       ; preds = %if.end7.i
  %41 = getelementptr inbounds [6 x ptr], ptr %tb.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, label %if.end2.i.i

if.end.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_expect_policy.exit.thread.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %add.ptr.i.i47.i.i = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i47.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp5.i.i = icmp eq i32 %45, 0
  br i1 %cmp5.i.i, label %if.end2.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, label %if.end7.i.i

if.end2.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_expect_policy.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp8.i.i = icmp ugt i32 %45, 4
  br i1 %cmp8.i.i, label %if.end7.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, label %if.end7.i.i.i.i

if.end7.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_expect_policy.exit.thread.i

if.end7.i.i.i.i:                                  ; preds = %if.end7.i.i
  %46 = mul nuw nsw i32 %45, 24
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #16
  %cmp12.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %cmp12.i.i, label %if.end7.i.i.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.end7.i.i.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_expect_policy.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i.i.i.i
  %47 = getelementptr inbounds [4 x ptr], ptr %tb.i.i.i, i32 0, i32 2
  %48 = getelementptr inbounds [4 x ptr], ptr %tb.i.i.i, i32 0, i32 3
  %49 = getelementptr inbounds [4 x ptr], ptr %tb.i.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.054.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add i32 %i.054.i.i, 2
  %arrayidx16.i.i = getelementptr [6 x ptr], ptr %tb.i.i, i32 0, i32 %add.i.i
  %50 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx16.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %51, null
  br i1 %tobool17.not.i.i, label %for.body.i.i.err.i.i_crit_edge, label %if.end19.i.i

for.body.i.i.err.i.i_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err.i.i

if.end19.i.i:                                     ; preds = %for.body.i.i
  %arrayidx20.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %call8.i.i.i.i, i32 %i.054.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb.i.i.i) #11
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %51, i32 4
  %52 = call ptr @memset(ptr %tb.i.i.i, i32 255, i32 16)
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %51, align 2
  %conv.i.i.i.i.i = zext i16 %54 to i32
  %sub.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i, -4
  %call2.i.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i.i, i32 noundef 3, ptr noundef %add.ptr.i.i.i.i.i, i32 noundef %sub.i.i.i.i.i, ptr noundef nonnull @nfnl_cthelper_expect_pol, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call2.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end19.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.end19.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_expect_policy.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end19.i.i
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %49, align 4
  %tobool.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_expect_policy.exit.thread.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %57 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %47, align 4
  %tobool2.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, label %lor.lhs.false3.i.i.i

lor.lhs.false.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_expect_policy.exit.thread.i.i

lor.lhs.false3.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %59 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %48, align 4
  %tobool5.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool5.not.i.i.i, label %lor.lhs.false3.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, label %if.end7.i.i.i

lor.lhs.false3.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_expect_policy.exit.thread.i.i

if.end7.i.i.i:                                    ; preds = %lor.lhs.false3.i.i.i
  %name.i.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %call8.i.i.i.i, i32 %i.054.i.i, i32 2
  %call10.i.i.i = call i32 @nla_strscpy(ptr noundef %name.i.i.i, ptr noundef nonnull %56, i32 noundef 16) #11
  %61 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %47, align 4
  %add.ptr.i.i24.i.i.i = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i24.i.i.i, align 4
  %65 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx20.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %64)
  %cmp14.i.i.i = icmp ugt i32 %64, 255
  br i1 %cmp14.i.i.i, label %if.end7.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, label %for.inc.i.i

if.end7.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_expect_policy.exit.thread.i.i

nfnl_cthelper_expect_policy.exit.thread.i.i:      ; preds = %if.end7.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, %lor.lhs.false3.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, %if.end.i.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge, %if.end19.i.i.nfnl_cthelper_expect_policy.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i.i.i) #11
  br label %err.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i.i
  %66 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %48, align 4
  %add.ptr.i.i25.i.i.i = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i.i25.i.i.i, align 4
  %timeout.i.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %call8.i.i.i.i, i32 %i.054.i.i, i32 1
  %70 = ptrtoint ptr %timeout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %timeout.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i.i.i) #11
  %inc.i.i = add nuw i32 %i.054.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %45
  br i1 %exitcond.not.i.i, label %if.end13.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

err.i.i:                                          ; preds = %nfnl_cthelper_expect_policy.exit.thread.i.i, %for.body.i.i.err.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #11
  br label %nfnl_cthelper_parse_expect_policy.exit.thread.i

nfnl_cthelper_parse_expect_policy.exit.thread.i:  ; preds = %err.i.i, %if.end7.i.i.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, %if.end7.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, %if.end2.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, %if.end.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge, %if.end7.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %if.end7.i.i.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge ], [ -75, %if.end7.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge ], [ -22, %if.end2.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge ], [ -22, %if.end.i.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge ], [ %call2.i.i.i, %if.end7.i.nfnl_cthelper_parse_expect_policy.exit.thread.i_crit_edge ], [ -22, %err.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i.i) #11
  br label %err1.i

if.end13.i:                                       ; preds = %for.inc.i.i
  %sub.i.i = add i32 %45, -1
  %expect_class_max.i.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 10
  %71 = ptrtoint ptr %expect_class_max.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub.i.i, ptr %expect_class_max.i.i, align 4
  %expect_policy27.i.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %72 = ptrtoint ptr %expect_policy27.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call8.i.i.i.i, ptr %expect_policy27.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i.i) #11
  %name.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %call15.i = call i32 @nla_strscpy(ptr noundef %name.i, ptr noundef %74, i32 noundef 16) #11
  %75 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx4.i, align 4
  %add.ptr.i.i.i70 = getelementptr i8, ptr %76, i32 4
  %77 = ptrtoint ptr %add.ptr.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %78)
  %cmp18.i = icmp ugt i32 %78, 32
  br i1 %cmp18.i, label %if.end13.i.err2.i_crit_edge, label %if.end20.i

if.end13.i.err2.i_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err2.i

if.end20.i:                                       ; preds = %if.end13.i
  %conv.i = trunc i32 %78 to i16
  %data_len.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 13
  %79 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i, ptr %data_len.i, align 8
  %flags.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 11
  %80 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %81, 1
  store i32 %or.i, ptr %flags.i, align 8
  %tuple21.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %82 = call ptr @memset(ptr %tuple21.i, i32 0, i32 18)
  %tuple.sroa.5.0.tuple21.i.sroa_idx = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 5, i32 0, i32 2
  %83 = ptrtoint ptr %tuple.sroa.5.0.tuple21.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %16, ptr %tuple.sroa.5.0.tuple21.i.sroa_idx, align 2
  %tuple.sroa.7.0.tuple21.i.sroa_idx = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 5, i32 1
  %84 = call ptr @memset(ptr %tuple.sroa.7.0.tuple21.i.sroa_idx, i32 0, i32 18)
  %tuple.sroa.7109.0.tuple21.i.sroa_idx = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 5, i32 1, i32 2
  %85 = ptrtoint ptr %tuple.sroa.7109.0.tuple21.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %18, ptr %tuple.sroa.7109.0.tuple21.i.sroa_idx, align 2
  %tuple.sroa.9.0.tuple21.i.sroa_idx = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 5, i32 1, i32 3
  %86 = ptrtoint ptr %tuple.sroa.9.0.tuple21.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %tuple.sroa.9.0.tuple21.i.sroa_idx, align 1
  %me.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %me.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %me.i, align 4
  %help.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %88 = ptrtoint ptr %help.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @nfnl_userspace_cthelper, ptr %help.i, align 4
  %from_nlattr.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 8
  %89 = ptrtoint ptr %from_nlattr.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @nfnl_cthelper_from_nlattr, ptr %from_nlattr.i, align 4
  %to_nlattr.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 9
  %90 = ptrtoint ptr %to_nlattr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @nfnl_cthelper_to_nlattr, ptr %to_nlattr.i, align 8
  %arrayidx22.i = getelementptr ptr, ptr %tb, i32 3
  %91 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx22.i, align 4
  %tobool23.not.i = icmp eq ptr %92, null
  br i1 %tobool23.not.i, label %if.end20.i.if.end27.i_crit_edge, label %if.then24.i

if.end20.i.if.end27.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i75.i = getelementptr i8, ptr %92, i32 4
  %93 = ptrtoint ptr %add.ptr.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i75.i, align 4
  %queue_num.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %call7.i.i.i, i32 0, i32 1, i32 12
  %95 = ptrtoint ptr %queue_num.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %queue_num.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end20.i.if.end27.i_crit_edge
  %arrayidx28.i = getelementptr ptr, ptr %tb, i32 6
  %96 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx28.i, align 4
  %tobool29.not.i = icmp eq ptr %97, null
  br i1 %tobool29.not.i, label %if.end27.i.if.end37.i_crit_edge, label %if.then30.i

if.end27.i.if.end37.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then30.i:                                      ; preds = %if.end27.i
  %add.ptr.i.i76.i = getelementptr i8, ptr %97, i32 4
  %98 = ptrtoint ptr %add.ptr.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i.i76.i, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values)
  switch i32 %99, label %if.then30.i.if.end37.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb35.i
  ]

if.then30.i.if.end37.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

sw.bb.i:                                          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i, align 8
  %or34.i = or i32 %102, 2
  br label %if.end37.sink.split.i

sw.bb35.i:                                        ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %104, -3
  br label %if.end37.sink.split.i

if.end37.sink.split.i:                            ; preds = %sw.bb35.i, %sw.bb.i
  %or34.sink.i = phi i32 [ %or34.i, %sw.bb.i ], [ %and.i, %sw.bb35.i ]
  %105 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or34.sink.i, ptr %flags.i, align 8
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37.sink.split.i, %if.then30.i.if.end37.i_crit_edge, %if.end27.i.if.end37.i_crit_edge
  %call38.i = call i32 @nf_conntrack_helper_register(ptr noundef %helper8.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end37.i.err2.i_crit_edge, label %if.end42.i

if.end37.i.err2.i_crit_edge:                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err2.i

if.end42.i:                                       ; preds = %if.end37.i
  %106 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nfnl_cthelper_list, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %106, ptr noundef nonnull @nfnl_cthelper_list) #11
  br i1 %call.i.i.i, label %if.end.i.i77.i, label %if.end42.i.cleanup_crit_edge

if.end42.i.cleanup_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i77.i:                                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @nfnl_cthelper_list, i32 0, i32 1), align 4
  %107 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @nfnl_cthelper_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %106, ptr %prev3.i.i.i, align 4
  %109 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %call7.i.i.i, ptr %106, align 4
  br label %cleanup

err2.i:                                           ; preds = %if.end37.i.err2.i_crit_edge, %if.end13.i.err2.i_crit_edge
  %ret.0.i = phi i32 [ %call38.i, %if.end37.i.err2.i_crit_edge ], [ -12, %if.end13.i.err2.i_crit_edge ]
  %110 = ptrtoint ptr %expect_policy27.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %expect_policy27.i.i, align 8
  call void @kfree(ptr noundef %111) #11
  br label %err1.i

err1.i:                                           ; preds = %err2.i, %nfnl_cthelper_parse_expect_policy.exit.thread.i
  %ret.1.i = phi i32 [ %ret.0.i, %err2.i ], [ %retval.0.i.ph.i, %nfnl_cthelper_parse_expect_policy.exit.thread.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.else:                                          ; preds = %for.end
  %arrayidx.i73 = getelementptr ptr, ptr %tb, i32 5
  %112 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i73, align 4
  %tobool.not.i74 = icmp eq ptr %113, null
  br i1 %tobool.not.i74, label %if.else.if.end4.i78_crit_edge, label %if.then.i

if.else.if.end4.i78_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i78

if.then.i:                                        ; preds = %if.else
  %add.ptr.i.i.i75 = getelementptr i8, ptr %113, i32 4
  %114 = ptrtoint ptr %add.ptr.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %add.ptr.i.i.i75, align 4
  %data_len.i76 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 13
  %116 = ptrtoint ptr %data_len.i76 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %data_len.i76, align 4
  %conv.i77 = zext i16 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %conv.i77)
  %cmp.not.i = icmp eq i32 %115, %conv.i77
  br i1 %cmp.not.i, label %if.then.i.if.end4.i78_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.if.end4.i78_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i78

if.end4.i78:                                      ; preds = %if.then.i.if.end4.i78_crit_edge, %if.else.if.end4.i78_crit_edge
  %arrayidx5.i = getelementptr ptr, ptr %tb, i32 4
  %118 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %119, null
  br i1 %tobool6.not.i, label %if.end4.i78.if.end14.i_crit_edge, label %if.then7.i

if.end4.i78.if.end14.i_crit_edge:                 ; preds = %if.end4.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end4.i78
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb.i.i72) #11
  %add.ptr.i.i.i.i79 = getelementptr i8, ptr %119, i32 4
  %120 = call ptr @memset(ptr %tb.i.i72, i32 255, i32 24)
  %121 = ptrtoint ptr %119 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %119, align 2
  %conv.i.i.i.i80 = zext i16 %122 to i32
  %sub.i.i.i.i81 = add nsw i32 %conv.i.i.i.i80, -4
  %call2.i.i.i82 = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i72, i32 noundef 5, ptr noundef %add.ptr.i.i.i.i79, i32 noundef %sub.i.i.i.i81, ptr noundef nonnull @nfnl_cthelper_expect_policy_set, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i82)
  %cmp.i.i83 = icmp slt i32 %call2.i.i.i82, 0
  br i1 %cmp.i.i83, label %if.then7.i.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, label %if.end.i.i85

if.then7.i.nfnl_cthelper_update_policy.exit.thread.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread.i

if.end.i.i85:                                     ; preds = %if.then7.i
  %123 = getelementptr inbounds [6 x ptr], ptr %tb.i.i72, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %tobool.not.i.i84 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i84, label %if.end.i.i85.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, label %if.end2.i.i88

if.end.i.i85.nfnl_cthelper_update_policy.exit.thread.i_crit_edge: ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread.i

if.end2.i.i88:                                    ; preds = %if.end.i.i85
  %add.ptr.i.i14.i.i = getelementptr i8, ptr %125, i32 4
  %126 = ptrtoint ptr %add.ptr.i.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.i.i14.i.i, align 4
  %expect_class_max.i.i86 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 10
  %128 = ptrtoint ptr %expect_class_max.i.i86 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %expect_class_max.i.i86, align 4
  %add.i.i87 = add i32 %129, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i87, i32 %127)
  %cmp5.not.i.i = icmp eq i32 %add.i.i87, %127
  br i1 %cmp5.not.i.i, label %if.end7.i.i89, label %if.end2.i.i88.nfnl_cthelper_update_policy.exit.thread.i_crit_edge

if.end2.i.i88.nfnl_cthelper_update_policy.exit.thread.i_crit_edge: ; preds = %if.end2.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread.i

if.end7.i.i89:                                    ; preds = %if.end2.i.i88
  %130 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %127, i32 24) #11
  %131 = extractvalue { i32, i1 } %130, 1
  br i1 %131, label %if.end7.i.i89.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, label %if.end7.i.i.i.i96, !prof !61

if.end7.i.i89.nfnl_cthelper_update_policy.exit.thread.i_crit_edge: ; preds = %if.end7.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread.i

if.end7.i.i.i.i96:                                ; preds = %if.end7.i.i89
  %132 = extractvalue { i32, i1 } %130, 0
  %call8.i.i.i.i95 = call noalias align 128 ptr @__kmalloc(i32 noundef %132, i32 noundef 3264) #16
  %tobool.not.i.i.i98 = icmp eq ptr %call8.i.i.i.i95, null
  br i1 %tobool.not.i.i.i98, label %if.end7.i.i.i.i96.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, label %for.cond.preheader.i.i.i

if.end7.i.i.i.i96.nfnl_cthelper_update_policy.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread.i

for.cond.preheader.i.i.i:                         ; preds = %if.end7.i.i.i.i96
  %133 = ptrtoint ptr %expect_class_max.i.i86 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %expect_class_max.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %134)
  %cmp59.not.i.i.i = icmp eq i32 %134, -1
  br i1 %cmp59.not.i.i.i, label %for.cond.preheader.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread50.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %expect_policy.i.i.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 4
  %135 = getelementptr inbounds [4 x ptr], ptr %tb.i.i.i.i, i32 0, i32 2
  %136 = getelementptr inbounds [4 x ptr], ptr %tb.i.i.i.i, i32 0, i32 3
  %137 = getelementptr inbounds [4 x ptr], ptr %tb.i.i.i.i, i32 0, i32 1
  br label %for.body.i.i.i

for.cond15.preheader.i.i.i:                       ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp1862.not.i.i.i = icmp eq i32 %162, -1
  br i1 %cmp1862.not.i.i.i, label %for.cond15.preheader.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge, label %for.body19.lr.ph.i.i.i

for.cond15.preheader.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge: ; preds = %for.cond15.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread50.i

for.body19.lr.ph.i.i.i:                           ; preds = %for.cond15.preheader.i.i.i
  %timeout.i.i.i99 = getelementptr inbounds %struct.nf_conntrack_expect_policy, ptr %call8.i.i.i.i95, i32 0, i32 1
  br label %for.body19.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.060.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %add3.i.i.i = add i32 %i.060.i.i.i, 2
  %arrayidx.i.i.i = getelementptr ptr, ptr %tb.i.i72, i32 %add3.i.i.i
  %138 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %139, null
  br i1 %tobool4.not.i.i.i, label %for.body.i.i.i.nfnl_cthelper_update_policy.exit.i_crit_edge, label %if.end6.i.i.i

for.body.i.i.i.nfnl_cthelper_update_policy.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.i

if.end6.i.i.i:                                    ; preds = %for.body.i.i.i
  %140 = ptrtoint ptr %expect_policy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %expect_policy.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %call8.i.i.i.i95, i32 %i.060.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb.i.i.i.i) #11
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %139, i32 4
  %142 = call ptr @memset(ptr %tb.i.i.i.i, i32 255, i32 16)
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %139, align 2
  %conv.i.i.i.i.i.i = zext i16 %144 to i32
  %sub.i.i.i.i.i.i = add nsw i32 %conv.i.i.i.i.i.i, -4
  %call2.i.i.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i.i.i, i32 noundef 3, ptr noundef %add.ptr.i.i.i.i.i.i, i32 noundef %sub.i.i.i.i.i.i, ptr noundef nonnull @nfnl_cthelper_expect_pol, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call2.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end6.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, label %if.end.i49.i.i.i

if.end6.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy_one.exit.thread.i.i.i

if.end.i49.i.i.i:                                 ; preds = %if.end6.i.i.i
  %145 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %137, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i49.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i49.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge: ; preds = %if.end.i49.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy_one.exit.thread.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i49.i.i.i
  %147 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %135, align 4
  %tobool2.not.i.i.i.i = icmp eq ptr %148, null
  br i1 %tobool2.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, label %lor.lhs.false3.i.i.i.i

lor.lhs.false.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy_one.exit.thread.i.i.i

lor.lhs.false3.i.i.i.i:                           ; preds = %lor.lhs.false.i.i.i.i
  %149 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %136, align 4
  %tobool5.not.i.i.i.i = icmp eq ptr %150, null
  br i1 %tobool5.not.i.i.i.i, label %lor.lhs.false3.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, label %if.end7.i50.i.i.i

lor.lhs.false3.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge: ; preds = %lor.lhs.false3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy_one.exit.thread.i.i.i

if.end7.i50.i.i.i:                                ; preds = %lor.lhs.false3.i.i.i.i
  %name.i.i.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %141, i32 %i.060.i.i.i, i32 2
  %call10.i.i.i.i = call i32 @nla_strcmp(ptr noundef nonnull %146, ptr noundef %name.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i.i)
  %tobool11.not.i.i.i.i = icmp eq i32 %call10.i.i.i.i, 0
  br i1 %tobool11.not.i.i.i.i, label %if.end13.i.i.i.i, label %if.end7.i50.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge

if.end7.i50.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge: ; preds = %if.end7.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy_one.exit.thread.i.i.i

if.end13.i.i.i.i:                                 ; preds = %if.end7.i50.i.i.i
  %151 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %135, align 4
  %add.ptr.i.i26.i.i.i.i = getelementptr i8, ptr %152, i32 4
  %153 = ptrtoint ptr %add.ptr.i.i26.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr.i.i26.i.i.i.i, align 4
  %155 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %arrayidx8.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %154)
  %cmp17.i.i.i.i = icmp ugt i32 %154, 255
  br i1 %cmp17.i.i.i.i, label %if.end13.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, label %for.inc.i.i.i

if.end13.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge: ; preds = %if.end13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy_one.exit.thread.i.i.i

nfnl_cthelper_update_policy_one.exit.thread.i.i.i: ; preds = %if.end13.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, %if.end7.i50.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, %lor.lhs.false3.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, %lor.lhs.false.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, %if.end.i49.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge, %if.end6.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge
  %retval.0.i51.ph.i.i.i = phi i32 [ -22, %if.end13.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge ], [ -16, %if.end7.i50.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge ], [ -22, %if.end.i49.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge ], [ -22, %lor.lhs.false.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge ], [ -22, %lor.lhs.false3.i.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge ], [ %call2.i.i.i.i.i, %if.end6.i.i.i.nfnl_cthelper_update_policy_one.exit.thread.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i.i.i.i) #11
  br label %nfnl_cthelper_update_policy.exit.i

for.inc.i.i.i:                                    ; preds = %if.end13.i.i.i.i
  %156 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %136, align 4
  %add.ptr.i.i27.i.i.i.i = getelementptr i8, ptr %157, i32 4
  %158 = ptrtoint ptr %add.ptr.i.i27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr.i.i27.i.i.i.i, align 4
  %timeout.i.i.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %call8.i.i.i.i95, i32 %i.060.i.i.i, i32 1
  %160 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %timeout.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i.i.i.i) #11
  %inc.i.i.i = add nuw i32 %i.060.i.i.i, 1
  %161 = ptrtoint ptr %expect_class_max.i.i86 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %expect_class_max.i.i86, align 4
  %add2.i.i.i = add i32 %162, 1
  %cmp.i.i.i100 = icmp ult i32 %inc.i.i.i, %add2.i.i.i
  br i1 %cmp.i.i.i100, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.cond15.preheader.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.body19.i.i.i:                                 ; preds = %for.body19.i.i.i.for.body19.i.i.i_crit_edge, %for.body19.lr.ph.i.i.i
  %i.163.i.i.i = phi i32 [ 0, %for.body19.lr.ph.i.i.i ], [ %inc25.i.i.i, %for.body19.i.i.i.for.body19.i.i.i_crit_edge ]
  %163 = ptrtoint ptr %expect_policy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %expect_policy.i.i.i, align 4
  %arrayidx21.i.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %164, i32 %i.163.i.i.i
  %165 = ptrtoint ptr %call8.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %call8.i.i.i.i95, align 128
  %167 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx21.i.i.i, align 4
  %168 = ptrtoint ptr %timeout.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %timeout.i.i.i99, align 4
  %timeout23.i.i.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %164, i32 %i.163.i.i.i, i32 1
  %170 = ptrtoint ptr %timeout23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %timeout23.i.i.i, align 4
  %inc25.i.i.i = add nuw i32 %i.163.i.i.i, 1
  %171 = ptrtoint ptr %expect_class_max.i.i86 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %expect_class_max.i.i86, align 4
  %add17.i.i.i = add i32 %172, 1
  %cmp18.i.i.i = icmp ult i32 %inc25.i.i.i, %add17.i.i.i
  br i1 %cmp18.i.i.i, label %for.body19.i.i.i.for.body19.i.i.i_crit_edge, label %for.body19.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge

for.body19.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge: ; preds = %for.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_update_policy.exit.thread50.i

for.body19.i.i.i.for.body19.i.i.i_crit_edge:      ; preds = %for.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19.i.i.i

nfnl_cthelper_update_policy.exit.thread.i:        ; preds = %if.end7.i.i.i.i96.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, %if.end7.i.i89.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, %if.end2.i.i88.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, %if.end.i.i85.nfnl_cthelper_update_policy.exit.thread.i_crit_edge, %if.then7.i.nfnl_cthelper_update_policy.exit.thread.i_crit_edge
  %retval.0.i.ph.i101 = phi i32 [ -12, %if.end7.i.i89.nfnl_cthelper_update_policy.exit.thread.i_crit_edge ], [ -12, %if.end7.i.i.i.i96.nfnl_cthelper_update_policy.exit.thread.i_crit_edge ], [ -16, %if.end2.i.i88.nfnl_cthelper_update_policy.exit.thread.i_crit_edge ], [ -22, %if.end.i.i85.nfnl_cthelper_update_policy.exit.thread.i_crit_edge ], [ %call2.i.i.i82, %if.then7.i.nfnl_cthelper_update_policy.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i.i72) #11
  br label %cleanup

nfnl_cthelper_update_policy.exit.thread50.i:      ; preds = %for.body19.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge, %for.cond15.preheader.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge, %for.cond.preheader.i.i.i.nfnl_cthelper_update_policy.exit.thread50.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i95) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i.i72) #11
  br label %if.end14.i

nfnl_cthelper_update_policy.exit.i:               ; preds = %nfnl_cthelper_update_policy_one.exit.thread.i.i.i, %for.body.i.i.i.nfnl_cthelper_update_policy.exit.i_crit_edge
  %ret.1.i.i.i = phi i32 [ %retval.0.i51.ph.i.i.i, %nfnl_cthelper_update_policy_one.exit.thread.i.i.i ], [ -22, %for.body.i.i.i.nfnl_cthelper_update_policy.exit.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i95) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i.i72) #11
  br label %cleanup

if.end14.i:                                       ; preds = %nfnl_cthelper_update_policy.exit.thread50.i, %if.end4.i78.if.end14.i_crit_edge
  %arrayidx15.i = getelementptr ptr, ptr %tb, i32 3
  %173 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx15.i, align 4
  %tobool16.not.i = icmp eq ptr %174, null
  br i1 %tobool16.not.i, label %if.end14.i.if.end20.i103_crit_edge, label %if.then17.i

if.end14.i.if.end20.i103_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i103

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i45.i = getelementptr i8, ptr %174, i32 4
  %175 = ptrtoint ptr %add.ptr.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr.i.i45.i, align 4
  %queue_num.i102 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 12
  %177 = ptrtoint ptr %queue_num.i102 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %queue_num.i102, align 4
  br label %if.end20.i103

if.end20.i103:                                    ; preds = %if.then17.i, %if.end14.i.if.end20.i103_crit_edge
  %arrayidx21.i = getelementptr ptr, ptr %tb, i32 6
  %178 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx21.i, align 4
  %tobool22.not.i = icmp eq ptr %179, null
  br i1 %tobool22.not.i, label %if.end20.i103.cleanup_crit_edge, label %if.then23.i

if.end20.i103.cleanup_crit_edge:                  ; preds = %if.end20.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23.i:                                      ; preds = %if.end20.i103
  %add.ptr.i.i46.i = getelementptr i8, ptr %179, i32 4
  %180 = ptrtoint ptr %add.ptr.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr.i.i46.i, align 4
  %182 = zext i32 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %181, label %if.then23.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i106
    i32 0, label %sw.bb26.i
  ]

if.then23.i.cleanup_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.i106:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i104 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 11
  %183 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %flags.i104, align 4
  %or.i105 = or i32 %184, 2
  store i32 %or.i105, ptr %flags.i104, align 4
  br label %cleanup

sw.bb26.i:                                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags27.i = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0129, i32 0, i32 1, i32 11
  %185 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %flags27.i, align 4
  %and.i107 = and i32 %186, -3
  store i32 %and.i107, ptr %flags27.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb26.i, %sw.bb.i106, %if.then23.i.cleanup_crit_edge, %if.end20.i103.cleanup_crit_edge, %nfnl_cthelper_update_policy.exit.i, %nfnl_cthelper_update_policy.exit.thread.i, %if.then.i.cleanup_crit_edge, %err1.i, %if.end.i.i77.i, %if.end42.i.cleanup_crit_edge, %if.end.i69.cleanup_crit_edge, %lor.lhs.false3.i.cleanup_crit_edge, %lor.lhs.false.i67.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %nfnl_cthelper_parse_tuple.exit.thread, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -17, %if.end32.cleanup_crit_edge ], [ %retval.0.i.ph, %nfnl_cthelper_parse_tuple.exit.thread ], [ %ret.1.i, %err1.i ], [ -22, %lor.lhs.false3.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i67.cleanup_crit_edge ], [ -22, %if.then43.cleanup_crit_edge ], [ -12, %if.end.i69.cleanup_crit_edge ], [ 0, %if.end42.i.cleanup_crit_edge ], [ 0, %if.end.i.i77.i ], [ -16, %if.then.i.cleanup_crit_edge ], [ %ret.1.i.i.i, %nfnl_cthelper_update_policy.exit.i ], [ 0, %sw.bb.i106 ], [ 0, %sw.bb26.i ], [ 0, %if.then23.i.cleanup_crit_edge ], [ 0, %if.end20.i103.cleanup_crit_edge ], [ %retval.0.i.ph.i101, %nfnl_cthelper_update_policy.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_cthelper_get(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags, align 2
  %4 = and i16 %3, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end4, label %netlink_dump_start.exit

netlink_dump_start.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #11
  %5 = call ptr @memcpy(ptr %c, ptr @__const.nfnl_cthelper_get.c, i32 24)
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 4
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %8 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %7, ptr noundef %skb, ptr noundef %1, ptr noundef nonnull %c) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %10, null
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %spec.select = select i1 %tobool5.not, ptr null, ptr %add.ptr.i
  %arrayidx10 = getelementptr ptr, ptr %tb, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %if.end4.if.end18_crit_edge, label %if.then12

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #11
  %13 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !60
  %14 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %14, align 4, !annotation !60
  %16 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !60
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %12, align 2
  %conv.i.i.i = zext i16 %19 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nfnl_cthelper_tuple_pol, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.then12.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %if.end.i

if.then12.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

if.end.i:                                         ; preds = %if.then12
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  %tobool.not.i95 = icmp eq ptr %21, null
  br i1 %tobool.not.i95, label %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %nfnl_cthelper_parse_tuple.exit

lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

nfnl_cthelper_parse_tuple.exit.thread:            ; preds = %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, %if.then12.nfnl_cthelper_parse_tuple.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ], [ %call2.i.i, %if.then12.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %cleanup

nfnl_cthelper_parse_tuple.exit:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i13.i = getelementptr i8, ptr %21, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i13.i, align 2
  %add.ptr.i.i14.i = getelementptr i8, ptr %23, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i14.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %if.end18

if.end18:                                         ; preds = %nfnl_cthelper_parse_tuple.exit, %if.end4.if.end18_crit_edge
  %tuple.sroa.4.1 = phi i16 [ -1, %if.end4.if.end18_crit_edge ], [ %25, %nfnl_cthelper_parse_tuple.exit ]
  %tuple.sroa.696.1 = phi i8 [ -1, %if.end4.if.end18_crit_edge ], [ %27, %nfnl_cthelper_parse_tuple.exit ]
  %ret.0 = phi i32 [ -2, %if.end4.if.end18_crit_edge ], [ 0, %nfnl_cthelper_parse_tuple.exit ]
  %nlcth.0103 = load ptr, ptr @nfnl_cthelper_list, align 4
  %cmp19.not104 = icmp eq ptr %nlcth.0103, @nfnl_cthelper_list
  br i1 %cmp19.not104, label %if.end18.cleanup_crit_edge, label %for.body.lr.ph

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end18
  %tobool21.not = icmp eq ptr %spec.select, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nlcth.0105 = phi ptr [ %nlcth.0103, %for.body.lr.ph ], [ %nlcth.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool21.not, label %for.body.if.end25_crit_edge, label %land.lhs.true

for.body.if.end25_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0105, i32 0, i32 1, i32 1
  %call22 = call i32 @strncmp(ptr noundef %name, ptr noundef nonnull %spec.select, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %for.body.if.end25_crit_edge
  br i1 %tobool11.not, label %if.end25.if.end44_crit_edge, label %land.lhs.true28

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

land.lhs.true28:                                  ; preds = %if.end25
  %l3num32 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0105, i32 0, i32 1, i32 5, i32 0, i32 2
  %28 = ptrtoint ptr %l3num32 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %l3num32, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %tuple.sroa.4.1, i16 %29)
  %cmp34.not = icmp eq i16 %tuple.sroa.4.1, %29
  br i1 %cmp34.not, label %lor.lhs.false, label %land.lhs.true28.for.inc_crit_edge

land.lhs.true28.for.inc_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true28
  %protonum39 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0105, i32 0, i32 1, i32 5, i32 1, i32 2
  %30 = ptrtoint ptr %protonum39 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %protonum39, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %tuple.sroa.696.1, i8 %31)
  %cmp41.not = icmp eq i8 %tuple.sroa.696.1, %31
  br i1 %cmp41.not, label %lor.lhs.false.if.end44_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end44:                                         ; preds = %lor.lhs.false.if.end44_crit_edge, %if.end25.if.end44_crit_edge
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp46 = icmp eq ptr %call.i.i, null
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end49

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %helper.le = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.0105, i32 0, i32 1
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %portid, align 4
  %34 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nlmsg_seq, align 4
  %call54 = call fastcc i32 @nfnl_cthelper_fill_info(ptr noundef nonnull %call.i.i, i32 noundef %33, i32 noundef %37, ptr noundef %helper.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 1
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %40 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %portid, align 4
  %call61 = call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %39, i32 noundef %41) #11
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true28.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %42 = ptrtoint ptr %nlcth.0105 to i32
  call void @__asan_load4_noabort(i32 %42)
  %nlcth.0 = load ptr, ptr %nlcth.0105, align 4
  %cmp19.not = icmp eq ptr %nlcth.0, @nfnl_cthelper_list
  br i1 %cmp19.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end58, %if.then57, %if.end44.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %nfnl_cthelper_parse_tuple.exit.thread, %netlink_dump_start.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -1, %entry.cleanup_crit_edge ], [ %call54, %if.then57 ], [ %call61, %if.end58 ], [ -12, %if.end44.cleanup_crit_edge ], [ %retval.0.i.ph, %nfnl_cthelper_parse_tuple.exit.thread ], [ %ret.0, %if.end18.cleanup_crit_edge ], [ %ret.0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_cthelper_del(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr.i
  %arrayidx5 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #11
  %4 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !60
  %5 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !60
  %7 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !60
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %conv.i.i.i = zext i16 %10 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nfnl_cthelper_tuple_pol, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.then7.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %if.end.i

if.then7.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

if.end.i:                                         ; preds = %if.then7
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, label %nfnl_cthelper_parse_tuple.exit

lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfnl_cthelper_parse_tuple.exit.thread

nfnl_cthelper_parse_tuple.exit.thread:            ; preds = %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge, %if.then7.nfnl_cthelper_parse_tuple.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ], [ %call2.i.i, %if.then7.nfnl_cthelper_parse_tuple.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %cleanup

nfnl_cthelper_parse_tuple.exit:                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i13.i = getelementptr i8, ptr %12, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i13.i, align 2
  %add.ptr.i.i14.i = getelementptr i8, ptr %14, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i14.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i.i14.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %if.end12

if.end12:                                         ; preds = %nfnl_cthelper_parse_tuple.exit, %if.end.if.end12_crit_edge
  %tuple.sroa.4.1 = phi i16 [ -1, %if.end.if.end12_crit_edge ], [ %16, %nfnl_cthelper_parse_tuple.exit ]
  %tuple.sroa.684.1 = phi i8 [ -1, %if.end.if.end12_crit_edge ], [ %18, %nfnl_cthelper_parse_tuple.exit ]
  %19 = load ptr, ptr @nfnl_cthelper_list, align 4
  %cmp17.not92 = icmp eq ptr %19, @nfnl_cthelper_list
  br i1 %cmp17.not92, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %tobool18.not = icmp eq ptr %spec.select, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %found.0.off097 = phi i1 [ false, %for.body.lr.ph ], [ %found.1.off0, %for.inc.for.body_crit_edge ]
  %nlcth.095 = phi ptr [ %19, %for.body.lr.ph ], [ %n.098, %for.inc.for.body_crit_edge ]
  %ret.094 = phi i32 [ -2, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %j.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %nlcth.095 to i32
  call void @__asan_load4_noabort(i32 %20)
  %n.098 = load ptr, ptr %nlcth.095, align 4
  %helper = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.095, i32 0, i32 1
  %inc = add i32 %j.093, 1
  br i1 %tobool18.not, label %for.body.if.end22_crit_edge, label %land.lhs.true

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.095, i32 0, i32 1, i32 1
  %call19 = call i32 @strncmp(ptr noundef %name, ptr noundef nonnull %spec.select, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %for.body.if.end22_crit_edge
  br i1 %tobool6.not, label %if.end22.if.end39_crit_edge, label %land.lhs.true24

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true24:                                  ; preds = %if.end22
  %l3num27 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.095, i32 0, i32 1, i32 5, i32 0, i32 2
  %21 = ptrtoint ptr %l3num27 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %l3num27, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %tuple.sroa.4.1, i16 %22)
  %cmp29.not = icmp eq i16 %tuple.sroa.4.1, %22
  br i1 %cmp29.not, label %lor.lhs.false, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true24
  %protonum34 = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.095, i32 0, i32 1, i32 5, i32 1, i32 2
  %23 = ptrtoint ptr %protonum34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %protonum34, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %tuple.sroa.684.1, i8 %24)
  %cmp36.not = icmp eq i8 %tuple.sroa.684.1, %24
  br i1 %cmp36.not, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %lor.lhs.false.if.end39_crit_edge, %if.end22.if.end39_crit_edge
  %refcnt = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.095, i32 0, i32 1, i32 2
  %call40 = call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt) #11
  br i1 %call40, label %if.then41, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then41:                                        ; preds = %if.end39
  call void @nf_conntrack_helper_unregister(ptr noundef %helper) #11
  %expect_policy = getelementptr inbounds %struct.nfnl_cthelper, ptr %nlcth.095, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %expect_policy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %expect_policy, align 4
  call void @kfree(ptr noundef %26) #11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %nlcth.095) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then41.list_del.exit_crit_edge

if.then41.list_del.exit_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %nlcth.095, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %nlcth.095 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nlcth.095, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then41.list_del.exit_crit_edge
  %33 = ptrtoint ptr %nlcth.095 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %nlcth.095, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %nlcth.095, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %nlcth.095) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.end39.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true24.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.094, %land.lhs.true.for.inc_crit_edge ], [ %ret.094, %land.lhs.true24.for.inc_crit_edge ], [ %ret.094, %lor.lhs.false.for.inc_crit_edge ], [ %ret.094, %list_del.exit ], [ -16, %if.end39.for.inc_crit_edge ]
  %found.1.off0 = phi i1 [ %found.0.off097, %land.lhs.true.for.inc_crit_edge ], [ %found.0.off097, %land.lhs.true24.for.inc_crit_edge ], [ %found.0.off097, %lor.lhs.false.for.inc_crit_edge ], [ true, %list_del.exit ], [ %found.0.off097, %if.end39.for.inc_crit_edge ]
  %cmp17.not = icmp eq ptr %n.098, @nfnl_cthelper_list
  br i1 %cmp17.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end12.for.end_crit_edge
  %j.0.lcssa = phi i1 [ true, %if.end12.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %ret.0.lcssa = phi i32 [ -2, %if.end12.for.end_crit_edge ], [ %ret.1, %for.end.loopexit ]
  %found.0.off0.lcssa = phi i1 [ false, %if.end12.for.end_crit_edge ], [ %found.1.off0, %for.end.loopexit ]
  %or.cond = select i1 %found.0.off0.lcssa, i1 true, i1 %j.0.lcssa
  %cond = select i1 %or.cond, i32 0, i32 %ret.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %nfnl_cthelper_parse_tuple.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %for.end ], [ -1, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %nfnl_cthelper_parse_tuple.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_userspace_cthelper(ptr nocapture noundef readnone %skb, i32 noundef %protoff, ptr nocapture noundef readonly %ct, i32 noundef %ctinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nfct_help.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nfct_help.exit:                                   ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %nfct_help.exit.cleanup_crit_edge, label %if.end

nfct_help.exit.cleanup_crit_edge:                 ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nfct_help.exit
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @nfnl_userspace_cthelper.__warned, align 1
  br i1 %.b25, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfnl_userspace_cthelper.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 52, ptr noundef nonnull @.str.2) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %cmp13 = icmp eq ptr %5, null
  br i1 %cmp13, label %do.end11.cleanup_crit_edge, label %if.end15

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %do.end11
  %flags = getelementptr inbounds %struct.nf_conntrack_helper, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp16 = icmp eq i32 %and, 1
  br i1 %cmp16, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %queue_num = getelementptr inbounds %struct.nf_conntrack_helper, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_num, align 4
  %shl = shl i32 %9, 16
  %or20 = or i32 %shl, 32771
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end15.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %nfct_help.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or20, %if.end18 ], [ 0, %nfct_help.exit.cleanup_crit_edge ], [ 0, %do.end11.cleanup_crit_edge ], [ 1, %if.end15.cleanup_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_cthelper_from_nlattr(ptr noundef %attr, ptr nocapture noundef readonly %ct) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfct_help.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfct_help.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, %entry.nfct_help.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge ], [ null, %entry.nfct_help.exit_crit_edge ]
  %cmp = icmp eq ptr %attr, null
  br i1 %cmp, label %nfct_help.exit.cleanup_crit_edge, label %if.end

nfct_help.exit.cleanup_crit_edge:                 ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nfct_help.exit
  %4 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i.i, align 8
  %data_len = getelementptr inbounds %struct.nf_conntrack_helper, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1 = icmp eq i16 %7, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  %call5 = tail call i32 @nla_memcpy(ptr noundef %data, ptr noundef nonnull %attr, i32 noundef 32) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %nfct_help.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %nfct_help.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_cthelper_to_nlattr(ptr noundef %skb, ptr nocapture noundef readonly %ct) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfct_help.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nfct_help.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, %entry.nfct_help.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge ], [ null, %entry.nfct_help.exit_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %retval.0.i.i, align 8
  %data_len = getelementptr inbounds %struct.nf_conntrack_helper, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %nfct_help.exit.cleanup_crit_edge, label %land.lhs.true

nfct_help.exit.cleanup_crit_edge:                 ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %7 to i32
  %data = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  %call4 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %conv, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -28
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %nfct_help.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfct_help.exit.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helper_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_cthelper_dump_table(ptr noundef %skb, ptr nocapture noundef %cb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = inttoptr i32 %6 to ptr
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc54, %rcu_read_lock.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ct_helper_hsize to i32))
  %10 = load i32, ptr @nf_ct_helper_hsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %for.cond.do.body_crit_edge, label %for.end56

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %if.then59, %for.cond.do.body_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b82 = load i1, ptr @nfnl_cthelper_dump_table.__warned, align 1
  br i1 %.b82, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfnl_cthelper_dump_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 582, ptr noundef nonnull @.str.3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ct_helper_hash to i32))
  %11 = load ptr, ptr @nf_ct_helper_hash, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %arrayidx10 = getelementptr %struct.hlist_head, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %cur.094 = load volatile ptr, ptr %arrayidx10, align 4
  %tobool16.not95 = icmp eq ptr %cur.094, null
  br i1 %tobool16.not95, label %do.end.for.inc54_crit_edge, label %do.end.for.body17_crit_edge

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

do.end.for.inc54_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc54

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %cur.096 = phi ptr [ %cur.0, %for.inc.for.body17_crit_edge ], [ %cur.094, %do.end.for.body17_crit_edge ]
  %flags = getelementptr inbounds %struct.nf_conntrack_helper, ptr %cur.096, i32 0, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body17.for.inc_crit_edge, label %if.end20

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end20:                                         ; preds = %for.body17
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  %cmp24.not = icmp eq ptr %cur.096, %7
  br i1 %cmp24.not, label %if.end26, label %if.then23.for.inc_crit_edge

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end20.if.end28_crit_edge
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 12
  %22 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %portid, align 4
  %24 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlmsg_seq, align 4
  %call33 = tail call fastcc i32 @nfnl_cthelper_fill_info(ptr noundef %skb, i32 noundef %23, i32 noundef %27, ptr noundef nonnull %cur.096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %cur.096 to i32
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx, align 4
  br label %out

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.then23.for.inc_crit_edge, %for.body17.for.inc_crit_edge
  %30 = ptrtoint ptr %cur.096 to i32
  call void @__asan_load4_noabort(i32 %30)
  %cur.0 = load volatile ptr, ptr %cur.096, align 4
  %tobool16.not = icmp eq ptr %cur.0, null
  br i1 %tobool16.not, label %for.inc.for.inc54_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

for.inc.for.inc54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc54

for.inc54:                                        ; preds = %for.inc.for.inc54_crit_edge, %do.end.for.inc54_crit_edge
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %4, align 4
  br label %for.cond

for.end56:                                        ; preds = %for.cond
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool58.not = icmp eq i32 %34, 0
  br i1 %tobool58.not, label %for.end56.out_crit_edge, label %if.then59

for.end56.out_crit_edge:                          ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then59:                                        ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx, align 4
  br label %do.body

out:                                              ; preds = %for.end56.out_crit_edge, %if.then36
  %call.i84 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i84, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %out
  %call1.i85 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !63
  %36 = tail call i32 @llvm.read_register.i32(metadata !50) #11
  %and.i.i.i.i.i91 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfnl_cthelper_fill_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %helper) unnamed_addr #3 align 64 {
entry:
  %tmp.i21 = alloca i32, align 4
  %tmp.i19 = alloca i32, align 4
  %tmp.i57.i = alloca i32, align 4
  %tmp.i55.i = alloca i32, align 4
  %tmp.i.i5 = alloca i32, align 4
  %tmp.i15.i = alloca i8, align 1
  %tmp.i.i = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %tobool.not = icmp eq i32 %portid, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_tailroom.exit.i.i:                            ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup_crit_edge, label %nlmsg_put.exit.i, !prof !61

skb_tailroom.exit.i.i.cleanup_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 2304, i32 noundef 4, i32 noundef %cond) #11
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.cleanup_crit_edge, label %if.end

nlmsg_put.exit.i.cleanup_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %add.ptr.i.i.i, align 2
  %name = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %name) #17
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end7:                                          ; preds = %if.end
  %queue_num = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 12
  %7 = ptrtoint ptr %queue_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue_num, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i, align 4
  %call.i1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool9.not = icmp eq i32 %call.i1, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.if.then.i.i_crit_edge

if.end7.if.then.i.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32770, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  %cmp17.i = icmp eq ptr %11, null
  %cmp.i = select i1 %cmp.i.i.i, i1 true, i1 %cmp17.i
  br i1 %cmp.i, label %if.end11.if.then.i.i_crit_edge, label %if.end.i3

if.end11.if.then.i.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.i3:                                        ; preds = %if.end11
  %l3num.i = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %l3num.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #11
  %14 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i2 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i2, label %if.end3.i, label %if.end.i3.if.then.i.i_crit_edge

if.end.i3.if.then.i.i_crit_edge:                  ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end3.i:                                        ; preds = %if.end.i3
  %protonum.i = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 5, i32 1, i32 2
  %15 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protonum.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i15.i) #11
  %17 = ptrtoint ptr %tmp.i15.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i15.i, align 1
  %call.i16.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i15.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i15.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool6.not.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool6.not.i, label %if.end15, label %if.end3.i.if.then.i.i_crit_edge

if.end3.i.if.then.i.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end15:                                         ; preds = %if.end3.i
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %11, align 2
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i7 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i7)
  %cmp.i.i.i8 = icmp slt i32 %call1.i.i.i7, 0
  %cmp64.i = icmp eq ptr %21, null
  %cmp.i9 = select i1 %cmp.i.i.i8, i1 true, i1 %cmp64.i
  br i1 %cmp.i9, label %if.end15.if.then.i.i_crit_edge, label %if.end.i13

if.end15.if.then.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.i13:                                       ; preds = %if.end15
  %expect_class_max.i = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 10
  %22 = ptrtoint ptr %expect_class_max.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %expect_class_max.i, align 4
  %add.i10 = add i32 %23, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i5) #11
  %24 = ptrtoint ptr %tmp.i.i5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i10, ptr %tmp.i.i5, align 4
  %call.i.i11 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i12 = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i12, label %for.cond.preheader.i, label %if.end.i13.if.then.i.i_crit_edge

if.end.i13.if.then.i.i_crit_edge:                 ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.cond.preheader.i:                             ; preds = %if.end.i13
  %25 = ptrtoint ptr %expect_class_max.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %expect_class_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp667.not.i = icmp eq i32 %26, -1
  br i1 %cmp667.not.i, label %for.cond.preheader.i.if.end20_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end20_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %expect_policy.i = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end27.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end27.i.for.body.i_crit_edge ]
  %add7.i = add i32 %i.068.i, 2
  %or.i.i = or i32 %add7.i, 32768
  %27 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i51.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i.i, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i51.i)
  %cmp.i.i52.i = icmp slt i32 %call1.i.i51.i, 0
  %cmp965.i = icmp eq ptr %28, null
  %cmp9.i = select i1 %cmp.i.i52.i, i1 true, i1 %cmp965.i
  br i1 %cmp9.i, label %for.body.i.if.then.i.i_crit_edge, label %if.end11.i

for.body.i.if.then.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end11.i:                                       ; preds = %for.body.i
  %29 = ptrtoint ptr %expect_policy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %expect_policy.i, align 4
  %name.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %30, i32 %i.068.i, i32 2
  %call.i54.i = call i32 @strlen(ptr noundef %name.i) #17
  %add.i.i = add i32 %call.i54.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool13.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.if.then.i.i_crit_edge

if.end11.i.if.then.i.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end15.i:                                       ; preds = %if.end11.i
  %31 = ptrtoint ptr %expect_policy.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %expect_policy.i, align 4
  %arrayidx17.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %32, i32 %i.068.i
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i55.i) #11
  %35 = ptrtoint ptr %tmp.i55.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i55.i, align 4
  %call.i56.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i55.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i55.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool19.not.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end15.i.if.then.i.i_crit_edge

if.end15.i.if.then.i.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end21.i:                                       ; preds = %if.end15.i
  %36 = ptrtoint ptr %expect_policy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %expect_policy.i, align 4
  %timeout.i = getelementptr %struct.nf_conntrack_expect_policy, ptr %37, i32 %i.068.i, i32 1
  %38 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timeout.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i57.i) #11
  %40 = ptrtoint ptr %tmp.i57.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i57.i, align 4
  %call.i58.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i57.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i57.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool25.not.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end21.i.if.then.i.i_crit_edge

if.end21.i.if.then.i.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end27.i:                                       ; preds = %if.end21.i
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i14 = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i15 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i16 = sub i32 %sub.ptr.lhs.cast.i.i14, %sub.ptr.rhs.cast.i.i15
  %conv.i.i17 = trunc i32 %sub.ptr.sub.i.i16 to i16
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i.i17, ptr %28, align 2
  %inc.i = add nuw i32 %i.068.i, 1
  %44 = ptrtoint ptr %expect_class_max.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %expect_class_max.i, align 4
  %add5.i = add i32 %45, 1
  %cmp6.i = icmp ult i32 %inc.i, %add5.i
  br i1 %cmp6.i, label %if.end27.i.for.body.i_crit_edge, label %if.end27.i.if.end20_crit_edge

if.end27.i.if.end20_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end20:                                         ; preds = %if.end27.i.if.end20_crit_edge, %for.cond.preheader.i.if.end20_crit_edge
  %46 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i60.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i61.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i62.i = sub i32 %sub.ptr.lhs.cast.i60.i, %sub.ptr.rhs.cast.i61.i
  %conv.i63.i = trunc i32 %sub.ptr.sub.i62.i to i16
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i63.i, ptr %21, align 2
  %data_len = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 13
  %49 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %data_len, align 4
  %conv21 = zext i16 %50 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i19) #11
  %51 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv21, ptr %tmp.i19, align 4
  %call.i20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i19) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool23.not = icmp eq i32 %call.i20, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.if.then.i.i_crit_edge

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end20
  %flags26 = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper, i32 0, i32 11
  %52 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags26, align 4
  %and = lshr i32 %53, 1
  %and.lobit = and i32 %and, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i21) #11
  %54 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and.lobit, ptr %tmp.i21, align 4
  %call.i22 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i21) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool31.not = icmp eq i32 %call.i22, 0
  br i1 %tobool31.not, label %if.end33, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %57 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.ptr.sub.i, ptr %call3.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end25.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %if.end21.i.if.then.i.i_crit_edge, %if.end15.i.if.then.i.i_crit_edge, %if.end11.i.if.then.i.i_crit_edge, %for.body.i.if.then.i.i_crit_edge, %if.end.i13.if.then.i.i_crit_edge, %if.end15.if.then.i.i_crit_edge, %if.end3.i.if.then.i.i_crit_edge, %if.end.i3.if.then.i.i_crit_edge, %if.end11.if.then.i.i_crit_edge, %if.end7.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i23 = icmp ugt ptr %61, %call3.i.i
  br i1 %cmp.i.i23, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !61

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %62 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i24 = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i25 = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i26 = sub i32 %sub.ptr.lhs.cast.i.i24, %sub.ptr.rhs.cast.i.i25
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end33, %nlmsg_put.exit.i.cleanup_crit_edge, %skb_tailroom.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %59, %if.end33 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.i.i.cleanup_crit_edge ], [ -1, %nlmsg_put.exit.i.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !48, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__UNIQUE_ID_file587, !1, !"__UNIQUE_ID_file587", i1 false, i1 false}
!1 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_license588, !1, !"__UNIQUE_ID_license588", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author589, !4, !"__UNIQUE_ID_author589", i1 false, i1 false}
!4 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 30, i32 1}
!5 = !{ptr @__UNIQUE_ID_description590, !6, !"__UNIQUE_ID_description590", i1 false, i1 false}
!6 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias597, !8, !"__UNIQUE_ID_alias597", i1 false, i1 false}
!8 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 767, i32 1}
!9 = !{ptr @__initcall__kmod_nfnetlink_cthelper__598_799_nfnl_cthelper_init6, !10, !"__initcall__kmod_nfnetlink_cthelper__598_799_nfnl_cthelper_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 799, i32 1}
!11 = !{ptr @__exitcall_nfnl_cthelper_exit, !12, !"__exitcall_nfnl_cthelper_exit", i1 false, i1 false}
!12 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 800, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 761, i32 13}
!15 = !{ptr @nfnl_cthelper_subsys, !16, !"nfnl_cthelper_subsys", i1 false, i1 false}
!16 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 760, i32 41}
!17 = !{ptr @nfnl_cthelper_cb, !18, !"nfnl_cthelper_cb", i1 false, i1 false}
!18 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 739, i32 35}
!19 = !{ptr @nfnl_cthelper_tuple_pol, !20, !"nfnl_cthelper_tuple_pol", i1 false, i1 false}
!20 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 66, i32 32}
!21 = !{ptr @nfnl_cthelper_expect_policy_set, !22, !"nfnl_cthelper_expect_policy_set", i1 false, i1 false}
!22 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 163, i32 1}
!23 = !{ptr @nfnl_cthelper_expect_pol, !24, !"nfnl_cthelper_expect_pol", i1 false, i1 false}
!24 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 125, i32 32}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 52, i32 11}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nfnl_cthelper_policy, !30, !"nfnl_cthelper_policy", i1 false, i1 false}
!30 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 731, i32 32}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 581, i32 3}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/net/netlink.h", i32 991, i32 3}
!43 = !{ptr @nfnl_cthelper_list, !44, !"nfnl_cthelper_list", i1 false, i1 false}
!44 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 38, i32 8}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/nfnetlink_cthelper.c", i32 775, i32 3}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nfnl_cthelper_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nfnl_cthelper_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2149373787}
!63 = !{i64 2149374053}
