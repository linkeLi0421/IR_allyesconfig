; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_tunnel.c_pt.bc'
source_filename = "../net/netfilter/nft_tunnel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.nft_object_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_object = type { %struct.list_head, %struct.rhlist_head, %struct.nft_object_hash_key, i32, i64, i16, ptr, [80 x i8], ptr, [4 x i8], [0 x i8], [120 x i8] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_object_hash_key = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.142, i32, i32, i32, i16, i16, %union.anon.144, i32, %union.anon.145, %union.anon.146, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.142 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.159 }
%union.anon.159 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.160, i16, i8, i8, i32, i16, i16 }
%union.anon.160 = type { %struct.anon.162 }
%struct.anon.162 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.nft_tunnel_obj = type { ptr, %struct.nft_tunnel_opts }
%struct.nft_tunnel_opts = type { %union.anon.163, i32, i16 }
%union.anon.163 = type { %struct.erspan_metadata, [244 x i8] }
%struct.erspan_metadata = type { i32, %union.anon.164 }
%union.anon.164 = type { %struct.erspan_md2 }
%struct.erspan_md2 = type { i32, i16, i16 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_tunnel = type { i8, i8, i8, i8 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }

@nft_tunnel_obj_type = internal global %struct.nft_object_type { ptr null, ptr @nft_tunnel_obj_ops, %struct.list_head zeroinitializer, i32 6, i32 9, ptr null, ptr @nft_tunnel_key_policy }, section ".data..read_mostly", align 4
@nft_tunnel_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_tunnel_get_ops, %struct.list_head zeroinitializer, ptr @.str.3, ptr null, ptr @nft_tunnel_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_tunnel__633_713_nft_tunnel_module_init6 = internal global ptr @nft_tunnel_module_init, section ".initcall6.init", align 4
@__exitcall_nft_tunnel_module_exit = internal global ptr @nft_tunnel_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file634 = internal constant [41 x i8] c"nft_tunnel.file=net/netfilter/nft_tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license635 = internal constant [23 x i8] c"nft_tunnel.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author636 = internal constant [58 x i8] c"nft_tunnel.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias637 = internal constant [33 x i8] c"nft_tunnel.alias=nft-expr-tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_alias638 = internal constant [27 x i8] c"nft_tunnel.alias=nft-obj-6\00", section ".modinfo", align 1
@__UNIQUE_ID_description639 = internal constant [58 x i8] c"nft_tunnel.description=nftables tunnel expression support\00", section ".modinfo", align 1
@nft_tunnel_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_tunnel_obj_eval, i32 268, ptr @nft_tunnel_obj_init, ptr @nft_tunnel_obj_destroy, ptr @nft_tunnel_obj_dump, ptr null, ptr @nft_tunnel_obj_type }, [36 x i8] zeroinitializer }, align 32
@nft_tunnel_key_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@nft_tunnel_ip_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nft_tunnel_ip6_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_tunnel_opts_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 3, [2 x i8] undef } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.29 zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@nft_tunnel_opts_vxlan_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@nft_tunnel_opts_erspan_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@nft_tunnel_opts_geneve_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 128, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@nft_tunnel_get_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_tunnel_get_eval, ptr null, i32 16, ptr @nft_tunnel_get_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_tunnel_get_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_tunnel_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tunnel\00", [25 x i8] zeroinitializer }, align 32
@nft_tunnel_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nft_tunnel.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2048]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"nft_tunnel_obj_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 675, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"nft_tunnel_key_policy\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 400, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 231, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"nft_tunnel_ip_policy\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 157, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"nft_tunnel_ip6_policy\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 185, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"nft_tunnel_opts_policy\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 345, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"nft_tunnel_opts_vxlan_policy\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 224, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [30 x i8] c"nft_tunnel_opts_erspan_policy\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 250, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"nft_tunnel_opts_geneve_policy\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 304, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1208, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 991, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"nft_tunnel_get_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 126, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 135, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"nft_tunnel_policy\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 67, i32 32 }
@___asan_gen_.57 = private constant [30 x i8] c"../net/netfilter/nft_tunnel.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 62, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1011, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias637, ptr @__UNIQUE_ID_alias638, ptr @__UNIQUE_ID_author636, ptr @__UNIQUE_ID_description639, ptr @__UNIQUE_ID_file634, ptr @__UNIQUE_ID_license635, ptr @__exitcall_nft_tunnel_module_exit, ptr @__initcall__kmod_nft_tunnel__633_713_nft_tunnel_module_init6, ptr @nft_tunnel_module_exit, ptr @nft_tunnel_obj_ops, ptr @nft_tunnel_key_policy, ptr @.str, ptr @nft_tunnel_ip_policy, ptr @nft_tunnel_ip6_policy, ptr @nft_tunnel_opts_policy, ptr @nft_tunnel_opts_vxlan_policy, ptr @nft_tunnel_opts_erspan_policy, ptr @nft_tunnel_opts_geneve_policy, ptr @nla_parse_nested.__msg, ptr @.str.2, ptr @nft_tunnel_get_ops, ptr @.str.3, ptr @nft_tunnel_policy, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_key_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_ip_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_ip6_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_opts_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_opts_vxlan_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_opts_erspan_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_opts_geneve_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_get_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_tunnel_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_tunnel_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_tunnel_obj_type) #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_tunnel_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tunnel_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_tunnel_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_tunnel_obj_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_tunnel_type) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_tunnel_obj_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef readnone %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.skb_dst_drop.exit_crit_edge, label %if.then.i

entry.skb_dst_drop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %5) #6
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %entry.skb_dst_drop.exit_crit_edge
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #6
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #6, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !62
  br label %dst_hold.exit

do.end10.i:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #6
  br label %dst_hold.exit

dst_hold.exit:                                    ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %tobool.not.i5 = icmp eq ptr %11, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 3
  %12 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i5, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %13 = ptrtoint ptr %11 to i32
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tunnel_obj_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef %obj) #3 align 64 {
entry:
  %tb.i19.i = alloca [4 x ptr], align 4
  %tb.i7.i = alloca [5 x ptr], align 4
  %tb.i.i = alloca [2 x ptr], align 4
  %tb.i169 = alloca [4 x ptr], align 4
  %tb.i = alloca [3 x ptr], align 4
  %info.sroa.9.sroa.6 = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.sroa.9.sroa.6)
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup118_crit_edge, label %if.end

entry.cleanup118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %info.sroa.9.sroa.6, i32 0, i32 16)
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %conv.i = zext i32 %4 to i64
  %arrayidx5 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #6
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !63
  %8 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !63
  %10 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %10, align 4, !annotation !63
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %6, align 2
  %conv.i.i.i = zext i16 %13 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @nft_tunnel_ip_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %if.then7.nft_tunnel_obj_ip_init.exit.thread_crit_edge, label %if.end.i

if.then7.nft_tunnel_obj_ip_init.exit.thread_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_ip_init.exit.thread

if.end.i:                                         ; preds = %if.then7
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i.nft_tunnel_obj_ip_init.exit.thread_crit_edge, label %if.end2.i

if.end.i.nft_tunnel_obj_ip_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_ip_init.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %8, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end2.i.nft_tunnel_obj_ip_init.exit_crit_edge, label %if.then5.i

if.end2.i.nft_tunnel_obj_ip_init.exit_crit_edge:  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_ip_init.exit

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i1.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i1.i, align 4
  br label %nft_tunnel_obj_ip_init.exit

nft_tunnel_obj_ip_init.exit.thread:               ; preds = %if.end.i.nft_tunnel_obj_ip_init.exit.thread_crit_edge, %if.then7.nft_tunnel_obj_ip_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.nft_tunnel_obj_ip_init.exit.thread_crit_edge ], [ %call2.i.i, %if.then7.nft_tunnel_obj_ip_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #6
  br label %cleanup118

nft_tunnel_obj_ip_init.exit:                      ; preds = %if.then5.i, %if.end2.i.nft_tunnel_obj_ip_init.exit_crit_edge
  %info.sroa.6.0 = phi i32 [ 0, %if.end2.i.nft_tunnel_obj_ip_init.exit_crit_edge ], [ %19, %if.then5.i ]
  %add.ptr.i.i2.i = getelementptr i8, ptr %15, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i2.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #6
  br label %if.end22

if.else:                                          ; preds = %if.end
  %arrayidx12 = getelementptr ptr, ptr %tb, i32 3
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %if.else.cleanup118_crit_edge, label %if.then14

if.else.cleanup118_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.then14:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb.i169) #6
  %24 = getelementptr inbounds [4 x ptr], ptr %tb.i169, i32 0, i32 1
  %25 = getelementptr inbounds [4 x ptr], ptr %tb.i169, i32 0, i32 3
  %add.ptr.i.i.i170 = getelementptr i8, ptr %23, i32 4
  %26 = call ptr @memset(ptr %tb.i169, i32 255, i32 16)
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %23, align 2
  %conv.i.i.i171 = zext i16 %28 to i32
  %sub.i.i.i172 = add nsw i32 %conv.i.i.i171, -4
  %call2.i.i173 = call i32 @__nla_parse(ptr noundef nonnull %tb.i169, i32 noundef 3, ptr noundef %add.ptr.i.i.i170, i32 noundef %sub.i.i.i172, ptr noundef nonnull @nft_tunnel_ip6_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i173)
  %cmp.i174 = icmp slt i32 %call2.i.i173, 0
  br i1 %cmp.i174, label %if.then14.nft_tunnel_obj_ip6_init.exit.thread_crit_edge, label %if.end.i176

