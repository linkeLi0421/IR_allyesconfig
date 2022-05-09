; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_ftp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_ftp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_ftp_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_ftp_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_ftp_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_ftp_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_ftp_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_ftp_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.190 }
%union.anon.190 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.143 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.143 = type { %union.nf_inet_addr, %union.anon.144, i8, i8 }
%union.anon.144 = type { i16 }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ftp_search = type { ptr, i32, i8, i8, i32, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.151, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.151 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.hlist_head = type { ptr }
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
%struct.nf_ct_ftp_master = type { [2 x [2 x i32]], [2 x i16], [2 x i16] }

@__UNIQUE_ID_file694 = internal constant [53 x i8] c"nf_conntrack_ftp.file=net/netfilter/nf_conntrack_ftp\00", section ".modinfo", align 1
@__UNIQUE_ID_license695 = internal constant [29 x i8] c"nf_conntrack_ftp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author696 = internal constant [62 x i8] c"nf_conntrack_ftp.author=Rusty Russell <rusty@rustcorp.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description697 = internal constant [60 x i8] c"nf_conntrack_ftp.description=ftp connection tracking helper\00", section ".modinfo", align 1
@__UNIQUE_ID_alias698 = internal constant [40 x i8] c"nf_conntrack_ftp.alias=ip_conntrack_ftp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias699 = internal constant [39 x i8] c"nf_conntrack_ftp.alias=nfct-helper-ftp\00", section ".modinfo", align 1
@__param_str_ports = internal constant [23 x i8] c"nf_conntrack_ftp.ports\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_ports = internal constant %struct.kparam_array { i32 8, i32 2, ptr @ports_c, ptr @param_ops_ushort, ptr @ports }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.190 { ptr @__param_arr_ports } }, section "__param", align 4
@__UNIQUE_ID_portstype700 = internal constant [48 x i8] c"nf_conntrack_ftp.parmtype=ports:array of ushort\00", section ".modinfo", align 1
@__param_str_loose = internal constant [23 x i8] c"nf_conntrack_ftp.loose\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@loose = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_loose = internal constant %struct.kernel_param { ptr @__param_str_loose, ptr null, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.190 { ptr @loose } }, section "__param", align 4
@__UNIQUE_ID_loosetype701 = internal constant [37 x i8] c"nf_conntrack_ftp.parmtype=loose:bool\00", section ".modinfo", align 1
@nf_nat_ftp_hook = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nf_nat_ftp_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_ftp_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_ftp_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_ftp_hook to i32), ptr @__kstrtab_nf_nat_ftp_hook, ptr @__kstrtabns_nf_nat_ftp_hook }, section "___ksymtab_gpl+nf_nat_ftp_hook", align 4
@ftp = internal global [16 x %struct.nf_conntrack_helper] zeroinitializer, section ".data..read_mostly", align 4
@ports_c = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ftp_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nf_conntrack_ftp__726_613_nf_conntrack_ftp_init6 = internal global ptr @nf_conntrack_ftp_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_ftp_fini = internal global ptr @nf_conntrack_ftp_fini, section ".exitcall.exit", align 4
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@ports = internal global { [8 x i16], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ftp\00", [28 x i8] zeroinitializer }, align 32
@ftp_exp_policy = internal constant { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 1, i32 300, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@nf_conntrack_ftp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013nf_conntrack_ftp: failed to register helpers\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nf_conntrack_ftp_init\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netfilter/nf_conntrack_ftp.c\00", [63 x i8] zeroinitializer }, align 32
@nf_conntrack_ftp_init._entry_ptr = internal global ptr @nf_conntrack_ftp_init._entry, section ".printk_index", align 4
@help.__UNIQUE_ID_ddebug717 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nf_conntrack_ftp\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"help\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ftp: Conntrackinfo = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nf_conntrack_ftp: ftp: Conntrackinfo = %u\0A\00", [53 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug718 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.8, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ftp: dataoff(%u) >= skblen(%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nf_conntrack_ftp: ftp: dataoff(%u) >= skblen(%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@nf_ftp_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug719 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.10, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nf_conntrack_ftp: wrong seq pos %s(%u) or %s(%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nf_conntrack_ftp: nf_conntrack_ftp: wrong seq pos %s(%u) or %s(%u)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(UNSET)\00", [24 x i8] zeroinitializer }, align 32
@search = internal constant { [2 x [2 x %struct.ftp_search]], [48 x i8] } { [2 x [2 x %struct.ftp_search]] [[2 x %struct.ftp_search] [%struct.ftp_search { ptr @.str.34, i32 4, i8 32, i8 13, i32 0, ptr @try_rfc959 }, %struct.ftp_search { ptr @.str.35, i32 4, i8 32, i8 13, i32 2, ptr @try_eprt }], [2 x %struct.ftp_search] [%struct.ftp_search { ptr @.str.36, i32 4, i8 0, i8 0, i32 1, ptr @try_rfc1123 }, %struct.ftp_search { ptr @.str.37, i32 4, i8 40, i8 41, i32 3, ptr @try_epsv_response }]], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"partial matching of `%s'\00", [39 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.15, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"conntrack_ftp: match `%.*s' (%u bytes at %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"nf_conntrack_ftp: conntrack_ftp: match `%.*s' (%u bytes at %u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot alloc expectation\00", [39 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug721 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.18, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NOT RECORDING: %pI4 != %pI4\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nf_conntrack_ftp: NOT RECORDING: %pI4 != %pI4\0A\00", [49 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug722 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.20, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NOT RECORDING: %pI6 != %pI6\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nf_conntrack_ftp: NOT RECORDING: %pI6 != %pI6\0A\00", [49 x i8] zeroinitializer }, align 32
@help.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot add expectation\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nf_ftp_lock\00", [20 x i8] zeroinitializer }, align 32
@find_pattern.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"find_pattern\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"find_pattern `%s': dlen = %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nf_conntrack_ftp: find_pattern `%s': dlen = %zu\0A\00", [47 x i8] zeroinitializer }, align 32
@find_pattern.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.3, ptr @.str.28, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pattern matches!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nf_conntrack_ftp: Pattern matches!\0A\00", [60 x i8] zeroinitializer }, align 32
@find_pattern.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.3, ptr @.str.30, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Skipped up to 0x%hhx delimiter!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nf_conntrack_ftp: Skipped up to 0x%hhx delimiter!\0A\00", [45 x i8] zeroinitializer }, align 32
@find_pattern.__UNIQUE_ID_ddebug716 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.25, ptr @.str.3, ptr @.str.32, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Match succeeded!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nf_conntrack_ftp: Match succeeded!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PORT\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EPRT\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"227 \00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"229 \00", [27 x i8] zeroinitializer }, align 32
@try_number.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"try_number\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Char %u (got %u nums) `%u' unexpected\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nf_conntrack_ftp: Char %u (got %u nums) `%u' unexpected\0A\00", [39 x i8] zeroinitializer }, align 32
@try_number.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.38, ptr @.str.3, ptr @.str.41, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to fill %u numbers separated by %c\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"nf_conntrack_ftp: Failed to fill %u numbers separated by %c\0A\00", [35 x i8] zeroinitializer }, align 32
@try_eprt.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"try_eprt\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EPRT: too short\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_conntrack_ftp: EPRT: too short\0A\00", [61 x i8] zeroinitializer }, align 32
@try_eprt.__UNIQUE_ID_ddebug709 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.3, ptr @.str.46, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"try_eprt: invalid delimiter.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nf_conntrack_ftp: try_eprt: invalid delimiter.\0A\00", [48 x i8] zeroinitializer }, align 32
@try_eprt.__UNIQUE_ID_ddebug710 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.3, ptr @.str.48, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EPRT: invalid protocol number.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nf_conntrack_ftp: EPRT: invalid protocol number.\0A\00", [46 x i8] zeroinitializer }, align 32
@try_eprt.__UNIQUE_ID_ddebug711 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.3, ptr @.str.50, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EPRT: Got %c%c%c\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nf_conntrack_ftp: EPRT: Got %c%c%c\0A\00", [60 x i8] zeroinitializer }, align 32
@try_eprt.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.3, ptr @.str.52, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EPRT: Got IP address!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nf_conntrack_ftp: EPRT: Got IP address!\0A\00", [55 x i8] zeroinitializer }, align 32
@get_port.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"get_port\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_port: return %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nf_conntrack_ftp: get_port: return %d\0A\00", [57 x i8] zeroinitializer }, align 32
@get_port.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.54, ptr @.str.3, ptr @.str.57, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get_port: invalid char.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nf_conntrack_ftp: get_port: invalid char.\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 47, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"nf_nat_ftp_hook\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 50, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"ports_c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 44, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"ftp_buffer\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 38, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 43, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 594, i32 7 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"ftp_exp_policy\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 566, i32 48 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 605, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 397, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 408, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"nf_ftp_lock\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 433, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 75, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 465, i32 29 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 474, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 480, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 499, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 503, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 525, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 532, i32 30 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 40, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 302, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 314, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 325, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 332, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 78, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 86, i32 15 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 96, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 102, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 143, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 148, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 234, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 239, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 245, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 249, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 267, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 211, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private constant [36 x i8] c"../net/netfilter/nf_conntrack_ftp.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 217, i32 4 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias698, ptr @__UNIQUE_ID_alias699, ptr @__UNIQUE_ID_author696, ptr @__UNIQUE_ID_description697, ptr @__UNIQUE_ID_file694, ptr @__UNIQUE_ID_license695, ptr @__UNIQUE_ID_loosetype701, ptr @__UNIQUE_ID_portstype700, ptr @__exitcall_nf_conntrack_ftp_fini, ptr @__initcall__kmod_nf_conntrack_ftp__726_613_nf_conntrack_ftp_init6, ptr @__ksymtab_nf_nat_ftp_hook, ptr @__param_loose, ptr @__param_ports, ptr @nf_conntrack_ftp_fini, ptr @nf_conntrack_ftp_init._entry, ptr @nf_conntrack_ftp_init._entry_ptr, ptr @loose, ptr @nf_nat_ftp_hook, ptr @ports_c, ptr @ftp_buffer, ptr @ports, ptr @.str, ptr @ftp_exp_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nf_ftp_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @search, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loose to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_nat_ftp_hook to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftp_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftp_exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_ftp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ftp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @search to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_ftp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @ports_c, align 4
  %mul = shl i32 %0, 1
  tail call void @nf_conntrack_helpers_unregister(ptr noundef nonnull @ftp, i32 noundef %mul) #10
  %1 = load ptr, ptr @ftp_buffer, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helpers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_ftp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #13
  store ptr %call1.i.i, ptr @ftp_buffer, align 4
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @ports_c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr @ports_c, align 4
  store i16 21, ptr @ports, align 2
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then1, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc12, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.034, 1
  %arrayidx4 = getelementptr [16 x %struct.nf_conntrack_helper], ptr @ftp, i32 0, i32 %mul
  %arrayidx5 = getelementptr [8 x i16], ptr @ports, i32 0, i32 %i.034
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %2 to i32
  tail call void @nf_ct_helper_init(ptr noundef %arrayidx4, i16 noundef zeroext 2, i16 noundef zeroext 6, ptr noundef nonnull @.str, i16 noundef zeroext 21, i16 noundef zeroext %2, i32 noundef %conv, ptr noundef nonnull @ftp_exp_policy, i32 noundef 0, ptr noundef nonnull @help, ptr noundef nonnull @nf_ct_ftp_from_nlattr, ptr noundef null) #10
  %add = or i32 %mul, 1
  %arrayidx8 = getelementptr [16 x %struct.nf_conntrack_helper], ptr @ftp, i32 0, i32 %add
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx5, align 2
  %conv11 = zext i16 %4 to i32
  tail call void @nf_ct_helper_init(ptr noundef %arrayidx8, i16 noundef zeroext 10, i16 noundef zeroext 6, ptr noundef nonnull @.str, i16 noundef zeroext 21, i16 noundef zeroext %4, i32 noundef %conv11, ptr noundef nonnull @ftp_exp_policy, i32 noundef 0, ptr noundef nonnull @help, ptr noundef nonnull @nf_ct_ftp_from_nlattr, ptr noundef null) #10
  %inc12 = add nuw i32 %i.034, 1
  %5 = load i32, ptr @ports_c, align 4
  %cmp3 = icmp ult i32 %inc12, %5
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = shl i32 %5, 1
  %call14 = tail call i32 @nf_conntrack_helpers_register(ptr noundef nonnull @ftp, i32 noundef %phi.bo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end20, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  %6 = load ptr, ptr @ftp_buffer, align 4
  tail call void @kfree(ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %do.end20 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #3 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %matchlen = alloca i32, align 4
  %matchoff = alloca i32, align 4
  %cmd = alloca %struct.nf_conntrack_man, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  %0 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlen) #10
  %1 = ptrtoint ptr %matchlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %matchlen, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchoff) #10
  %2 = ptrtoint ptr %matchoff to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %matchoff, align 4, !annotation !163
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %3 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.i.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #10
  %7 = call ptr @memset(ptr %cmd, i32 0, i32 20)
  %8 = zext i32 %ctinfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ctinfo, label %do.body [
    i32 0, label %nfct_help_data.exit.if.end7_crit_edge
    i32 3, label %nfct_help_data.exit.if.end7_crit_edge452
  ]

nfct_help_data.exit.if.end7_crit_edge452:         ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

nfct_help_data.exit.if.end7_crit_edge:            ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.body:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug717, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then6)) #10
          to label %cleanup [label %if.then6], !srcloc !164

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug717, ptr noundef nonnull @.str.7, i32 noundef %ctinfo) #10
  br label %cleanup

