; ModuleID = '/llk/IR_all_yes/net/sched/em_ipt.c_pt.bc'
source_filename = "../net/sched/em_ipt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_ematch_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.em_ipt_xt_match = type { ptr, ptr }
%struct.ipt_entry = type { %struct.ipt_ip, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_counters = type { i64, i64 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%union.anon.193 = type { %struct.ip6t_entry }
%struct.ip6t_entry = type { %struct.ip6t_ip6, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.em_ipt_match = type { ptr, i32, i8, [7 x i8], [0 x i8] }
%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.tcf_ematch = type { ptr, i32, i32, i16, i16, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.xt_action_param = type { %union.anon.191, %union.anon.192, ptr, i32, i16, i8 }
%union.anon.191 = type { ptr }
%union.anon.192 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@em_ipt_ops = internal global { %struct.tcf_ematch_ops, [60 x i8] } { %struct.tcf_ematch_ops { i32 9, i32 0, ptr @em_ipt_change, ptr @em_ipt_match, ptr @em_ipt_destroy, ptr @em_ipt_dump, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @em_ipt_ops, i64 28), ptr getelementptr (i8, ptr @em_ipt_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file623 = internal constant [29 x i8] c"em_ipt.file=net/sched/em_ipt\00", section ".modinfo", align 1
@__UNIQUE_ID_license624 = internal constant [19 x i8] c"em_ipt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author625 = internal constant [50 x i8] c"em_ipt.author=Eyal Birger <eyal.birger@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description626 = internal constant [58 x i8] c"em_ipt.description=TC extended match for IPtables matches\00", section ".modinfo", align 1
@__initcall__kmod_em_ipt__627_294_init_em_ipt6 = internal global ptr @init_em_ipt, section ".initcall6.init", align 4
@__exitcall_exit_em_ipt = internal global ptr @exit_em_ipt, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias628 = internal constant [27 x i8] c"em_ipt.alias=ematch-kind-9\00", section ".modinfo", align 1
@em_ipt_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 29, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@em_ipt_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013unable to load match\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"em_ipt_change\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/sched/em_ipt.c\00", [45 x i8] zeroinitializer }, align 32
@em_ipt_change._entry_ptr = internal global ptr @em_ipt_change._entry, section ".printk_index", align 4
@em_ipt_xt_matches = internal constant { [3 x %struct.em_ipt_xt_match], [40 x i8] } { [3 x %struct.em_ipt_xt_match] [%struct.em_ipt_xt_match { ptr @.str.5, ptr @policy_validate_match_data }, %struct.em_ipt_xt_match { ptr @.str.6, ptr @addrtype_validate_match_data }, %struct.em_ipt_xt_match zeroinitializer], [40 x i8] zeroinitializer }, align 32
@get_xt_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Unsupported xt match\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_xt_match\00", [19 x i8] zeroinitializer }, align 32
@get_xt_match._entry_ptr = internal global ptr @get_xt_match._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"policy\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"addrtype\00", [23 x i8] zeroinitializer }, align 32
@policy_validate_match_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013only policy match revision 0 supported\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"policy_validate_match_data\00", [37 x i8] zeroinitializer }, align 32
@policy_validate_match_data._entry_ptr = internal global ptr @policy_validate_match_data._entry, section ".printk_index", align 4
@policy_validate_match_data._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013policy can only be matched on NF_INET_PRE_ROUTING\00", [44 x i8] zeroinitializer }, align 32
@policy_validate_match_data._entry_ptr.11 = internal global ptr @policy_validate_match_data._entry.9, section ".printk_index", align 4
@addrtype_validate_match_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013only addrtype match revision 1 supported\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"addrtype_validate_match_data\00", [35 x i8] zeroinitializer }, align 32
@addrtype_validate_match_data._entry_ptr = internal global ptr @addrtype_validate_match_data._entry, section ".printk_index", align 4
@__const.check_match.e = private unnamed_addr constant { %struct.ipt_entry, [56 x i8] } { %struct.ipt_entry zeroinitializer, [56 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 8
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"em_ipt_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 270, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"em_ipt_policy\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 33, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 155, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"em_ipt_xt_matches\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 85, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 111, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 87, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 91, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 63, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 68, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 78, i32 3 }
@___asan_gen_.83 = private constant [22 x i8] c"../net/sched/em_ipt.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 51, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 598, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 695, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 723, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias628, ptr @__UNIQUE_ID_author625, ptr @__UNIQUE_ID_description626, ptr @__UNIQUE_ID_file623, ptr @__UNIQUE_ID_license624, ptr @__exitcall_exit_em_ipt, ptr @__initcall__kmod_em_ipt__627_294_init_em_ipt6, ptr @addrtype_validate_match_data._entry, ptr @addrtype_validate_match_data._entry_ptr, ptr @em_ipt_change._entry, ptr @em_ipt_change._entry_ptr, ptr @exit_em_ipt, ptr @get_xt_match._entry, ptr @get_xt_match._entry_ptr, ptr @policy_validate_match_data._entry, ptr @policy_validate_match_data._entry.9, ptr @policy_validate_match_data._entry_ptr, ptr @policy_validate_match_data._entry_ptr.11, ptr @em_ipt_ops, ptr @em_ipt_policy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @em_ipt_xt_matches, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_ipt_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_ipt_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_ipt_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_ipt_xt_matches to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_xt_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_validate_match_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_validate_match_data._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addrtype_validate_match_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_em_ipt() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tcf_em_unregister(ptr noundef nonnull @em_ipt_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_em_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_em_ipt() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_em_register(ptr noundef nonnull @em_ipt_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_ipt_change(ptr noundef %net, ptr noundef %data, i32 noundef %data_len, ptr nocapture noundef writeonly %em) #2 align 64 {
entry:
  %mtpar.i = alloca %struct.xt_mtchk_param, align 4
  %e.i = alloca %union.anon.193, align 8
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #9
  %0 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %5 = call ptr @memset(ptr %tb, i32 255, i32 24)
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull @em_ipt_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end10

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.end10.cleanup_crit_edge [
    i8 2, label %if.end10.sw.epilog_crit_edge
    i8 10, label %if.end10.sw.epilog_crit_edge71
  ]

if.end10.sw.epilog_crit_edge71:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end10.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge71
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i63 = call i32 @nla_strcmp(ptr noundef %18, ptr noundef nonnull @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool2.not.i = icmp eq i32 %call.i63, 0
  br i1 %tobool2.not.i, label %sw.epilog.for.end.i_crit_edge, label %for.inc.i

sw.epilog.for.end.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %sw.epilog
  %call.1.i = call i32 @nla_strcmp(ptr noundef %18, ptr noundef nonnull @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool2.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool2.not.1.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.get_xt_match.exit.thread_crit_edge

for.inc.i.get_xt_match.exit.thread_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_xt_match.exit.thread

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %sw.epilog.for.end.i_crit_edge
  %m.042.lcssa.i = phi ptr [ @em_ipt_xt_matches, %sw.epilog.for.end.i_crit_edge ], [ getelementptr inbounds ([3 x %struct.em_ipt_xt_match], ptr @em_ipt_xt_matches, i32 0, i32 1), %for.inc.i.for.end.i_crit_edge ]
  %19 = ptrtoint ptr %m.042.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i = load ptr, ptr %m.042.lcssa.i, align 4
  %tobool4.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool4.not.i, label %for.end.i.get_xt_match.exit.thread_crit_edge, label %if.end8.i

for.end.i.get_xt_match.exit.thread_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_xt_match.exit.thread

get_xt_match.exit.thread:                         ; preds = %for.end.i.get_xt_match.exit.thread_crit_edge, %for.inc.i.get_xt_match.exit.thread_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %do.end

if.end8.i:                                        ; preds = %for.end.i
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %tobool10.not.i = icmp eq ptr %21, null
  br i1 %tobool10.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then11.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end14.i_crit_edge
  %mrev.0.i = phi i8 [ %23, %if.then11.i ], [ 0, %if.end8.i.if.end14.i_crit_edge ]
  %validate_match_data.i = getelementptr inbounds %struct.em_ipt_xt_match, ptr %m.042.lcssa.i, i32 0, i32 1
  %24 = ptrtoint ptr %validate_match_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %validate_match_data.i, align 4
  %call15.i = call i32 %25(ptr noundef nonnull %tb, i8 noundef zeroext %mrev.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = inttoptr i32 %call15.i to ptr
  br label %get_xt_match.exit

if.end18.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i39.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i39.i, align 1
  %31 = ptrtoint ptr %m.042.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m.042.lcssa.i, align 4
  %call22.i = call ptr @xt_request_find_match(i8 noundef zeroext %30, ptr noundef %32, i8 noundef zeroext %mrev.0.i) #9
  br label %get_xt_match.exit

get_xt_match.exit:                                ; preds = %if.end18.i, %if.then16.i
  %retval.0.i = phi ptr [ %26, %if.then16.i ], [ %call22.i, %if.end18.i ]
  %cmp.i64 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %get_xt_match.exit.do.end_crit_edge, label %if.end19

get_xt_match.exit.do.end_crit_edge:               ; preds = %get_xt_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %get_xt_match.exit.do.end_crit_edge, %get_xt_match.exit.thread
  %retval.0.i70 = phi ptr [ inttoptr (i32 -22 to ptr), %get_xt_match.exit.thread ], [ %retval.0.i, %get_xt_match.exit.do.end_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %33 = ptrtoint ptr %retval.0.i70 to i32
  br label %cleanup

if.end19:                                         ; preds = %get_xt_match.exit
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %4, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %35, align 2
  %conv.i = zext i16 %37 to i32
  %add = add nuw nsw i32 %conv.i, 3
  %and = and i32 %add, 131064
  %add22 = add nuw nsw i32 %and, 16
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add22, i32 noundef 3520) #13
  %tobool24.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool24.not, label %if.end19.err_crit_edge, label %if.end26

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end26:                                         ; preds = %if.end19
  %38 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i, ptr %call9.i.i, align 128
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %0, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i65, align 4
  %hook = getelementptr inbounds %struct.em_ipt_match, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %hook to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %hook, align 4
  %nfproto30 = getelementptr inbounds %struct.em_ipt_match, ptr %call9.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %nfproto30 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %15, ptr %nfproto30, align 8
  %match_data = getelementptr inbounds %struct.em_ipt_match, ptr %call9.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %4, align 4
  %call33 = call i32 @nla_memcpy(ptr noundef %match_data, ptr noundef %46, i32 noundef %and) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mtpar.i) #9
  %47 = getelementptr inbounds i8, ptr %mtpar.i, i32 24
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %e.i) #9
  %49 = call ptr @memcpy(ptr %e.i, ptr @__const.check_match.e, i32 168)
  %50 = ptrtoint ptr %mtpar.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %net, ptr %mtpar.i, align 4
  %table.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 1
  %51 = ptrtoint ptr %table.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.14, ptr %table.i, align 4
  %52 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hook, align 4
  %shl.i = shl nuw i32 1, %53
  %hook_mask.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 5
  %54 = ptrtoint ptr %hook_mask.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl.i, ptr %hook_mask.i, align 4
  %55 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call9.i.i, align 128
  %family.i = getelementptr inbounds %struct.xt_match, ptr %56, i32 0, i32 12
  %57 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %family.i, align 2
  %conv.i66 = trunc i16 %58 to i8
  %59 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv.i66, ptr %47, align 4
  %match4.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 3
  %60 = ptrtoint ptr %match4.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %56, ptr %match4.i, align 4
  %entryinfo.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 2
  %61 = ptrtoint ptr %entryinfo.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %e.i, ptr %entryinfo.i, align 4
  %matchinfo.i = getelementptr inbounds %struct.xt_mtchk_param, ptr %mtpar.i, i32 0, i32 4
  %62 = ptrtoint ptr %matchinfo.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %match_data, ptr %matchinfo.i, align 4
  %call.i67 = call i32 @xt_check_match(ptr noundef nonnull %mtpar.i, i32 noundef %and, i16 noundef zeroext 0, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %e.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mtpar.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool35.not = icmp eq i32 %call.i67, 0
  br i1 %tobool35.not, label %if.end37, label %if.end26.err_crit_edge

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %datalen = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 2
  %63 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add22, ptr %datalen, align 4
  %64 = ptrtoint ptr %call9.i.i to i32
  %data39 = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %65 = ptrtoint ptr %data39 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %data39, align 4
  br label %cleanup

err:                                              ; preds = %if.end26.err_crit_edge, %if.end19.err_crit_edge
  %ret.0 = phi i32 [ %call.i67, %if.end26.err_crit_edge ], [ -12, %if.end19.err_crit_edge ]
  call void @kfree(ptr noundef %call9.i.i) #9
  %me = getelementptr inbounds %struct.xt_match, ptr %retval.0.i, i32 0, i32 6
  %66 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %me, align 4
  call void @module_put(ptr noundef %67) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end37, %do.end, %if.end10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %do.end ], [ %ret.0, %err ], [ 0, %if.end37 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_ipt_match(ptr noundef %skb, ptr nocapture noundef readonly %em, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %acpar = alloca %struct.xt_action_param, align 4
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %acpar) #9
  %3 = call ptr @memset(ptr %acpar, i32 0, i32 20)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %family = getelementptr inbounds %struct.xt_match, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %family, align 2
  %conv = trunc i16 %7 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #9
  %8 = call ptr @memset(ptr %state, i32 255, i32 24)
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %11 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %13 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %10, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge102
  ]

entry.if.then.i.i.i_crit_edge102:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge102
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp.i.i.i = icmp ult i16 %12, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !69

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %14 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i52, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  %15 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !70
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %14, align 2, !annotation !70
  %17 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %21 = add i32 %vlan_depth.1.i.i.i, %20
  %sub.i1.i.i.i.i = sub i32 %18, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !71

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %23, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !69
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %24 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !69
  br i1 %24, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !69

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  br label %cleanup

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %26, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge103
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge103: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge103
  %add.i.i.i52 = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %10, %entry.skb_protocol.exit_crit_edge ], [ %26, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %28 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.cleanup_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb7
  ]

skb_protocol.exit.cleanup_crit_edge:              ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %skb_protocol.exit
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i53 = zext i16 %32 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %conv.i.i.i53
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 20
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %37 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i54 = sub i32 %36, %38
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i54)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i54
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.sw.epilog_crit_edge, !prof !69

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %36, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_network_may_pull.exit, !prof !69

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pskb_network_may_pull.exit:                       ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i54
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #9
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.i.not, label %pskb_network_may_pull.exit.cleanup_crit_edge, label %pskb_network_may_pull.exit.sw.epilog_crit_edge

pskb_network_may_pull.exit.sw.epilog_crit_edge:   ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

pskb_network_may_pull.exit.cleanup_crit_edge:     ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %skb_protocol.exit
  %head.i.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i.i55, align 8
  %network_header.i.i.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %41 = ptrtoint ptr %network_header.i.i.i56 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i.i56, align 4
  %conv.i.i.i57 = zext i16 %42 to i32
  %add.ptr.i.i.i58 = getelementptr i8, ptr %40, i32 %conv.i.i.i57
  %data.i.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i59, align 4
  %sub.ptr.lhs.cast.i.i60 = ptrtoint ptr %add.ptr.i.i.i58 to i32
  %sub.ptr.rhs.cast.i.i61 = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i62 = sub i32 %sub.ptr.lhs.cast.i.i60, %sub.ptr.rhs.cast.i.i61
  %add.i63 = add i32 %sub.ptr.sub.i.i62, 40
  %len.i.i.i64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i.i64, align 4
  %data_len.i.i.i65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i.i65, align 8
  %sub.i.i.i66 = sub i32 %46, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i63, i32 %sub.i.i.i66)
  %cmp.not.i.i67 = icmp ugt i32 %add.i63, %sub.i.i.i66
  br i1 %cmp.not.i.i67, label %if.end.i.i69, label %sw.bb7.sw.epilog_crit_edge, !prof !69

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i.i69:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add.i63)
  %cmp3.i.i68 = icmp ult i32 %46, %add.i63
  br i1 %cmp3.i.i68, label %if.end.i.i69.cleanup_crit_edge, label %pskb_network_may_pull.exit76, !prof !69

if.end.i.i69.cleanup_crit_edge:                   ; preds = %if.end.i.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pskb_network_may_pull.exit76:                     ; preds = %if.end.i.i69
  %sub.i.i70 = sub i32 %add.i63, %sub.i.i.i66
  %call13.i.i71 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i70) #9
  %cmp14.i.i72.not = icmp eq ptr %call13.i.i71, null
  br i1 %cmp14.i.i72.not, label %pskb_network_may_pull.exit76.cleanup_crit_edge, label %pskb_network_may_pull.exit76.sw.epilog_crit_edge

pskb_network_may_pull.exit76.sw.epilog_crit_edge: ; preds = %pskb_network_may_pull.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

pskb_network_may_pull.exit76.cleanup_crit_edge:   ; preds = %pskb_network_may_pull.exit76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %pskb_network_may_pull.exit76.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %pskb_network_may_pull.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i8 [ 2, %sw.bb.sw.epilog_crit_edge ], [ 2, %pskb_network_may_pull.exit.sw.epilog_crit_edge ], [ 10, %sw.bb7.sw.epilog_crit_edge ], [ 10, %pskb_network_may_pull.exit76.sw.epilog_crit_edge ]
  %conv.mask = and i16 %7, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.mask)
  %cmp13 = icmp eq i16 %conv.mask, 0
  %spec.store.select35 = select i1 %cmp13, i8 %.sink, i8 %conv
  %49 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %52, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %sw.epilog.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.epilog.rcu_read_lock.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.epilog.rcu_read_lock.exit_crit_edge
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %53 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool17.not = icmp eq i32 %54, 0
  br i1 %tobool17.not, label %if.end21.thread, label %if.end21

