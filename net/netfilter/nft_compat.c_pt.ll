; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_compat.c_pt.bc'
source_filename = "../net/netfilter/nft_compat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipt_entry = type { %struct.ipt_ip, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_counters = type { i64, i64 }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.173, %union.anon.174, [48 x i8], %union.anon.175, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.177, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.173 = type { ptr }
%union.anon.174 = type { i64 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, ptr }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.179, i32, i32, i32, i16, i16, %union.anon.181, i32, %union.anon.182, %union.anon.183, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.179 = type { i32 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%union.nft_entry = type { %struct.arpt_entry }
%struct.arpt_entry = type { %struct.arpt_arp, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.arpt_arp = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, i8, i8, %struct.arpt_devaddr_info, %struct.arpt_devaddr_info, i16, i16, i16, i16, i16, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i16 }
%struct.arpt_devaddr_info = type { [16 x i8], [16 x i8] }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_table = type { %struct.list_head, %struct.rhltable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, i16, i32, ptr, i16, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ebt_entry = type { i32, i32, i16, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [0 x i8] }
%struct.nft_chain = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.rhlist_head, ptr, i64, i32, i8, ptr, i16, ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.nft_chain_type = type { ptr, i32, i32, ptr, i32, [6 x ptr], ptr, ptr }
%struct.xt_action_param = type { %union.anon.197, %union.anon.198, ptr, i32, i16, i8 }
%union.anon.197 = type { ptr }
%union.anon.198 = type { ptr }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@nfnl_compat_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str, i8 11, i8 1, ptr @nfnl_nft_compat_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nft_target_type = internal global %struct.nft_expr_type { ptr @nft_target_select_ops, ptr @nft_target_release_ops, ptr null, %struct.list_head zeroinitializer, ptr @.str.12, ptr null, ptr @nft_target_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nft_match_type = internal global %struct.nft_expr_type { ptr @nft_match_select_ops, ptr @nft_match_release_ops, ptr null, %struct.list_head zeroinitializer, ptr @.str.22, ptr null, ptr @nft_match_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__UNIQUE_ID_alias666 = internal constant [37 x i8] c"nft_compat.alias=nfnetlink-subsys-11\00", section ".modinfo", align 1
@__initcall__kmod_nft_compat__667_929_nft_compat_module_init6 = internal global ptr @nft_compat_module_init, section ".initcall6.init", align 4
@__exitcall_nft_compat_module_exit = internal global ptr @nft_compat_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file668 = internal constant [41 x i8] c"nft_compat.file=net/netfilter/nft_compat\00", section ".modinfo", align 1
@__UNIQUE_ID_license669 = internal constant [23 x i8] c"nft_compat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author670 = internal constant [58 x i8] c"nft_compat.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias671 = internal constant [32 x i8] c"nft_compat.alias=nft-expr-match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias672 = internal constant [33 x i8] c"nft_compat.alias=nft-expr-target\00", section ".modinfo", align 1
@__UNIQUE_ID_description673 = internal constant [54 x i8] c"nft_compat.description=x_tables over nftables support\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nft-compat\00", [21 x i8] zeroinitializer }, align 32
@nfnl_nft_compat_cb = internal constant { [1 x %struct.nfnl_callback], [16 x i8] } { [1 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @nfnl_compat_get_rcu, ptr @nfnl_compat_policy_get, i32 2, i16 3 }], [16 x i8] zeroinitializer }, align 32
@nfnl_compat_policy_get = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 31, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipt_%s\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip6t_%s\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ebt_%s\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arpt_%s\00", [24 x i8] zeroinitializer }, align 32
@nfnl_compat_get_rcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013nft_compat: unsupported protocol %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfnl_compat_get_rcu\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nft_compat.c\00", [37 x i8] zeroinitializer }, align 32
@nfnl_compat_get_rcu._entry_ptr = internal global ptr @nfnl_compat_get_rcu._entry, section ".printk_index", align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@nft_target_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standard\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOG\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nf_log_syslog\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NFLOG\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfnetlink_log\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@nft_rule_compat_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"match\00", [26 x i8] zeroinitializer }, align 32
@nft_match_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@__const.__nft_match_init.e = private unnamed_addr constant { %struct.ipt_entry, [80 x i8] } { %struct.ipt_entry zeroinitializer, [80 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 8
@nft_compat_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nft_compat: cannot register with nfnetlink.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nft_compat_module_init\00", [41 x i8] zeroinitializer }, align 32
@nft_compat_module_init._entry_ptr = internal global ptr @nft_compat_module_init._entry, section ".printk_index", align 4
@switch.table.nfnl_compat_get_rcu = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.2], [60 x i8] zeroinitializer }, align 32
@switch.table.nft_target_eval_bridge = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -5, i32 -1, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 7, i64 10]
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"nfnl_compat_subsys\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 725, i32 41 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 726, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"nfnl_nft_compat_cb\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 716, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [23 x i8] c"nfnl_compat_policy_get\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 709, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 660, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 663, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 666, i32 9 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 669, i32 9 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 672, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 723, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 991, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 695, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 886, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"nft_target_policy\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 136, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 833, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 835, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 265, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 266, i32 15 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 267, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 268, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 271, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"nft_rule_compat_policy\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 195, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 43, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 804, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"nft_match_policy\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 413, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [30 x i8] c"../net/netfilter/nft_compat.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 908, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [33 x i8] c"switch.table.nfnl_compat_get_rcu\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [36 x i8] c"switch.table.nft_target_eval_bridge\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias666, ptr @__UNIQUE_ID_alias671, ptr @__UNIQUE_ID_alias672, ptr @__UNIQUE_ID_author670, ptr @__UNIQUE_ID_description673, ptr @__UNIQUE_ID_file668, ptr @__UNIQUE_ID_license669, ptr @__exitcall_nft_compat_module_exit, ptr @__initcall__kmod_nft_compat__667_929_nft_compat_module_init6, ptr @nfnl_compat_get_rcu._entry, ptr @nfnl_compat_get_rcu._entry_ptr, ptr @nft_compat_module_exit, ptr @nft_compat_module_init._entry, ptr @nft_compat_module_init._entry_ptr, ptr @nfnl_compat_subsys, ptr @.str, ptr @nfnl_nft_compat_cb, ptr @nfnl_compat_policy_get, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @nft_target_policy, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @nft_rule_compat_policy, ptr @.str.21, ptr @.str.22, ptr @nft_match_policy, ptr @.str.23, ptr @.str.24, ptr @switch.table.nfnl_compat_get_rcu, ptr @switch.table.nft_target_eval_bridge], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_compat_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_nft_compat_cb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_compat_policy_get to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_compat_get_rcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_target_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rule_compat_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_match_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_compat_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfnl_compat_get_rcu to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nft_target_eval_bridge to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_compat_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfnl_compat_subsys) #11
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_target_type) #11
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_match_type) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_compat_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_match_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_target_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err_match_crit_edge, label %if.end4

if.end.err_match_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_match

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @nfnl_compat_subsys) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_target_type) #11
  br label %err_match