if.end7:                                          ; preds = %nfct_help_data.exit.if.end7_crit_edge, %nfct_help_data.exit.if.end7_crit_edge452
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %13 = add i32 %12, %protoff
  %sub.i4.i = sub i32 %10, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i396, label %skb_header_pointer.exit, !prof !165

if.end.i.i396:                                    ; preds = %if.end7
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i396.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i396.cleanup_crit_edge:                  ; preds = %if.end.i.i396
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i396
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protoff, ptr noundef nonnull %_tcph, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end11_crit_edge

lor.lhs.false.i.i.if.end11_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end7
  %data.i394 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i394 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i394, align 4
  %add.ptr.i.i395 = getelementptr i8, ptr %15, i32 %protoff
  %cmp9 = icmp eq ptr %add.ptr.i.i395, null
  br i1 %cmp9, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end11_crit_edge

skb_header_pointer.exit.if.end11_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %skb_header_pointer.exit.if.end11_crit_edge, %lor.lhs.false.i.i.if.end11_crit_edge
  %retval.0.i.i397429 = phi ptr [ %add.ptr.i.i395, %skb_header_pointer.exit.if.end11_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end11_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i397429, i32 0, i32 4
  %16 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %doff, align 4
  %17 = lshr i16 %bf.load, 10
  %18 = and i16 %17, 60
  %mul = zext i16 %18 to i32
  %add = add i32 %mul, %protoff
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp12.not = icmp ugt i32 %20, %add
  br i1 %cmp12.not, label %if.end32, label %do.body15

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug718, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then27)) #10
          to label %cleanup [label %if.then27], !srcloc !164

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug718, ptr noundef nonnull @.str.9, i32 noundef %add, i32 noundef %22) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end11
  %sub = sub i32 %20, %add
  call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_ftp_lock) #10
  %23 = load ptr, ptr @ftp_buffer, align 4
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %28 = add i32 %add, %27
  %sub.i4.i400 = sub i32 %25, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i400, i32 %sub)
  %cmp.not.i.i401 = icmp slt i32 %sub.i4.i400, %sub
  br i1 %cmp.not.i.i401, label %if.end.i.i406, label %if.then.i.i404, !prof !165

if.then.i.i404:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %data.i402 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i402 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i402, align 4
  %add.ptr.i.i403 = getelementptr i8, ptr %30, i32 %add
  br label %skb_header_pointer.exit412

if.end.i.i406:                                    ; preds = %if.end32
  %tobool2.not.i.i405 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i405, label %if.end.i.i406.if.then36_crit_edge, label %lor.lhs.false.i.i410

if.end.i.i406.if.then36_crit_edge:                ; preds = %if.end.i.i406
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

lor.lhs.false.i.i410:                             ; preds = %if.end.i.i406
  %call.i.i407 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef %23, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i407)
  %cmp3.i.i408 = icmp slt i32 %call.i.i407, 0
  br i1 %cmp3.i.i408, label %lor.lhs.false.i.i410.if.then36_crit_edge, label %lor.lhs.false.i.i410.skb_header_pointer.exit412_crit_edge