if.then14.nft_tunnel_obj_ip6_init.exit.thread_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_ip6_init.exit.thread

if.end.i176:                                      ; preds = %if.then14
  %29 = getelementptr inbounds [4 x ptr], ptr %tb.i169, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not.i175 = icmp eq ptr %31, null
  br i1 %tobool.not.i175, label %if.end.i176.nft_tunnel_obj_ip6_init.exit.thread_crit_edge, label %if.end2.i178

if.end.i176.nft_tunnel_obj_ip6_init.exit.thread_crit_edge: ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_ip6_init.exit.thread

if.end2.i178:                                     ; preds = %if.end.i176
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %24, align 4
  %tobool4.not.i177 = icmp eq ptr %33, null
  br i1 %tobool4.not.i177, label %if.end2.i178.if.end16.i_crit_edge, label %if.then5.i181

if.end2.i178.if.end16.i_crit_edge:                ; preds = %if.end2.i178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then5.i181:                                    ; preds = %if.end2.i178
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i180 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i180 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %info.sroa.6.8.copyload = load i32, ptr %add.ptr.i.i180, align 1
  %info.sroa.8.8.add.ptr.i.i180.sroa_idx = getelementptr i8, ptr %33, i32 8
  %35 = ptrtoint ptr %info.sroa.8.8.add.ptr.i.i180.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %info.sroa.8.8.copyload = load i32, ptr %info.sroa.8.8.add.ptr.i.i180.sroa_idx, align 1
  %info.sroa.9.8.add.ptr.i.i180.sroa_idx = getelementptr i8, ptr %33, i32 12
  %36 = ptrtoint ptr %info.sroa.9.8.add.ptr.i.i180.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %info.sroa.9.8.add.ptr.i.i180.sroa_idx, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then5.i181, %if.end2.i178.if.end16.i_crit_edge
  %info.sroa.9.sroa.0.0 = phi i64 [ 0, %if.end2.i178.if.end16.i_crit_edge ], [ %37, %if.then5.i181 ]
  %info.sroa.6.2 = phi i32 [ 0, %if.end2.i178.if.end16.i_crit_edge ], [ %info.sroa.6.8.copyload, %if.then5.i181 ]
  %info.sroa.8.1 = phi i32 [ 0, %if.end2.i178.if.end16.i_crit_edge ], [ %info.sroa.8.8.copyload, %if.then5.i181 ]
  %add.ptr.i1.i = getelementptr i8, ptr %31, i32 4
  %38 = call ptr @memcpy(ptr %info.sroa.9.sroa.6, ptr %add.ptr.i1.i, i32 16)
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %25, align 4
  %tobool18.not.i = icmp eq ptr %40, null
  br i1 %tobool18.not.i, label %if.end16.i.nft_tunnel_obj_ip6_init.exit_crit_edge, label %if.then19.i

if.end16.i.nft_tunnel_obj_ip6_init.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_ip6_init.exit

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i2.i183 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i2.i183 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i2.i183, align 4
  br label %nft_tunnel_obj_ip6_init.exit

nft_tunnel_obj_ip6_init.exit.thread:              ; preds = %if.end.i176.nft_tunnel_obj_ip6_init.exit.thread_crit_edge, %if.then14.nft_tunnel_obj_ip6_init.exit.thread_crit_edge
  %retval.0.i184.ph = phi i32 [ -22, %if.end.i176.nft_tunnel_obj_ip6_init.exit.thread_crit_edge ], [ %call2.i.i173, %if.then14.nft_tunnel_obj_ip6_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i169) #6
  br label %cleanup118

nft_tunnel_obj_ip6_init.exit:                     ; preds = %if.then19.i, %if.end16.i.nft_tunnel_obj_ip6_init.exit_crit_edge
  %info.sroa.20.1 = phi i32 [ 0, %if.end16.i.nft_tunnel_obj_ip6_init.exit_crit_edge ], [ %42, %if.then19.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i169) #6
  br label %if.end22

if.end22:                                         ; preds = %nft_tunnel_obj_ip6_init.exit, %nft_tunnel_obj_ip_init.exit
  %info.sroa.9.sroa.0.1 = phi i64 [ %info.sroa.9.sroa.0.0, %nft_tunnel_obj_ip6_init.exit ], [ 0, %nft_tunnel_obj_ip_init.exit ]
  %info.sroa.6.4 = phi i32 [ %info.sroa.6.2, %nft_tunnel_obj_ip6_init.exit ], [ %info.sroa.6.0, %nft_tunnel_obj_ip_init.exit ]
  %info.sroa.8.3 = phi i32 [ %info.sroa.8.1, %nft_tunnel_obj_ip6_init.exit ], [ %21, %nft_tunnel_obj_ip_init.exit ]
  %info.sroa.20.2 = phi i32 [ %info.sroa.20.1, %nft_tunnel_obj_ip6_init.exit ], [ 0, %nft_tunnel_obj_ip_init.exit ]
  %info.sroa.23202.1 = phi i8 [ 3, %nft_tunnel_obj_ip6_init.exit ], [ 1, %nft_tunnel_obj_ip_init.exit ]
  %arrayidx23 = getelementptr ptr, ptr %tb, i32 7
  %43 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %44, null
  br i1 %tobool24.not, label %if.end22.if.end29_crit_edge, label %if.then25

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i185 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i185 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i185, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22.if.end29_crit_edge
  %info.sroa.21.0 = phi i16 [ 0, %if.end22.if.end29_crit_edge ], [ %46, %if.then25 ]
  %arrayidx30 = getelementptr ptr, ptr %tb, i32 8
  %47 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %48, null
  br i1 %tobool31.not, label %if.end29.if.end36_crit_edge, label %if.then32

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i186 = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i186 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i186, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end29.if.end36_crit_edge
  %info.sroa.22.0 = phi i16 [ 0, %if.end29.if.end36_crit_edge ], [ %50, %if.then32 ]
  %arrayidx37 = getelementptr ptr, ptr %tb, i32 4
  %51 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %52, null
  br i1 %tobool38.not, label %if.end36.if.end71_crit_edge, label %if.then39

if.end36.if.end71_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then39:                                        ; preds = %if.end36
  %add.ptr.i.i187 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i187 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %54)
  %tobool43.not = icmp ult i32 %54, 8
  br i1 %tobool43.not, label %if.end45, label %if.then39.cleanup118_crit_edge

if.then39.cleanup118_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %and46 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %spec.select = select i1 %tobool47.not, i16 8197, i16 8196
  %55 = trunc i32 %54 to i16
  %56 = shl nuw nsw i16 %55, 7
  %57 = and i16 %56, 256
  %58 = or i16 %57, %spec.select
  %59 = shl nuw nsw i16 %55, 1
  %60 = and i16 %59, 8
  %61 = or i16 %58, %60
  br label %if.end71

if.end71:                                         ; preds = %if.end45, %if.end36.if.end71_crit_edge
  %info.sroa.10.2 = phi i16 [ 8197, %if.end36.if.end71_crit_edge ], [ %61, %if.end45 ]
  %arrayidx72 = getelementptr ptr, ptr %tb, i32 5
  %62 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %63, null
  br i1 %tobool73.not, label %if.end71.if.end78_crit_edge, label %if.then74

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i188 = getelementptr i8, ptr %63, i32 4
  %64 = ptrtoint ptr %add.ptr.i.i188 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.i.i188, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end71.if.end78_crit_edge
  %info.sroa.17.0 = phi i8 [ 0, %if.end71.if.end78_crit_edge ], [ %65, %if.then74 ]
  %arrayidx79 = getelementptr ptr, ptr %tb, i32 6
  %66 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx79, align 4
  %tobool80.not = icmp eq ptr %67, null
  br i1 %tobool80.not, label %if.end78.if.end88_crit_edge, label %if.then81

if.end78.if.end88_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i189 = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i189 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr.i.i189, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.end78.if.end88_crit_edge
  %info.sroa.18.0 = phi i8 [ %69, %if.then81 ], [ -1, %if.end78.if.end88_crit_edge ]
  %arrayidx89 = getelementptr ptr, ptr %tb, i32 9
  %70 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx89, align 4
  %tobool90.not = icmp eq ptr %71, null
  br i1 %tobool90.not, label %if.end88.if.end98_crit_edge, label %if.then91

if.end88.if.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then91:                                        ; preds = %if.end88
  %opts = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %71, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %71, align 2
  %conv.i.i.i.i = zext i16 %73 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call i32 @__nla_validate(ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i, i32 noundef 3, ptr noundef nonnull @nft_tunnel_opts_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i190 = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i190, label %if.then91.cleanup118_crit_edge, label %if.end.i191

if.then91.cleanup118_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end.i191:                                      ; preds = %if.then91
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %71, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %75)
  %cmp.i48.i = icmp ugt i16 %75, 7
  br i1 %cmp.i48.i, label %land.lhs.true.i.lr.ph.i, label %if.end.i191.if.end98_crit_edge

if.end.i191.if.end98_crit_edge:                   ; preds = %if.end.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