err_match:                                        ; preds = %do.end, %if.end.err_match_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_match_crit_edge ], [ %call5, %do.end ]
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_match_type) #11
  br label %cleanup

cleanup:                                          ; preds = %err_match, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_match ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_compat_get_rcu(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %tmp.i2.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nfmsg = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %nfmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfmsg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ret, align 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %8, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %10, null
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %10, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i72 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i72, align 4
  %switch.tableidx = add i8 %3, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %15 = icmp ult i8 %switch.tableidx, 9
  br i1 %15, label %switch.hole_check, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end.do.end_crit_edge
  %conv = zext i8 %3 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv) #14
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 291, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %17 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.nfnl_compat_get_rcu, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call16 = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call16, label %if.end18, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %switch.lookup
  %call.i73 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i73, label %if.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i76

if.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i76:                                ; preds = %if.end18
  %call1.i74 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, %if.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %19 = tail call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i.i80 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i81, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %conv19 = trunc i32 %12 to i8
  %call20 = call i32 @xt_find_revision(i8 noundef zeroext %3, ptr noundef %add.ptr.i, i8 noundef zeroext %conv19, i32 noundef %14, ptr noundef nonnull %ret) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %cond.false, label %rcu_read_unlock.exit.cond.end_crit_edge

rcu_read_unlock.exit.cond.end_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %switch.load, ptr noundef %add.ptr.i) #11
  %call23 = call i32 @xt_find_revision(i8 noundef zeroext %3, ptr noundef %add.ptr.i, i8 noundef zeroext %conv19, i32 noundef %14, ptr noundef nonnull %ret) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %rcu_read_unlock.exit.cond.end_crit_edge
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24 = icmp slt i32 %24, 0
  br i1 %cmp24, label %cond.end.out_put_crit_edge, label %if.end27

cond.end.out_put_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put

if.end27:                                         ; preds = %cond.end
  %call.i.i = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp29 = icmp eq ptr %call.i.i, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -12, ptr %ret, align 4
  br label %out_put

if.end32:                                         ; preds = %if.end27
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %26 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %28 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlmsg_seq, align 4
  %32 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i82 = icmp eq i32 %27, 0
  %cond.i = select i1 %tobool.not.i82, i32 0, i32 2
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end32.if.then39_crit_edge

if.end32.if.then39_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

skb_tailroom.exit.i.i.i:                          ; preds = %if.end32
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %36 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.if.then39_crit_edge, label %nlmsg_put.exit.i.i, !prof !96

skb_tailroom.exit.i.i.i.if.then39_crit_edge:      ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %27, i32 noundef %31, i32 noundef 2816, i32 noundef 4, i32 noundef %cond.i) #11
  %tobool.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i, label %nlmsg_put.exit.i.i.if.then39_crit_edge, label %if.end.i

nlmsg_put.exit.i.i.if.then39_crit_edge:           ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.end.i:                                         ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %40 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %3, ptr %add.ptr.i.i.i.i, align 2
  %version1.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17
  %41 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %version1.i.i.i, align 1
  %res_id2.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 18
  %42 = ptrtoint ptr %res_id2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %res_id2.i.i.i, align 2
  %call.i.i83 = call i32 @strlen(ptr noundef %add.ptr.i) #15
  %add.i.i = add i32 %call.i.i83, 1
  %call1.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %add.i.i, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool6.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #11
  %43 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %33, ptr %tmp.i.i, align 4
  %call.i1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool8.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i) #11
  %44 = ptrtoint ptr %tmp.i2.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %14, ptr %tmp.i2.i, align 4
  %call.i3.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool11.not.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool11.not.i, label %nfnl_compat_fill_info.exit, label %lor.lhs.false9.i.if.then.i.i.i_crit_edge

lor.lhs.false9.i.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false9.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i4.i = icmp ugt ptr %46, %call3.i.i.i
  br i1 %cmp.i.i4.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !96

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %47 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i) #11
  br label %if.then39

nfnl_compat_fill_info.exit:                       ; preds = %lor.lhs.false9.i
  %49 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %51 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp37 = icmp slt i32 %53, 1
  br i1 %cmp37, label %nfnl_compat_fill_info.exit.if.then39_crit_edge, label %if.end40

nfnl_compat_fill_info.exit.if.then39_crit_edge:   ; preds = %nfnl_compat_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then39:                                        ; preds = %nfnl_compat_fill_info.exit.if.then39_crit_edge, %if.end.i.i.i, %nlmsg_put.exit.i.i.if.then39_crit_edge, %skb_tailroom.exit.i.i.i.if.then39_crit_edge, %if.end32.if.then39_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %out_put

if.end40:                                         ; preds = %nfnl_compat_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %56 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %portid, align 4
  %call43 = call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %55, i32 noundef %57) #11
  %58 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call43, ptr %ret, align 4
  br label %out_put

out_put:                                          ; preds = %if.end40, %if.then39, %if.then31, %cond.end.out_put_crit_edge
  %59 = call i32 @llvm.read_register.i32(metadata !85) #11
  %and.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !97
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %out_put.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

out_put.rcu_read_lock.exit_crit_edge:             ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %out_put
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %out_put.rcu_read_lock.exit_crit_edge
  call void @module_put(ptr noundef null) #11
  %63 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_lock.exit, %switch.lookup.cleanup_crit_edge, %do.end, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %64, %rcu_read_lock.exit ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_find_revision(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_target_select_ops(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %family10 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %family10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family10, align 2
  %call11 = tail call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(6) @.str.13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %lor.lhs.false14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %strcmpload = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %cmp16 = icmp eq i8 %strcmpload, 0
  br i1 %cmp16, label %lor.lhs.false14.cleanup_crit_edge, label %lor.lhs.false18

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = tail call i32 @strcmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(9) @.str.15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %lor.lhs.false18.cleanup_crit_edge, label %if.end24

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false18
  %conv26 = trunc i32 %7 to i8
  %call27 = tail call ptr @xt_request_find_target(i8 noundef zeroext %9, ptr noundef %add.ptr.i, i8 noundef zeroext %conv26) #11
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end24.cleanup_crit_edge, label %if.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %target32 = getelementptr inbounds %struct.xt_target, ptr %call27, i32 0, i32 3
  %11 = ptrtoint ptr %target32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target32, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end31.err54_crit_edge, label %if.end34

if.end31.err54_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %err54

if.end34:                                         ; preds = %if.end31
  %targetsize = getelementptr inbounds %struct.xt_target, ptr %call27, i32 0, i32 8
  %13 = ptrtoint ptr %targetsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %targetsize, align 4
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %conv.i = zext i16 %18 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub.i)
  %cmp37 = icmp ugt i32 %14, %sub.i
  br i1 %cmp37, label %if.end34.err54_crit_edge, label %if.end40

if.end34.err54_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %err54

if.end40:                                         ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 68) #17
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %if.end40.err54_crit_edge, label %if.end44