lor.lhs.false.i.i410.skb_header_pointer.exit412_crit_edge: ; preds = %lor.lhs.false.i.i410
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_pointer.exit412

lor.lhs.false.i.i410.if.then36_crit_edge:         ; preds = %lor.lhs.false.i.i410
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

skb_header_pointer.exit412:                       ; preds = %lor.lhs.false.i.i410.skb_header_pointer.exit412_crit_edge, %if.then.i.i404
  %retval.0.i.i411 = phi ptr [ %add.ptr.i.i403, %if.then.i.i404 ], [ %23, %lor.lhs.false.i.i410.skb_header_pointer.exit412_crit_edge ]
  %tobool35.not = icmp eq ptr %retval.0.i.i411, null
  br i1 %tobool35.not, label %skb_header_pointer.exit412.if.then36_crit_edge, label %if.end37

skb_header_pointer.exit412.if.then36_crit_edge:   ; preds = %skb_header_pointer.exit412
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %skb_header_pointer.exit412.if.then36_crit_edge, %lor.lhs.false.i.i410.if.then36_crit_edge, %if.end.i.i406.if.then36_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_ftp_lock) #10
  br label %cleanup

if.end37:                                         ; preds = %skb_header_pointer.exit412
  %sub38 = add i32 %sub, -1
  %arrayidx = getelementptr i8, ptr %retval.0.i.i411, i32 %sub38
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %32)
  %cmp40 = icmp eq i8 %32, 10
  %seq42 = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i397429, i32 0, i32 2
  %33 = ptrtoint ptr %seq42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq42, align 4
  %add43 = add i32 %34, %sub
  %arrayidx.i = getelementptr %struct.nf_ct_ftp_master, ptr %data.i, i32 0, i32 1, i32 %cond
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp10.not.i = icmp eq i16 %36, 0
  br i1 %cmp10.not.i, label %if.end37.if.then47_crit_edge, label %if.end37.for.body.i_crit_edge

if.end37.for.body.i_crit_edge:                    ; preds = %if.end37
  br label %for.body.i

if.end37.if.then47_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.cond.i.if.then47_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.if.then47_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end37.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end37.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond, i32 %i.011.i
  %37 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %34)
  %cmp4.i = icmp eq i32 %38, %34
  br i1 %cmp4.i, label %for.body.i.skip_nl_seq_crit_edge, label %for.cond.i

for.body.i.skip_nl_seq_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_nl_seq

if.then47:                                        ; preds = %for.cond.i.if.then47_crit_edge, %if.end37.if.then47_crit_edge
  %arrayidx48 = getelementptr %struct.nf_ct_ftp_master, ptr %data.i, i32 0, i32 2, i32 %cond
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx48, align 2
  %41 = and i16 %40, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool50.not = icmp eq i16 %41, 0
  br i1 %tobool50.not, label %do.body63, label %if.then57, !prof !166

if.then57:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %xor = xor i16 %40, 1
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %xor, ptr %arrayidx48, align 2
  br label %skip_nl_seq

do.body63:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug719, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then75)) #10
          to label %out_update_nl [label %if.then75], !srcloc !164

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp78.not = icmp eq i16 %44, 0
  %cond80 = select i1 %cmp78.not, ptr @.str.13, ptr @.str.12
  %arrayidx81 = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond
  %45 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx81, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp86 = icmp ugt i16 %44, 1
  %cond88 = select i1 %cmp86, ptr @.str.12, ptr @.str.13
  %arrayidx91 = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond, i32 1
  %47 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx91, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug719, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond80, i32 noundef %46, ptr noundef nonnull %cond88, i32 noundef %48) #10
  br label %out_update_nl

skip_nl_seq:                                      ; preds = %if.then57, %for.body.i.skip_nl_seq_crit_edge
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %49 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %l3num.i, align 2
  %l3num = getelementptr inbounds %struct.nf_conntrack_man, ptr %cmd, i32 0, i32 2
  %51 = ptrtoint ptr %l3num to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %l3num, align 2
  %tuple = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %cond, i32 1
  %52 = call ptr @memcpy(ptr %cmd, ptr %tuple, i32 16)
  %arrayidx102 = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 0
  %53 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx102, align 4
  %plen = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 0, i32 1
  %55 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %plen, align 4
  %skip = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 0, i32 2
  %57 = ptrtoint ptr %skip to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %skip, align 4
  %term = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 0, i32 3
  %59 = ptrtoint ptr %term to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %term, align 1
  %getnum = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 0, i32 5
  %61 = ptrtoint ptr %getnum to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %getnum, align 4
  %call111 = call fastcc i32 @find_pattern(ptr noundef nonnull %retval.0.i.i411, i32 noundef %sub, ptr noundef %54, i32 noundef %56, i8 noundef zeroext %58, i8 noundef zeroext %60, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen, ptr noundef nonnull %cmd, ptr noundef %62)
  %63 = zext i32 %call111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call111, label %skip_nl_seq.do.body126_crit_edge [
    i32 0, label %for.inc
    i32 -1, label %skip_nl_seq.if.then117_crit_edge
  ]

skip_nl_seq.if.then117_crit_edge:                 ; preds = %skip_nl_seq
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117

skip_nl_seq.do.body126_crit_edge:                 ; preds = %skip_nl_seq
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body126

for.inc:                                          ; preds = %skip_nl_seq
  %arrayidx102.1 = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 1
  %64 = ptrtoint ptr %arrayidx102.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx102.1, align 4
  %plen.1 = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 1, i32 1
  %66 = ptrtoint ptr %plen.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %plen.1, align 4
  %skip.1 = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 1, i32 2
  %68 = ptrtoint ptr %skip.1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %skip.1, align 4
  %term.1 = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 1, i32 3
  %70 = ptrtoint ptr %term.1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %term.1, align 1
  %getnum.1 = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 1, i32 5
  %72 = ptrtoint ptr %getnum.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %getnum.1, align 4
  %call111.1 = call fastcc i32 @find_pattern(ptr noundef nonnull %retval.0.i.i411, i32 noundef %sub, ptr noundef %65, i32 noundef %67, i8 noundef zeroext %69, i8 noundef zeroext %71, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen, ptr noundef nonnull %cmd, ptr noundef %73)
  %74 = zext i32 %call111.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call111.1, label %for.inc.do.body126_crit_edge [
    i32 0, label %for.inc.out_update_nl_crit_edge
    i32 -1, label %for.inc.if.then117_crit_edge
  ]

for.inc.if.then117_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117

for.inc.out_update_nl_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_update_nl

for.inc.do.body126_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body126

if.then117:                                       ; preds = %for.inc.if.then117_crit_edge, %skip_nl_seq.if.then117_crit_edge
  %i.0449.lcssa450 = phi i32 [ 0, %skip_nl_seq.if.then117_crit_edge ], [ 1, %for.inc.if.then117_crit_edge ]
  %arrayidx119 = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 %i.0449.lcssa450
  %75 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx119, align 4
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.14, ptr noundef %76) #10
  br label %out

do.body126:                                       ; preds = %for.inc.do.body126_crit_edge, %skip_nl_seq.do.body126_crit_edge
  %i.0449.lcssa = phi i32 [ 0, %skip_nl_seq.do.body126_crit_edge ], [ 1, %for.inc.do.body126_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then138)) #10
          to label %do.end143 [label %if.then138], !srcloc !164

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %matchlen, align 4
  %79 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %matchoff, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i411, i32 %80
  %81 = ptrtoint ptr %seq42 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %seq42, align 4
  %add140 = add i32 %82, %80
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug720, ptr noundef nonnull @.str.16, i32 noundef %78, ptr noundef %add.ptr, i32 noundef %78, i32 noundef %add140) #10
  br label %do.end143

do.end143:                                        ; preds = %if.then138, %do.body126
  %call144 = call ptr @nf_ct_expect_alloc(ptr noundef %ct) #10
  %cmp145 = icmp eq ptr %call144, null
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.17) #10
  br label %out

if.end148:                                        ; preds = %do.end143
  %lnot151 = xor i1 %cmp, true
  %lnot.ext152 = zext i1 %lnot151 to i32
  %tuple154 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext152, i32 1
  %dst = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext152, i32 1, i32 1
  %83 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %l3num, align 2
  %85 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %86)
  %cmp160 = icmp eq i16 %84, %86
  br i1 %cmp160, label %land.lhs.true162, label %if.end148.if.end229_crit_edge

