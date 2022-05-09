; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_tftp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_tftp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_tftp_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_tftp_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_tftp_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_tftp_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_tftp_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_tftp_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.150 }
%union.anon.150 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tftphdr = type { i16 }
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
%struct.possible_net_t = type { ptr }
%struct.anon.113 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }

@__UNIQUE_ID_author587 = internal constant [57 x i8] c"nf_conntrack_tftp.author=Magnus Boden <mb@ozaba.mine.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description588 = internal constant [62 x i8] c"nf_conntrack_tftp.description=TFTP connection tracking helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file589 = internal constant [55 x i8] c"nf_conntrack_tftp.file=net/netfilter/nf_conntrack_tftp\00", section ".modinfo", align 1
@__UNIQUE_ID_license590 = internal constant [30 x i8] c"nf_conntrack_tftp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias591 = internal constant [42 x i8] c"nf_conntrack_tftp.alias=ip_conntrack_tftp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias592 = internal constant [41 x i8] c"nf_conntrack_tftp.alias=nfct-helper-tftp\00", section ".modinfo", align 1
@__param_str_ports = internal constant [24 x i8] c"nf_conntrack_tftp.ports\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_ports = internal constant %struct.kparam_array { i32 8, i32 2, ptr @ports_c, ptr @param_ops_ushort, ptr @ports }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.150 { ptr @__param_arr_ports } }, section "__param", align 4
@__UNIQUE_ID_portstype593 = internal constant [49 x i8] c"nf_conntrack_tftp.parmtype=ports:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_ports594 = internal constant [58 x i8] c"nf_conntrack_tftp.parm=ports:Port numbers of TFTP servers\00", section ".modinfo", align 1
@nf_nat_tftp_hook = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_tftp_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_tftp_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_tftp_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_tftp_hook to i32), ptr @__kstrtab_nf_nat_tftp_hook, ptr @__kstrtabns_nf_nat_tftp_hook }, section "___ksymtab_gpl+nf_nat_tftp_hook", align 4
@tftp = internal global [16 x %struct.nf_conntrack_helper] zeroinitializer, section ".data..read_mostly", align 4
@ports_c = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nf_conntrack_tftp__602_140_nf_conntrack_tftp_init6 = internal global ptr @nf_conntrack_tftp_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_tftp_fini = internal global ptr @nf_conntrack_tftp_fini, section ".exitcall.exit", align 4
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@ports = internal global { [8 x i16], [16 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tftp\00", [27 x i8] zeroinitializer }, align 32
@tftp_exp_policy = internal constant { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 1, i32 300, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@nf_conntrack_tftp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013nf_conntrack_tftp: failed to register helpers\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nf_conntrack_tftp_init\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netfilter/nf_conntrack_tftp.c\00", [62 x i8] zeroinitializer }, align 32
@nf_conntrack_tftp_init._entry_ptr = internal global ptr @nf_conntrack_tftp_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot alloc expectation\00", [39 x i8] zeroinitializer }, align 32
@tftp_help.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_conntrack_tftp\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tftp_help\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"expect: \00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nf_conntrack_tftp: expect: \00", [36 x i8] zeroinitializer }, align 32
@tftp_help.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot add expectation\00", [41 x i8] zeroinitializer }, align 32
@tftp_help.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.3, ptr @.str.11, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Data/ACK opcode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nf_conntrack_tftp: Data/ACK opcode\0A\00", [60 x i8] zeroinitializer }, align 32
@tftp_help.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.3, ptr @.str.13, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Error opcode\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nf_conntrack_tftp: Error opcode\0A\00", [63 x i8] zeroinitializer }, align 32
@tftp_help.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.3, ptr @.str.15, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown opcode\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_conntrack_tftp: Unknown opcode\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"ports_c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 31, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 30, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 123, i32 7 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"tftp_exp_policy\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 102, i32 48 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 134, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 66, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 75, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 78, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 82, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 89, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 92, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [37 x i8] c"../net/netfilter/nf_conntrack_tftp.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 95, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias591, ptr @__UNIQUE_ID_alias592, ptr @__UNIQUE_ID_author587, ptr @__UNIQUE_ID_description588, ptr @__UNIQUE_ID_file589, ptr @__UNIQUE_ID_license590, ptr @__UNIQUE_ID_ports594, ptr @__UNIQUE_ID_portstype593, ptr @__exitcall_nf_conntrack_tftp_fini, ptr @__initcall__kmod_nf_conntrack_tftp__602_140_nf_conntrack_tftp_init6, ptr @__ksymtab_nf_nat_tftp_hook, ptr @__param_ports, ptr @nf_conntrack_tftp_fini, ptr @nf_conntrack_tftp_init._entry, ptr @nf_conntrack_tftp_init._entry_ptr, ptr @ports_c, ptr @ports, ptr @.str, ptr @tftp_exp_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tftp_exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_tftp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_tftp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i32, ptr @ports_c, align 4
  %mul = shl i32 %0, 1
  tail call void @nf_conntrack_helpers_unregister(ptr noundef nonnull @tftp, i32 noundef %mul) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helpers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_tftp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ports_c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.for.body.preheader_crit_edge

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i32 1, ptr @ports_c, align 4
  store i16 69, ptr @ports, align 2
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %inc7, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.027, 1
  %arrayidx2 = getelementptr [16 x %struct.nf_conntrack_helper], ptr @tftp, i32 0, i32 %mul
  %arrayidx3 = getelementptr [8 x i16], ptr @ports, i32 0, i32 %i.027
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx3, align 2
  tail call void @nf_ct_helper_init(ptr noundef %arrayidx2, i16 noundef zeroext 2, i16 noundef zeroext 17, ptr noundef nonnull @.str, i16 noundef zeroext 69, i16 noundef zeroext %2, i32 noundef %i.027, ptr noundef nonnull @tftp_exp_policy, i32 noundef 0, ptr noundef nonnull @tftp_help, ptr noundef null, ptr noundef null) #5
  %add = or i32 %mul, 1
  %arrayidx5 = getelementptr [16 x %struct.nf_conntrack_helper], ptr @tftp, i32 0, i32 %add
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx3, align 2
  tail call void @nf_ct_helper_init(ptr noundef %arrayidx5, i16 noundef zeroext 10, i16 noundef zeroext 17, ptr noundef nonnull @.str, i16 noundef zeroext 69, i16 noundef zeroext %4, i32 noundef %i.027, ptr noundef nonnull @tftp_exp_policy, i32 noundef 0, ptr noundef nonnull @tftp_help, ptr noundef null, ptr noundef null) #5
  %inc7 = add nuw i32 %i.027, 1
  %5 = load i32, ptr @ports_c, align 4
  %cmp1 = icmp ult i32 %inc7, %5
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = shl i32 %5, 1
  %call = tail call i32 @nf_conntrack_helpers_register(ptr noundef nonnull @tftp, i32 noundef %phi.bo) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %do.end13, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end13 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tftp_help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #3 align 64 {
entry:
  %_tftph = alloca %struct.tftphdr, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_tftph) #5
  %0 = ptrtoint ptr %_tftph to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %_tftph, align 2, !annotation !76
  %add = add i32 %protoff, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i, align 8
  %5 = add i32 %2, -8
  %6 = add i32 %4, %protoff
  %sub.i1.i = sub i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 1
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !77

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_tftph, i32 noundef 2) #5
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
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %add
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i139 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_tftph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %9 = ptrtoint ptr %retval.0.i.i139 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %retval.0.i.i139, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %do.body84 [
    i16 1, label %if.end.sw.bb_crit_edge
    i16 2, label %if.end.sw.bb_crit_edge145
    i16 3, label %if.end.do.body51_crit_edge
    i16 4, label %if.end.do.body51_crit_edge146
    i16 5, label %do.body68
  ]