if.end40.err54_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %err54

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nft_target_type, ptr %type, align 4
  %21 = ptrtoint ptr %targetsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %targetsize, align 4
  %23 = add i32 %22, 15
  %add48 = and i32 %23, -8
  %size = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add48, ptr %size, align 8
  %init = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nft_target_init, ptr %init, align 4
  %destroy = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nft_target_destroy, ptr %destroy, align 8
  %dump = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nft_target_dump, ptr %dump, align 8
  %validate = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %validate to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nft_target_validate, ptr %validate, align 4
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 16
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call27, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp49 = icmp eq i8 %9, 7
  %nft_target_eval_bridge.nft_target_eval_xt = select i1 %cmp49, ptr @nft_target_eval_bridge, ptr @nft_target_eval_xt
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %nft_target_eval_bridge.nft_target_eval_xt, ptr %call7.i.i, align 8
  br label %cleanup

err54:                                            ; preds = %if.end40.err54_crit_edge, %if.end34.err54_crit_edge, %if.end31.err54_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end31.err54_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end34.err54_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end40.err54_crit_edge ]
  %me = getelementptr inbounds %struct.xt_target, ptr %call27, i32 0, i32 6
  %31 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %me, align 4
  tail call void @module_put(ptr noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %err54, %if.end44, %if.end24.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %err54 ], [ %call7.i.i, %if.end44 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false18.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false14.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_target_release_ops(ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %ops, i32 0, i32 16
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %me = getelementptr inbounds %struct.xt_target, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %me, align 4
  tail call void @module_put(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %ops) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_target(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_target_init(ptr nocapture noundef readonly %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  %par = alloca %struct.xt_tgchk_param, align 4
  %e = alloca %union.nft_entry, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %par) #11
  %4 = getelementptr inbounds i8, ptr %par, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 20)
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv.i, 3
  %and = and i32 %add, 131064
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %e) #11
  %10 = call ptr @memcpy(ptr %e, ptr @__const.__nft_match_init.e, i32 192)
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %targetsize.i = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %targetsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %targetsize.i, align 4
  %13 = call ptr @memcpy(ptr %data.i, ptr %add.ptr.i, i32 %12)
  %14 = load i32, ptr %targetsize.i, align 4
  %add.i = add i32 %14, 7
  %and.i = and i32 %add.i, -8
  %sub.i62 = sub i32 %and.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i62)
  %cmp.i = icmp sgt i32 %sub.i62, 0
  br i1 %cmp.i, label %if.then.i, label %entry.target_compat_from_user.exit_crit_edge

entry.target_compat_from_user.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %target_compat_from_user.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i63 = getelementptr i8, ptr %data.i, i32 %14
  %15 = call ptr @memset(ptr %add.ptr.i63, i32 0, i32 %sub.i62)
  br label %target_compat_from_user.exit

target_compat_from_user.exit:                     ; preds = %if.then.i, %entry.target_compat_from_user.exit_crit_edge
  %nla = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 3
  %16 = ptrtoint ptr %nla to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nla, align 4
  %arrayidx4 = getelementptr ptr, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %target_compat_from_user.exit.if.end9_crit_edge, label %if.then

target_compat_from_user.exit.if.end9_crit_edge:   ; preds = %target_compat_from_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %target_compat_from_user.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #11
  %20 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !98
  %21 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %21, align 4, !annotation !98
  %23 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4, !annotation !98
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %19, align 2
  %conv.i.i.i = zext i16 %26 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nft_rule_compat_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i64 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i64, label %if.then.nft_parse_compat.exit.thread_crit_edge, label %if.end.i

if.then.nft_parse_compat.exit.thread_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

if.end.i:                                         ; preds = %if.then
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i.nft_parse_compat.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.nft_parse_compat.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %23, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge, label %if.end4.i

lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %add.ptr.i.i20.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i20.i, align 4
  %and.i65 = and i32 %32, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i65)
  %tobool7.not.i = icmp eq i32 %and.i65, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.nft_parse_compat.exit.thread_crit_edge

if.end4.i.nft_parse_compat.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i21.i = getelementptr i8, ptr %28, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i21.i, align 4
  %conv.i66 = trunc i32 %34 to i16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  %35 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %phi.cmp = icmp ne i32 %35, 0
  br label %if.end9

nft_parse_compat.exit.thread:                     ; preds = %if.end4.i.nft_parse_compat.exit.thread_crit_edge, %lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge, %if.end.i.nft_parse_compat.exit.thread_crit_edge, %if.then.nft_parse_compat.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end4.i.nft_parse_compat.exit.thread_crit_edge ], [ -22, %if.end.i.nft_parse_compat.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge ], [ %call2.i.i, %if.then.nft_parse_compat.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %cleanup38

if.end9:                                          ; preds = %if.end9.i, %target_compat_from_user.exit.if.end9_crit_edge
  %proto.1 = phi i16 [ 0, %target_compat_from_user.exit.if.end9_crit_edge ], [ %conv.i66, %if.end9.i ]
  %inv.2 = phi i1 [ false, %target_compat_from_user.exit.if.end9_crit_edge ], [ %phi.cmp, %if.end9.i ]
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %38 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %par, align 4
  %table.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 1
  %39 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %table.i, align 4
  %name.i = getelementptr inbounds %struct.nft_table, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 4
  %table3.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 1
  %43 = ptrtoint ptr %table3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %table3.i, align 4
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %44 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %family.i, align 2
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i8 %45, label %if.end9.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb8.i
    i8 7, label %sw.bb20.i
  ]

if.end9.sw.epilog.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %proto4.i = getelementptr inbounds %struct.ipt_ip, ptr %e, i32 0, i32 8
  %47 = ptrtoint ptr %proto4.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %proto.1, ptr %proto4.i, align 8
  %conv6.i = select i1 %inv.2, i8 64, i8 0
  %invflags.i = getelementptr inbounds %struct.ipt_ip, ptr %e, i32 0, i32 10
  %48 = ptrtoint ptr %invflags.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv6.i, ptr %invflags.i, align 1
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %proto.1)
  %tobool9.not.i = icmp eq i16 %proto.1, 0
  br i1 %tobool9.not.i, label %sw.bb8.i.if.end.i68_crit_edge, label %if.then.i67

sw.bb8.i.if.end.i68_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i68

