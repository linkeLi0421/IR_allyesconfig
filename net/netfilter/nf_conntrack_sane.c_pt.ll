; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_sane.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_sane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.161 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.161 = type { %union.nf_inet_addr, %union.anon.162, i8, i8 }
%union.anon.162 = type { i16 }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.169, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.169 = type {}
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
%struct.sane_reply_net_start = type { i32, i16, i16 }

@__UNIQUE_ID_file581 = internal constant [55 x i8] c"nf_conntrack_sane.file=net/netfilter/nf_conntrack_sane\00", section ".modinfo", align 1
@__UNIQUE_ID_license582 = internal constant [30 x i8] c"nf_conntrack_sane.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author583 = internal constant [62 x i8] c"nf_conntrack_sane.author=Michal Schmidt <mschmidt@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description584 = internal constant [62 x i8] c"nf_conntrack_sane.description=SANE connection tracking helper\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [41 x i8] c"nf_conntrack_sane.alias=nfct-helper-sane\00", section ".modinfo", align 1
@__param_str_ports = internal constant [24 x i8] c"nf_conntrack_sane.ports\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_ports = internal constant %struct.kparam_array { i32 8, i32 2, ptr @ports_c, ptr @param_ops_ushort, ptr @ports }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.134 { ptr @__param_arr_ports } }, section "__param", align 4
@__UNIQUE_ID_portstype586 = internal constant [49 x i8] c"nf_conntrack_sane.parmtype=ports:array of ushort\00", section ".modinfo", align 1
@sane = internal global [16 x %struct.nf_conntrack_helper] zeroinitializer, section ".data..read_mostly", align 4
@ports_c = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sane_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nf_conntrack_sane__591_220_nf_conntrack_sane_init6 = internal global ptr @nf_conntrack_sane_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_sane_fini = internal global ptr @nf_conntrack_sane_fini, section ".exitcall.exit", align 4
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@ports = internal global { [8 x i16], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sane\00", [27 x i8] zeroinitializer }, align 32
@sane_exp_policy = internal constant { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 1, i32 300, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@nf_conntrack_sane_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013nf_conntrack_sane: failed to register helpers\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nf_conntrack_sane_init\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netfilter/nf_conntrack_sane.c\00", [62 x i8] zeroinitializer }, align 32
@nf_conntrack_sane_init._entry_ptr = internal global ptr @nf_conntrack_sane_init._entry, section ".printk_index", align 4
@nf_sane_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_conntrack_sane\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"help\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NET_START reply too short\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nf_conntrack_sane: NET_START reply too short\0A\00", [50 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.8, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsuccessful SANE_STATUS = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nf_conntrack_sane: unsuccessful SANE_STATUS = %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot alloc expectation\00", [39 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.11, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"expect: \00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nf_conntrack_sane: expect: \00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot add expectation\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_sane_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"ports_c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 43, i32 21 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"sane_buffer\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 37, i32 14 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 42, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 201, i32 7 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"sane_exp_policy\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 173, i32 48 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 212, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"nf_sane_lock\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 127, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 134, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 145, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 155, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 160, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [37 x i8] c"../net/netfilter/nf_conntrack_sane.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 39, i32 8 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_author583, ptr @__UNIQUE_ID_description584, ptr @__UNIQUE_ID_file581, ptr @__UNIQUE_ID_license582, ptr @__UNIQUE_ID_portstype586, ptr @__exitcall_nf_conntrack_sane_fini, ptr @__initcall__kmod_nf_conntrack_sane__591_220_nf_conntrack_sane_init6, ptr @__param_ports, ptr @nf_conntrack_sane_fini, ptr @nf_conntrack_sane_init._entry, ptr @nf_conntrack_sane_init._entry_ptr, ptr @ports_c, ptr @sane_buffer, ptr @ports, ptr @.str, ptr @sane_exp_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nf_sane_lock, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sane_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sane_exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_sane_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_sane_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_sane_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load i32, ptr @ports_c, align 4
  %mul = shl i32 %0, 1
  tail call void @nf_conntrack_helpers_unregister(ptr noundef nonnull @sane, i32 noundef %mul) #6
  %1 = load ptr, ptr @sane_buffer, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helpers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_sane_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #9
  store ptr %call1.i.i, ptr @sane_buffer, align 4
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @ports_c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then1, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store i32 1, ptr @ports_c, align 4
  store i16 6566, ptr @ports, align 2
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then1, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc12, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.034, 1
  %arrayidx4 = getelementptr [16 x %struct.nf_conntrack_helper], ptr @sane, i32 0, i32 %mul
  %arrayidx5 = getelementptr [8 x i16], ptr @ports, i32 0, i32 %i.034
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %2 to i32
  tail call void @nf_ct_helper_init(ptr noundef %arrayidx4, i16 noundef zeroext 2, i16 noundef zeroext 6, ptr noundef nonnull @.str, i16 noundef zeroext 6566, i16 noundef zeroext %2, i32 noundef %conv, ptr noundef nonnull @sane_exp_policy, i32 noundef 0, ptr noundef nonnull @help, ptr noundef null, ptr noundef null) #6
  %add = or i32 %mul, 1
  %arrayidx8 = getelementptr [16 x %struct.nf_conntrack_helper], ptr @sane, i32 0, i32 %add
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx5, align 2
  %conv11 = zext i16 %4 to i32
  tail call void @nf_ct_helper_init(ptr noundef %arrayidx8, i16 noundef zeroext 10, i16 noundef zeroext 6, ptr noundef nonnull @.str, i16 noundef zeroext 6566, i16 noundef zeroext %4, i32 noundef %conv11, ptr noundef nonnull @sane_exp_policy, i32 noundef 0, ptr noundef nonnull @help, ptr noundef null, ptr noundef null) #6
  %inc12 = add nuw i32 %i.034, 1
  %5 = load i32, ptr @ports_c, align 4
  %cmp3 = icmp ult i32 %inc12, %5
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = shl i32 %5, 1
  %call14 = tail call i32 @nf_conntrack_helpers_register(ptr noundef nonnull @sane, i32 noundef %phi.bo) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end20, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  %6 = load ptr, ptr @sane_buffer, align 4
  tail call void @kfree(ptr noundef %6) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctinfo)
  %cmp = icmp ult i32 %ctinfo, 3
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %1 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.i.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i8 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  %5 = zext i32 %ctinfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ctinfo, label %nfct_help_data.exit.cleanup_crit_edge [
    i32 0, label %nfct_help_data.exit.if.end_crit_edge
    i32 3, label %nfct_help_data.exit.if.end_crit_edge183
  ]

nfct_help_data.exit.if.end_crit_edge183:          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nfct_help_data.exit.if.end_crit_edge:             ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nfct_help_data.exit.cleanup_crit_edge:            ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nfct_help_data.exit.if.end_crit_edge, %nfct_help_data.exit.if.end_crit_edge183
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %10 = add i32 %9, %protoff
  %sub.i4.i = sub i32 %7, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i151, label %skb_header_pointer.exit, !prof !66

if.end.i.i151:                                    ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i151.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i151.cleanup_crit_edge:                  ; preds = %if.end.i.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i151
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protoff, ptr noundef nonnull %_tcph, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end6_crit_edge

lor.lhs.false.i.i.if.end6_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i149 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i149 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i149, align 4
  %add.ptr.i.i150 = getelementptr i8, ptr %12, i32 %protoff
  %cmp4 = icmp eq ptr %add.ptr.i.i150, null
  br i1 %cmp4, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end6_crit_edge

skb_header_pointer.exit.if.end6_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %skb_header_pointer.exit.if.end6_crit_edge, %lor.lhs.false.i.i.if.end6_crit_edge
  %retval.0.i.i152173 = phi ptr [ %add.ptr.i.i150, %skb_header_pointer.exit.if.end6_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end6_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i152173, i32 0, i32 4
  %13 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %doff, align 4
  %14 = lshr i16 %bf.load, 10
  %15 = and i16 %14, 60
  %mul = zext i16 %15 to i32
  %add = add i32 %mul, %protoff
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp7.not = icmp ugt i32 %17, %add
  br i1 %cmp7.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %sub = sub i32 %17, %add
  call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_sane_lock) #6
  %18 = load ptr, ptr @sane_buffer, align 4
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %23 = add i32 %add, %22
  %sub.i4.i155 = sub i32 %20, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i155, i32 %sub)
  %cmp.not.i.i156 = icmp slt i32 %sub.i4.i155, %sub
  br i1 %cmp.not.i.i156, label %if.end.i.i161, label %if.then.i.i159, !prof !66

if.then.i.i159:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %data.i157 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i157 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i157, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %25, i32 %add
  br label %skb_header_pointer.exit167

if.end.i.i161:                                    ; preds = %if.end10
  %tobool2.not.i.i160 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i160, label %if.end.i.i161.cleanup.sink.split_crit_edge, label %lor.lhs.false.i.i165

if.end.i.i161.cleanup.sink.split_crit_edge:       ; preds = %if.end.i.i161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.lhs.false.i.i165:                             ; preds = %if.end.i.i161
  %call.i.i162 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef %18, i32 noundef %sub) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %cmp3.i.i163 = icmp slt i32 %call.i.i162, 0
  br i1 %cmp3.i.i163, label %lor.lhs.false.i.i165.cleanup.sink.split_crit_edge, label %lor.lhs.false.i.i165.skb_header_pointer.exit167_crit_edge