if.end.do.body51_crit_edge146:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

if.end.do.body51_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

if.end.sw.bb_crit_edge145:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge145
  %call5 = call ptr @nf_ct_expect_alloc(ptr noundef %ct) #5
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %tuple4 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %l3num.i, align 2
  %conv14 = trunc i16 %13 to i8
  %dst = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1
  %u = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 1
  call void @nf_ct_expect_init(ptr noundef nonnull %call5, i32 noundef 0, i8 noundef zeroext %conv14, ptr noundef %tuple4, ptr noundef %dst, i8 noundef zeroext 17, ptr noundef null, ptr noundef %u) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tftp_help.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tftp_help, %if.then20)) #5
          to label %do.end [label %if.then20], !srcloc !78

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tftp_help.__UNIQUE_ID_ddebug595, ptr noundef nonnull @.str.8) #5
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.end9
  %14 = load volatile ptr, ptr @nf_nat_tftp_hook, align 4
  %call28 = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true, label %do.end.do.end37_crit_edge

do.end.do.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

land.lhs.true:                                    ; preds = %do.end
  %call30 = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true.do.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true
  %.b124 = load i1, ptr @tftp_help.__warned, align 1
  br i1 %.b124, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @tftp_help.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 78, ptr noundef nonnull @.str.9) #5
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true.do.end37_crit_edge, %do.end.do.end37_crit_edge
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %do.end37.if.else_crit_edge, label %land.lhs.true40

do.end37.if.else_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true40:                                  ; preds = %do.end37
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 8
  %and = and i32 %16, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %land.lhs.true40.if.else_crit_edge, label %if.then42

land.lhs.true40.if.else_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = call i32 %14(ptr noundef %skb, i32 noundef %ctinfo, ptr noundef nonnull %call5) #5
  br label %if.end49