if.then.i67:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e, i32 0, i32 10
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags.i, align 1
  %51 = or i8 %50, 1
  store i8 %51, ptr %flags.i, align 1
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.then.i67, %sw.bb8.i.if.end.i68_crit_edge
  %proto13.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e, i32 0, i32 8
  %52 = ptrtoint ptr %proto13.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %proto.1, ptr %proto13.i, align 8
  %conv17.i = select i1 %inv.2, i8 64, i8 0
  %invflags19.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e, i32 0, i32 11
  %53 = ptrtoint ptr %invflags19.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv17.i, ptr %invflags19.i, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %ethproto.i = getelementptr inbounds %struct.ebt_entry, ptr %e, i32 0, i32 2
  %54 = ptrtoint ptr %ethproto.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %proto.1, ptr %ethproto.i, align 8
  %cond23.i = zext i1 %inv.2 to i32
  %invflags24.i = getelementptr inbounds %struct.ebt_entry, ptr %e, i32 0, i32 1
  %55 = ptrtoint ptr %invflags24.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond23.i, ptr %invflags24.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb20.i, %if.end.i68, %sw.bb.i, %if.end9.sw.epilog.i_crit_edge
  %entryinfo.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %56 = ptrtoint ptr %entryinfo.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %e, ptr %entryinfo.i, align 4
  %target25.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 3
  %57 = ptrtoint ptr %target25.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %3, ptr %target25.i, align 4
  %targinfo.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %58 = ptrtoint ptr %targinfo.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %data.i, ptr %targinfo.i, align 4
  %chain.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %59 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chain.i, align 4
  %flags.i.i = getelementptr inbounds %struct.nft_chain, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i.i = load i8, ptr %flags.i.i, align 4
  %62 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i.not.i = icmp eq i8 %62, 0
  br i1 %tobool.i.not.i, label %sw.epilog.i.nft_target_set_tgchk_param.exit_crit_edge, label %if.then26.i

sw.epilog.i.nft_target_set_tgchk_param.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_target_set_tgchk_param.exit

if.then26.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %hooknum.i = getelementptr i8, ptr %60, i32 -32
  %63 = ptrtoint ptr %hooknum.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hooknum.i, align 4
  %shl.i = shl nuw i32 1, %64
  br label %nft_target_set_tgchk_param.exit

nft_target_set_tgchk_param.exit:                  ; preds = %if.then26.i, %sw.epilog.i.nft_target_set_tgchk_param.exit_crit_edge
  %shl.sink.i = phi i32 [ %shl.i, %if.then26.i ], [ 0, %sw.epilog.i.nft_target_set_tgchk_param.exit_crit_edge ]
  %65 = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl.sink.i, ptr %65, align 4
  %family33.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %67 = ptrtoint ptr %family33.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %45, ptr %family33.i, align 4
  %nft_compat.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 7
  %68 = ptrtoint ptr %nft_compat.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %nft_compat.i, align 1
  call void @nf_tables_trans_destroy_flush_work() #11
  %call12 = call i32 @xt_check_target(ptr noundef nonnull %par, i32 noundef %and, i16 noundef zeroext %proto.1, i1 noundef zeroext %inv.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end33

if.then14:                                        ; preds = %nft_target_set_tgchk_param.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call12)
  %cmp15 = icmp eq i32 %call12, -2
  br i1 %cmp15, label %if.then16, label %if.then14.cleanup38_crit_edge

if.then14.cleanup38_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.then16:                                        ; preds = %if.then14
  %name = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 1
  %call17 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(4) @.str.16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then16.land.lhs.true_crit_edge, label %if.end26

if.then16.land.lhs.true_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

if.end26:                                         ; preds = %if.then16
  %call22 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.end26.land.lhs.true_crit_edge, label %if.end26.if.end32.critedge_crit_edge

if.end26.if.end32.critedge_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.critedge

if.end26.land.lhs.true_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end26.land.lhs.true_crit_edge, %if.then16.land.lhs.true_crit_edge
  %modname.077 = phi ptr [ @.str.19, %if.end26.land.lhs.true_crit_edge ], [ @.str.17, %if.then16.land.lhs.true_crit_edge ]
  %69 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx, align 4
  %call28 = call i32 (ptr, ptr, ...) @nft_request_module(ptr noundef %70, ptr noundef nonnull @.str.20, ptr noundef nonnull %modname.077) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call28)
  %cmp29 = icmp eq i32 %call28, -11
  br i1 %cmp29, label %land.lhs.true.cleanup38_crit_edge, label %land.lhs.true.if.end32.critedge_crit_edge

land.lhs.true.if.end32.critedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.critedge

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup38

if.end32.critedge:                                ; preds = %land.lhs.true.if.end32.critedge_crit_edge, %if.end26.if.end32.critedge_crit_edge
  br label %cleanup38

if.end33:                                         ; preds = %nft_target_set_tgchk_param.exit
  call void @__sanitizer_cov_trace_pc() #13
  %target34 = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 3
  %71 = ptrtoint ptr %target34 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %target34, align 4
  %tobool35.not = icmp eq ptr %72, null
  %. = select i1 %tobool35.not, i32 -22, i32 0
  br label %cleanup38

cleanup38:                                        ; preds = %if.end33, %if.end32.critedge, %land.lhs.true.cleanup38_crit_edge, %if.then14.cleanup38_crit_edge, %nft_parse_compat.exit.thread
  %retval.1 = phi i32 [ -11, %land.lhs.true.cleanup38_crit_edge ], [ -2, %if.end32.critedge ], [ %call12, %if.then14.cleanup38_crit_edge ], [ %., %if.end33 ], [ %retval.0.i.ph, %nft_parse_compat.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %e) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %par) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_target_destroy(ptr nocapture noundef readonly %ctx, ptr noundef %expr) #2 align 64 {
entry:
  %par = alloca %struct.xt_tgdtor_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %me1 = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %me1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %me1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par) #11
  %6 = getelementptr inbounds i8, ptr %par, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %par, align 4
  %target3 = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 1
  %11 = ptrtoint ptr %target3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %target3, align 4
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %12 = ptrtoint ptr %targinfo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data.i, ptr %targinfo, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %family, align 2
  %family4 = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %15 = ptrtoint ptr %family4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %family4, align 4
  %destroy = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destroy, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void %17(ptr noundef nonnull %par) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @module_put(ptr noundef %5) #11
  %18 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %expr, align 8
  call void @kfree(ptr noundef %19) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_target_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %name = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %name) #15
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 1
  %conv = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i14 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %targetsize = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %targetsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %targetsize, align 4
  %usersize = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %usersize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usersize, align 4
  %add.i15 = add i32 %8, 7
  %and.i = and i32 %add.i15, -8
  %call.i16 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 3, i32 noundef %and.i) #11
  %tobool.not.i = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i, label %lor.lhs.false4.cleanup_crit_edge, label %nft_extension_dump_info.exit.thread

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nft_extension_dump_info.exit.thread:              ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 %8, i32 %10
  %add.ptr.i.i = getelementptr i8, ptr %call.i16, i32 4
  %11 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %data.i, i32 %spec.select.i)
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %spec.select.i
  %sub.i = sub i32 %and.i, %spec.select.i
  %12 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  br label %cleanup

cleanup:                                          ; preds = %nft_extension_dump_info.exit.thread, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nft_extension_dump_info.exit.thread ], [ -1, %lor.lhs.false4.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nft_target_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readnone %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data1 = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain, align 4
  %flags.i = getelementptr inbounds %struct.nft_chain, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not = icmp eq i8 %7, 0
  br i1 %tobool.i.not, label %entry.cleanup14_crit_edge, label %if.then

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.then:                                          ; preds = %entry
  %hooks = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %hooks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hooks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %hooknum = getelementptr i8, ptr %5, i32 -32
  %10 = ptrtoint ptr %hooknum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hooknum, align 4
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %table = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.cleanup14_crit_edge, label %if.end.i

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(4) @.str.21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.cleanup14_crit_edge

if.end.i.cleanup14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.then4.i:                                       ; preds = %if.end.i
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp5.not.i = icmp eq i8 %15, 7
  %spec.select.i = select i1 %cmp5.not.i, i32 0, i32 2
  %type9.i = getelementptr i8, ptr %5, i32 -16
  %16 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type9.i, align 8
  %type10.i = getelementptr inbounds %struct.nft_chain_type, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %spec.select.i)
  %cmp11.not.i = icmp eq i32 %19, %spec.select.i
  br i1 %cmp11.not.i, label %if.then4.i.cleanup14_crit_edge, label %if.then4.i.cleanup.thread_crit_edge