land.lhs.true.i.lr.ph.i:                          ; preds = %if.end.i191
  %conv.i.i = zext i16 %75 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %len.i20.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 1, i32 11, i32 4
  %76 = getelementptr inbounds [4 x ptr], ptr %tb.i19.i, i32 0, i32 1
  %77 = getelementptr inbounds [4 x ptr], ptr %tb.i19.i, i32 0, i32 2
  %78 = getelementptr inbounds [4 x ptr], ptr %tb.i19.i, i32 0, i32 3
  %flags.i34.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 1, i32 11, i32 8
  %79 = getelementptr inbounds [5 x ptr], ptr %tb.i7.i, i32 0, i32 2
  %80 = getelementptr inbounds [5 x ptr], ptr %tb.i7.i, i32 0, i32 3
  %81 = getelementptr inbounds [5 x ptr], ptr %tb.i7.i, i32 0, i32 4
  %82 = getelementptr inbounds [5 x ptr], ptr %tb.i7.i, i32 0, i32 1
  %hwid2.i.i.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 14
  %u11.i.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %83 = getelementptr inbounds [2 x ptr], ptr %tb.i.i, i32 0, i32 1
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.lr.ph.i
  %nla.052.i = phi ptr [ %add.ptr.i.i.i.i, %land.lhs.true.i.lr.ph.i ], [ %add.ptr.i39.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %type.051.i = phi i32 [ 0, %land.lhs.true.i.lr.ph.i ], [ %type.1.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %rem.049.i = phi i32 [ %sub.i.i, %land.lhs.true.i.lr.ph.i ], [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %84 = ptrtoint ptr %nla.052.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %nla.052.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %85)
  %cmp1.i.i = icmp ult i16 %85, 4
  %conv.i1.i = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.049.i, i32 %conv.i1.i)
  %cmp5.i.not.i = icmp ult i32 %rem.049.i, %conv.i1.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.if.end98_crit_edge, label %for.body.i

land.lhs.true.i.i.if.end98_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %nla.052.i, i32 0, i32 1
  %86 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %nla_type.i.i, align 2
  %88 = and i16 %87, 16383
  %and.i.i = zext i16 %88 to i32
  %89 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %for.body.i.cleanup118_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb20.i
  ]

for.body.i.cleanup118_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.051.i)
  %tobool5.not.i = icmp eq i32 %type.051.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %sw.bb.i.cleanup118_crit_edge

sw.bb.i.cleanup118_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end7.i:                                        ; preds = %sw.bb.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i.i) #6
  %90 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i.i, align 4, !annotation !63
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %83, align 4, !annotation !63
  %add.ptr.i.i.i2.i = getelementptr i8, ptr %nla.052.i, i32 4
  %92 = ptrtoint ptr %nla.052.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %nla.052.i, align 2
  %conv.i.i.i3.i = zext i16 %93 to i32
  %sub.i.i.i4.i = add nsw i32 %conv.i.i.i3.i, -4
  %call2.i.i5.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i.i, i32 noundef 1, ptr noundef %add.ptr.i.i.i2.i, i32 noundef %sub.i.i.i4.i, ptr noundef nonnull @nft_tunnel_opts_vxlan_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i5.i)
  %cmp.i6.i = icmp slt i32 %call2.i.i5.i, 0
  br i1 %cmp.i6.i, label %if.end7.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge, label %if.end.i.i

if.end7.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_vxlan_init.exit.thread.i

if.end.i.i:                                       ; preds = %if.end7.i
  %94 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %83, align 4
  %tobool.not.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i, label %if.end.i.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge, label %nft_tunnel_obj_vxlan_init.exit.i

if.end.i.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_vxlan_init.exit.thread.i

nft_tunnel_obj_vxlan_init.exit.thread.i:          ; preds = %if.end.i.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge, %if.end7.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.end.i.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge ], [ %call2.i.i5.i, %if.end7.i.nft_tunnel_obj_vxlan_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i.i) #6
  br label %cleanup118

nft_tunnel_obj_vxlan_init.exit.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i9.i.i = getelementptr i8, ptr %95, i32 4
  %96 = ptrtoint ptr %add.ptr.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i.i9.i.i, align 4
  %98 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %opts, align 4
  %99 = ptrtoint ptr %len.i20.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 4, ptr %len.i20.i, align 4
  %100 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 4096, ptr %flags.i34.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i.i) #6
  br label %for.inc.i

sw.bb12.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.051.i)
  %tobool13.not.i = icmp eq i32 %type.051.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %sw.bb12.i.cleanup118_crit_edge

sw.bb12.i.cleanup118_crit_edge:                   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end15.i:                                       ; preds = %sw.bb12.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i7.i) #6
  %add.ptr.i.i.i8.i = getelementptr i8, ptr %nla.052.i, i32 4
  %101 = call ptr @memset(ptr %tb.i7.i, i32 255, i32 20)
  %102 = ptrtoint ptr %nla.052.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %nla.052.i, align 2
  %conv.i.i.i9.i = zext i16 %103 to i32
  %sub.i.i.i10.i = add nsw i32 %conv.i.i.i9.i, -4
  %call2.i.i11.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i7.i, i32 noundef 4, ptr noundef %add.ptr.i.i.i8.i, i32 noundef %sub.i.i.i10.i, ptr noundef nonnull @nft_tunnel_opts_erspan_policy, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i11.i)
  %cmp.i12.i = icmp slt i32 %call2.i.i11.i, 0
  br i1 %cmp.i12.i, label %if.end15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, label %if.end.i14.i

if.end15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_erspan_init.exit.thread.i

if.end.i14.i:                                     ; preds = %if.end15.i
  %104 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %82, align 4
  %tobool.not.i13.i = icmp eq ptr %105, null
  br i1 %tobool.not.i13.i, label %if.end.i14.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, label %if.end2.i15.i

if.end.i14.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge: ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_erspan_init.exit.thread.i

if.end2.i15.i:                                    ; preds = %if.end.i14.i
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %105, i32 4
  %106 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i.i43.i.i, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %107, label %if.end2.i15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb12.i.i
  ]

if.end2.i15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge: ; preds = %if.end2.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_erspan_init.exit.thread.i

sw.bb.i.i:                                        ; preds = %if.end2.i15.i
  %109 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %79, align 4
  %tobool6.not.i.i = icmp eq ptr %110, null
  br i1 %tobool6.not.i.i, label %sw.bb.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, label %if.end8.i.i

sw.bb.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_erspan_init.exit.thread.i

if.end8.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %110, i32 4
  %111 = ptrtoint ptr %add.ptr.i.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr.i.i44.i.i, align 4
  %113 = ptrtoint ptr %u11.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %u11.i.i, align 4
  br label %nft_tunnel_obj_erspan_init.exit.i

sw.bb12.i.i:                                      ; preds = %if.end2.i15.i
  %114 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %81, align 4
  %tobool14.not.i.i = icmp eq ptr %115, null
  br i1 %tobool14.not.i.i, label %sw.bb12.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

sw.bb12.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge: ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_erspan_init.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %sw.bb12.i.i
  %116 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %80, align 4
  %tobool16.not.i.i = icmp eq ptr %117, null
  br i1 %tobool16.not.i.i, label %lor.lhs.false.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, label %if.end18.i.i

lor.lhs.false.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_erspan_init.exit.thread.i

if.end18.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i45.i.i = getelementptr i8, ptr %117, i32 4
  %118 = ptrtoint ptr %add.ptr.i.i45.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %add.ptr.i.i45.i.i, align 1
  %add.ptr.i.i46.i.i = getelementptr i8, ptr %115, i32 4
  %120 = ptrtoint ptr %add.ptr.i.i46.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %add.ptr.i.i46.i.i, align 1
  %122 = ptrtoint ptr %hwid2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load.i.i.i = load i16, ptr %hwid2.i.i.i, align 2
  %123 = shl i8 %119, 4
  %bf.shl.i.i.i = zext i8 %123 to i16
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, -1017
  %bf.set.i.i.i = or i16 %bf.clear.i.i.i, %bf.shl.i.i.i
  %124 = lshr i8 %119, 4
  %125 = and i8 %124, 3
  %bf.value7.i.i.i = zext i8 %125 to i16
  %bf.shl8.i.i.i = shl nuw nsw i16 %bf.value7.i.i.i, 8
  %bf.set10.i.i.i = or i16 %bf.set.i.i.i, %bf.shl8.i.i.i
  %126 = shl i8 %121, 3
  %127 = and i8 %126, 8
  %bf.shl.i.i = zext i8 %127 to i16
  %bf.set.i.i = or i16 %bf.set10.i.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %hwid2.i.i.i, align 2
  br label %nft_tunnel_obj_erspan_init.exit.i

nft_tunnel_obj_erspan_init.exit.thread.i:         ; preds = %lor.lhs.false.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, %sw.bb12.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, %sw.bb.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, %if.end2.i15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, %if.end.i14.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge, %if.end15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge
  %retval.0.i18.ph.i = phi i32 [ -95, %if.end2.i15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge ], [ -22, %sw.bb12.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge ], [ -22, %sw.bb.i.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge ], [ -22, %if.end.i14.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge ], [ %call2.i.i11.i, %if.end15.i.nft_tunnel_obj_erspan_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i7.i) #6
  br label %cleanup118

nft_tunnel_obj_erspan_init.exit.i:                ; preds = %if.end18.i.i, %if.end8.i.i
  %128 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %107, ptr %opts, align 4
  %129 = ptrtoint ptr %len.i20.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 12, ptr %len.i20.i, align 4
  %130 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 16384, ptr %flags.i34.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i7.i) #6
  br label %for.inc.i

