; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_amanda.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_amanda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_amanda_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_amanda_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_amanda_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_amanda_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_amanda_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_amanda_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.150 }
%union.anon.150 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.171 = type { ptr, i32, ptr }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.anon.100 = type { i16 }
%struct.anon.105 = type { %union.nf_inet_addr, %union.anon.106, i8, i8 }
%union.anon.106 = type { i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.105 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_conntrack_man_proto = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.113 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }

@__UNIQUE_ID_author587 = internal constant [72 x i8] c"nf_conntrack_amanda.author=Brian J. Murrell <netfilter@interlinx.bc.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description588 = internal constant [66 x i8] c"nf_conntrack_amanda.description=Amanda connection tracking module\00", section ".modinfo", align 1
@__UNIQUE_ID_file589 = internal constant [59 x i8] c"nf_conntrack_amanda.file=net/netfilter/nf_conntrack_amanda\00", section ".modinfo", align 1
@__UNIQUE_ID_license590 = internal constant [32 x i8] c"nf_conntrack_amanda.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias591 = internal constant [46 x i8] c"nf_conntrack_amanda.alias=ip_conntrack_amanda\00", section ".modinfo", align 1
@__UNIQUE_ID_alias592 = internal constant [45 x i8] c"nf_conntrack_amanda.alias=nfct-helper-amanda\00", section ".modinfo", align 1
@__param_str_master_timeout = internal constant [35 x i8] c"nf_conntrack_amanda.master_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@master_timeout = internal global i32 300, section ".data..read_mostly", align 4
@__param_master_timeout = internal constant %struct.kernel_param { ptr @__param_str_master_timeout, ptr null, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.150 { ptr @master_timeout } }, section "__param", align 4
@__UNIQUE_ID_master_timeouttype593 = internal constant [49 x i8] c"nf_conntrack_amanda.parmtype=master_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_master_timeout594 = internal constant [74 x i8] c"nf_conntrack_amanda.parm=master_timeout:timeout for the master connection\00", section ".modinfo", align 1
@__param_str_ts_algo = internal constant [28 x i8] c"nf_conntrack_amanda.ts_algo\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ts_algo = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_ts_algo = internal constant %struct.kernel_param { ptr @__param_str_ts_algo, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.150 { ptr @ts_algo } }, section "__param", align 4
@__UNIQUE_ID_ts_algotype595 = internal constant [43 x i8] c"nf_conntrack_amanda.parmtype=ts_algo:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ts_algo596 = internal constant [75 x i8] c"nf_conntrack_amanda.parm=ts_algo:textsearch algorithm to use (default kmp)\00", section ".modinfo", align 1
@nf_nat_amanda_hook = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_amanda_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_amanda_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_amanda_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_amanda_hook to i32), ptr @__kstrtab_nf_nat_amanda_hook, ptr @__kstrtabns_nf_nat_amanda_hook }, section "___ksymtab_gpl+nf_nat_amanda_hook", align 4
@search = internal unnamed_addr global [6 x %struct.anon.171] [%struct.anon.171 { ptr @.str.8, i32 8, ptr null }, %struct.anon.171 { ptr @.str.9, i32 1, ptr null }, %struct.anon.171 { ptr @.str.10, i32 5, ptr null }, %struct.anon.171 { ptr @.str.11, i32 5, ptr null }, %struct.anon.171 { ptr @.str.12, i32 6, ptr null }, %struct.anon.171 { ptr @.str.13, i32 6, ptr null }], section ".data..read_mostly", align 4
@__initcall__kmod_nf_conntrack_amanda__602_239_nf_conntrack_amanda_init6 = internal global ptr @nf_conntrack_amanda_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_amanda_fini = internal global ptr @nf_conntrack_amanda_fini, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kmp\00", [28 x i8] zeroinitializer }, align 32
@amanda_exp_policy = internal constant { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 4, i32 180, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@amanda_helper = internal global [2 x { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, { { %union.nf_inet_addr, { %struct.anon.100 }, i16 }, %struct.anon.105 }, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }] [{ %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, { { %union.nf_inet_addr, { %struct.anon.100 }, i16 }, %struct.anon.105 }, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] } { %struct.hlist_node zeroinitializer, [16 x i8] c"amanda\00\00\00\00\00\00\00\00\00\00", %struct.refcount_struct zeroinitializer, ptr null, ptr @amanda_exp_policy, { { %union.nf_inet_addr, { %struct.anon.100 }, i16 }, %struct.anon.105 } { { %union.nf_inet_addr, { %struct.anon.100 }, i16 } { %union.nf_inet_addr zeroinitializer, { %struct.anon.100 } { %struct.anon.100 { i16 10080 } }, i16 2 }, %struct.anon.105 { %union.nf_inet_addr zeroinitializer, %union.anon.106 zeroinitializer, i8 17, i8 0 } }, ptr @amanda_help, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i16 0, [16 x i8] c"ip_nat_amanda\00\00\00" }, { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, { { %union.nf_inet_addr, { %struct.anon.100 }, i16 }, %struct.anon.105 }, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] } { %struct.hlist_node zeroinitializer, [16 x i8] c"amanda\00\00\00\00\00\00\00\00\00\00", %struct.refcount_struct zeroinitializer, ptr null, ptr @amanda_exp_policy, { { %union.nf_inet_addr, { %struct.anon.100 }, i16 }, %struct.anon.105 } { { %union.nf_inet_addr, { %struct.anon.100 }, i16 } { %union.nf_inet_addr zeroinitializer, { %struct.anon.100 } { %struct.anon.100 { i16 10080 } }, i16 10 }, %struct.anon.105 { %union.nf_inet_addr zeroinitializer, %union.anon.106 zeroinitializer, i8 17, i8 0 } }, ptr @amanda_help, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i16 0, [16 x i8] c"ip_nat_amanda\00\00\00" }], section ".data..read_mostly", align 4
@amanda_help._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013amanda_help: skblen = %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amanda_help\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/netfilter/nf_conntrack_amanda.c\00", [60 x i8] zeroinitializer }, align 32
@amanda_help._entry_ptr = internal global ptr @amanda_help._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot alloc expectation\00", [39 x i8] zeroinitializer }, align 32
@amanda_help.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot add expectation\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CONNECT \00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DATA \00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MESG \00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INDEX \00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATE \00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"ts_algo\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 25, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 25, i32 24 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"amanda_exp_policy\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 173, i32 48 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 114, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 148, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 158, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 163, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 64, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 68, i32 13 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 72, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 76, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 80, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [39 x i8] c"../net/netfilter/nf_conntrack_amanda.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 84, i32 13 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias591, ptr @__UNIQUE_ID_alias592, ptr @__UNIQUE_ID_author587, ptr @__UNIQUE_ID_description588, ptr @__UNIQUE_ID_file589, ptr @__UNIQUE_ID_license590, ptr @__UNIQUE_ID_master_timeout594, ptr @__UNIQUE_ID_master_timeouttype593, ptr @__UNIQUE_ID_ts_algo596, ptr @__UNIQUE_ID_ts_algotype595, ptr @__exitcall_nf_conntrack_amanda_fini, ptr @__initcall__kmod_nf_conntrack_amanda__602_239_nf_conntrack_amanda_init6, ptr @__ksymtab_nf_nat_amanda_hook, ptr @__param_master_timeout, ptr @__param_ts_algo, ptr @amanda_help._entry, ptr @amanda_help._entry_ptr, ptr @nf_conntrack_amanda_fini, ptr @ts_algo, ptr @.str, ptr @amanda_exp_policy, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_algo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amanda_exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amanda_help._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_amanda_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_conntrack_helpers_unregister(ptr noundef nonnull @amanda_helper, i32 noundef 2) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %ts = getelementptr [6 x %struct.anon.171], ptr @search, i32 0, i32 %i.03, i32 2
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  tail call void @textsearch_destroy(ptr noundef %1) #6
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helpers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @textsearch_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_amanda_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = load ptr, ptr @ts_algo, align 4
  %arrayidx = getelementptr [6 x %struct.anon.171], ptr @search, i32 0, i32 %i.028
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr [6 x %struct.anon.171], ptr @search, i32 0, i32 %i.028, i32 1
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call = tail call ptr @textsearch_prepare(ptr noundef %0, ptr noundef %2, i32 noundef %4, i32 noundef 3264, i32 noundef 1) #6
  %ts = getelementptr [6 x %struct.anon.171], ptr @search, i32 0, i32 %i.028, i32 2
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %ts, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err1, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call9 = tail call i32 @nf_conntrack_helpers_register(ptr noundef nonnull @amanda_helper, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %for.end.while.body.preheader_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.while.body.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

err1:                                             ; preds = %for.body
  %6 = ptrtoint ptr %call to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.028)
  %cmp1330.not = icmp eq i32 %i.028, 0
  br i1 %cmp1330.not, label %err1.cleanup_crit_edge, label %err1.while.body.preheader_crit_edge