if.end21.thread:                                  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %hook99 = getelementptr inbounds %struct.em_ipt_match, ptr %2, i32 0, i32 1
  %55 = ptrtoint ptr %hook99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hook99, align 4
  br label %cond.false

if.end21:                                         ; preds = %rcu_read_lock.exit
  %net = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 5
  %57 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net, align 4
  %call20 = call ptr @dev_get_by_index_rcu(ptr noundef %58, i32 noundef %54) #9
  %hook = getelementptr inbounds %struct.em_ipt_match, ptr %2, i32 0, i32 1
  %59 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hook, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end21.cond.false_crit_edge, label %if.end21.cond.end_crit_edge

if.end21.cond.end_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end21.cond.false_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false

cond.false:                                       ; preds = %if.end21.cond.false_crit_edge, %if.end21.thread
  %61 = phi i32 [ %56, %if.end21.thread ], [ %60, %if.end21.cond.false_crit_edge ]
  %62 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end21.cond.end_crit_edge
  %65 = phi i32 [ %61, %cond.false ], [ %60, %if.end21.cond.end_crit_edge ]
  %cond = phi ptr [ %64, %cond.false ], [ %call20, %if.end21.cond.end_crit_edge ]
  %66 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %net23 = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 5
  %69 = ptrtoint ptr %net23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net23, align 4
  %conv.i = trunc i32 %65 to i8
  %71 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %72 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %spec.store.select35, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %73 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %cond, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %74 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %68, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %75 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %76 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %77 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %okfn5.i, align 4
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %2, align 8
  %80 = ptrtoint ptr %acpar to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %acpar, align 4
  %match_data = getelementptr inbounds %struct.em_ipt_match, ptr %2, i32 0, i32 4
  %81 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %match_data, ptr %81, align 4
  %state25 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 2
  %83 = ptrtoint ptr %state25 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %state, ptr %state25, align 4
  %84 = load ptr, ptr %2, align 8
  %match27 = getelementptr inbounds %struct.xt_match, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %match27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %match27, align 4
  %call28 = call zeroext i1 %86(ptr noundef %skb, ptr noundef nonnull %acpar) #9
  %conv29 = zext i1 %call28 to i32
  %call.i77 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i77, label %cond.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i80