sw.bb20.i:                                        ; preds = %for.body.i
  %131 = zext i32 %type.051.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %type.051.i, label %sw.bb20.i.cleanup118_crit_edge [
    i32 0, label %sw.bb20.i.if.end24.i_crit_edge
    i32 2048, label %sw.bb20.i.if.end24.i_crit_edge231
  ]

sw.bb20.i.if.end24.i_crit_edge231:                ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

sw.bb20.i.if.end24.i_crit_edge:                   ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

sw.bb20.i.cleanup118_crit_edge:                   ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end24.i:                                       ; preds = %sw.bb20.i.if.end24.i_crit_edge, %sw.bb20.i.if.end24.i_crit_edge231
  %132 = ptrtoint ptr %len.i20.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %len.i20.i, align 4
  %add.ptr.i21.i = getelementptr %struct.geneve_opt, ptr %opts, i32 %133
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb.i19.i) #6
  %134 = call ptr @memset(ptr %tb.i19.i, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %87)
  %tobool.not.i.i.i = icmp sgt i16 %87, -1
  br i1 %tobool.not.i.i.i, label %nla_parse_nested.exit.thread.i.i, label %nla_parse_nested.exit.i.i

nla_parse_nested.exit.thread.i.i:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #6
  br label %nft_tunnel_obj_geneve_init.exit.thread.i

nla_parse_nested.exit.i.i:                        ; preds = %if.end24.i
  %add.ptr.i.i.i22.i = getelementptr i8, ptr %nla.052.i, i32 4
  %135 = ptrtoint ptr %nla.052.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %nla.052.i, align 2
  %conv.i.i.i23.i = zext i16 %136 to i32
  %sub.i.i.i24.i = add nsw i32 %conv.i.i.i23.i, -4
  %call6.i.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i19.i, i32 noundef 3, ptr noundef %add.ptr.i.i.i22.i, i32 noundef %sub.i.i.i24.i, ptr noundef nonnull @nft_tunnel_opts_geneve_policy, i32 noundef 31, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %cmp.i25.i = icmp slt i32 %call6.i.i.i, 0
  br i1 %cmp.i25.i, label %nla_parse_nested.exit.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, label %if.end.i27.i

nla_parse_nested.exit.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge: ; preds = %nla_parse_nested.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_geneve_init.exit.thread.i

if.end.i27.i:                                     ; preds = %nla_parse_nested.exit.i.i
  %137 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %76, align 4
  %tobool.not.i26.i = icmp eq ptr %138, null
  br i1 %tobool.not.i26.i, label %if.end.i27.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, label %lor.lhs.false.i28.i

if.end.i27.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge: ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_geneve_init.exit.thread.i

lor.lhs.false.i28.i:                              ; preds = %if.end.i27.i
  %139 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %77, align 4
  %tobool3.not.i.i = icmp eq ptr %140, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i28.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false.i28.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_geneve_init.exit.thread.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i28.i
  %141 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %78, align 4
  %tobool6.not.i29.i = icmp eq ptr %142, null
  br i1 %tobool6.not.i29.i, label %lor.lhs.false4.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, label %if.end8.i30.i

lor.lhs.false4.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_geneve_init.exit.thread.i

if.end8.i30.i:                                    ; preds = %lor.lhs.false4.i.i
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %142, align 2
  %conv.i.i.i192 = zext i16 %144 to i32
  %sub.i.i.i193 = add nsw i32 %conv.i.i.i192, -4
  %145 = and i32 %conv.i.i.i192, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool11.not.i.i = icmp eq i32 %145, 0
  br i1 %tobool11.not.i.i, label %if.end13.i.i, label %if.end8.i30.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge

if.end8.i30.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge: ; preds = %if.end8.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_geneve_init.exit.thread.i

if.end13.i.i:                                     ; preds = %if.end8.i30.i
  %146 = ptrtoint ptr %len.i20.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len.i20.i, align 4
  %add15.i.i = add i32 %147, %conv.i.i.i192
  store i32 %add15.i.i, ptr %len.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add15.i.i)
  %cmp17.i.i = icmp ugt i32 %add15.i.i, 255
  br i1 %cmp17.i.i, label %if.end13.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, label %nft_tunnel_obj_geneve_init.exit.i

if.end13.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_tunnel_obj_geneve_init.exit.thread.i

nft_tunnel_obj_geneve_init.exit.thread.i:         ; preds = %if.end13.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, %if.end8.i30.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, %lor.lhs.false4.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, %lor.lhs.false.i28.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, %if.end.i27.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, %nla_parse_nested.exit.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge, %nla_parse_nested.exit.thread.i.i
  %retval.0.i35.ph.i = phi i32 [ -22, %nla_parse_nested.exit.thread.i.i ], [ -22, %if.end13.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge ], [ -22, %if.end8.i30.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge ], [ -22, %if.end.i27.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false.i28.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge ], [ -22, %lor.lhs.false4.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge ], [ %call6.i.i.i, %nla_parse_nested.exit.i.i.nft_tunnel_obj_geneve_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i19.i) #6
  br label %cleanup118

nft_tunnel_obj_geneve_init.exit.i:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %opt_data.i.i = getelementptr %struct.geneve_opt, ptr %opts, i32 %133, i32 3
  %add.ptr.i.i.i194 = getelementptr i8, ptr %142, i32 4
  %148 = call ptr @memcpy(ptr %opt_data.i.i, ptr %add.ptr.i.i.i194, i32 %sub.i.i.i193)
  %div.i.i = sdiv i32 %sub.i.i.i193, 4
  %conv.i31.i = trunc i32 %div.i.i to i8
  %length.i.i = getelementptr %struct.geneve_opt, ptr %opts, i32 %133, i32 2
  %149 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load.i.i = load i8, ptr %length.i.i, align 1
  %bf.value.i.i = and i8 %conv.i31.i, 31
  %bf.clear.i.i = and i8 %bf.load.i.i, -32
  %bf.set.i32.i = or i8 %bf.clear.i.i, %bf.value.i.i
  store i8 %bf.set.i32.i, ptr %length.i.i, align 1
  %add.ptr.i.i42.i.i = getelementptr i8, ptr %138, i32 4
  %150 = ptrtoint ptr %add.ptr.i.i42.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %add.ptr.i.i42.i.i, align 2
  %152 = ptrtoint ptr %add.ptr.i21.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %add.ptr.i21.i, align 2
  %add.ptr.i.i43.i33.i = getelementptr i8, ptr %140, i32 4
  %153 = ptrtoint ptr %add.ptr.i.i43.i33.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %add.ptr.i.i43.i33.i, align 1
  %type.i.i = getelementptr %struct.geneve_opt, ptr %opts, i32 %133, i32 1
  %155 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %154, ptr %type.i.i, align 2
  %156 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 2048, ptr %flags.i34.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i19.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %nft_tunnel_obj_geneve_init.exit.i, %nft_tunnel_obj_erspan_init.exit.i, %nft_tunnel_obj_vxlan_init.exit.i
  %type.1.i = phi i32 [ 4096, %nft_tunnel_obj_vxlan_init.exit.i ], [ 16384, %nft_tunnel_obj_erspan_init.exit.i ], [ 2048, %nft_tunnel_obj_geneve_init.exit.i ]
  %157 = ptrtoint ptr %nla.052.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %nla.052.i, align 2
  %conv.i36.i = zext i16 %158 to i32
  %sub.i37.i = add nuw nsw i32 %conv.i36.i, 3
  %and.i38.i = and i32 %sub.i37.i, 131068
  %sub1.i.i = sub nsw i32 %rem.049.i, %and.i38.i
  %add.ptr.i39.i = getelementptr i8, ptr %nla.052.i, i32 %and.i38.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.if.end98_crit_edge

for.inc.i.if.end98_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.end98:                                         ; preds = %for.inc.i.if.end98_crit_edge, %land.lhs.true.i.i.if.end98_crit_edge, %if.end.i191.if.end98_crit_edge, %if.end88.if.end98_crit_edge
  %opts99 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %len = getelementptr inbounds %struct.nft_object, ptr %obj, i32 1, i32 11, i32 4
  %159 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %len, align 4
  %conv100 = trunc i32 %160 to i8
  %call101 = call ptr @metadata_dst_alloc(i8 noundef zeroext %conv100, i32 noundef 0, i32 noundef 3264) #6
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.end98.cleanup118_crit_edge, label %if.end104