lor.lhs.false.i.i165.skb_header_pointer.exit167_crit_edge: ; preds = %lor.lhs.false.i.i165
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_header_pointer.exit167

lor.lhs.false.i.i165.cleanup.sink.split_crit_edge: ; preds = %lor.lhs.false.i.i165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

skb_header_pointer.exit167:                       ; preds = %lor.lhs.false.i.i165.skb_header_pointer.exit167_crit_edge, %if.then.i.i159
  %retval.0.i.i166 = phi ptr [ %add.ptr.i.i158, %if.then.i.i159 ], [ %18, %lor.lhs.false.i.i165.skb_header_pointer.exit167_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i166, null
  br i1 %tobool.not, label %skb_header_pointer.exit167.cleanup.sink.split_crit_edge, label %if.end14

skb_header_pointer.exit167.cleanup.sink.split_crit_edge: ; preds = %skb_header_pointer.exit167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end14:                                         ; preds = %skb_header_pointer.exit167
  br i1 %cmp, label %if.then17, label %if.end27

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp18.not = icmp eq i32 %sub, 8
  br i1 %cmp18.not, label %if.end21, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.then17
  %26 = ptrtoint ptr %retval.0.i.i166 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval.0.i.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp22.not = icmp eq i32 %27, 7
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %data.i, align 4
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %data.i, align 4
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end14
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp29.not = icmp eq i32 %31, 1
  br i1 %cmp29.not, label %if.end32, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end32:                                         ; preds = %if.end27
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp34 = icmp ult i32 %sub, 8
  br i1 %cmp34, label %do.body, label %if.end43

do.body:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then41)) #6
          to label %cleanup.sink.split [label %if.then41], !srcloc !67

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.7) #6
  br label %cleanup.sink.split