cond.end.rcu_read_unlock.exit_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i80:                                ; preds = %cond.end
  %call1.i78 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78)
  %tobool.not.i79 = icmp eq i32 %call1.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i82

land.lhs.true.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i82:                               ; preds = %land.lhs.true.i80
  %.b4.i81 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81, label %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, label %if.then.i83

land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i83:                                      ; preds = %land.lhs.true2.i82
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i83, %land.lhs.true2.i82.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i80.rcu_read_unlock.exit_crit_edge, %cond.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  %87 = call i32 @llvm.read_register.i32(metadata !59) #9
  %and.i.i.i.i.i84 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i85, align 4
  %sub.i.i.i86 = add i32 %90, -1
  store volatile i32 %sub.i.i.i86, ptr %preempt_count.i.i.i.i85, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %pskb_network_may_pull.exit76.cleanup_crit_edge, %if.end.i.i69.cleanup_crit_edge, %pskb_network_may_pull.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %skb_protocol.exit.cleanup_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0 = phi i32 [ %conv29, %rcu_read_unlock.exit ], [ 0, %pskb_network_may_pull.exit.cleanup_crit_edge ], [ 0, %pskb_network_may_pull.exit76.cleanup_crit_edge ], [ 0, %skb_protocol.exit.cleanup_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %cleanup.thread.i.i.i ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %acpar) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em_ipt_destroy(ptr nocapture noundef readonly %em) #2 align 64 {