if.end98.cleanup118_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end104:                                        ; preds = %if.end98
  %u = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2
  %161 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %conv.i, ptr %u, align 8
  %info.sroa.6.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 1
  %162 = ptrtoint ptr %info.sroa.6.0.u.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %info.sroa.6.4, ptr %info.sroa.6.0.u.sroa_idx, align 8
  %info.sroa.8.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %163 = ptrtoint ptr %info.sroa.8.0.u.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %info.sroa.8.3, ptr %info.sroa.8.0.u.sroa_idx, align 4
  %info.sroa.9.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %164 = ptrtoint ptr %info.sroa.9.0.u.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %info.sroa.9.sroa.0.1, ptr %info.sroa.9.0.u.sroa_idx, align 8
  %info.sroa.9.sroa.6.0.info.sroa.9.0.u.sroa_idx.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %165 = call ptr @memcpy(ptr %info.sroa.9.sroa.6.0.info.sroa.9.0.u.sroa_idx.sroa_idx, ptr %info.sroa.9.sroa.6, i32 16)
  %info.sroa.10.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 2
  %166 = ptrtoint ptr %info.sroa.10.0.u.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %info.sroa.10.2, ptr %info.sroa.10.0.u.sroa_idx, align 8
  %info.sroa.17.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 3
  %167 = ptrtoint ptr %info.sroa.17.0.u.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %info.sroa.17.0, ptr %info.sroa.17.0.u.sroa_idx, align 2
  %info.sroa.18.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 4
  %168 = ptrtoint ptr %info.sroa.18.0.u.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %info.sroa.18.0, ptr %info.sroa.18.0.u.sroa_idx, align 1
  %info.sroa.20.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 5
  %169 = ptrtoint ptr %info.sroa.20.0.u.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %info.sroa.20.2, ptr %info.sroa.20.0.u.sroa_idx, align 4
  %info.sroa.21.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 6
  %170 = ptrtoint ptr %info.sroa.21.0.u.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %info.sroa.21.0, ptr %info.sroa.21.0.u.sroa_idx, align 8
  %info.sroa.22.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 0, i32 7
  %171 = ptrtoint ptr %info.sroa.22.0.u.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %info.sroa.22.0, ptr %info.sroa.22.0.u.sroa_idx, align 2
  %info.sroa.23.0.u.sroa_idx = getelementptr inbounds i8, ptr %u, i32 52
  %172 = call ptr @memset(ptr %info.sroa.23.0.u.sroa_idx, i32 0, i32 13)
  %info.sroa.23202.0.u.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 3
  %173 = ptrtoint ptr %info.sroa.23202.0.u.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %info.sroa.23202.1, ptr %info.sroa.23202.0.u.sroa_idx, align 1
  %info.sroa.26.0.u.sroa_idx = getelementptr inbounds i8, ptr %u, i32 66
  %174 = call ptr @memset(ptr %info.sroa.26.0.u.sroa_idx, i32 0, i32 6)
  %dst_cache = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 1
  %call106 = call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  call void @metadata_dst_free(ptr noundef nonnull %call101) #6
  br label %cleanup118

if.end110:                                        ; preds = %if.end104
  %175 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %len, align 4
  %flags = getelementptr inbounds %struct.nft_object, ptr %obj, i32 1, i32 11, i32 8
  %177 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %flags, align 4
  %conv.i196 = trunc i32 %176 to i8
  %options_len.i = getelementptr inbounds %struct.metadata_dst, ptr %call101, i32 0, i32 2, i32 0, i32 2
  %179 = ptrtoint ptr %options_len.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv.i196, ptr %options_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i197 = icmp sgt i32 %176, 0
  br i1 %cmp.i197, label %if.then.i, label %if.end110.ip_tunnel_info_opts_set.exit_crit_edge

if.end110.ip_tunnel_info_opts_set.exit_crit_edge: ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip_tunnel_info_opts_set.exit

if.then.i:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i198 = getelementptr %struct.metadata_dst, ptr %call101, i32 1
  %180 = call ptr @memcpy(ptr %add.ptr.i.i198, ptr %opts99, i32 %176)
  %181 = ptrtoint ptr %info.sroa.10.0.u.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %info.sroa.10.0.u.sroa_idx, align 8
  %or9.i = or i16 %182, %178
  store i16 %or9.i, ptr %info.sroa.10.0.u.sroa_idx, align 8
  br label %ip_tunnel_info_opts_set.exit

ip_tunnel_info_opts_set.exit:                     ; preds = %if.then.i, %if.end110.ip_tunnel_info_opts_set.exit_crit_edge
  %183 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call101, ptr %data.i, align 4
  br label %cleanup118

cleanup118:                                       ; preds = %ip_tunnel_info_opts_set.exit, %if.then109, %if.end98.cleanup118_crit_edge, %nft_tunnel_obj_geneve_init.exit.thread.i, %sw.bb20.i.cleanup118_crit_edge, %nft_tunnel_obj_erspan_init.exit.thread.i, %sw.bb12.i.cleanup118_crit_edge, %nft_tunnel_obj_vxlan_init.exit.thread.i, %sw.bb.i.cleanup118_crit_edge, %for.body.i.cleanup118_crit_edge, %if.then91.cleanup118_crit_edge, %if.then39.cleanup118_crit_edge, %nft_tunnel_obj_ip6_init.exit.thread, %if.else.cleanup118_crit_edge, %nft_tunnel_obj_ip_init.exit.thread, %entry.cleanup118_crit_edge
  %retval.1 = phi i32 [ %call106, %if.then109 ], [ 0, %ip_tunnel_info_opts_set.exit ], [ -22, %entry.cleanup118_crit_edge ], [ -22, %if.else.cleanup118_crit_edge ], [ -12, %if.end98.cleanup118_crit_edge ], [ -95, %if.then39.cleanup118_crit_edge ], [ %retval.0.i.ph, %nft_tunnel_obj_ip_init.exit.thread ], [ %retval.0.i184.ph, %nft_tunnel_obj_ip6_init.exit.thread ], [ %retval.0.i35.ph.i, %nft_tunnel_obj_geneve_init.exit.thread.i ], [ %retval.0.i18.ph.i, %nft_tunnel_obj_erspan_init.exit.thread.i ], [ %retval.0.i.ph.i, %nft_tunnel_obj_vxlan_init.exit.thread.i ], [ %call2.i.i.i, %if.then91.cleanup118_crit_edge ], [ -22, %sw.bb.i.cleanup118_crit_edge ], [ -22, %sw.bb12.i.cleanup118_crit_edge ], [ -22, %sw.bb20.i.cleanup118_crit_edge ], [ -95, %for.body.i.cleanup118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.sroa.9.sroa.6)
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_tunnel_obj_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @metadata_dst_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tunnel_obj_dump(ptr noundef %skb, ptr noundef %obj, i1 noundef zeroext %reset) #3 align 64 {
entry:
  %tmp.i43 = alloca i8, align 1
  %tmp.i41 = alloca i8, align 1
  %tmp.i.i39 = alloca i32, align 4
  %tmp.i6.i = alloca i16, align 2
  %tmp.i.i34 = alloca i16, align 2
  %tmp.i.i65.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %u, align 8
  %conv.i = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv.i, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %mode.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mode.i, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %tail.i.i61.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i61.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool1.not82.i = icmp eq ptr %9, null
  %tobool1.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool1.not82.i
  br i1 %tobool1.not.i, label %if.then.i.nla_put_failure_crit_edge, label %if.end.i

if.then.i.nla_put_failure_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end.i:                                         ; preds = %if.then.i
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 16, ptr noundef %u.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %dst.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %call.i58.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %dst.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %cmp8.i = icmp slt i32 %call.i58.i, 0
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %label.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 5
  %10 = ptrtoint ptr %label.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %label.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #6
  %12 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i.i, align 4
  %call.i59.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool13.not.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false10.i.lor.lhs.false4_crit_edge, label %lor.lhs.false10.i.if.then.i.i.i_crit_edge

lor.lhs.false10.i.if.then.i.i.i_crit_edge:        ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

lor.lhs.false10.i.lor.lhs.false4_crit_edge:       ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false4

if.then.i.i.i:                                    ; preds = %lor.lhs.false10.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %14, %9
  br i1 %cmp.i.i.i, label %if.then.i.i.i.nla_put_failure.sink.split.sink.split_crit_edge, label %if.then.i.i.i.nla_put_failure.sink.split_crit_edge, !prof !64

if.then.i.i.i.nla_put_failure.sink.split_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.sink.split

if.then.i.i.i.nla_put_failure.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.sink.split.sink.split

if.else.i:                                        ; preds = %lor.lhs.false
  %call1.i62.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62.i)
  %cmp.i63.i = icmp slt i32 %call1.i62.i, 0
  %tobool18.not83.i = icmp eq ptr %9, null
  %tobool18.not.i = select i1 %cmp.i63.i, i1 true, i1 %tobool18.not83.i
  br i1 %tobool18.not.i, label %if.else.i.nla_put_failure_crit_edge, label %if.end20.i

if.else.i.nla_put_failure_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end20.i:                                       ; preds = %if.else.i
  %u22.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %u22.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %u22.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  %17 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp25.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp25.i, label %if.end20.i.if.then.i.i70.i_crit_edge, label %lor.lhs.false27.i

if.end20.i.if.then.i.i70.i_crit_edge:             ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i70.i

lor.lhs.false27.i:                                ; preds = %if.end20.i
  %dst30.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %dst30.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dst30.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i65.i) #6
  %20 = ptrtoint ptr %tmp.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i.i65.i, align 4
  %call.i.i66.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i65.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i65.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66.i)
  %cmp32.i = icmp slt i32 %call.i.i66.i, 0
  br i1 %cmp32.i, label %lor.lhs.false27.i.if.then.i.i70.i_crit_edge, label %lor.lhs.false27.i.lor.lhs.false4_crit_edge

lor.lhs.false27.i.lor.lhs.false4_crit_edge:       ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false4

lor.lhs.false27.i.if.then.i.i70.i_crit_edge:      ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i70.i

if.then.i.i70.i:                                  ; preds = %lor.lhs.false27.i.if.then.i.i70.i_crit_edge, %if.end20.i.if.then.i.i70.i_crit_edge
  %data.i.i68.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i68.i, align 4
  %cmp.i.i69.i = icmp ugt ptr %22, %9
  br i1 %cmp.i.i69.i, label %if.then.i.i70.i.nla_put_failure.sink.split.sink.split_crit_edge, label %if.then.i.i70.i.nla_put_failure.sink.split_crit_edge, !prof !64

if.then.i.i70.i.nla_put_failure.sink.split_crit_edge: ; preds = %if.then.i.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.sink.split