if.then4.i.cleanup.thread_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then4.i.cleanup14_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

cleanup.thread:                                   ; preds = %if.then4.i.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup.thread, %if.then4.i.cleanup14_crit_edge, %if.end.i.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup.thread ], [ 0, %if.end.cleanup14_crit_edge ], [ 0, %entry.cleanup14_crit_edge ], [ 0, %if.then4.i.cleanup14_crit_edge ], [ 0, %if.end.i.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_target_eval_bridge(ptr noundef %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %xt = alloca %struct.xt_action_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xt) #11
  %6 = getelementptr inbounds i8, ptr %xt, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %state1.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 2
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %state1.i, align 4
  %thoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %11 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %thoff.i.i, align 4
  %thoff.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 3
  %13 = ptrtoint ptr %thoff.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %thoff.i, align 4
  %fragoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %14 = ptrtoint ptr %fragoff.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fragoff.i, align 2
  %fragoff2.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 4
  %16 = ptrtoint ptr %fragoff2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %fragoff2.i, align 4
  %17 = ptrtoint ptr %xt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %xt, align 4
  %18 = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.i, ptr %18, align 4
  %hotdrop.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 5
  %20 = ptrtoint ptr %hotdrop.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %hotdrop.i, align 2
  %target2 = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %target2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %target2, align 4
  %call3 = call i32 %22(ptr noundef %5, ptr noundef nonnull %xt) #11
  %23 = ptrtoint ptr %hotdrop.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hotdrop.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  %spec.store.select = select i1 %tobool.not, i32 %call3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %spec.store.select)
  %25 = icmp ugt i32 %spec.store.select, -5
  br i1 %25, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.tableidx = add i32 %spec.store.select, 4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nft_target_eval_bridge, i32 0, i32 %switch.tableidx
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %spec.store.select.sink = phi i32 [ %switch.load, %switch.lookup ], [ %spec.store.select, %entry.sw.epilog_crit_edge ]
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select.sink, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xt) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_target_eval_xt(ptr noundef %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %xt = alloca %struct.xt_action_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xt) #11
  %6 = getelementptr inbounds i8, ptr %xt, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %state1.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 2
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %state1.i, align 4
  %thoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %11 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %thoff.i.i, align 4
  %thoff.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 3
  %13 = ptrtoint ptr %thoff.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %thoff.i, align 4
  %fragoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %14 = ptrtoint ptr %fragoff.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fragoff.i, align 2
  %fragoff2.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 4
  %16 = ptrtoint ptr %fragoff2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %fragoff2.i, align 4
  %17 = ptrtoint ptr %xt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %xt, align 4
  %18 = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.i, ptr %18, align 4
  %hotdrop.i = getelementptr inbounds %struct.xt_action_param, ptr %xt, i32 0, i32 5
  %20 = ptrtoint ptr %hotdrop.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %hotdrop.i, align 2
  %target2 = getelementptr inbounds %struct.xt_target, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %target2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %target2, align 4
  %call3 = call i32 %22(ptr noundef %5, ptr noundef nonnull %xt) #11
  %23 = ptrtoint ptr %hotdrop.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hotdrop.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  %spec.store.select = select i1 %tobool.not, i32 %call3, i32 0
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xt) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_target(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_request_module(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_trans_destroy_flush_work() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_match_select_ops(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %family10 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %family10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family10, align 2
  %conv12 = trunc i32 %7 to i8
  %call13 = tail call ptr @xt_request_find_match(i8 noundef zeroext %9, ptr noundef %add.ptr.i, i8 noundef zeroext %conv12) #11
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %matchsize18 = getelementptr inbounds %struct.xt_match, ptr %call13, i32 0, i32 8
  %10 = ptrtoint ptr %matchsize18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %matchsize18, align 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 2
  %conv.i = zext i16 %15 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub.i)
  %cmp21 = icmp ugt i32 %11, %sub.i
  br i1 %cmp21, label %if.end17.err40_crit_edge, label %if.end24

if.end17.err40_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %err40

if.end24:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 68) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end24.err40_crit_edge, label %if.end27

if.end24.err40_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %err40

if.end27:                                         ; preds = %if.end24
  %type = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 15
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nft_match_type, ptr %type, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nft_match_eval, ptr %call7.i.i, align 8
  %init = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @nft_match_init, ptr %init, align 4
  %destroy = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @nft_match_destroy, ptr %destroy, align 8
  %dump = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @nft_match_dump, ptr %dump, align 8
  %validate = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %validate to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nft_match_validate, ptr %validate, align 4
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13, ptr %data, align 8
  %24 = ptrtoint ptr %matchsize18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %matchsize18, align 4
  %26 = add i32 %25, 15
  %add31 = and i32 %26, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %add31)
  %cmp32 = icmp ugt i32 %add31, 192
  br i1 %cmp32, label %if.then34, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nft_match_large_eval, ptr %call7.i.i, align 8
  %28 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @nft_match_large_init, ptr %init, align 4
  %29 = ptrtoint ptr %destroy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nft_match_large_destroy, ptr %destroy, align 8
  %30 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nft_match_large_dump, ptr %dump, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end27.if.end39_crit_edge
  %matchsize.0 = phi i32 [ 16, %if.then34 ], [ %add31, %if.end27.if.end39_crit_edge ]
  %size = getelementptr inbounds %struct.nft_expr_ops, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %matchsize.0, ptr %size, align 8
  br label %cleanup

err40:                                            ; preds = %if.end24.err40_crit_edge, %if.end17.err40_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end17.err40_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end24.err40_crit_edge ]
  %me = getelementptr inbounds %struct.xt_match, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %me, align 4
  tail call void @module_put(ptr noundef %33) #11
  br label %cleanup