if.end148.if.end229_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229

land.lhs.true162:                                 ; preds = %if.end148
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cmd, ptr noundef dereferenceable(16) %tuple, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool170.not = icmp eq i32 %bcmp, 0
  br i1 %tobool170.not, label %land.lhs.true162.if.end229_crit_edge, label %if.then171

land.lhs.true162.if.end229_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229

if.then171:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %84)
  %cmp174 = icmp eq i16 %84, 2
  br i1 %cmp174, label %do.body177, label %do.body200

do.body177:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug721, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then189)) #10
          to label %if.end224 [label %if.then189], !srcloc !164

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug721, ptr noundef nonnull @.str.19, ptr noundef nonnull %cmd, ptr noundef %tuple) #10
  br label %if.end224

do.body200:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug722, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then212)) #10
          to label %if.end224 [label %if.then212], !srcloc !164

if.then212:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug722, ptr noundef nonnull @.str.21, ptr noundef nonnull %cmd, ptr noundef %tuple) #10
  br label %if.end224

if.end224:                                        ; preds = %if.then212, %do.body200, %if.then189, %do.body177
  %87 = load i8, ptr @loose, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool225.not = icmp eq i8 %87, 0
  br i1 %tobool225.not, label %if.end224.out_put_expect_crit_edge, label %if.end224.if.end229_crit_edge

if.end224.if.end229_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end229

if.end224.out_put_expect_crit_edge:               ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put_expect

if.end229:                                        ; preds = %if.end224.if.end229_crit_edge, %land.lhs.true162.if.end229_crit_edge, %if.end148.if.end229_crit_edge
  %daddr.0 = phi ptr [ %dst, %land.lhs.true162.if.end229_crit_edge ], [ %dst, %if.end148.if.end229_crit_edge ], [ %cmd, %if.end224.if.end229_crit_edge ]
  %88 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %l3num, align 2
  %conv231 = trunc i16 %89 to i8
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %cmd, i32 0, i32 1
  call void @nf_ct_expect_init(ptr noundef nonnull %call144, i32 noundef 0, i8 noundef zeroext %conv231, ptr noundef %tuple154, ptr noundef %daddr.0, i8 noundef zeroext 6, ptr noundef null, ptr noundef %u) #10
  %90 = load volatile ptr, ptr @nf_nat_ftp_hook, align 4
  %call245 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %land.lhs.true247, label %if.end229.do.end255_crit_edge

if.end229.do.end255_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end255

land.lhs.true247:                                 ; preds = %if.end229
  %call248 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %land.lhs.true247.do.end255_crit_edge, label %land.lhs.true250

land.lhs.true247.do.end255_crit_edge:             ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end255

land.lhs.true250:                                 ; preds = %land.lhs.true247
  %.b378 = load i1, ptr @help.__warned, align 1
  br i1 %.b378, label %land.lhs.true250.do.end255_crit_edge, label %if.then252

land.lhs.true250.do.end255_crit_edge:             ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end255

if.then252:                                       ; preds = %land.lhs.true250
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @help.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 525, ptr noundef nonnull @.str.22) #10
  br label %do.end255

do.end255:                                        ; preds = %if.then252, %land.lhs.true250.do.end255_crit_edge, %land.lhs.true247.do.end255_crit_edge, %if.end229.do.end255_crit_edge
  %tobool257.not = icmp eq ptr %90, null
  br i1 %tobool257.not, label %do.end255.if.else265_crit_edge, label %land.lhs.true258

do.end255.if.else265_crit_edge:                   ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else265

land.lhs.true258:                                 ; preds = %do.end255
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %91 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %status, align 8
  %and259 = and i32 %92, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %land.lhs.true258.if.else265_crit_edge, label %if.then261

land.lhs.true258.if.else265_crit_edge:            ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else265

if.then261:                                       ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #12
  %ftptype = getelementptr [2 x [2 x %struct.ftp_search]], ptr @search, i32 0, i32 %cond, i32 %i.0449.lcssa, i32 4
  %93 = ptrtoint ptr %ftptype to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ftptype, align 4
  %95 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %matchoff, align 4
  %97 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %matchlen, align 4
  %call264 = call i32 %90(ptr noundef %skb, i32 noundef %ctinfo, i32 noundef %94, i32 noundef %protoff, i32 noundef %96, i32 noundef %98, ptr noundef nonnull %call144) #10
  br label %out_put_expect

if.else265:                                       ; preds = %land.lhs.true258.if.else265_crit_edge, %do.end255.if.else265_crit_edge
  %call.i = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call144, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp267.not = icmp eq i32 %call.i, 0
  br i1 %cmp267.not, label %if.else265.out_put_expect_crit_edge, label %if.then269

if.else265.out_put_expect_crit_edge:              ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put_expect

if.then269:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.23) #10
  br label %out_put_expect

out_put_expect:                                   ; preds = %if.then269, %if.else265.out_put_expect_crit_edge, %if.then261, %if.end224.out_put_expect_crit_edge
  %ret.0 = phi i32 [ %call264, %if.then261 ], [ 0, %if.then269 ], [ 1, %if.end224.out_put_expect_crit_edge ], [ 1, %if.else265.out_put_expect_crit_edge ]
  call void @nf_ct_expect_put(ptr noundef nonnull %call144) #10
  br label %out_update_nl

out_update_nl:                                    ; preds = %out_put_expect, %for.inc.out_update_nl_crit_edge, %if.then75, %do.body63
  %ret.1 = phi i32 [ %ret.0, %out_put_expect ], [ 1, %if.then75 ], [ 1, %do.body63 ], [ 1, %for.inc.out_update_nl_crit_edge ]
  br i1 %cmp40, label %if.then274, label %out_update_nl.out_crit_edge

out_update_nl.out_crit_edge:                      ; preds = %out_update_nl
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then274:                                       ; preds = %out_update_nl
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx.i, align 2
  %conv.i416 = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp7.not.i = icmp eq i16 %100, 0
  br i1 %cmp7.not.i, label %if.then274.if.then11.i_crit_edge, label %if.then274.for.body.i422_crit_edge

if.then274.for.body.i422_crit_edge:               ; preds = %if.then274
  br label %for.body.i422

if.then274.if.then11.i_crit_edge:                 ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

for.cond.i419:                                    ; preds = %for.body.i422
  %inc.i417 = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i418 = icmp eq i32 %inc.i417, %conv.i416
  br i1 %exitcond.not.i418, label %for.end.i, label %for.cond.i419.for.body.i422_crit_edge

for.cond.i419.for.body.i422_crit_edge:            ; preds = %for.cond.i419
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i422

for.body.i422:                                    ; preds = %for.cond.i419.for.body.i422_crit_edge, %if.then274.for.body.i422_crit_edge
  %i.08.i = phi i32 [ %inc.i417, %for.cond.i419.for.body.i422_crit_edge ], [ 0, %if.then274.for.body.i422_crit_edge ]
  %arrayidx3.i420 = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond, i32 %i.08.i
  %101 = ptrtoint ptr %arrayidx3.i420 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx3.i420, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %add43)
  %cmp4.i421 = icmp eq i32 %102, %add43
  br i1 %cmp4.i421, label %for.body.i422.out_crit_edge, label %for.cond.i419

for.body.i422.out_crit_edge:                      ; preds = %for.body.i422
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end.i:                                        ; preds = %for.cond.i419
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %100)
  %cmp9.i = icmp ult i16 %100, 2
  br i1 %cmp9.i, label %for.end.i.if.then11.i_crit_edge, label %if.else.i

for.end.i.if.then11.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i