entry:
  %par = alloca %struct.xt_mtdtor_param, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %destroy = getelementptr inbounds %struct.xt_match, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destroy, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end.if.end10_crit_edge, label %if.then2

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %par) #9
  %7 = getelementptr inbounds i8, ptr %par, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %net3 = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 5
  %9 = ptrtoint ptr %net3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net3, align 4
  %11 = ptrtoint ptr %par to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %par, align 4
  %match4 = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %14 = ptrtoint ptr %match4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %match4, align 4
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %match_data = getelementptr inbounds %struct.em_ipt_match, ptr %2, i32 0, i32 4
  %15 = ptrtoint ptr %matchinfo to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %match_data, ptr %matchinfo, align 4
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %16 = load ptr, ptr %2, align 8
  %family7 = getelementptr inbounds %struct.xt_match, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %family7 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %family7, align 2
  %conv = trunc i16 %18 to i8
  %19 = ptrtoint ptr %family to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %family, align 4
  %20 = load ptr, ptr %2, align 8
  %destroy9 = getelementptr inbounds %struct.xt_match, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %destroy9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %destroy9, align 4
  call void %22(ptr noundef nonnull %par) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %par) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.end.if.end10_crit_edge
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 8
  %me = getelementptr inbounds %struct.xt_match, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %me to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %me, align 4
  call void @module_put(ptr noundef %26) #9
  call void @kfree(ptr noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_ipt_dump(ptr noundef %skb, ptr nocapture noundef readonly %em) #2 align 64 {
entry:
  %tmp.i34 = alloca i8, align 1
  %tmp.i32 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %name = getelementptr inbounds %struct.xt_match, ptr %4, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %name) #14
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hook = getelementptr inbounds %struct.em_ipt_match, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %hook to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hook, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i, align 4
  %call.i31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp2 = icmp slt i32 %call.i31, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  %revision = getelementptr inbounds %struct.xt_match, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i32) #9
  %12 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tmp.i32, align 1
  %call.i33 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i32) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp7 = icmp slt i32 %call.i33, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %nfproto = getelementptr inbounds %struct.em_ipt_match, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %nfproto to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nfproto, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i34) #9
  %15 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tmp.i34, align 1
  %call.i35 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i34) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp11 = icmp slt i32 %call.i35, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 8
  %usersize = getelementptr inbounds %struct.xt_match, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %usersize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usersize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %cond.false, label %if.end13.cond.end_crit_edge