if.end43:                                         ; preds = %if.end32
  %33 = ptrtoint ptr %retval.0.i.i166 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %retval.0.i.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp44.not = icmp eq i32 %34, 0
  br i1 %cmp44.not, label %if.end64, label %do.body47

do.body47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then59)) #6
          to label %cleanup.sink.split [label %if.then59], !srcloc !67

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %retval.0.i.i166 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retval.0.i.i166, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug588, ptr noundef nonnull @.str.9, i32 noundef %36) #6
  br label %cleanup.sink.split

if.end64:                                         ; preds = %if.end43
  %zero = getelementptr inbounds %struct.sane_reply_net_start, ptr %retval.0.i.i166, i32 0, i32 1
  %37 = ptrtoint ptr %zero to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp66.not = icmp eq i16 %38, 0
  br i1 %cmp66.not, label %if.end69, label %if.end64.cleanup.sink.split_crit_edge

if.end64.cleanup.sink.split_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end69:                                         ; preds = %if.end64
  %call70 = call ptr @nf_ct_expect_alloc(ptr noundef %ct) #6
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.10) #6
  br label %cleanup.sink.split

if.end74:                                         ; preds = %if.end69
  %tuple75 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %l3num.i, align 2
  %conv77 = trunc i16 %40 to i8
  %dst = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1
  %port = getelementptr inbounds %struct.sane_reply_net_start, ptr %retval.0.i.i166, i32 0, i32 2
  call void @nf_ct_expect_init(ptr noundef nonnull %call70, i32 noundef 0, i8 noundef zeroext %conv77, ptr noundef %tuple75, ptr noundef %dst, i8 noundef zeroext 6, ptr noundef null, ptr noundef %port) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then91)) #6
          to label %do.end94 [label %if.then91], !srcloc !67