err1.while.body.preheader_crit_edge:              ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

err1.cleanup_crit_edge:                           ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %err1.while.body.preheader_crit_edge, %for.end.while.body.preheader_crit_edge
  %ret.038 = phi i32 [ %6, %err1.while.body.preheader_crit_edge ], [ %call9, %for.end.while.body.preheader_crit_edge ]
  %i.02737 = phi i32 [ %i.028, %err1.while.body.preheader_crit_edge ], [ 6, %for.end.while.body.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dec31.in = phi i32 [ %dec31, %while.body.while.body_crit_edge ], [ %i.02737, %while.body.preheader ]
  %dec31 = add nsw i32 %dec31.in, -1
  %ts15 = getelementptr [6 x %struct.anon.171], ptr @search, i32 0, i32 %dec31, i32 2
  %7 = ptrtoint ptr %ts15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ts15, align 4
  tail call void @textsearch_destroy(ptr noundef %8) #6
  %cmp13 = icmp sgt i32 %dec31.in, 1
  br i1 %cmp13, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err1.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %6, %err1.cleanup_crit_edge ], [ %ret.038, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amanda_help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #3 align 64 {
entry:
  %pbuf = alloca [6 x i8], align 1
  %tmp = alloca ptr, align 4
  %port = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pbuf) #6
  %0 = call ptr @memset(ptr %pbuf, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #6
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %port, align 2, !annotation !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctinfo)
  %cmp = icmp ult i32 %ctinfo, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @master_timeout, align 4
  %mul = mul i32 %3, 100
  tail call void @__nf_ct_refresh_acct(ptr noundef %ct, i32 noundef 0, ptr noundef %skb, i32 noundef %mul, i1 noundef zeroext false) #6
  %add = add i32 %protoff, 8
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp3.not = icmp ult i32 %add, %5
  br i1 %cmp3.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  %call = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len2, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %7) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %8 = load ptr, ptr getelementptr inbounds ([6 x %struct.anon.171], ptr @search, i32 0, i32 0, i32 2), align 4
  %call15 = tail call i32 @skb_find_text(ptr noundef %skb, i32 noundef %add, i32 noundef %5, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %9 = load i32, ptr getelementptr inbounds ([6 x %struct.anon.171], ptr @search, i32 0, i32 0, i32 1), align 4
  %add19 = add i32 %call15, %add
  %add20 = add i32 %add19, %9
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len2, align 4
  %12 = load ptr, ptr getelementptr inbounds ([6 x %struct.anon.171], ptr @search, i32 0, i32 1, i32 2), align 4
  %call22 = tail call i32 @skb_find_text(ptr noundef %skb, i32 noundef %add20, i32 noundef %11, ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %add26 = add i32 %call22, %add20
  %sub.ptr.rhs.cast = ptrtoint ptr %pbuf to i32
  %tuple64 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %dst = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25
  %ret.0162 = phi i32 [ 1, %if.end25 ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %i.0160 = phi i32 [ 2, %if.end25 ], [ %inc, %for.inc.for.body_crit_edge ]
  %ts = getelementptr [6 x %struct.anon.171], ptr @search, i32 0, i32 %i.0160, i32 2
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ts, align 4
  %call28 = call i32 @skb_find_text(ptr noundef %skb, i32 noundef %add20, i32 noundef %add26, ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %for.body.for.inc_crit_edge, label %if.end31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %len33 = getelementptr [6 x %struct.anon.171], ptr @search, i32 0, i32 %i.0160, i32 1
  %15 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len33, align 4
  %add34 = add i32 %call28, %add20
  %add35 = add i32 %add34, %16
  %sub = sub i32 %add26, %add35
  %17 = call i32 @llvm.umin.i32(i32 %sub, i32 5)
  %call40 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add35, ptr noundef nonnull %pbuf, i32 noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %arrayidx44 = getelementptr [6 x i8], ptr %pbuf, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx44, align 1
  %call46 = call i32 @simple_strtoul(ptr noundef nonnull %pbuf, ptr noundef nonnull %tmp, i32 noundef 10) #6
  %conv47 = trunc i32 %call46 to i16
  %19 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv47, ptr %port, align 2
  %conv50 = and i32 %call46, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv50)
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.end43.cleanup_crit_edge, label %lor.lhs.false

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end43
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tmp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv53 = and i32 %sub.ptr.sub, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv53)
  %cmp54 = icmp ugt i32 %conv53, 5
  br i1 %cmp54, label %lor.lhs.false.cleanup_crit_edge, label %if.end57

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false
  %call58 = call ptr @nf_ct_expect_alloc(ptr noundef %ct) #6
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %22 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l3num.i, align 2
  %conv66 = trunc i16 %23 to i8
  call void @nf_ct_expect_init(ptr noundef nonnull %call58, i32 noundef 0, i8 noundef zeroext %conv66, ptr noundef %tuple64, ptr noundef %dst, i8 noundef zeroext 6, ptr noundef null, ptr noundef nonnull %port) #6
  %24 = load volatile ptr, ptr @nf_nat_amanda_hook, align 4
  %call73 = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true, label %if.end62.do.end82_crit_edge

if.end62.do.end82_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

land.lhs.true:                                    ; preds = %if.end62
  %call75 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true.do.end82_crit_edge, label %land.lhs.true77

land.lhs.true.do.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

land.lhs.true77:                                  ; preds = %land.lhs.true
  %.b158 = load i1, ptr @amanda_help.__warned, align 1
  br i1 %.b158, label %land.lhs.true77.do.end82_crit_edge, label %if.then79

land.lhs.true77.do.end82_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

if.then79:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @amanda_help.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 158, ptr noundef nonnull @.str.6) #6
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %land.lhs.true77.do.end82_crit_edge, %land.lhs.true.do.end82_crit_edge, %if.end62.do.end82_crit_edge
  %tobool84.not = icmp eq ptr %24, null
  br i1 %tobool84.not, label %do.end82.if.else_crit_edge, label %land.lhs.true85

do.end82.if.else_crit_edge:                       ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true85:                                  ; preds = %do.end82
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 8
  %and = and i32 %26, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  br i1 %tobool86.not, label %land.lhs.true85.if.else_crit_edge, label %if.then87

land.lhs.true85.if.else_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then87:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #8
  %sub88 = sub i32 %add35, %add
  %call90 = call i32 %24(ptr noundef %skb, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %sub88, i32 noundef %conv53, ptr noundef nonnull %call58) #6
  br label %if.end96

if.else:                                          ; preds = %land.lhs.true85.if.else_crit_edge, %do.end82.if.else_crit_edge
  %call.i = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call58, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp92.not = icmp eq i32 %call.i, 0
  br i1 %cmp92.not, label %if.else.if.end96_crit_edge, label %if.then94

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then94:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.7) #6
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.else.if.end96_crit_edge, %if.then87
  %ret.1 = phi i32 [ %call90, %if.then87 ], [ 0, %if.then94 ], [ %ret.0162, %if.else.if.end96_crit_edge ]
  call void @nf_ct_expect_put(ptr noundef nonnull %call58) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end96, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.0162, %for.body.for.inc_crit_edge ], [ %ret.1, %if.end96 ]
  %inc = add nuw nsw i32 %i.0160, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then61, %lor.lhs.false.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ 0, %if.then61 ], [ %ret.2, %for.inc.cleanup_crit_edge ], [ %ret.0162, %if.end31.cleanup_crit_edge ], [ %ret.0162, %lor.lhs.false.cleanup_crit_edge ], [ %ret.0162, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pbuf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_find_text(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @textsearch_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helpers_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__UNIQUE_ID_author587, !1, !"__UNIQUE_ID_author587", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_description588, !3, !"__UNIQUE_ID_description588", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file589, !5, !"__UNIQUE_ID_file589", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license590, !5, !"__UNIQUE_ID_license590", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias591, !8, !"__UNIQUE_ID_alias591", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 32, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias592, !10, !"__UNIQUE_ID_alias592", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 33, i32 1}
!11 = !{ptr @__param_master_timeout, !12, !"__param_master_timeout", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 35, i32 1}
!13 = !{ptr @__UNIQUE_ID_master_timeouttype593, !12, !"__UNIQUE_ID_master_timeouttype593", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_master_timeout594, !15, !"__UNIQUE_ID_master_timeout594", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 36, i32 1}
!16 = !{ptr @__param_ts_algo, !17, !"__param_ts_algo", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 37, i32 1}
!18 = !{ptr @__UNIQUE_ID_ts_algotype595, !17, !"__UNIQUE_ID_ts_algotype595", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_ts_algo596, !20, !"__UNIQUE_ID_ts_algo596", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 38, i32 1}
!21 = !{ptr @__ksymtab_nf_nat_amanda_hook, !22, !"__ksymtab_nf_nat_amanda_hook", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 47, i32 1}
!23 = !{ptr @__initcall__kmod_nf_conntrack_amanda__602_239_nf_conntrack_amanda_init6, !24, !"__initcall__kmod_nf_conntrack_amanda__602_239_nf_conntrack_amanda_init6", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 239, i32 1}
!25 = !{ptr @__exitcall_nf_conntrack_amanda_fini, !26, !"__exitcall_nf_conntrack_amanda_fini", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 240, i32 1}
!27 = !{ptr @nf_nat_amanda_hook, !28, !"nf_nat_amanda_hook", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 40, i32 16}
!29 = !{ptr @__param_str_master_timeout, !12, !"__param_str_master_timeout", i1 false, i1 false}
!30 = !{ptr @master_timeout, !31, !"master_timeout", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 24, i32 21}
!32 = !{ptr @__param_str_ts_algo, !17, !"__param_str_ts_algo", i1 false, i1 false}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 25, i32 24}
!35 = !{ptr @ts_algo, !36, !"ts_algo", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 25, i32 14}
!37 = !{ptr @amanda_helper, !38, !"amanda_helper", i1 false, i1 false}
!38 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 178, i32 35}
!39 = !{ptr @amanda_exp_policy, !40, !"amanda_exp_policy", i1 false, i1 false}
!40 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 173, i32 48}
!41 = !{ptr @.str.2, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 114, i32 3}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @amanda_help._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @amanda_help._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 148, i32 30}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 158, i32 19}
!51 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 163, i32 30}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 64, i32 13}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 68, i32 13}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 72, i32 13}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 76, i32 13}
!62 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 80, i32 13}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 84, i32 13}
!66 = !{ptr @search, !67, !"search", i1 false, i1 false}
!67 = !{!"../net/netfilter/nf_conntrack_amanda.c", i32 62, i32 3}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