if.then.i.i70.i.nla_put_failure.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure.sink.split.sink.split

lor.lhs.false4:                                   ; preds = %lor.lhs.false27.i.lor.lhs.false4_crit_edge, %lor.lhs.false10.i.lor.lhs.false4_crit_edge
  %23 = ptrtoint ptr %tail.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i61.i, align 8
  %sub.ptr.lhs.cast.i78.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i79.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i80.i = sub i32 %sub.ptr.lhs.cast.i78.i, %sub.ptr.rhs.cast.i79.i
  %storemerge = trunc i32 %sub.ptr.sub.i80.i to i16
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %storemerge, ptr %9, align 2
  %tp_src.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 6
  %26 = ptrtoint ptr %tp_src.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tp_src.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i34) #6
  %28 = ptrtoint ptr %tmp.i.i34 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %tmp.i.i34, align 2
  %call.i.i35 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i.i34) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i36 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp.i36, label %lor.lhs.false4.nla_put_failure_crit_edge, label %nft_tunnel_ports_dump.exit

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

nft_tunnel_ports_dump.exit:                       ; preds = %lor.lhs.false4
  %tp_dst.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 7
  %29 = ptrtoint ptr %tp_dst.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tp_dst.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i6.i) #6
  %31 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %tmp.i6.i, align 2
  %call.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %tmp.i6.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %cmp6 = icmp slt i32 %call.i7.i, 0
  br i1 %cmp6, label %nft_tunnel_ports_dump.exit.nla_put_failure_crit_edge, label %lor.lhs.false7

nft_tunnel_ports_dump.exit.nla_put_failure_crit_edge: ; preds = %nft_tunnel_ports_dump.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false7:                                   ; preds = %nft_tunnel_ports_dump.exit
  %tun_flags.i = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %32 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tun_flags.i, align 8
  %34 = lshr i16 %33, 7
  %35 = and i16 %34, 2
  %36 = and i16 %33, 1
  %37 = or i16 %35, %36
  %38 = lshr i16 %33, 1
  %39 = and i16 %38, 4
  %40 = or i16 %37, %39
  %41 = xor i16 %40, 1
  %42 = zext i16 %41 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i39) #6
  %43 = ptrtoint ptr %tmp.i.i39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i.i39, align 4
  %call.i.i40 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i39) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %cmp9 = icmp slt i32 %call.i.i40, 0
  br i1 %cmp9, label %lor.lhs.false7.nla_put_failure_crit_edge, label %lor.lhs.false10

lor.lhs.false7.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %tos = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %44 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tos, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41) #6
  %46 = ptrtoint ptr %tmp.i41 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %tmp.i41, align 1
  %call.i42 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i41) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool13.not = icmp eq i32 %call.i42, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %lor.lhs.false10.nla_put_failure_crit_edge

lor.lhs.false10.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %ttl = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 4
  %47 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ttl, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i43) #6
  %49 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %tmp.i43, align 1
  %call.i44 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i43) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool17.not = icmp eq i32 %call.i44, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false14.nla_put_failure_crit_edge

lor.lhs.false14.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

lor.lhs.false18:                                  ; preds = %lor.lhs.false14
  %call19 = call fastcc i32 @nft_tunnel_opts_dump(ptr noundef %skb, ptr noundef %data.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %lor.lhs.false18.nla_put_failure_crit_edge, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false18.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

nla_put_failure.sink.split.sink.split:            ; preds = %if.then.i.i70.i.nla_put_failure.sink.split.sink.split_crit_edge, %if.then.i.i.i.nla_put_failure.sink.split.sink.split_crit_edge
  %data.i.i68.i.sink.ph = phi ptr [ %data.i.i.i, %if.then.i.i.i.nla_put_failure.sink.split.sink.split_crit_edge ], [ %data.i.i68.i, %if.then.i.i70.i.nla_put_failure.sink.split.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_put_failure.sink.split

nla_put_failure.sink.split:                       ; preds = %nla_put_failure.sink.split.sink.split, %if.then.i.i70.i.nla_put_failure.sink.split_crit_edge, %if.then.i.i.i.nla_put_failure.sink.split_crit_edge
  %data.i.i68.i.sink = phi ptr [ %data.i.i.i, %if.then.i.i.i.nla_put_failure.sink.split_crit_edge ], [ %data.i.i68.i, %if.then.i.i70.i.nla_put_failure.sink.split_crit_edge ], [ %data.i.i68.i.sink.ph, %nla_put_failure.sink.split.sink.split ]
  %50 = ptrtoint ptr %data.i.i68.i.sink to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i68.i.sink, align 4
  %sub.ptr.lhs.cast.i.i72.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i73.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i74.i = sub i32 %sub.ptr.lhs.cast.i.i72.i, %sub.ptr.rhs.cast.i.i73.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i74.i) #6
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %nla_put_failure.sink.split, %lor.lhs.false18.nla_put_failure_crit_edge, %lor.lhs.false14.nla_put_failure_crit_edge, %lor.lhs.false10.nla_put_failure_crit_edge, %lor.lhs.false7.nla_put_failure_crit_edge, %nft_tunnel_ports_dump.exit.nla_put_failure_crit_edge, %lor.lhs.false4.nla_put_failure_crit_edge, %if.else.i.nla_put_failure_crit_edge, %if.then.i.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false18.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @metadata_dst_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_tunnel_opts_dump(ptr noundef %skb, ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  %tmp.i158 = alloca i8, align 1
  %tmp.i156 = alloca i16, align 2
  %tmp.i145 = alloca i8, align 1
  %tmp.i143 = alloca i8, align 1
  %tmp.i141 = alloca i32, align 4
  %tmp.i139 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %opts1 = getelementptr inbounds %struct.nft_tunnel_obj, ptr %priv, i32 0, i32 1
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not186 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not186
  br i1 %tobool.not, label %entry.cleanup86_crit_edge, label %if.end

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.nft_tunnel_obj, ptr %priv, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %call1.i131 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %cmp.i132 = icmp slt i32 %call1.i131, 0
  %tobool5.not187 = icmp eq ptr %5, null
  %tobool5.not = select i1 %cmp.i132, i1 true, i1 %tobool5.not187
  br i1 %tobool5.not, label %if.then3.if.then.i.i173_crit_edge, label %if.end7

if.then3.if.then.i.i173_crit_edge:                ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i173

if.end7:                                          ; preds = %if.then3
  %6 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opts1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end7.if.end84.sink.split_crit_edge, label %if.end7.if.then.i.i_crit_edge

if.end7.if.then.i.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end7.if.end84.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.sink.split

if.else:                                          ; preds = %if.end
  %and15 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else48, label %if.then17

if.then17:                                        ; preds = %if.else
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %call1.i136 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %cmp.i137 = icmp slt i32 %call1.i136, 0
  %tobool19.not188 = icmp eq ptr %10, null
  %tobool19.not = select i1 %cmp.i137, i1 true, i1 %tobool19.not188
  br i1 %tobool19.not, label %if.then17.if.then.i.i173_crit_edge, label %if.end21

if.then17.if.then.i.i173_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i173

if.end21:                                         ; preds = %if.then17
  %11 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opts1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i139) #6
  %13 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i139, align 4
  %call.i140 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i139) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i139) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool24.not = icmp eq i32 %call.i140, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.if.then.i.i_crit_edge

if.end21.if.then.i.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end26:                                         ; preds = %if.end21
  %14 = ptrtoint ptr %opts1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %opts1, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %15, label %if.end26.if.end84.sink.split_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb35
  ]

if.end26.if.end84.sink.split_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.sink.split

sw.bb:                                            ; preds = %if.end26
  %u30 = getelementptr inbounds %struct.nft_tunnel_obj, ptr %priv, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %u30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %u30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i141) #6
  %19 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i141, align 4
  %call.i142 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i141) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i141) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool32.not = icmp eq i32 %call.i142, 0
  br i1 %tobool32.not, label %sw.bb.if.end84.sink.split_crit_edge, label %sw.bb.if.then.i.i_crit_edge

sw.bb.if.then.i.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

sw.bb.if.end84.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.sink.split

sw.bb35:                                          ; preds = %if.end26
  %hwid_upper.i = getelementptr inbounds %struct.nft_tunnel_obj, ptr %priv, i32 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %hwid_upper.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %hwid_upper.i, align 2
  %21 = lshr i16 %bf.load.i, 4
  %22 = trunc i16 %21 to i8
  %conv6.i = and i8 %22, 63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #6
  %23 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv6.i, ptr %tmp.i143, align 1
  %call.i144 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i143) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool40.not = icmp eq i32 %call.i144, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %sw.bb35.if.then.i.i_crit_edge

sw.bb35.if.then.i.i_crit_edge:                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %sw.bb35
  %24 = ptrtoint ptr %hwid_upper.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %hwid_upper.i, align 2
  %25 = trunc i16 %bf.load to i8
  %26 = lshr i8 %25, 3
  %bf.cast = and i8 %26, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i145) #6
  %27 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.cast, ptr %tmp.i145, align 1
  %call.i146 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i145) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i145) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool44.not = icmp eq i32 %call.i146, 0
  br i1 %tobool44.not, label %lor.lhs.false.if.end84.sink.split_crit_edge, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false.if.end84.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.sink.split

if.else48:                                        ; preds = %if.else
  %and51 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else48.if.end84_crit_edge, label %if.then53