if.then91:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.12) #6
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %if.end74
  %call.i = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call70, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp97.not = icmp eq i32 %call.i, 0
  br i1 %cmp97.not, label %do.end94.if.end100_crit_edge, label %if.then99

do.end94.if.end100_crit_edge:                     ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then99:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.13) #6
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %do.end94.if.end100_crit_edge
  %ret.0 = phi i32 [ 0, %if.then99 ], [ 1, %do.end94.if.end100_crit_edge ]
  call void @nf_ct_expect_put(ptr noundef nonnull %call70) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end100, %if.then73, %if.end64.cleanup.sink.split_crit_edge, %if.then59, %do.body47, %if.then41, %do.body, %if.end27.cleanup.sink.split_crit_edge, %if.end25, %if.then24, %if.then17.cleanup.sink.split_crit_edge, %skb_header_pointer.exit167.cleanup.sink.split_crit_edge, %lor.lhs.false.i.i165.cleanup.sink.split_crit_edge, %if.end.i.i161.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %lor.lhs.false.i.i165.cleanup.sink.split_crit_edge ], [ 1, %if.end.i.i161.cleanup.sink.split_crit_edge ], [ 1, %skb_header_pointer.exit167.cleanup.sink.split_crit_edge ], [ 1, %if.then17.cleanup.sink.split_crit_edge ], [ 1, %if.then24 ], [ 1, %if.end25 ], [ 1, %if.end27.cleanup.sink.split_crit_edge ], [ 1, %if.then41 ], [ 1, %if.then59 ], [ 1, %if.end64.cleanup.sink.split_crit_edge ], [ 0, %if.then73 ], [ %ret.0, %if.end100 ], [ 1, %do.body ], [ 1, %do.body47 ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_sane_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i151.cleanup_crit_edge, %nfct_help_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %nfct_help_data.exit.cleanup_crit_edge ], [ 1, %skb_header_pointer.exit.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %if.end.i.i151.cleanup_crit_edge ], [ 1, %lor.lhs.false.i.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helpers_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_file581, !1, !"__UNIQUE_ID_file581", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_license582, !1, !"__UNIQUE_ID_license582", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author583, !4, !"__UNIQUE_ID_author583", i1 false, i1 false}
!4 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_description584, !6, !"__UNIQUE_ID_description584", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 35, i32 1}
!9 = !{ptr @__param_ports, !10, !"__param_ports", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 44, i32 1}
!11 = !{ptr @__UNIQUE_ID_portstype586, !10, !"__UNIQUE_ID_portstype586", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_nf_conntrack_sane__591_220_nf_conntrack_sane_init6, !13, !"__initcall__kmod_nf_conntrack_sane__591_220_nf_conntrack_sane_init6", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 220, i32 1}
!14 = !{ptr @__exitcall_nf_conntrack_sane_fini, !15, !"__exitcall_nf_conntrack_sane_fini", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 221, i32 1}
!16 = !{ptr @sane_buffer, !17, !"sane_buffer", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 37, i32 14}
!18 = !{ptr @ports_c, !19, !"ports_c", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 43, i32 21}
!20 = !{ptr @sane, !21, !"sane", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 171, i32 35}
!22 = !{ptr @__param_str_ports, !10, !"__param_str_ports", i1 false, i1 false}
!23 = !{ptr @__param_arr_ports, !10, !"__param_arr_ports", i1 false, i1 false}
!24 = !{ptr @ports, !25, !"ports", i1 false, i1 false}
!25 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 42, i32 18}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 201, i32 7}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 212, i32 3}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nf_conntrack_sane_init._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @nf_conntrack_sane_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sane_exp_policy, !35, !"sane_exp_policy", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 173, i32 48}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 127, i32 3}
!38 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @help.__UNIQUE_ID_ddebug587, !37, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!41 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 134, i32 3}
!44 = !{ptr @help.__UNIQUE_ID_ddebug588, !43, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!45 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 145, i32 29}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 155, i32 2}
!50 = !{ptr @help.__UNIQUE_ID_ddebug589, !49, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!51 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 160, i32 29}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/nf_conntrack_sane.c", i32 39, i32 8}
!56 = !{ptr @nf_sane_lock, !55, !"nf_sane_lock", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2148957104, i64 2148957109, i64 2148957122, i64 2148957166, i64 2148957200, i64 2148957221}