cleanup:                                          ; preds = %err40, %if.end39, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %err40 ], [ %call7.i.i, %if.end39 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_match_release_ops(ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %ops, i32 0, i32 16
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %me = getelementptr inbounds %struct.xt_match, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %me, align 4
  tail call void @module_put(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_match(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_match_eval(ptr noundef %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %xt.i = alloca %struct.xt_action_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data.i2 = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i2, align 4
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xt.i) #11
  %6 = getelementptr inbounds i8, ptr %xt.i, i32 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -65281, ptr %6, align 4
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i.i, align 4
  %state1.i.i = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 2
  %10 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %state1.i.i, align 4
  %thoff.i.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %11 = ptrtoint ptr %thoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %thoff.i.i.i, align 4
  %thoff.i.i = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 3
  %13 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %thoff.i.i, align 4
  %fragoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %14 = ptrtoint ptr %fragoff.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fragoff.i.i, align 2
  store i16 %15, ptr %6, align 4
  %16 = ptrtoint ptr %xt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %xt.i, align 4
  %17 = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i, ptr %17, align 4
  %hotdrop.i.i = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 5
  %match2.i = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %match2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %match2.i, align 4
  %call.i = call zeroext i1 %20(ptr noundef %5, ptr noundef nonnull %xt.i) #11
  %21 = ptrtoint ptr %hotdrop.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hotdrop.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %..i = select i1 %call.i, i32 -1, i32 -2
  %storemerge14.i = select i1 %tobool.not.i, i32 %..i, i32 0
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge14.i, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xt.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_match_init(ptr nocapture noundef readonly %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @__nft_match_init(ptr noundef %ctx, ptr noundef %expr, ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_match_destroy(ptr nocapture noundef readonly %ctx, ptr noundef %expr) #2 align 64 {
entry:
  %par.i = alloca %struct.xt_mtdtor_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data.i2 = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i2, align 4
  %me1.i = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %me1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %me1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i) #11
  %6 = getelementptr inbounds i8, ptr %par.i, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %10 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %par.i, align 4
  %match3.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i, i32 0, i32 1
  %11 = ptrtoint ptr %match3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %match3.i, align 4
  %matchinfo.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i, i32 0, i32 2
  %12 = ptrtoint ptr %matchinfo.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data.i, ptr %matchinfo.i, align 4
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %family.i, align 2
  store i8 %14, ptr %6, align 4
  %destroy.i = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %destroy.i, align 4
  %cmp.not.i = icmp eq ptr %16, null
  br i1 %cmp.not.i, label %entry.__nft_match_destroy.exit_crit_edge, label %if.then.i

entry.__nft_match_destroy.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__nft_match_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void %16(ptr noundef nonnull %par.i) #11
  br label %__nft_match_destroy.exit

__nft_match_destroy.exit:                         ; preds = %if.then.i, %entry.__nft_match_destroy.exit_crit_edge
  call void @module_put(ptr noundef %5) #11
  %17 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %expr, align 8
  call void @kfree(ptr noundef %18) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_match_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @__nft_match_dump(ptr noundef %skb, ptr noundef %expr, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nft_match_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readnone %data) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data1 = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain, align 4
  %flags.i = getelementptr inbounds %struct.nft_chain, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not = icmp eq i8 %7, 0
  br i1 %tobool.i.not, label %entry.cleanup14_crit_edge, label %if.then

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.then:                                          ; preds = %entry
  %hooks = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %hooks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hooks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %hooknum = getelementptr i8, ptr %5, i32 -32
  %10 = ptrtoint ptr %hooknum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hooknum, align 4
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %table = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.cleanup14_crit_edge, label %if.end.i

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call i32 @strcmp(ptr noundef nonnull %13, ptr noundef nonnull dereferenceable(4) @.str.21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.cleanup14_crit_edge

if.end.i.cleanup14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

if.then4.i:                                       ; preds = %if.end.i
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp5.not.i = icmp eq i8 %15, 7
  %spec.select.i = select i1 %cmp5.not.i, i32 0, i32 2
  %type9.i = getelementptr i8, ptr %5, i32 -16
  %16 = ptrtoint ptr %type9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type9.i, align 8
  %type10.i = getelementptr inbounds %struct.nft_chain_type, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %type10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %spec.select.i)
  %cmp11.not.i = icmp eq i32 %19, %spec.select.i
  br i1 %cmp11.not.i, label %if.then4.i.cleanup14_crit_edge, label %if.then4.i.cleanup.thread_crit_edge

if.then4.i.cleanup.thread_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then4.i.cleanup14_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup14

cleanup.thread:                                   ; preds = %if.then4.i.cleanup.thread_crit_edge, %land.lhs.true.cleanup.thread_crit_edge
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup.thread, %if.then4.i.cleanup14_crit_edge, %if.end.i.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ -22, %cleanup.thread ], [ 0, %if.end.cleanup14_crit_edge ], [ 0, %entry.cleanup14_crit_edge ], [ 0, %if.then4.i.cleanup14_crit_edge ], [ 0, %if.end.i.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_match_large_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %xt.i = alloca %struct.xt_action_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %expr, align 8
  %data.i2 = getelementptr inbounds %struct.nft_expr_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %data.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i2, align 4
  %6 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pkt, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xt.i) #11
  %8 = getelementptr inbounds i8, ptr %xt.i, i32 16
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -65281, ptr %8, align 4
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state.i.i, align 4
  %state1.i.i = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 2
  %12 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %state1.i.i, align 4
  %thoff.i.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %13 = ptrtoint ptr %thoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %thoff.i.i.i, align 4
  %thoff.i.i = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 3
  %15 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %thoff.i.i, align 4
  %fragoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %16 = ptrtoint ptr %fragoff.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fragoff.i.i, align 2
  store i16 %17, ptr %8, align 4
  %18 = ptrtoint ptr %xt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %5, ptr %xt.i, align 4
  %19 = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %19, align 4
  %hotdrop.i.i = getelementptr inbounds %struct.xt_action_param, ptr %xt.i, i32 0, i32 5
  %match2.i = getelementptr inbounds %struct.xt_match, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %match2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %match2.i, align 4
  %call.i = call zeroext i1 %22(ptr noundef %7, ptr noundef nonnull %xt.i) #11
  %23 = ptrtoint ptr %hotdrop.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hotdrop.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %..i = select i1 %call.i, i32 -1, i32 -2
  %storemerge14.i = select i1 %tobool.not.i, i32 %..i, i32 0
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge14.i, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xt.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_match_large_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %matchsize = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %matchsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %matchsize, align 4
  %add = add i32 %5, 7
  %and = and i32 %add, -8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and, i32 noundef 3264) #18
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @__nft_match_init(ptr noundef %ctx, ptr noundef %expr, ptr noundef %tb, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_match_large_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %par.i = alloca %struct.xt_mtdtor_param, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %expr, align 8
  %data.i4 = getelementptr inbounds %struct.nft_expr_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %data.i4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i4, align 4
  %me1.i = getelementptr inbounds %struct.xt_match, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %me1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %me1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par.i) #11
  %8 = getelementptr inbounds i8, ptr %par.i, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %12 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %par.i, align 4
  %match3.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i, i32 0, i32 1
  %13 = ptrtoint ptr %match3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %match3.i, align 4
  %matchinfo.i = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par.i, i32 0, i32 2
  %14 = ptrtoint ptr %matchinfo.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %matchinfo.i, align 4
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %15 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %family.i, align 2
  store i8 %16, ptr %8, align 4
  %destroy.i = getelementptr inbounds %struct.xt_match, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %destroy.i, align 4
  %cmp.not.i = icmp eq ptr %18, null
  br i1 %cmp.not.i, label %entry.__nft_match_destroy.exit_crit_edge, label %if.then.i

entry.__nft_match_destroy.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__nft_match_destroy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void %18(ptr noundef nonnull %par.i) #11
  br label %__nft_match_destroy.exit

__nft_match_destroy.exit:                         ; preds = %if.then.i, %entry.__nft_match_destroy.exit_crit_edge
  call void @module_put(ptr noundef %7) #11
  %19 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %expr, align 8
  call void @kfree(ptr noundef %20) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par.i) #11
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  call void @kfree(ptr noundef %22) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_match_large_dump(ptr noundef %skb, ptr nocapture noundef readonly %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %e, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %call1 = tail call fastcc i32 @__nft_match_dump(ptr noundef %skb, ptr noundef %e, ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nft_match_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readonly %tb, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  %par = alloca %struct.xt_mtchk_param, align 4
  %e = alloca %union.nft_entry, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %par) #11
  %4 = getelementptr inbounds i8, ptr %par, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 20)
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv.i, 3
  %and = and i32 %add, 131064
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %e) #11
  %10 = call ptr @memcpy(ptr %e, ptr @__const.__nft_match_init.e, i32 192)
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %matchsize.i = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %matchsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %matchsize.i, align 4
  %13 = call ptr @memcpy(ptr %info, ptr %add.ptr.i, i32 %12)
  %14 = load i32, ptr %matchsize.i, align 4
  %add.i = add i32 %14, 7
  %and.i = and i32 %add.i, -8
  %sub.i24 = sub i32 %and.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i24)
  %cmp.i = icmp sgt i32 %sub.i24, 0
  br i1 %cmp.i, label %if.then.i, label %entry.match_compat_from_user.exit_crit_edge