if.end13.cond.end_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %matchsize = getelementptr inbounds %struct.xt_match, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %matchsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %matchsize, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end13.cond.end_crit_edge
  %cond = phi i32 [ %21, %cond.false ], [ %19, %if.end13.cond.end_crit_edge ]
  %match_data = getelementptr inbounds %struct.em_ipt_match, ptr %2, i32 0, i32 4
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %cond, ptr noundef %match_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %. = select i1 %cmp18, i32 -90, i32 0
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ], [ -90, %if.end9.cleanup_crit_edge ], [ %., %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_request_find_match(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @policy_validate_match_data(ptr nocapture noundef readonly %tb, i8 noundef zeroext %mrev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mrev)
  %cmp.not = icmp eq i8 %mrev, 0
  br i1 %cmp.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.not = icmp eq i32 %3, 0
  br i1 %cmp3.not, label %if.end.return_crit_edge, label %if.end.return.sink.split_crit_edge

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.7, %entry.return.sink.split_crit_edge ], [ @.str.10, %if.end.return.sink.split_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink) #12
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addrtype_validate_match_data(ptr nocapture noundef readnone %tb, i8 noundef zeroext %mrev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mrev)
  %cmp.not = icmp eq i8 %mrev, 1
  br i1 %cmp.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_match(ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !25, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !58}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__UNIQUE_ID_file623, !1, !"__UNIQUE_ID_file623", i1 false, i1 false}