if.else48.if.end84_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then53:                                        ; preds = %if.else48
  %28 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i, align 8
  %call1.i153 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %cmp.i154 = icmp slt i32 %call1.i153, 0
  %tobool55.not191 = icmp eq ptr %29, null
  %tobool55.not = select i1 %cmp.i154, i1 true, i1 %tobool55.not191
  br i1 %tobool55.not, label %if.then53.if.then.i.i173_crit_edge, label %while.cond.preheader

if.then53.if.then.i.i173_crit_edge:               ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i173

while.cond.preheader:                             ; preds = %if.then53
  %len = getelementptr inbounds %struct.nft_tunnel_obj, ptr %priv, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp189.not = icmp eq i32 %31, 0
  br i1 %cmp189.not, label %while.cond.preheader.if.end84.sink.split_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end84.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.sink.split

while.body:                                       ; preds = %if.end73.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %offset.0190 = phi i32 [ %add79, %if.end73.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr %struct.geneve_opt, ptr %opts1, i32 %offset.0190
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i156) #6
  %34 = ptrtoint ptr %tmp.i156 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %tmp.i156, align 2
  %call.i157 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i156) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i156) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool61.not = icmp eq i32 %call.i157, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %while.body.if.then.i.i_crit_edge

while.body.if.then.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false62:                                  ; preds = %while.body
  %type = getelementptr %struct.geneve_opt, ptr %opts1, i32 %offset.0190, i32 1
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i158) #6
  %37 = ptrtoint ptr %tmp.i158 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %tmp.i158, align 1
  %call.i159 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i158) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i158) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool64.not = icmp eq i32 %call.i159, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false62.if.then.i.i_crit_edge

lor.lhs.false62.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

lor.lhs.false65:                                  ; preds = %lor.lhs.false62
  %length = getelementptr %struct.geneve_opt, ptr %opts1, i32 %offset.0190, i32 2
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load66 = load i8, ptr %length, align 1
  %bf.clear67 = shl i8 %bf.load66, 2
  %39 = and i8 %bf.clear67, 124
  %mul = zext i8 %39 to i32
  %opt_data = getelementptr %struct.geneve_opt, ptr %opts1, i32 %offset.0190, i32 3
  %call70 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %mul, ptr noundef %opt_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %lor.lhs.false65.if.then.i.i_crit_edge

lor.lhs.false65.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end73:                                         ; preds = %lor.lhs.false65
  %40 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load75 = load i8, ptr %length, align 1
  %bf.clear76 = shl i8 %bf.load75, 2
  %41 = and i8 %bf.clear76, 124
  %narrow = add nuw i8 %41, 4
  %add = zext i8 %narrow to i32
  %add79 = add i32 %offset.0190, %add
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %cmp = icmp ugt i32 %43, %add79
  br i1 %cmp, label %if.end73.while.body_crit_edge, label %if.end73.if.end84.sink.split_crit_edge

if.end73.if.end84.sink.split_crit_edge:           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.sink.split

if.end73.while.body_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end84.sink.split:                              ; preds = %if.end73.if.end84.sink.split_crit_edge, %while.cond.preheader.if.end84.sink.split_crit_edge, %lor.lhs.false.if.end84.sink.split_crit_edge, %sw.bb.if.end84.sink.split_crit_edge, %if.end26.if.end84.sink.split_crit_edge, %if.end7.if.end84.sink.split_crit_edge
  %.sink192 = phi ptr [ %5, %if.end7.if.end84.sink.split_crit_edge ], [ %10, %lor.lhs.false.if.end84.sink.split_crit_edge ], [ %10, %sw.bb.if.end84.sink.split_crit_edge ], [ %10, %if.end26.if.end84.sink.split_crit_edge ], [ %29, %while.cond.preheader.if.end84.sink.split_crit_edge ], [ %29, %if.end73.if.end84.sink.split_crit_edge ]
  %44 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i161 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i162 = ptrtoint ptr %.sink192 to i32
  %sub.ptr.sub.i163 = sub i32 %sub.ptr.lhs.cast.i161, %sub.ptr.rhs.cast.i162
  %conv.i164 = trunc i32 %sub.ptr.sub.i163 to i16
  %46 = ptrtoint ptr %.sink192 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i164, ptr %.sink192, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.else48.if.end84_crit_edge
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i166 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i167 = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i168 = sub i32 %sub.ptr.lhs.cast.i166, %sub.ptr.rhs.cast.i167
  %conv.i169 = trunc i32 %sub.ptr.sub.i168 to i16
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i169, ptr %1, align 2
  br label %cleanup86

if.then.i.i:                                      ; preds = %lor.lhs.false65.if.then.i.i_crit_edge, %lor.lhs.false62.if.then.i.i_crit_edge, %while.body.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %sw.bb35.if.then.i.i_crit_edge, %sw.bb.if.then.i.i_crit_edge, %if.end21.if.then.i.i_crit_edge, %if.end7.if.then.i.i_crit_edge
  %inner.0185 = phi ptr [ %10, %sw.bb.if.then.i.i_crit_edge ], [ %10, %lor.lhs.false.if.then.i.i_crit_edge ], [ %10, %sw.bb35.if.then.i.i_crit_edge ], [ %10, %if.end21.if.then.i.i_crit_edge ], [ %5, %if.end7.if.then.i.i_crit_edge ], [ %29, %lor.lhs.false65.if.then.i.i_crit_edge ], [ %29, %lor.lhs.false62.if.then.i.i_crit_edge ], [ %29, %while.body.if.then.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %51, %inner.0185
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !64

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %inner.0185 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #6
  br label %if.then.i.i173

if.then.i.i173:                                   ; preds = %if.end.i.i, %if.then53.if.then.i.i173_crit_edge, %if.then17.if.then.i.i173_crit_edge, %if.then3.if.then.i.i173_crit_edge
  %data.i.i171 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i171 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i171, align 4
  %cmp.i.i172 = icmp ugt ptr %55, %1
  br i1 %cmp.i.i172, label %do.end.i.i174, label %if.then.i.i173.nla_nest_cancel.exit179_crit_edge, !prof !64

if.then.i.i173.nla_nest_cancel.exit179_crit_edge: ; preds = %if.then.i.i173
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit179

do.end.i.i174:                                    ; preds = %if.then.i.i173
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit179

nla_nest_cancel.exit179:                          ; preds = %do.end.i.i174, %if.then.i.i173.nla_nest_cancel.exit179_crit_edge
  %56 = ptrtoint ptr %data.i.i171 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i171, align 4
  %sub.ptr.lhs.cast.i.i175 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i176 = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i.i177 = sub i32 %sub.ptr.lhs.cast.i.i175, %sub.ptr.rhs.cast.i.i176
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i177) #6
  br label %cleanup86

cleanup86:                                        ; preds = %nla_nest_cancel.exit179, %if.end84, %entry.cleanup86_crit_edge
  %retval.0 = phi i32 [ -1, %nla_nest_cancel.exit179 ], [ 0, %if.end84 ], [ -1, %entry.cleanup86_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_tunnel_get_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.skb_dst.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !64

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #6
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %entry.skb_dst.exit.i.i_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %and25.i.i.i = and i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i.i, label %skb_dst.exit.i.i.if.end.i_crit_edge, label %land.lhs.true.i.i

skb_dst.exit.i.i.if.end.i_crit_edge:              ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.i:                                ; preds = %skb_dst.exit.i.i
  %9 = inttoptr i32 %and25.i.i.i to ptr
  %flags.i.i = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i.i, align 4
  %12 = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool1.not.i.i = icmp eq i16 %12, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i_crit_edge, label %land.lhs.true.i

land.lhs.true.i.i.if.end.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i.i
  %type.i = getelementptr inbounds %struct.metadata_dst, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %9, i32 0, i32 2
  br label %skb_tunnel_info.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.i.i.if.end.i_crit_edge, %skb_dst.exit.i.i.if.end.i_crit_edge
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i27.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i27.i, label %if.end.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i29.i

if.end.i.skb_dst.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit.i

land.lhs.true.i29.i:                              ; preds = %if.end.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i28.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i28.i, label %land.rhs.i.i, label %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge

land.lhs.true.i29.i.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i29.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !64

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #6
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i29.i.skb_dst.exit.i_crit_edge, %if.end.i.skb_dst.exit.i_crit_edge
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool2.not.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool2.not.i, label %skb_dst.exit.i.skb_tunnel_info.exit_crit_edge, label %land.lhs.true3.i

skb_dst.exit.i.skb_tunnel_info.exit_crit_edge:    ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tunnel_info.exit

land.lhs.true3.i:                                 ; preds = %skb_dst.exit.i
  %17 = inttoptr i32 %and25.i.i to ptr
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lwtstate.i, align 4
  %tobool4.not.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i, label %land.lhs.true3.i.skb_tunnel_info.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.skb_tunnel_info.exit_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tunnel_info.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %21, label %land.lhs.true5.i.skb_tunnel_info.exit_crit_edge [
    i16 2, label %land.lhs.true5.i.if.then15.i_crit_edge
    i16 4, label %land.lhs.true5.i.if.then15.i_crit_edge102
  ]

land.lhs.true5.i.if.then15.i_crit_edge102:        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

land.lhs.true5.i.if.then15.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i

land.lhs.true5.i.skb_tunnel_info.exit_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tunnel_info.exit

if.then15.i:                                      ; preds = %land.lhs.true5.i.if.then15.i_crit_edge, %land.lhs.true5.i.if.then15.i_crit_edge102
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %19, i32 0, i32 7
  br label %skb_tunnel_info.exit

skb_tunnel_info.exit:                             ; preds = %if.then15.i, %land.lhs.true5.i.skb_tunnel_info.exit_crit_edge, %land.lhs.true3.i.skb_tunnel_info.exit_crit_edge, %skb_dst.exit.i.skb_tunnel_info.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %u.i, %if.then.i ], [ %data.i.i, %if.then15.i ], [ null, %land.lhs.true5.i.skb_tunnel_info.exit_crit_edge ], [ null, %land.lhs.true3.i.skb_tunnel_info.exit_crit_edge ], [ null, %skb_dst.exit.i.skb_tunnel_info.exit_crit_edge ]
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load99 = load i8, ptr %data.i, align 4
  %24 = zext i8 %bf.load99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %bf.load99, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb23
  ]