entry.match_compat_from_user.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %match_compat_from_user.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i25 = getelementptr i8, ptr %info, i32 %14
  %15 = call ptr @memset(ptr %add.ptr.i25, i32 0, i32 %sub.i24)
  br label %match_compat_from_user.exit

match_compat_from_user.exit:                      ; preds = %if.then.i, %entry.match_compat_from_user.exit_crit_edge
  %nla = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 3
  %16 = ptrtoint ptr %nla to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nla, align 4
  %arrayidx3 = getelementptr ptr, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %match_compat_from_user.exit.if.end8_crit_edge, label %if.then

match_compat_from_user.exit.if.end8_crit_edge:    ; preds = %match_compat_from_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %match_compat_from_user.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #11
  %20 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !98
  %21 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %21, align 4, !annotation !98
  %23 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4, !annotation !98
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %19, align 2
  %conv.i.i.i = zext i16 %26 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nft_rule_compat_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i26 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i26, label %if.then.nft_parse_compat.exit.thread_crit_edge, label %if.end.i

if.then.nft_parse_compat.exit.thread_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

if.end.i:                                         ; preds = %if.then
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i.nft_parse_compat.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.i.nft_parse_compat.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end.i
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %23, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge, label %if.end4.i

lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %add.ptr.i.i20.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i20.i, align 4
  %and.i27 = and i32 %32, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool7.not.i = icmp eq i32 %and.i27, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.nft_parse_compat.exit.thread_crit_edge

if.end4.i.nft_parse_compat.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_parse_compat.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i21.i = getelementptr i8, ptr %28, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i21.i, align 4
  %conv.i28 = trunc i32 %34 to i16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  %35 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %phi.cmp = icmp ne i32 %35, 0
  br label %if.end8

nft_parse_compat.exit.thread:                     ; preds = %if.end4.i.nft_parse_compat.exit.thread_crit_edge, %lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge, %if.end.i.nft_parse_compat.exit.thread_crit_edge, %if.then.nft_parse_compat.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end4.i.nft_parse_compat.exit.thread_crit_edge ], [ -22, %if.end.i.nft_parse_compat.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.nft_parse_compat.exit.thread_crit_edge ], [ %call2.i.i, %if.then.nft_parse_compat.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end9.i, %match_compat_from_user.exit.if.end8_crit_edge
  %proto.1 = phi i16 [ 0, %match_compat_from_user.exit.if.end8_crit_edge ], [ %conv.i28, %if.end9.i ]
  %inv.2 = phi i1 [ false, %match_compat_from_user.exit.if.end8_crit_edge ], [ %phi.cmp, %if.end9.i ]
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %38 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %par, align 4
  %table.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 1
  %39 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %table.i, align 4
  %name.i = getelementptr inbounds %struct.nft_table, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name.i, align 4
  %table3.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 1
  %43 = ptrtoint ptr %table3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %table3.i, align 4
  %family.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %44 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %family.i, align 2
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %45, label %if.end8.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb8.i
    i8 7, label %sw.bb20.i
  ]

if.end8.sw.epilog.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %proto4.i = getelementptr inbounds %struct.ipt_ip, ptr %e, i32 0, i32 8
  %47 = ptrtoint ptr %proto4.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %proto.1, ptr %proto4.i, align 8
  %conv6.i = select i1 %inv.2, i8 64, i8 0
  %invflags.i = getelementptr inbounds %struct.ipt_ip, ptr %e, i32 0, i32 10
  %48 = ptrtoint ptr %invflags.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv6.i, ptr %invflags.i, align 1
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %proto.1)
  %tobool9.not.i = icmp eq i16 %proto.1, 0
  br i1 %tobool9.not.i, label %sw.bb8.i.if.end.i30_crit_edge, label %if.then.i29

sw.bb8.i.if.end.i30_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i30

if.then.i29:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e, i32 0, i32 10
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags.i, align 1
  %51 = or i8 %50, 1
  store i8 %51, ptr %flags.i, align 1
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i29, %sw.bb8.i.if.end.i30_crit_edge
  %proto13.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e, i32 0, i32 8
  %52 = ptrtoint ptr %proto13.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %proto.1, ptr %proto13.i, align 8
  %conv17.i = select i1 %inv.2, i8 64, i8 0
  %invflags19.i = getelementptr inbounds %struct.ip6t_ip6, ptr %e, i32 0, i32 11
  %53 = ptrtoint ptr %invflags19.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv17.i, ptr %invflags19.i, align 4
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %ethproto.i = getelementptr inbounds %struct.ebt_entry, ptr %e, i32 0, i32 2
  %54 = ptrtoint ptr %ethproto.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %proto.1, ptr %ethproto.i, align 8
  %cond23.i = zext i1 %inv.2 to i32
  %invflags24.i = getelementptr inbounds %struct.ebt_entry, ptr %e, i32 0, i32 1
  %55 = ptrtoint ptr %invflags24.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond23.i, ptr %invflags24.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb20.i, %if.end.i30, %sw.bb.i, %if.end8.sw.epilog.i_crit_edge
  %entryinfo.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %56 = ptrtoint ptr %entryinfo.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %e, ptr %entryinfo.i, align 4
  %match25.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 3
  %57 = ptrtoint ptr %match25.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %3, ptr %match25.i, align 4
  %matchinfo.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %58 = ptrtoint ptr %matchinfo.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %info, ptr %matchinfo.i, align 4
  %chain.i = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %59 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chain.i, align 4
  %flags.i.i = getelementptr inbounds %struct.nft_chain, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i.i = load i8, ptr %flags.i.i, align 4
  %62 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.i.not.i = icmp eq i8 %62, 0
  br i1 %tobool.i.not.i, label %sw.epilog.i.nft_match_set_mtchk_param.exit_crit_edge, label %if.then26.i