if.then11.i:                                      ; preds = %for.end.i.if.then11.i_crit_edge, %if.then274.if.then11.i_crit_edge
  %inc16.i = add nuw nsw i16 %100, 1
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %inc16.i, ptr %arrayidx.i, align 2
  %arrayidx17.i = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond, i32 %conv.i416
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %for.end.i
  %arrayidx19.i = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond
  %104 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx19.i, align 4
  %arrayidx23.i = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond, i32 1
  %106 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx23.i, align 4
  %108 = xor i32 %105, -1
  %109 = add i32 %107, %108
  %sub.i.lobit.not.i = lshr i32 %109, 31
  %arrayidx29.i = getelementptr [2 x [2 x i32]], ptr %data.i, i32 0, i32 %cond, i32 %sub.i.lobit.not.i
  %110 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx29.i, align 4
  %sub.i1.i = sub i32 %111, %add43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1.i)
  %cmp.i2.i = icmp slt i32 %sub.i1.i, 0
  br i1 %cmp.i2.i, label %if.else.i.cleanup.sink.split.i_crit_edge, label %if.else.i.out_crit_edge

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i.cleanup.sink.split.i_crit_edge, %if.then11.i
  %arrayidx17.sink.i = phi ptr [ %arrayidx17.i, %if.then11.i ], [ %arrayidx29.i, %if.else.i.cleanup.sink.split.i_crit_edge ]
  %112 = ptrtoint ptr %arrayidx17.sink.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add43, ptr %arrayidx17.sink.i, align 4
  br label %out

out:                                              ; preds = %cleanup.sink.split.i, %if.else.i.out_crit_edge, %for.body.i422.out_crit_edge, %out_update_nl.out_crit_edge, %if.then147, %if.then117
  %ret.2 = phi i32 [ 0, %if.then117 ], [ %ret.1, %out_update_nl.out_crit_edge ], [ 0, %if.then147 ], [ %ret.1, %if.else.i.out_crit_edge ], [ %ret.1, %cleanup.sink.split.i ], [ %ret.1, %for.body.i422.out_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_ftp_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then36, %if.then27, %do.body15, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i396.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %ret.2, %out ], [ 1, %if.then36 ], [ 1, %if.then6 ], [ 1, %skb_header_pointer.exit.cleanup_crit_edge ], [ 1, %if.then27 ], [ 1, %do.body ], [ 1, %do.body15 ], [ 1, %if.end.i.i396.cleanup_crit_edge ], [ 1, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nf_ct_ftp_from_nlattr(ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %ct) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 20
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = or i16 %5, 1
  store i16 %6, ptr %flags, align 4
  %arrayidx3 = getelementptr %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 22
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx3, align 2
  %9 = or i16 %8, 1
  store i16 %9, ptr %arrayidx3, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helpers_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_pattern(ptr noundef %data, i32 noundef %dlen, ptr noundef %pattern, i32 noundef %plen, i8 noundef zeroext %skip, i8 noundef zeroext %term, ptr noundef %numoff, ptr nocapture noundef writeonly %numlen, ptr noundef %cmd, ptr nocapture noundef readonly %getnum) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_pattern.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_pattern, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_pattern.__UNIQUE_ID_ddebug713, ptr noundef nonnull @.str.27, ptr noundef %pattern, i32 noundef %dlen) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %dlen, i32 %plen)
  %cmp.not = icmp ugt i32 %dlen, %plen
  br i1 %cmp.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @strncasecmp(ptr noundef %data, ptr noundef %pattern, i32 noundef %dlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  %. = sext i1 %cmp5 to i32
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call i32 @strncasecmp(ptr noundef %data, ptr noundef %pattern, i32 noundef %plen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %do.body12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_pattern.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_pattern, %if.then24)) #10
          to label %do.end27 [label %if.then24], !srcloc !164

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_pattern.__UNIQUE_ID_ddebug714, ptr noundef nonnull @.str.29) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %skip)
  %tobool28.not = icmp eq i8 %skip, 0
  br i1 %tobool28.not, label %do.end27.do.body39_crit_edge, label %for.cond.preheader

do.end27.do.body39_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39

for.cond.preheader:                               ; preds = %do.end27
  %arrayidx113 = getelementptr i8, ptr %data, i32 %plen
  %0 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx113, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %skip)
  %cmp31.not114 = icmp eq i8 %1, %skip
  br i1 %cmp31.not114, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add i32 %dlen, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0115 = phi i32 [ %plen, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0115, i32 %sub)
  %cmp33 = icmp eq i32 %i.0115, %sub
  br i1 %cmp33, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0115, 1
  %arrayidx = getelementptr i8, ptr %data, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %cmp31.not = icmp eq i8 %3, %skip
  br i1 %cmp31.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %plen, %for.cond.preheader.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %inc37 = add i32 %i.0.lcssa, 1
  br label %do.body39

do.body39:                                        ; preds = %for.end, %do.end27.do.body39_crit_edge
  %i.1 = phi i32 [ %inc37, %for.end ], [ %plen, %do.end27.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_pattern.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_pattern, %if.then51)) #10
          to label %do.end55 [label %if.then51], !srcloc !164

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %conv52 = zext i8 %skip to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_pattern.__UNIQUE_ID_ddebug715, ptr noundef nonnull @.str.31, i32 noundef %conv52) #10
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body39
  %4 = ptrtoint ptr %numoff to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.1, ptr %numoff, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %i.1
  %sub56 = sub i32 %dlen, %i.1
  %call57 = tail call i32 %getnum(ptr noundef %add.ptr, i32 noundef %sub56, ptr noundef %cmd, i8 noundef zeroext %term, ptr noundef %numoff) #10
  %5 = ptrtoint ptr %numlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call57, ptr %numlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.end55.cleanup_crit_edge, label %do.body61

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body61:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @find_pattern.__UNIQUE_ID_ddebug716, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@find_pattern, %if.then73)) #10
          to label %cleanup [label %if.then73], !srcloc !164

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @find_pattern.__UNIQUE_ID_ddebug716, ptr noundef nonnull @.str.33) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %do.body61, %do.end55.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %., %if.then3 ], [ 0, %if.end7.cleanup_crit_edge ], [ -1, %do.end55.cleanup_crit_edge ], [ 1, %if.then73 ], [ 1, %do.body61 ], [ -1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @try_rfc959(ptr nocapture noundef readonly %data, i32 noundef %dlen, ptr nocapture noundef writeonly %cmd, i8 noundef zeroext %term, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  %array = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %array) #10
  %0 = getelementptr inbounds [6 x i32], ptr %array, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i32], ptr %array, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i32], ptr %array, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i32], ptr %array, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i32], ptr %array, i32 0, i32 5
  %5 = call ptr @memset(ptr %array, i32 0, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen)
  %cmp84.i.not = icmp eq i32 %dlen, 0
  br i1 %cmp84.i.not, label %entry.do.body34.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body34.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %data.addr.090.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %data, %entry.for.body.i_crit_edge ]
  %i.089.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %len.087.i = phi i32 [ %inc33.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %data.addr.090.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.addr.090.i, align 1
  %8 = add i8 %7, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %9 = icmp ult i8 %8, 10
  br i1 %9, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr i32, ptr %array, i32 %i.089.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %mul7.i = mul i32 %11, 10
  %add.i = add nsw i32 %conv.i, -48
  %sub.i = add i32 %add.i, %mul7.i
  store i32 %sub.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %7)
  %cmp12.i = icmp eq i8 %7, 44
  br i1 %cmp12.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw nsw i32 %i.089.i, 1
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %term)
  %cmp18.i = icmp eq i8 %7, %term
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %term)
  %tobool.not.i = icmp eq i8 %term, 0
  %or.cond74.i = or i1 %tobool.not.i, %cmp18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.089.i)
  %cmp22.i = icmp eq i32 %i.089.i, 5
  %or.cond75.i = select i1 %or.cond74.i, i1 %cmp22.i, i1 false
  br i1 %or.cond75.i, label %if.else15.i.try_number.exit_crit_edge, label %do.body.i

if.else15.i.try_number.exit_crit_edge:            ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_number.exit

do.body.i:                                        ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_number.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_rfc959, %if.then28.i)) #10
          to label %try_number.exit [label %if.then28.i], !srcloc !164

if.then28.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %data.addr.090.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.addr.090.i, align 1
  %conv29.i = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_number.__UNIQUE_ID_ddebug704, ptr noundef nonnull @.str.40, i32 noundef %len.087.i, i32 noundef %i.089.i, i32 noundef %conv29.i) #10
  br label %cleanup

for.inc.i:                                        ; preds = %if.then14.i, %if.then.i
  %i.1.i = phi i32 [ %i.089.i, %if.then.i ], [ %inc.i, %if.then14.i ]
  %inc33.i = add nuw i32 %len.087.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.090.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc33.i, i32 %dlen)
  %cmp.i = icmp ult i32 %inc33.i, %dlen
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.1.i)
  %cmp1.i = icmp ult i32 %i.1.i, 6
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body34.i_crit_edge