sw.bb:                                            ; preds = %skb_tunnel_info.exit
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %mode = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 2
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load2 = load i8, ptr %mode, align 2
  %27 = zext i8 %bf.load2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %bf.load2, label %if.end.if.else_crit_edge [
    i8 0, label %if.end.if.then21_crit_edge
    i8 1, label %land.lhs.true
    i8 2, label %land.lhs.true16
  ]

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %mode8 = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i, i32 0, i32 3
  %28 = ptrtoint ptr %mode8 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mode8, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool9.not = icmp eq i8 %30, 0
  br i1 %tobool9.not, label %land.lhs.true.if.then21_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

land.lhs.true16:                                  ; preds = %if.end
  %mode17 = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %mode17 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mode17, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool20.not = icmp eq i8 %33, 0
  br i1 %tobool20.not, label %land.lhs.true16.if.else_crit_edge, label %land.lhs.true16.if.then21_crit_edge

land.lhs.true16.if.then21_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then21:                                        ; preds = %land.lhs.true16.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge, %if.end.if.then21_crit_edge
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16777216, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true16.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %skb_tunnel_info.exit
  %tobool24.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end26:                                         ; preds = %sw.bb23
  %mode27 = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 2
  %37 = ptrtoint ptr %mode27 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load28 = load i8, ptr %mode27, align 2
  %38 = zext i8 %bf.load28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %bf.load28, label %if.end26.if.else56_crit_edge [
    i8 0, label %if.end26.if.then54_crit_edge
    i8 1, label %land.lhs.true38
    i8 2, label %land.lhs.true49
  ]

if.end26.if.then54_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

if.end26.if.else56_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else56

land.lhs.true38:                                  ; preds = %if.end26
  %mode39 = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i, i32 0, i32 3
  %39 = ptrtoint ptr %mode39 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mode39, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool42.not = icmp eq i8 %41, 0
  br i1 %tobool42.not, label %land.lhs.true38.if.then54_crit_edge, label %land.lhs.true38.if.else56_crit_edge

land.lhs.true38.if.else56_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else56

land.lhs.true38.if.then54_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

land.lhs.true49:                                  ; preds = %if.end26
  %mode50 = getelementptr inbounds %struct.ip_tunnel_info, ptr %retval.0.i, i32 0, i32 3
  %42 = ptrtoint ptr %mode50 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %mode50, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool53.not = icmp eq i8 %44, 0
  br i1 %tobool53.not, label %land.lhs.true49.if.else56_crit_edge, label %land.lhs.true49.if.then54_crit_edge

land.lhs.true49.if.then54_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

land.lhs.true49.if.else56_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else56

if.then54:                                        ; preds = %land.lhs.true49.if.then54_crit_edge, %land.lhs.true38.if.then54_crit_edge, %if.end26.if.then54_crit_edge
  %45 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %retval.0.i, align 8
  %conv.i = trunc i64 %46 to i32
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.i, ptr %arrayidx, align 4
  br label %cleanup

if.else56:                                        ; preds = %land.lhs.true49.if.else56_crit_edge, %land.lhs.true38.if.else56_crit_edge, %if.end26.if.else56_crit_edge
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

do.end:                                           ; preds = %skb_tunnel_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 62, i32 noundef 9, ptr noundef null) #6
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else56, %if.then54, %if.then25, %if.else, %if.then21, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tunnel_get_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = trunc i32 %5 to i8
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %data.i, align 4
  %8 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %if.end.sw.epilog_crit_edge
  %len.0 = phi i32 [ 4, %sw.bb5 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %arrayidx6 = getelementptr ptr, ptr %tb, i32 3
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.epilog
  %add.ptr.i.i33 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i33, align 4
  %mode = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 2
  %13 = trunc i32 %12 to i8
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %mode, align 2
  %bf.cast14 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.cast14)
  %cmp = icmp ugt i32 %bf.cast14, 2
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.then8.if.end18_crit_edge

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %mode17 = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 2
  %15 = ptrtoint ptr %mode17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %mode17, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8.if.end18_crit_edge
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1, align 4
  %dreg = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 1
  %call20 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %17, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef %len.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_tunnel_get_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  %tmp.i16 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %data.i, align 4
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %dreg = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %conv = zext i8 %3 to i32
  %call2 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.nft_tunnel, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load6 = load i8, ptr %mode, align 2
  %bf.cast7 = zext i8 %bf.load6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i16) #6
  %5 = ptrtoint ptr %tmp.i16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast7, ptr %tmp.i16, align 4
  %call.i17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool9.not = icmp eq i32 %call.i17, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end5.nla_put_failure_crit_edge

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end5.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_nft_tunnel__633_713_nft_tunnel_module_init6, !1, !"__initcall__kmod_nft_tunnel__633_713_nft_tunnel_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_tunnel.c", i32 713, i32 1}
!2 = !{ptr @__exitcall_nft_tunnel_module_exit, !3, !"__exitcall_nft_tunnel_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_tunnel.c", i32 714, i32 1}
!4 = !{ptr @__UNIQUE_ID_file634, !5, !"__UNIQUE_ID_file634", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_tunnel.c", i32 716, i32 1}
!6 = !{ptr @__UNIQUE_ID_license635, !5, !"__UNIQUE_ID_license635", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author636, !8, !"__UNIQUE_ID_author636", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_tunnel.c", i32 717, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias637, !10, !"__UNIQUE_ID_alias637", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_tunnel.c", i32 718, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias638, !12, !"__UNIQUE_ID_alias638", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_tunnel.c", i32 719, i32 1}
!13 = !{ptr @__UNIQUE_ID_description639, !14, !"__UNIQUE_ID_description639", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_tunnel.c", i32 720, i32 1}
!15 = !{ptr @nft_tunnel_obj_type, !16, !"nft_tunnel_obj_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_tunnel.c", i32 684, i32 31}
!17 = !{ptr @nft_tunnel_obj_ops, !18, !"nft_tunnel_obj_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_tunnel.c", i32 675, i32 36}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/dst.h", i32 231, i32 2}
!21 = !{ptr @nft_tunnel_ip_policy, !22, !"nft_tunnel_ip_policy", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_tunnel.c", i32 157, i32 32}
!23 = !{ptr @nft_tunnel_ip6_policy, !24, !"nft_tunnel_ip6_policy", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_tunnel.c", i32 185, i32 32}
!25 = !{ptr @nft_tunnel_opts_policy, !26, !"nft_tunnel_opts_policy", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_tunnel.c", i32 345, i32 32}
!27 = !{ptr @nft_tunnel_opts_vxlan_policy, !28, !"nft_tunnel_opts_vxlan_policy", i1 false, i1 false}
!28 = !{!"../net/netfilter/nft_tunnel.c", i32 224, i32 32}
!29 = !{ptr @nft_tunnel_opts_erspan_policy, !30, !"nft_tunnel_opts_erspan_policy", i1 false, i1 false}
!30 = !{!"../net/netfilter/nft_tunnel.c", i32 250, i32 32}
!31 = !{ptr @nla_parse_nested.__msg, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!33 = !{ptr @nft_tunnel_opts_geneve_policy, !34, !"nft_tunnel_opts_geneve_policy", i1 false, i1 false}
!34 = !{!"../net/netfilter/nft_tunnel.c", i32 304, i32 32}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/net/netlink.h", i32 991, i32 3}
!37 = !{ptr @nft_tunnel_key_policy, !38, !"nft_tunnel_key_policy", i1 false, i1 false}
!38 = !{!"../net/netfilter/nft_tunnel.c", i32 400, i32 32}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/nft_tunnel.c", i32 135, i32 11}
!41 = !{ptr @nft_tunnel_type, !42, !"nft_tunnel_type", i1 false, i1 false}
!42 = !{!"../net/netfilter/nft_tunnel.c", i32 134, i32 29}
!43 = !{ptr @nft_tunnel_get_ops, !44, !"nft_tunnel_get_ops", i1 false, i1 false}
!44 = !{!"../net/netfilter/nft_tunnel.c", i32 126, i32 34}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/nft_tunnel.c", i32 62, i32 3}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!49 = !{ptr @nft_tunnel_policy, !50, !"nft_tunnel_policy", i1 false, i1 false}
!50 = !{!"../net/netfilter/nft_tunnel.c", i32 67, i32 32}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148226671}
!61 = !{i64 711494, i64 711519, i64 711541, i64 711557, i64 711569, i64 711589, i64 711613, i64 711629, i64 711641}
!62 = !{i64 2148226859}
!63 = !{!"auto-init"}
!64 = !{!"branch_weights", i32 1, i32 2000}