sw.epilog.i.nft_match_set_mtchk_param.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nft_match_set_mtchk_param.exit

if.then26.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %hooknum.i = getelementptr i8, ptr %60, i32 -32
  %63 = ptrtoint ptr %hooknum.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hooknum.i, align 4
  %shl.i = shl nuw i32 1, %64
  br label %nft_match_set_mtchk_param.exit

nft_match_set_mtchk_param.exit:                   ; preds = %if.then26.i, %sw.epilog.i.nft_match_set_mtchk_param.exit_crit_edge
  %shl.sink.i = phi i32 [ %shl.i, %if.then26.i ], [ 0, %sw.epilog.i.nft_match_set_mtchk_param.exit_crit_edge ]
  %65 = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 5
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shl.sink.i, ptr %65, align 4
  %family33.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %67 = ptrtoint ptr %family33.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %45, ptr %family33.i, align 4
  %nft_compat.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 7
  %68 = ptrtoint ptr %nft_compat.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %nft_compat.i, align 1
  call void @nf_tables_trans_destroy_flush_work() #11
  %call11 = call i32 @xt_check_match(ptr noundef nonnull %par, i32 noundef %and, i16 noundef zeroext %proto.1, i1 noundef zeroext %inv.2) #11
  br label %cleanup

cleanup:                                          ; preds = %nft_match_set_mtchk_param.exit, %nft_parse_compat.exit.thread
  %retval.0 = phi i32 [ %call11, %nft_match_set_mtchk_param.exit ], [ %retval.0.i.ph, %nft_parse_compat.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %e) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %par) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_match(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nft_match_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %expr, align 8
  %data = getelementptr inbounds %struct.nft_expr_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %name) #15
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 1
  %conv = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i11 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool2.not = icmp eq i32 %call.i11, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %matchsize = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %matchsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %matchsize, align 4
  %usersize = getelementptr inbounds %struct.xt_match, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %usersize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usersize, align 4
  %add.i12 = add i32 %8, 7
  %and.i = and i32 %add.i12, -8
  %call.i13 = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 3, i32 noundef %and.i) #11
  %tobool.not.i = icmp eq ptr %call.i13, null
  br i1 %tobool.not.i, label %lor.lhs.false3.cleanup_crit_edge, label %nft_extension_dump_info.exit.thread

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nft_extension_dump_info.exit.thread:              ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 %8, i32 %10
  %add.ptr.i.i = getelementptr i8, ptr %call.i13, i32 4
  %11 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %info, i32 %spec.select.i)
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %spec.select.i
  %sub.i = sub i32 %and.i, %spec.select.i
  %12 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  br label %cleanup

cleanup:                                          ; preds = %nft_extension_dump_info.exit.thread, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nft_extension_dump_info.exit.thread ], [ -1, %lor.lhs.false3.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__UNIQUE_ID_alias666, !1, !"__UNIQUE_ID_alias666", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_compat.c", i32 927, i32 1}
!2 = !{ptr @__initcall__kmod_nft_compat__667_929_nft_compat_module_init6, !3, !"__initcall__kmod_nft_compat__667_929_nft_compat_module_init6", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_compat.c", i32 929, i32 1}
!4 = !{ptr @__exitcall_nft_compat_module_exit, !5, !"__exitcall_nft_compat_module_exit", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_compat.c", i32 930, i32 1}
!6 = !{ptr @__UNIQUE_ID_file668, !7, !"__UNIQUE_ID_file668", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_compat.c", i32 932, i32 1}
!8 = !{ptr @__UNIQUE_ID_license669, !7, !"__UNIQUE_ID_license669", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author670, !10, !"__UNIQUE_ID_author670", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_compat.c", i32 933, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias671, !12, !"__UNIQUE_ID_alias671", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_compat.c", i32 934, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias672, !14, !"__UNIQUE_ID_alias672", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_compat.c", i32 935, i32 1}
!15 = !{ptr @__UNIQUE_ID_description673, !16, !"__UNIQUE_ID_description673", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_compat.c", i32 936, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_compat.c", i32 726, i32 11}
!19 = !{ptr @nfnl_compat_subsys, !20, !"nfnl_compat_subsys", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_compat.c", i32 725, i32 41}
!21 = !{ptr @nfnl_nft_compat_cb, !22, !"nfnl_nft_compat_cb", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_compat.c", i32 716, i32 35}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_compat.c", i32 660, i32 9}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_compat.c", i32 663, i32 9}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/nft_compat.c", i32 666, i32 9}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/nft_compat.c", i32 669, i32 9}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netfilter/nft_compat.c", i32 672, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nfnl_compat_get_rcu._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @nfnl_compat_get_rcu._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/net/netlink.h", i32 991, i32 3}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nfnl_compat_policy_get, !47, !"nfnl_compat_policy_get", i1 false, i1 false}
!47 = !{!"../net/netfilter/nft_compat.c", i32 709, i32 32}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/nft_compat.c", i32 886, i32 11}
!50 = !{ptr @nft_target_type, !51, !"nft_target_type", i1 false, i1 false}
!51 = !{!"../net/netfilter/nft_compat.c", i32 885, i32 29}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/netfilter/nft_compat.c", i32 833, i32 22}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/nft_compat.c", i32 834, i32 22}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/netfilter/nft_compat.c", i32 835, i32 22}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/netfilter/nft_compat.c", i32 265, i32 29}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/netfilter/nft_compat.c", i32 266, i32 15}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netfilter/nft_compat.c", i32 267, i32 34}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/netfilter/nft_compat.c", i32 268, i32 15}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/netfilter/nft_compat.c", i32 271, i32 37}
!68 = !{ptr @nft_rule_compat_policy, !69, !"nft_rule_compat_policy", i1 false, i1 false}
!69 = !{!"../net/netfilter/nft_compat.c", i32 195, i32 32}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/netfilter/nft_compat.c", i32 43, i32 24}
!72 = !{ptr @nft_target_policy, !73, !"nft_target_policy", i1 false, i1 false}
!73 = !{!"../net/netfilter/nft_compat.c", i32 136, i32 32}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/netfilter/nft_compat.c", i32 804, i32 11}
!76 = !{ptr @nft_match_type, !77, !"nft_match_type", i1 false, i1 false}
!77 = !{!"../net/netfilter/nft_compat.c", i32 803, i32 29}
!78 = !{ptr @nft_match_policy, !79, !"nft_match_policy", i1 false, i1 false}
!79 = !{!"../net/netfilter/nft_compat.c", i32 413, i32 32}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/netfilter/nft_compat.c", i32 908, i32 3}
!82 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @nft_compat_module_init._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @nft_compat_module_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2149377099}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2149376833}
!98 = !{!"auto-init"}
!99 = !{i8 0, i8 2}