for.inc.i.do.body34.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.body34.i:                                      ; preds = %for.inc.i.do.body34.i_crit_edge, %entry.do.body34.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_number.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_rfc959, %if.then46.i)) #10
          to label %try_number.exit [label %if.then46.i], !srcloc !164

if.then46.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_number.__UNIQUE_ID_ddebug705, ptr noundef nonnull @.str.42, i32 noundef 6, i32 noundef 44) #10
  br label %cleanup

try_number.exit:                                  ; preds = %do.body34.i, %do.body.i, %if.else15.i.try_number.exit_crit_edge
  %retval.0.i = phi i32 [ %len.087.i, %if.else15.i.try_number.exit_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %try_number.exit.cleanup_crit_edge, label %if.end

try_number.exit.cleanup_crit_edge:                ; preds = %try_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %try_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %array, align 4
  %shl = shl i32 %15, 24
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  %shl2 = shl i32 %17, 16
  %or = or i32 %shl2, %shl
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %shl4 = shl i32 %19, 8
  %or5 = or i32 %or, %shl4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %or7 = or i32 %or5, %21
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or7, ptr %cmd, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %shl9 = shl i32 %24, 8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  %or11 = or i32 %shl9, %26
  %conv = trunc i32 %or11 to i16
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %cmd, i32 0, i32 1
  %27 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv, ptr %u, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %try_number.exit.cleanup_crit_edge, %if.then46.i, %if.then28.i
  %retval.0 = phi i32 [ %retval.0.i, %if.end ], [ 0, %try_number.exit.cleanup_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.then46.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %array) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @try_eprt(ptr noundef %data, i32 noundef %dlen, ptr noundef %cmd, i8 noundef zeroext %term, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  %end.i = alloca ptr, align 4
  %array = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dlen)
  %cmp = icmp ult i32 %dlen, 4
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_eprt.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then3)) #10
          to label %cleanup [label %if.then3], !srcloc !164

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_eprt.__UNIQUE_ID_ddebug708, ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %conv = zext i8 %1 to i32
  %2 = add nsw i32 %conv, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %3 = icmp ult i32 %2, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %1)
  %cmp8 = icmp ult i8 %1, 33
  %or.cond = select i1 %3, i1 true, i1 %cmp8
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %1)
  %cmp12 = icmp ugt i8 %1, 126
  %or.cond165 = select i1 %or.cond, i1 true, i1 %cmp12
  br i1 %or.cond165, label %if.end4.do.body21_crit_edge, label %lor.lhs.false14

if.end4.do.body21_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

lor.lhs.false14:                                  ; preds = %if.end4
  %arrayidx15 = getelementptr i8, ptr %data, i32 2
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %1)
  %cmp18.not = icmp eq i8 %5, %1
  br i1 %cmp18.not, label %if.end37, label %lor.lhs.false14.do.body21_crit_edge

lor.lhs.false14.do.body21_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.body21:                                        ; preds = %lor.lhs.false14.do.body21_crit_edge, %if.end4.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_eprt.__UNIQUE_ID_ddebug709, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then33)) #10
          to label %cleanup [label %if.then33], !srcloc !164

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_eprt.__UNIQUE_ID_ddebug709, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false14
  %l3num = getelementptr inbounds %struct.nf_conntrack_man, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %l3num, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.61)
  switch i16 %7, label %if.end37.do.body73_crit_edge [
    i16 2, label %land.lhs.true
    i16 10, label %land.lhs.true50
  ]

if.end37.do.body73_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

land.lhs.true:                                    ; preds = %if.end37
  %arrayidx41 = getelementptr i8, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %10)
  %cmp43.not = icmp eq i8 %10, 49
  br i1 %cmp43.not, label %land.lhs.true.do.body73_crit_edge, label %land.lhs.true.do.body56_crit_edge

land.lhs.true.do.body56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

land.lhs.true.do.body73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

land.lhs.true50:                                  ; preds = %if.end37
  %arrayidx51 = getelementptr i8, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %12)
  %cmp53.not = icmp eq i8 %12, 50
  br i1 %cmp53.not, label %land.lhs.true50.do.body73_crit_edge, label %land.lhs.true50.do.body56_crit_edge

land.lhs.true50.do.body56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body56

land.lhs.true50.do.body73_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

do.body56:                                        ; preds = %land.lhs.true50.do.body56_crit_edge, %land.lhs.true.do.body56_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_eprt.__UNIQUE_ID_ddebug710, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then68)) #10
          to label %cleanup [label %if.then68], !srcloc !164

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_eprt.__UNIQUE_ID_ddebug710, ptr noundef nonnull @.str.49) #10
  br label %cleanup

do.body73:                                        ; preds = %land.lhs.true50.do.body73_crit_edge, %land.lhs.true.do.body73_crit_edge, %if.end37.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_eprt.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then85)) #10
          to label %do.end92 [label %if.then85], !srcloc !164

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx87 = getelementptr i8, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_eprt.__UNIQUE_ID_ddebug711, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv88, i32 noundef %conv) #10
  br label %do.end92

do.end92:                                         ; preds = %if.then85, %do.body73
  %arrayidx93 = getelementptr i8, ptr %data, i32 1
  %15 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %16)
  %cmp95 = icmp eq i8 %16, 49
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %do.end92
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %array) #10
  %17 = getelementptr inbounds [4 x i32], ptr %array, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i32], ptr %array, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i32], ptr %array, i32 0, i32 3
  %add.ptr = getelementptr i8, ptr %data, i32 3
  %sub = add i32 %dlen, -3
  %20 = call ptr @memset(ptr %array, i32 0, i32 16)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then97
  %data.addr.090.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr, %if.then97 ]
  %i.089.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then97 ]
  %len.087.i = phi i32 [ %inc33.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then97 ]
  %21 = ptrtoint ptr %data.addr.090.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.addr.090.i, align 1
  %23 = add i8 %22, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %23)
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %22 to i32
  %arrayidx.i = getelementptr i32, ptr %array, i32 %i.089.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %mul7.i = mul i32 %26, 10
  %add.i = add nsw i32 %conv.i, -48
  %sub.i = add i32 %add.i, %mul7.i
  store i32 %sub.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %22)
  %cmp12.i = icmp eq i8 %22, 46
  br i1 %cmp12.i, label %if.then14.i, label %if.else15.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw nsw i32 %i.089.i, 1
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %1)
  %cmp18.i = icmp eq i8 %22, %1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %or.cond74.i = or i1 %tobool.not.i, %cmp18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.089.i)
  %cmp22.i = icmp eq i32 %i.089.i, 3
  %or.cond75.i = select i1 %or.cond74.i, i1 %cmp22.i, i1 false
  br i1 %or.cond75.i, label %if.else15.i.try_number.exit_crit_edge, label %do.body.i

if.else15.i.try_number.exit_crit_edge:            ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %try_number.exit

do.body.i:                                        ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_number.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then28.i)) #10
          to label %try_number.exit [label %if.then28.i], !srcloc !164

if.then28.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %data.addr.090.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data.addr.090.i, align 1
  %conv29.i = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_number.__UNIQUE_ID_ddebug704, ptr noundef nonnull @.str.40, i32 noundef %len.087.i, i32 noundef %i.089.i, i32 noundef %conv29.i) #10
  br label %if.end110

for.inc.i:                                        ; preds = %if.then14.i, %if.then.i
  %i.1.i = phi i32 [ %i.089.i, %if.then.i ], [ %inc.i, %if.then14.i ]
  %inc33.i = add nuw i32 %len.087.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.090.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc33.i, i32 %sub)
  %cmp.i = icmp ult i32 %inc33.i, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1.i)
  %cmp1.i = icmp ult i32 %i.1.i, 4
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %do.body34.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.body34.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_number.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then46.i)) #10
          to label %try_number.exit [label %if.then46.i], !srcloc !164

if.then46.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_number.__UNIQUE_ID_ddebug705, ptr noundef nonnull @.str.42, i32 noundef 4, i32 noundef 46) #10
  br label %if.end110

try_number.exit:                                  ; preds = %do.body34.i, %do.body.i, %if.else15.i.try_number.exit_crit_edge
  %retval.0.i178 = phi i32 [ %len.087.i, %if.else15.i.try_number.exit_crit_edge ], [ 0, %do.body.i ], [ 0, %do.body34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i178)
  %cmp99.not = icmp eq i32 %retval.0.i178, 0
  br i1 %cmp99.not, label %try_number.exit.if.end110_crit_edge, label %if.then101