if.else:                                          ; preds = %land.lhs.true40.if.else_crit_edge, %do.end37.if.else_crit_edge
  %call.i = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45.not = icmp eq i32 %call.i, 0
  br i1 %cmp45.not, label %if.else.if.end49_crit_edge, label %if.then47

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.10) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.else.if.end49_crit_edge, %if.then42
  %ret.0 = phi i32 [ %call43, %if.then42 ], [ 0, %if.then47 ], [ 1, %if.else.if.end49_crit_edge ]
  call void @nf_ct_expect_put(ptr noundef nonnull %call5) #5
  br label %cleanup

do.body51:                                        ; preds = %if.end.do.body51_crit_edge, %if.end.do.body51_crit_edge146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tftp_help.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tftp_help, %if.then63)) #5
          to label %cleanup [label %if.then63], !srcloc !78

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tftp_help.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.12) #5
  br label %cleanup

do.body68:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tftp_help.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tftp_help, %if.then80)) #5
          to label %cleanup [label %if.then80], !srcloc !78

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tftp_help.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.14) #5
  br label %cleanup

do.body84:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tftp_help.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tftp_help, %if.then96)) #5
          to label %cleanup [label %if.then96], !srcloc !78

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tftp_help.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %if.then80, %do.body68, %if.then63, %do.body51, %if.end49, %if.then8, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %skb_header_pointer.exit.cleanup_crit_edge ], [ 1, %if.then96 ], [ 1, %if.then80 ], [ 1, %if.then63 ], [ %ret.0, %if.end49 ], [ 1, %do.body51 ], [ 1, %do.body68 ], [ 1, %do.body84 ], [ 1, %if.end.i.i.cleanup_crit_edge ], [ 1, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_tftph) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helpers_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44, !46, !47, !48, !49, !50, !52, !53, !55, !57, !58, !59, !61, !62, !63, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__UNIQUE_ID_author587, !1, !"__UNIQUE_ID_author587", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description588, !3, !"__UNIQUE_ID_description588", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file589, !5, !"__UNIQUE_ID_file589", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license590, !5, !"__UNIQUE_ID_license590", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias591, !8, !"__UNIQUE_ID_alias591", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 26, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias592, !10, !"__UNIQUE_ID_alias592", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 27, i32 1}
!11 = !{ptr @__param_ports, !12, !"__param_ports", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 32, i32 1}
!13 = !{ptr @__UNIQUE_ID_portstype593, !12, !"__UNIQUE_ID_portstype593", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_ports594, !15, !"__UNIQUE_ID_ports594", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 33, i32 1}
!16 = !{ptr @__ksymtab_nf_nat_tftp_hook, !17, !"__ksymtab_nf_nat_tftp_hook", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 38, i32 1}
!18 = !{ptr @__initcall__kmod_nf_conntrack_tftp__602_140_nf_conntrack_tftp_init6, !19, !"__initcall__kmod_nf_conntrack_tftp__602_140_nf_conntrack_tftp_init6", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 140, i32 1}
!20 = !{ptr @__exitcall_nf_conntrack_tftp_fini, !21, !"__exitcall_nf_conntrack_tftp_fini", i1 false, i1 false}
!21 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 141, i32 1}
!22 = !{ptr @ports_c, !23, !"ports_c", i1 false, i1 false}
!23 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 31, i32 21}
!24 = !{ptr @nf_nat_tftp_hook, !25, !"nf_nat_tftp_hook", i1 false, i1 false}
!25 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 35, i32 16}
!26 = !{ptr @tftp, !27, !"tftp", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 100, i32 35}
!28 = !{ptr @__param_str_ports, !12, !"__param_str_ports", i1 false, i1 false}
!29 = !{ptr @__param_arr_ports, !12, !"__param_arr_ports", i1 false, i1 false}
!30 = !{ptr @ports, !31, !"ports", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 30, i32 23}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 123, i32 7}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 134, i32 3}
!36 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nf_conntrack_tftp_init._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @nf_conntrack_tftp_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tftp_exp_policy, !41, !"tftp_exp_policy", i1 false, i1 false}
!41 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 102, i32 48}
!42 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 66, i32 30}
!44 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 75, i32 3}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tftp_help.__UNIQUE_ID_ddebug595, !45, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!49 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 78, i32 17}
!52 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 82, i32 30}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 89, i32 3}
!57 = !{ptr @tftp_help.__UNIQUE_ID_ddebug598, !56, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!58 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 92, i32 3}
!61 = !{ptr @tftp_help.__UNIQUE_ID_ddebug599, !60, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!62 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/nf_conntrack_tftp.c", i32 95, i32 3}
!65 = !{ptr @tftp_help.__UNIQUE_ID_ddebug600, !64, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!66 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148955352, i64 2148955357, i64 2148955370, i64 2148955414, i64 2148955448, i64 2148955469}