!1 = !{!"../net/sched/em_ipt.c", i32 290, i32 1}
!2 = !{ptr @__UNIQUE_ID_license624, !1, !"__UNIQUE_ID_license624", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author625, !4, !"__UNIQUE_ID_author625", i1 false, i1 false}
!4 = !{!"../net/sched/em_ipt.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_description626, !6, !"__UNIQUE_ID_description626", i1 false, i1 false}
!6 = !{!"../net/sched/em_ipt.c", i32 292, i32 1}
!7 = !{ptr @__initcall__kmod_em_ipt__627_294_init_em_ipt6, !8, !"__initcall__kmod_em_ipt__627_294_init_em_ipt6", i1 false, i1 false}
!8 = !{!"../net/sched/em_ipt.c", i32 294, i32 1}
!9 = !{ptr @__exitcall_exit_em_ipt, !10, !"__exitcall_exit_em_ipt", i1 false, i1 false}
!10 = !{!"../net/sched/em_ipt.c", i32 295, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias628, !12, !"__UNIQUE_ID_alias628", i1 false, i1 false}
!12 = !{!"../net/sched/em_ipt.c", i32 297, i32 1}
!13 = !{ptr @em_ipt_ops, !14, !"em_ipt_ops", i1 false, i1 false}
!14 = !{!"../net/sched/em_ipt.c", i32 270, i32 30}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/sched/em_ipt.c", i32 155, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @em_ipt_change._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @em_ipt_change._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @em_ipt_policy, !22, !"em_ipt_policy", i1 false, i1 false}
!22 = !{!"../net/sched/em_ipt.c", i32 33, i32 32}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/sched/em_ipt.c", i32 111, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @get_xt_match._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @get_xt_match._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/sched/em_ipt.c", i32 87, i32 17}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/sched/em_ipt.c", i32 91, i32 17}
!32 = !{ptr @em_ipt_xt_matches, !33, !"em_ipt_xt_matches", i1 false, i1 false}
!33 = !{!"../net/sched/em_ipt.c", i32 85, i32 37}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sched/em_ipt.c", i32 63, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @policy_validate_match_data._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @policy_validate_match_data._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/sched/em_ipt.c", i32 68, i32 3}
!41 = !{ptr @policy_validate_match_data._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @policy_validate_match_data._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/sched/em_ipt.c", i32 78, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @addrtype_validate_match_data._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @addrtype_validate_match_data._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sched/em_ipt.c", i32 51, i32 16}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{!"auto-init"}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2149898292}
!73 = !{i64 2149898558}