try_number.exit.if.end110_crit_edge:              ; preds = %try_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then101:                                       ; preds = %try_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %array, align 4
  %shl = shl i32 %30, 24
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %17, align 4
  %shl104 = shl i32 %32, 16
  %or = or i32 %shl104, %shl
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %18, align 4
  %shl106 = shl i32 %34, 8
  %or107 = or i32 %or, %shl106
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %19, align 4
  %or109 = or i32 %or107, %36
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or109, ptr %cmd, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then101, %try_number.exit.if.end110_crit_edge, %if.then46.i, %if.then28.i
  %retval.0.i178199 = phi i32 [ %retval.0.i178, %if.then101 ], [ 0, %try_number.exit.if.end110_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.then46.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %array) #10
  br label %if.end116

if.else:                                          ; preds = %do.end92
  %add.ptr111 = getelementptr i8, ptr %data, i32 3
  %sub112 = add i32 %dlen, -3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end.i) #10
  %38 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %end.i, align 4, !annotation !163
  %39 = tail call i32 @llvm.umin.i32(i32 %sub112, i32 65535) #10
  %call.i = call i32 @in6_pton(ptr noundef %add.ptr111, i32 noundef %39, ptr noundef %cmd, i32 noundef %conv, ptr noundef nonnull %end.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i180 = icmp sgt i32 %call.i, 0
  br i1 %cmp1.i180, label %if.then.i181, label %if.else.get_ipv6_addr.exit_crit_edge

if.else.get_ipv6_addr.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_ipv6_addr.exit

if.then.i181:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr111 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %get_ipv6_addr.exit

get_ipv6_addr.exit:                               ; preds = %if.then.i181, %if.else.get_ipv6_addr.exit_crit_edge
  %retval.0.i182 = phi i32 [ %sub.ptr.sub.i, %if.then.i181 ], [ 0, %if.else.get_ipv6_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end.i) #10
  br label %if.end116

if.end116:                                        ; preds = %get_ipv6_addr.exit, %if.end110
  %length.0 = phi i32 [ %retval.0.i178199, %if.end110 ], [ %retval.0.i182, %get_ipv6_addr.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0)
  %cmp117 = icmp eq i32 %length.0, 0
  br i1 %cmp117, label %if.end116.cleanup_crit_edge, label %do.body121

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body121:                                       ; preds = %if.end116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @try_eprt.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then133)) #10
          to label %do.end136 [label %if.then133], !srcloc !164

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @try_eprt.__UNIQUE_ID_ddebug712, ptr noundef nonnull @.str.53) #10
  br label %do.end136

do.end136:                                        ; preds = %if.then133, %do.body121
  %add137 = add i32 %length.0, 4
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %cmd, i32 0, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add137, i32 %dlen)
  %cmp68.i = icmp ult i32 %add137, %dlen
  br i1 %cmp68.i, label %do.end136.for.body.i185_crit_edge, label %do.end136.cleanup_crit_edge

do.end136.cleanup_crit_edge:                      ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end136.for.body.i185_crit_edge:                ; preds = %do.end136
  br label %for.body.i185

for.body.i185:                                    ; preds = %if.then21.i.for.body.i185_crit_edge, %do.end136.for.body.i185_crit_edge
  %tmp_port.070.i = phi i16 [ %sub.i189, %if.then21.i.for.body.i185_crit_edge ], [ 0, %do.end136.for.body.i185_crit_edge ]
  %i.069.i = phi i32 [ %inc.i190, %if.then21.i.for.body.i185_crit_edge ], [ %add137, %do.end136.for.body.i185_crit_edge ]
  %arrayidx.i183 = getelementptr i8, ptr %data, i32 %i.069.i
  %42 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i183, align 1
  %conv.i184 = zext i8 %43 to i16
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %1)
  %cmp2.i = icmp eq i8 %43, %1
  br i1 %cmp2.i, label %if.then.i186, label %if.else.i188

if.then.i186:                                     ; preds = %for.body.i185
  %conv4.i = zext i16 %tmp_port.070.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp_port.070.i)
  %cmp5.i = icmp eq i16 %tmp_port.070.i, 0
  br i1 %cmp5.i, label %if.then.i186.cleanup_crit_edge, label %if.end.i

if.then.i186.cleanup_crit_edge:                   ; preds = %if.then.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i186
  %44 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %tmp_port.070.i, ptr %u, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_port.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then10.i)) #10
          to label %do.end.i [label %if.then10.i], !srcloc !164

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_port.__UNIQUE_ID_ddebug706, ptr noundef nonnull @.str.56, i32 noundef %conv4.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %if.end.i
  %add.i187 = add nuw i32 %i.069.i, 1
  br label %cleanup

if.else.i188:                                     ; preds = %for.body.i185
  %45 = add i8 %43, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %45)
  %46 = icmp ult i8 %45, 10
  br i1 %46, label %if.then21.i, label %do.body28.i

if.then21.i:                                      ; preds = %if.else.i188
  %mul.i = mul i16 %tmp_port.070.i, 10
  %add25.i = add i16 %mul.i, -48
  %sub.i189 = add i16 %add25.i, %conv.i184
  %inc.i190 = add i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i190, %dlen
  br i1 %exitcond.not.i, label %if.then21.i.cleanup_crit_edge, label %if.then21.i.for.body.i185_crit_edge

if.then21.i.for.body.i185_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i185

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body28.i:                                      ; preds = %if.else.i188
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_port.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_eprt, %if.then40.i)) #10
          to label %cleanup [label %if.then40.i], !srcloc !164

if.then40.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_port.__UNIQUE_ID_ddebug707, ptr noundef nonnull @.str.58) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40.i, %do.body28.i, %if.then21.i.cleanup_crit_edge, %do.end.i, %if.then.i186.cleanup_crit_edge, %do.end136.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %if.then68, %do.body56, %if.then33, %do.body21, %if.then3, %do.body
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.then33 ], [ 0, %if.then68 ], [ 0, %if.end116.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %do.body21 ], [ 0, %do.body56 ], [ %add.i187, %do.end.i ], [ 0, %if.then40.i ], [ 0, %if.then.i186.cleanup_crit_edge ], [ 0, %do.body28.i ], [ 0, %do.end136.cleanup_crit_edge ], [ 0, %if.then21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @try_rfc1123(ptr nocapture noundef readonly %data, i32 noundef %dlen, ptr nocapture noundef writeonly %cmd, i8 noundef zeroext %term, ptr nocapture noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen)
  %cmp16.not = icmp eq i32 %dlen, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %2)
  %3 = icmp ult i32 %2, -10
  br i1 %3, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %dlen
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.017, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %dlen)
  %cmp1 = icmp eq i32 %i.0.lcssa, %dlen
  br i1 %cmp1, label %for.end.cleanup_crit_edge, label %if.end4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %i.0.lcssa
  store i32 %add, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %i.0.lcssa
  %sub = sub i32 %dlen, %i.0.lcssa
  %call5 = tail call i32 @try_rfc959(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %cmd, i8 noundef zeroext 0, ptr noundef %offset)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @try_epsv_response(ptr nocapture noundef readonly %data, i32 noundef %dlen, ptr nocapture noundef writeonly %cmd, i8 noundef zeroext %term, ptr nocapture noundef readnone %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dlen)
  %cmp = icmp ult i32 %dlen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %conv = zext i8 %1 to i32
  %2 = add nsw i32 %conv, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %3 = icmp ult i32 %2, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %1)
  %cmp2 = icmp ult i8 %1, 33
  %or.cond = select i1 %3, i1 true, i1 %cmp2
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %1)
  %cmp6 = icmp ugt i8 %1, 126
  %or.cond32 = select i1 %or.cond, i1 true, i1 %cmp6
  br i1 %or.cond32, label %if.end.cleanup_crit_edge, label %lor.lhs.false8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end
  %arrayidx9 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %1)
  %cmp12.not = icmp eq i8 %5, %1
  br i1 %cmp12.not, label %lor.lhs.false14, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %arrayidx15 = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %1)
  %cmp18.not = icmp eq i8 %7, %1
  br i1 %cmp18.not, label %for.body.i.preheader, label %lor.lhs.false14.cleanup_crit_edge

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i.preheader:                             ; preds = %lor.lhs.false14
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %cmd, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.then21.i.for.body.i_crit_edge, %for.body.i.preheader
  %tmp_port.070.i = phi i16 [ %sub.i, %if.then21.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.069.i = phi i32 [ %inc.i, %if.then21.i.for.body.i_crit_edge ], [ 3, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.069.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %1)
  %cmp2.i = icmp eq i8 %9, %1
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %conv4.i = zext i16 %tmp_port.070.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tmp_port.070.i)
  %cmp5.i = icmp eq i16 %tmp_port.070.i, 0
  br i1 %cmp5.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %tmp_port.070.i, ptr %u, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_port.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_epsv_response, %if.then10.i)) #10
          to label %do.end.i [label %if.then10.i], !srcloc !164

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_port.__UNIQUE_ID_ddebug706, ptr noundef nonnull @.str.56, i32 noundef %conv4.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %if.end.i
  %add.i = add nuw i32 %i.069.i, 1
  br label %cleanup

if.else.i:                                        ; preds = %for.body.i
  %11 = add i8 %9, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %if.then21.i, label %do.body28.i

if.then21.i:                                      ; preds = %if.else.i
  %mul.i = mul i16 %tmp_port.070.i, 10
  %add25.i = add i16 %mul.i, -48
  %sub.i = add i16 %add25.i, %conv.i
  %inc.i = add nuw i32 %i.069.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %dlen
  br i1 %exitcond.not.i, label %if.then21.i.cleanup_crit_edge, label %if.then21.i.for.body.i_crit_edge

if.then21.i.for.body.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_port.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@try_epsv_response, %if.then40.i)) #10
          to label %cleanup [label %if.then40.i], !srcloc !164

if.then40.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_port.__UNIQUE_ID_ddebug707, ptr noundef nonnull @.str.58) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40.i, %do.body28.i, %if.then21.i.cleanup_crit_edge, %do.end.i, %if.then.i.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false14.cleanup_crit_edge ], [ 0, %lor.lhs.false8.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %add.i, %do.end.i ], [ 0, %if.then40.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %do.body28.i ], [ 0, %if.then21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__UNIQUE_ID_file694, !1, !"__UNIQUE_ID_file694", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_license695, !1, !"__UNIQUE_ID_license695", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author696, !4, !"__UNIQUE_ID_author696", i1 false, i1 false}
!4 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 32, i32 1}
!5 = !{ptr @__UNIQUE_ID_description697, !6, !"__UNIQUE_ID_description697", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias698, !8, !"__UNIQUE_ID_alias698", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 34, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias699, !10, !"__UNIQUE_ID_alias699", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 35, i32 1}
!11 = !{ptr @__param_ports, !12, !"__param_ports", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 45, i32 1}
!13 = !{ptr @__UNIQUE_ID_portstype700, !12, !"__UNIQUE_ID_portstype700", i1 false, i1 false}
!14 = !{ptr @__param_loose, !15, !"__param_loose", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 48, i32 1}
!16 = !{ptr @__UNIQUE_ID_loosetype701, !15, !"__UNIQUE_ID_loosetype701", i1 false, i1 false}
!17 = !{ptr @__ksymtab_nf_nat_ftp_hook, !18, !"__ksymtab_nf_nat_ftp_hook", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 57, i32 1}
!19 = !{ptr @__initcall__kmod_nf_conntrack_ftp__726_613_nf_conntrack_ftp_init6, !20, !"__initcall__kmod_nf_conntrack_ftp__726_613_nf_conntrack_ftp_init6", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 613, i32 1}
!21 = !{ptr @__exitcall_nf_conntrack_ftp_fini, !22, !"__exitcall_nf_conntrack_ftp_fini", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 614, i32 1}
!23 = !{ptr @ftp_buffer, !24, !"ftp_buffer", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 38, i32 14}
!25 = !{ptr @ports_c, !26, !"ports_c", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 44, i32 21}
!27 = !{ptr @loose, !28, !"loose", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 47, i32 13}
!29 = !{ptr @nf_nat_ftp_hook, !30, !"nf_nat_ftp_hook", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 50, i32 16}
!31 = !{ptr @ftp, !32, !"ftp", i1 false, i1 false}
!32 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 564, i32 35}
!33 = !{ptr @__param_str_ports, !12, !"__param_str_ports", i1 false, i1 false}
!34 = !{ptr @__param_arr_ports, !12, !"__param_arr_ports", i1 false, i1 false}
!35 = !{ptr @ports, !36, !"ports", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 43, i32 18}
!37 = !{ptr @__param_str_loose, !15, !"__param_str_loose", i1 false, i1 false}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 594, i32 7}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 605, i32 3}
!42 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nf_conntrack_ftp_init._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @nf_conntrack_ftp_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ftp_exp_policy, !47, !"ftp_exp_policy", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 566, i32 48}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 397, i32 3}
!50 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @help.__UNIQUE_ID_ddebug717, !49, !"__UNIQUE_ID_ddebug717", i1 false, i1 false}
!53 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.8, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 408, i32 3}
!56 = !{ptr @help.__UNIQUE_ID_ddebug718, !55, !"__UNIQUE_ID_ddebug718", i1 false, i1 false}
!57 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 433, i32 3}
!60 = !{ptr @help.__UNIQUE_ID_ddebug719, !59, !"__UNIQUE_ID_ddebug719", i1 false, i1 false}
!61 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 465, i32 29}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 474, i32 2}
!68 = !{ptr @help.__UNIQUE_ID_ddebug720, !67, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!69 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 480, i32 29}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 499, i32 4}
!74 = !{ptr @help.__UNIQUE_ID_ddebug721, !73, !"__UNIQUE_ID_ddebug721", i1 false, i1 false}
!75 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 503, i32 4}
!78 = !{ptr @help.__UNIQUE_ID_ddebug722, !77, !"__UNIQUE_ID_ddebug722", i1 false, i1 false}
!79 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 525, i32 15}
!82 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 532, i32 30}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 40, i32 8}
!87 = !{ptr @nf_ftp_lock, !86, !"nf_ftp_lock", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 302, i32 2}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @find_pattern.__UNIQUE_ID_ddebug713, !89, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!92 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 314, i32 2}
!95 = !{ptr @find_pattern.__UNIQUE_ID_ddebug714, !94, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!96 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 325, i32 2}
!99 = !{ptr @find_pattern.__UNIQUE_ID_ddebug715, !98, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!100 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 332, i32 2}
!103 = !{ptr @find_pattern.__UNIQUE_ID_ddebug716, !102, !"__UNIQUE_ID_ddebug716", i1 false, i1 false}
!104 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 78, i32 15}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 86, i32 15}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 96, i32 15}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 102, i32 15}
!113 = !{ptr @search, !114, !"search", i1 false, i1 false}
!114 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 75, i32 3}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 143, i32 4}
!117 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @try_number.__UNIQUE_ID_ddebug704, !116, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!119 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 148, i32 2}
!122 = !{ptr @try_number.__UNIQUE_ID_ddebug705, !121, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!123 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 234, i32 3}
!126 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @try_eprt.__UNIQUE_ID_ddebug708, !125, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!128 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 239, i32 3}
!131 = !{ptr @try_eprt.__UNIQUE_ID_ddebug709, !130, !"__UNIQUE_ID_ddebug709", i1 false, i1 false}
!132 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 245, i32 3}
!135 = !{ptr @try_eprt.__UNIQUE_ID_ddebug710, !134, !"__UNIQUE_ID_ddebug710", i1 false, i1 false}
!136 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 249, i32 2}
!139 = !{ptr @try_eprt.__UNIQUE_ID_ddebug711, !138, !"__UNIQUE_ID_ddebug711", i1 false, i1 false}
!140 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 267, i32 2}
!143 = !{ptr @try_eprt.__UNIQUE_ID_ddebug712, !142, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!144 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 211, i32 4}
!147 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @get_port.__UNIQUE_ID_ddebug706, !146, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!149 = !{ptr @.str.56, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/netfilter/nf_conntrack_ftp.c", i32 217, i32 4}
!152 = !{ptr @get_port.__UNIQUE_ID_ddebug707, !151, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!153 = !{ptr @.str.58, !151, !"<string literal>", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{!"auto-init"}
!164 = !{i64 2148968063, i64 2148968068, i64 2148968081, i64 2148968125, i64 2148968159, i64 2148968180}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i8 0, i8 2}
